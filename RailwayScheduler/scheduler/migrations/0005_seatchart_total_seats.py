# Generated by Django 3.1.3 on 2020-12-05 11:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scheduler', '0004_auto_20201127_1309'),
    ]

    operations = [
        migrations.AddField(
            model_name='seatchart',
            name='total_seats',
            field=models.PositiveIntegerField(default=0),
            preserve_default=False,
        ),
    ]
