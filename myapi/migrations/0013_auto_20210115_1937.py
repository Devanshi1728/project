# Generated by Django 3.1.4 on 2021-01-15 14:07

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapi', '0012_auto_20210115_1932'),
    ]

    operations = [
        migrations.RenameField(
            model_name='project',
            old_name='username',
            new_name='user',
        ),
    ]
