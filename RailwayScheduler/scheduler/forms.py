from django import forms
from .models import Station
from .models import Train
from .models import Schedule
from .models import Route
from .models import SeatChart


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


class ShortestRouteForm(forms.ModelForm):
    class Meta:
        model = Route
        exclude = ("distance_in_km",)


class SeatChartForm(forms.ModelForm):
    class Meta:
        model = SeatChart
        exclude = ('updated_by', 'total_seats',)
