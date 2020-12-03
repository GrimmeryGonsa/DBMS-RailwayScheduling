from django import forms
from .models import Station
from .models import Train
from .models import Schedule
from .models import Route


class StationForm(forms.ModelForm):
    class Meta:
        model = Station
        exclude = ('updated_by',)


class TrainForm(forms.ModelForm):
    class Meta:
        model = Train
        exclude = ('updated_by',)


class ScheduleForm(forms.ModelForm):
    class Meta:
        model = Schedule
        exclude = ('updated_by',)

    ##def clean(self):
    ##data = self.cleaned_data
    ##arrival = data['arrival_time']
    ##station_id = data['station_id']
    ##schedule = Station.objects.filter(station_id)


class ShortestRouteForm(forms.ModelForm):
    class Meta:
        model = Route
        exclude = ("distance_in_km",)
