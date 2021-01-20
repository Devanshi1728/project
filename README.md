 # Dependecies:
 Start apache n mysql services from XAMPP
 
 pip install djangorestframework
 pip install django-rest-auth
 pip install django-rest-registration
 
 # APIS
 http://127.0.0.1:8000/rest-auth/registration/
 http://127.0.0.1:8000/rest-auth/login/   
 http://127.0.0.1:8000/projectapi/
 http://127.0.0.1:8000/taskapi/
 
 ## API 1: 
 Registration and login   
 http://127.0.0.1:8000/rest-auth/registration/   ==> username, email, password1, password2
 http://127.0.0.1:8000/rest-auth/login/      ===> username, email, password
  Response:  auth Key  
  
 ## API 2:
  
 To view project list ==> path('projectapi/', views.ProjectList.as_view()), 
           http://127.0.0.1:8000/projectapi/
 to add update delete project with id ==> path('projectapi/<int:pk>', views.ProjectUp.as_view()),   
           http://127.0.0.1:8000/projectapi/{id}
 to view task list ==> path('taskapi/', views.TaskList.as_view()),  
           http://127.0.0.1:8000/taskapi/
 to add update delete task ==> path('taskapi/<int:pk>', views.TaskUp.as_view()), 
          http://127.0.0.1:8000/taskapi/{id}
 
 
