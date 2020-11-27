from django.urls import path
from django.contrib.auth import views as auth_views
from . import views
from . import forms

app_name = 'authenticate'
urlpatterns = [
    path('login/', auth_views.LoginView.as_view(authentication_form=forms.UserLoginForm), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('account/dashboard', views.dashboard, name='dashboard')

]
