from django import forms
from .models import Station
from .models import Train
from .models import Schedule


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
