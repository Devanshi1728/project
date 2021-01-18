from django.db import models
from django.contrib.auth.models import User

# Create your models here.
# save(), isLogin(), 

class Project(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,related_name='puser')
    project_name = models.CharField(max_length=30)
    project_description = models.TextField()
    created_at = models.DateField()
    
    def __str__(self):
        return self.project_name

class Permission(models.Model):
    permission_name = models.CharField(max_length=50)
    permission_desc = models.TextField()

    def __str__(self):
        return self.permission_name  

class Task(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='assign_user')
    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name='pro_name')
    task_name = models.CharField(max_length=30)
    task_description = models.TextField()
    task_permission = models.ForeignKey(Permission, on_delete=models.CASCADE)

    def __str__(self):
        return self.task_name
    




