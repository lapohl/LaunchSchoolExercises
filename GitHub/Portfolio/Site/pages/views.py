from django.shortcuts import render

# Create your views here.
def home(request):
  return render(request, 'home.html')

def download(request):
  return render(request, 'download.html')

def links(request):
  return render(request, 'links.html') 

def projects(request):
  return render(request, 'projects.html')