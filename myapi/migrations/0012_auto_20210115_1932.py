# Generated by Django 3.1.4 on 2021-01-15 14:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapi', '0011_auto_20210115_1857'),
    ]

    operations = [
        migrations.RenameField(
            model_name='project',
            old_name='owner',
            new_name='username',
        ),
    ]