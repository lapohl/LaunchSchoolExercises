from django.shortcuts import render
from django.views import generic

def HomePageView(request):
    return render(request, 'templates/home.html')