# Generated by Django 3.1.4 on 2021-01-15 11:11

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapi', '0003_auto_20210115_1639'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='created_at',
            field=models.DateTimeField(default=datetime.datetime(2021, 1, 15, 16, 41, 43, 135349)),
        ),
    ]
