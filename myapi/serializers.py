from rest_framework import serializers
from .models import *
from django.contrib.auth.models import User

class ProjectSerializer(serializers.ModelSerializer):
    username = serializers.CharField(source=User.username)  
    def getUsername(self, obj):
        return obj.user.username

    username = serializers.SerializerMethodField("getUsername")

    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )

    class Meta:
        model = Project
        fields = ['id','project_name','project_description', 'created_at' ,'user', 'username']
        #fields = '__all__'
        
class TaskSerializer(serializers.ModelSerializer):
    
    def getUsername(self, obj):
        return obj.user.username

    user_share = serializers.SerializerMethodField("getUsername")

    class Meta:
        model = Task
        fields = ['id','task_name','task_description' ,'task_permission','project','user_share','user']
