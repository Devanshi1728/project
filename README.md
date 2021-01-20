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
 
 http://127.0.0.1:8000/rest-auth/registration/   
 {username:"", email:"", password1:"", password2:""}
 http://127.0.0.1:8000/rest-auth/login/      
 {username:"", email:"", password:""}
 Response:  { "key": "" }  
  
 ## API 2:   [FOR PROJECT CRUD]
  
 http://127.0.0.1:8000/projectapi/
 To view project list, 
 
 
 http://127.0.0.1:8000/projectapi/{id}
 To retrieve, update, delete project { pass project id}
   
 {
  project_name: '',
  project_description:'',
  user: ''
 }
 
 
 ## API 3: [FOR TASK CRUD]
 
 http://127.0.0.1:8000/taskapi/
 to view task list 
 {
  task_name:'',
  task_description:'',
  task_permission:'',
  project_id:'',
  user_share:''
 }
  
 http://127.0.0.1:8000/taskapi/{id}
 to retrieve, update, delete task {pass task id}
 
          
 
 
