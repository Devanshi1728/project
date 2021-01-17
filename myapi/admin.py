from django.contrib import admin
from .models import *

# Register your models here.

class User(admin.ModelAdmin):
    list_display = ['user.id', 'username', 'email', 'staff_status']
    ordering = ['id']

@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ['id', 'project_name', 'user']
    ordering = ['id']

@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    list_display = ['id','task_name','project','user','task_permission']
    ordering = ['id']

@admin.register(Permission)
class PermissionAdmin(admin.ModelAdmin):
    list_display = ['id', 'permission_name']
    ordering = ['id']
