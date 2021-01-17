from rest_framework import serializers
from .models import *
from django.contrib.auth.models import User

class ProjectSerializer(serializers.ModelSerializer):    
    def getUsername(self, obj):
        return obj.user.username

    username = serializers.SerializerMethodField("getUsername")

    class Meta:
        model = Project
        fields = ['id','project_name','project_description','username','user']
        
class TaskSerializer(serializers.ModelSerializer):
    
    def getUsername(self, obj):
        return obj.user.username

    user_assign = serializers.SerializerMethodField("getUsername")

    class Meta:
        model = Task
        fields = ['id','task_name','task_description' ,'task_permission','project','user_assign','user']

