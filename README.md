 Start apache n mysql services from XAMPP
 
 pip install djangorestframework
 pip install django-rest-auth
 pip install django-rest-registration
 
 step 1 : 
 for registration and login  => http://127.0.0.1:8000/rest-auth/
 http://127.0.0.1:8000/rest-auth/registration/
 http://127.0.0.1:8000/rest-auth/login/
  
 step 2:
 
 authentication is needed for all these
 
 a. to view project list ==> path('projectapi/', views.ProjectList.as_view()), 
          ==> http://127.0.0.1:8000/projectapi/
 b. to add update delete project with id ==> path('projectapi/<int:pk>', views.ProjectUp.as_view()),   
          ==> http://127.0.0.1:8000/projectapi/1
 c. to view task list ==> path('taskapi/', views.TaskList.as_view()),  
          ==>  http://127.0.0.1:8000/taskapi/
 d. to add update delete task ==> path('taskapi/<int:pk>', views.TaskUp.as_view()), 
          ==> http://127.0.0.1:8000/taskapi/3
 
 For user who has not permission to do some task, it will only allow upto add details, after submitting it will send response like No access.
 
 
