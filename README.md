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
 
 ## API 1:  [Registration and login]
 
 http://127.0.0.1:8000/rest-auth/registration/   arg: username, email, password1, password2
 http://127.0.0.1:8000/rest-auth/login/      arg:  username, email, password
 Response:  auth Key  
  
 ## API 2:   [FOR PROJECT CRUD]
  
 http://127.0.0.1:8000/projectapi/
 To view project list, 
 path('projectapi/', views.ProjectList.as_view()), 
 
 http://127.0.0.1:8000/projectapi/{id}
 To retrieve, update, delete project { pass project id}
 path('projectapi/<int:pk>', views.ProjectUp.as_view()),   
 
 ## API 3: [FOR TASK CRUD]
 
 http://127.0.0.1:8000/taskapi/
 to view task list 
 path('taskapi/', views.TaskList.as_view()),  
  
 http://127.0.0.1:8000/taskapi/{id}
 to retrieve, update, delete task {pass task id}
 path('taskapi/<int:pk>', views.TaskUp.as_view()), 
          
 
 
