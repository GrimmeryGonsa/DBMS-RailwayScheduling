from django.shortcuts import render
from django.views.generic import ListView
from authenticate import models as models1
from . import models
from django.contrib.auth.decorators import login_required
from .forms import StationForm
from django.http.response import HttpResponseRedirect


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


def station_delete(request, id):
    station = models.Station.objects.get(pk=id)
    station.delete()
    return HttpResponseRedirect('/station_list')
