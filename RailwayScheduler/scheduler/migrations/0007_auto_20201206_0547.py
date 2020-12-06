# Generated by Django 3.1.3 on 2020-12-06 05:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('authenticate', '0001_initial'),
        ('scheduler', '0006_auto_20201205_1154'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='station',
            name='occupied_platform',
        ),
        migrations.AlterField(
            model_name='schedule',
            name='updated_by',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='authenticate.staffmember'),
        ),
        migrations.AlterField(
            model_name='station',
            name='updated_by',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='authenticate.staffmember'),
        ),
        migrations.AlterField(
            model_name='train',
            name='destination_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='scheduler.station'),
        ),
        migrations.AlterField(
            model_name='train',
            name='route_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='scheduler.route'),
        ),
        migrations.AlterField(
            model_name='train',
            name='updated_by',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='authenticate.staffmember'),
        ),
        migrations.CreateModel(
            name='TrainLegacy',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('old_train_id', models.PositiveIntegerField()),
                ('train_name', models.CharField(max_length=100)),
                ('destination', models.CharField(max_length=100)),
                ('route_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='scheduler.route')),
            ],
        ),
    ]
