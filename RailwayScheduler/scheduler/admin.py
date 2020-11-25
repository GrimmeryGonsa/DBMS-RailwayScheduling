from django.contrib import admin
from .models import (Station, Schedule, SeatChart, Train, Category, Route)

# Register your models here.

admin.site.register([Station, Schedule, SeatChart, Train, Category, Route])
