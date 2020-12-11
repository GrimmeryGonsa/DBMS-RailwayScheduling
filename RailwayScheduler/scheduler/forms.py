from django import forms
from .models import Station
from .models import Train
from .models import Schedule
from .models import Route
from .models import SeatChart


class DateIp(forms.DateInput):
    input_type = 'date'


class TimeIp(forms.TimeInput):
    input_type = 'time'


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
        widgets = {
            'date': DateIp(),
            'arrival_time': TimeIp(),
            'departure_time': TimeIp(),
        }


class ShortestRouteForm(forms.ModelForm):
    class Meta:
        model = Route
        exclude = ("distance_in_km",)


class SeatChartForm(forms.ModelForm):
    class Meta:
        model = SeatChart
        exclude = ('updated_by', 'total_seats',)
        widgets = {
            'date': DateIp(),

        }

    def __init__(self, *args, **kwargs):
        super(SeatChartForm, self).__init__(*args, *kwargs)

        first_class = forms.IntegerField(widget=forms.TextInput(attrs={
            "type": "text",
            "id": "class",
            "name": "class",
            "placeholder": "Seats",

        }))

        second_class = forms.IntegerField(widget=forms.TextInput(attrs={
            "type": "text",
            "id": "class",
            "name": "class",
            "placeholder": "Seats",

        }))
        general = forms.IntegerField(widget=forms.TextInput(attrs={
            "type": "text",
            "id": "class",
            "name": "class",
            "placeholder": "Seats",

        }))

        ac = forms.IntegerField(widget=forms.TextInput(attrs={
            "type": "text",
            "id": "class",
            "name": "class",
            "placeholder": "Seats",

        }))

        sleeper = forms.IntegerField(widget=forms.TextInput(attrs={
            "type": "text",
            "id": "class",
            "name": "class",
            "placeholder": "Seats",

        }))

        train_id = forms.CharField(widget=forms.TextInput(attrs={
            "type": "id",
            "id": "class",
            "name": "id",
            "placeholder": "Train",
        }))
