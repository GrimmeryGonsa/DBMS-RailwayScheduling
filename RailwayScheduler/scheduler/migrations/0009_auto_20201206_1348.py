# Generated by Django 3.1.3 on 2020-12-06 13:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('scheduler', '0008_seatchart_updated_by'),
    ]

    operations = [
        migrations.AlterField(
            model_name='trainlegacy',
            name='route_id',
            field=models.ForeignKey(default='AUTO', null=True, on_delete=django.db.models.deletion.SET_NULL, to='scheduler.route'),
        ),
    ]
