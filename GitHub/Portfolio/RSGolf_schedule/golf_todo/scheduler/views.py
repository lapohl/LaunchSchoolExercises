from django.shortcuts import render
from scheduler.models import Task
import pandas as pd

# Create your views here.
def other(request):
  q = Task(task='Mow', area='Green', hole=19)
  q.save()
  context = Task.objects.all()
  return render(request, 'view_edit_tasks.html', context=context)

from django.shortcuts import render

# Create your views here.
def home(request):
  return render(request, 'index.html')

def log_entry(request):
  return render(request, 'log_entry.html')

def edit_task(request):
  tasks = Task.objects.all()
  context = {
    'tasks': tasks,
  }
  return render(request, 'view_edit_tasks.html', context=context)

def add_task(request):
  tasks = Task.objects.all()
  task_types = Task.objects.order_by().values('type').distinct()
  areas = Task.objects.order_by().values('area').distinct()
  context = {
    'tasks': tasks,
    'task_types': task_types,
    'areas': areas,
  }
  return render(request, 'add_task.html', context=context)

def delete_task(request, id):
  task_to_delete = Task.objects.get(id=id)
  task_to_delete.delete()
  tasks = Task.objects.all()
  context = {
    'tasks': tasks,
  }
  return render(request, 'view_edit_tasks.html', context=context)