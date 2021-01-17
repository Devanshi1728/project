from django.shortcuts import render
from rest_framework.generics import GenericAPIView
from rest_framework.mixins import ListModelMixin, CreateModelMixin, RetrieveModelMixin,UpdateModelMixin, DestroyModelMixin
from django.contrib import auth
from .models import *
from .serializers import *
from .permissions import *
from rest_framework.permissions import IsAdminUser, IsAdminUser, IsAuthenticatedOrReadOnly, IsAuthenticated
import jwt
from rest_framework.response import Response
from rest_framework import status

# Create your views here.

class ProjectList(GenericAPIView, ListModelMixin, CreateModelMixin):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer
    permission_classes = [IsAuthenticatedOrReadOnly, IsAuthenticated]

    def get(self, request, *args, **kwargs):
        return self.list(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        return self.create(request, *args, **kwargs)

class ProjectUp(GenericAPIView, UpdateModelMixin, DestroyModelMixin, RetrieveModelMixin):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer
    permission_classes = [IsOwnerOrReadOnly,
                          IsAuthenticatedOrReadOnly, IsAuthenticated]

    def get(self, request, *args, **kwargs):
        return self.retrieve(request, *args, **kwargs)

    def put(self, request, *args, **kwargs):
        return self.update(request, *args, **kwargs)

    def delete(self, request, *args, **kwargs):
        return self.destroy(request, *args, **kwargs)

class TaskList(GenericAPIView, ListModelMixin, CreateModelMixin):
    queryset = Task.objects.all()
    serializer_class = TaskSerializer
    permission_classes = [IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly,  IsAuthenticated]

    def get(self, request, *args, **kwargs):
        return self.list(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        return self.create(request, *args, **kwargs)
  
class TaskUp(GenericAPIView, UpdateModelMixin, DestroyModelMixin, RetrieveModelMixin):
    queryset = Task.objects.all()
    serializer_class = TaskSerializer
    permission_classes = [IsAuthenticatedOrReadOnly,
                          IsOwnerOrReadOnly, IsAuthenticated]

    def get(self, request, *args, **kwargs):
        return self.retrieve(request, *args, **kwargs)

    def put(self, request, *args, **kwargs):
        return self.update(request, *args, **kwargs)

    def delete(self, request, *args, **kwargs):
        return self.destroy(request, *args, **kwargs)
