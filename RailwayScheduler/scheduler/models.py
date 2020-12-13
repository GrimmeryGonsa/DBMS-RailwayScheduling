from django.db import models
from authenticate.models import StaffMember


# Create your models here.

class Station(models.Model):
    station_name = models.CharField(max_length=100)
    platform_count = models.PositiveIntegerField()
    updated_by = models.ForeignKey(StaffMember, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.station_name


class Route(models.Model):
    distance_in_km = models.PositiveIntegerField()
    start_station_id = models.ForeignKey(Station, on_delete=models.CASCADE, related_name="start")
    end_station_id = models.ForeignKey(Station, on_delete=models.CASCADE, related_name="end")

    def __str__(self):
        return str(self.start_station_id.station_name + " to " + self.end_station_id.station_name)


class Category(models.Model):
    category_name = models.CharField(max_length=100)

    def __str__(self):
        return self.category_name


class Train(models.Model):
    train_name = models.CharField(max_length=100)
    updated_by = models.ForeignKey(StaffMember, on_delete=models.SET_NULL, null=True)
    category_id = models.ForeignKey(Category, on_delete=models.CASCADE)
    destination_id = models.ForeignKey(Station, on_delete=models.SET_NULL, null=True)
    route_id = models.ForeignKey(Route, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.train_name


class SeatChart(models.Model):
    date = models.DateField()
    first_class = models.PositiveIntegerField()
    second_class = models.PositiveIntegerField()
    ac = models.PositiveIntegerField()
    sleeper = models.PositiveIntegerField()
    general = models.PositiveIntegerField()
    train_id = models.ForeignKey(Train, on_delete=models.CASCADE)
    total_seats = models.PositiveIntegerField(null=True, blank=True)
    updated_by = models.ForeignKey(StaffMember, null=True, blank=True,on_delete=models.SET_NULL)

    class Meta:
        unique_together = (("date", "train_id"),)

    def __str__(self):
        return str(self.train_id.train_name + " of " + str(self.date))


class Schedule(models.Model):
    train_id = models.ForeignKey(Train, on_delete=models.CASCADE)
    station_id = models.ForeignKey(Station, on_delete=models.CASCADE)
    date = models.DateField()
    arrival_time = models.TimeField()
    departure_time = models.TimeField()
    updated_by = models.ForeignKey(StaffMember, on_delete=models.SET_NULL, null=True)

    class Meta:
        unique_together = (("station_id", "date", "train_id"),)

    def __str__(self):
        return str(self.station_id.station_name + " " + str(self.date))


class TrainLegacy(models.Model):
    train_name = models.CharField(max_length=100)
    destination = models.CharField(max_length=100)
    route_id = models.ForeignKey(Route, on_delete=models.SET_NULL, null=True, default=1)

    def __str__(self):
        return self.train_name



