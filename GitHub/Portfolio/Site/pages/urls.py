from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('index.html', views.home, name='home'),
    path('download.html', views.download, name='download'),
    path('links.html', views.links, name='links'),
    path('projects.html', views.projects, name='projects'),
]