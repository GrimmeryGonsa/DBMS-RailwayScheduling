from django.shortcuts import render
from django.views.generic import ListView
from authenticate import models as models1
from . import models
from django.contrib.auth.decorators import login_required
from .forms import StationForm
from .forms import TrainForm
from .forms import ScheduleForm
from .forms import ShortestRouteForm
from django.http.response import HttpResponseRedirect, HttpResponse
from collections import deque, namedtuple


# Create your views here.


def index(request):
    return render(request, "scheduler/index.html")

    ## class Profile(DetailView):
    ## context_object_name = 'profile_detail'
    ## model = models1.StaffMember
    ## template_name = 'scheduler/profile.html'


@login_required
def profile_page(request):
    return render(request, 'scheduler/profile.html')


class StationList(ListView):
    model = models.Station
    template_name = 'templates/scheduler/station_list.html'


class TrainList(ListView):
    model = models.Train
    template_name = 'templates/scheduler/train_list.html'


@login_required
def station_entry(request, id=0):
    if request.method == 'POST':
        if id == 0:
            form = StationForm(request.POST)
        else:
            obj = models.Station.objects.get(pk=id)
            form = StationForm(request.POST, instance=obj)

        if form.is_valid():
            obj = form.save(commit=False)
            obj.updated_by = request.user.staffmember
            obj.save()
            return HttpResponseRedirect('/station_list')
    else:
        if id == 0:
            form = StationForm()
        else:
            obj = models.Station.objects.get(pk=id)
            form = StationForm(instance=obj)

    context = {
        'stationForm': form,
    }
    return render(request, 'scheduler/station_entry_form.html', context)


@login_required
def station_delete(request, id):
    station = models.Station.objects.get(pk=id)
    station.delete()
    return HttpResponseRedirect('/station_list')


@login_required
def train_entry(request, id=0):
    if request.method == 'POST':
        if id == 0:
            form = TrainForm(request.POST)
        else:
            obj = models.Train.objects.get(pk=id)
            form = TrainForm(request.POST, instance=obj)

        if form.is_valid():
            obj = form.save(commit=False)
            obj.updated_by = request.user.staffmember
            obj.save()
            return HttpResponseRedirect('/train_list')
    else:
        if id == 0:
            form = TrainForm()
        else:
            obj = models.Train.objects.get(pk=id)
            form = TrainForm(instance=obj)

    context = {
        'TrainForm': form,
    }
    return render(request, 'scheduler/train_entry_form.html', context)


@login_required
def train_delete(request, id):
    train = models.Train.objects.get(pk=id)
    train.delete()
    return HttpResponseRedirect('/train_list')


def station_time_table(request, id):
    time_table = models.Schedule.objects.filter(station_id=id).order_by('date')
    context = {
        'schedule': time_table,
    }
    return render(request, 'scheduler/station_schedule.html', context)


class ScheduleList(ListView):
    model = models.Schedule
    template_name = 'templates/scheduler/schedule_list.html'


@login_required
def schedule_entry(request, id=0):
    if request.method == 'POST':
        if id == 0:
            form = ScheduleForm(request.POST)
        else:
            obj = models.Schedule.objects.get(pk=id)
            form = ScheduleForm(request.POST, instance=obj)

        if form.is_valid():
            obj = form.save(commit=False)
            obj.updated_by = request.user.staffmember
            obj.save()
            return HttpResponseRedirect('/schedule_list')
    else:
        if id == 0:
            form = ScheduleForm()
        else:
            obj = models.Schedule.objects.get(pk=id)
            form = ScheduleForm(instance=obj)

    context = {
        'ScheduleForm': form,
    }
    return render(request, 'scheduler/schedule_entry_form.html', context)


@login_required
def schedule_delete(request, id):
    schedule = models.Schedule.objects.get(pk=id)
    schedule.delete()
    return HttpResponseRedirect('/schedule_list')


inf = float('inf')
Edge = namedtuple('Edge', 'start, end, cost')


def make_edge(start, end, cost=1):
    return Edge(start, end, cost)


class Graph:
    def __init__(self, edges):
        wrong_edges = [i for i in edges if len(i) not in [2, 3]]
        if wrong_edges:
            raise ValueError('Wrong edges data: {}'.format(wrong_edges))

        self.edges = [make_edge(*edge) for edge in edges]

    @property
    def vertices(self):
        return set(
            sum(
                ([edge.start, edge.end] for edge in self.edges), []
            )
        )

    def get_node_pairs(self, n1, n2, both_ends=True):
        if both_ends:
            node_pairs = [[n1, n2], [n2, n1]]
        else:
            node_pairs = [[n1, n2]]
        return node_pairs

    def remove_edge(self, n1, n2, both_ends=True):
        node_pairs = self.get_node_pairs(n1, n2, both_ends)
        edges = self.edges[:]
        for edge in edges:
            if [edge.start, edge.end] in node_pairs:
                self.edges.remove(edge)

    def add_edge(self, n1, n2, cost=1, both_ends=True):
        node_pairs = self.get_node_pairs(n1, n2, both_ends)
        for edge in self.edges:
            if [edge.start, edge.end] in node_pairs:
                return ValueError('Edge {} {} already exists'.format(n1, n2))

        self.edges.append(Edge(start=n1, end=n2, cost=cost))
        if both_ends:
            self.edges.append(Edge(start=n2, end=n1, cost=cost))

    @property
    def neighbours(self):
        neighbours = {vertex: set() for vertex in self.vertices}
        for edge in self.edges:
            neighbours[edge.start].add((edge.end, edge.cost))

        return neighbours

    def dijkstra(self, source, dest):
        assert source in self.vertices, 'Such source node doesn\'t exist'
        distances = {vertex: inf for vertex in self.vertices}
        previous_vertices = {
            vertex: None for vertex in self.vertices
        }
        distances[source] = 0
        vertices = self.vertices.copy()

        while vertices:
            current_vertex = min(
                vertices, key=lambda vertex: distances[vertex])
            vertices.remove(current_vertex)
            if distances[current_vertex] == inf:
                break
            for neighbour, cost in self.neighbours[current_vertex]:
                alternative_route = distances[current_vertex] + cost
                if alternative_route < distances[neighbour]:
                    distances[neighbour] = alternative_route
                    previous_vertices[neighbour] = current_vertex

        path, current_vertex = deque(), dest
        while previous_vertices[current_vertex] is not None:
            path.appendleft(current_vertex)
            current_vertex = previous_vertices[current_vertex]
        if path:
            path.appendleft(current_vertex)
        return path


def shortest_path(request):
    if request.method == 'POST':
        form = ShortestRouteForm(request.POST)
        if form.is_valid():
            obj = form.save(commit=False)
            start = obj.start_station_id
            end = obj.end_station_id
            all_obj = models.Route.objects.all()
            li = []
            li2 = []
            li3 = []
            for stuff in all_obj:
                li.append(str(stuff.start_station_id))
                li2.append(str(stuff.end_station_id))
                li3.append(stuff.distance_in_km)

            op = list(zip(li, li2, li3))
            graph = Graph(op)
            print(start)
            print(end)
            context = {
                "ShortRouteForm": form,
                "sol": 1,
                "solution": list(graph.dijkstra(str(start), str(end))),
            }

            return render(request, "scheduler/short_route.html", context)

    else:
        form = ShortestRouteForm()

    context = {
        "ShortRouteForm": form,
        "sol": 0,
    }

    return render(request, "scheduler/short_route.html", context)


def train_seat_chart(request, id):
    seat_chart = models.SeatChart.objects.filter(train_id=id).order_by('date')
    context = {
        'chart': seat_chart,
    }
    return render(request, 'scheduler/train_seat_chart.html', context)
