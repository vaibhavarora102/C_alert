from django.shortcuts import *
from django.http import *

def index(request):
    return render(request, 'index.html')
