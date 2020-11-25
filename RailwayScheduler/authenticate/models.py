from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class StaffMember(models.Model):
    member = models.OneToOneField(User, on_delete=models.CASCADE)
    contact = models.CharField(max_length=12)

    def __str__(self):
        return self.member.first_name
    


    

