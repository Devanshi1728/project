# Generated by Django 3.1.4 on 2021-01-15 11:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapi', '0007_auto_20210115_1710'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='created_at',
            field=models.DateField(),
        ),
    ]