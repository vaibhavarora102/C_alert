from django.shortcuts import *
from django.http import *
from django.core.files.storage import FileSystemStorage
from django.views.decorators.csrf import *

def index(request):
    return render(request, 'index.html')

@csrf_protect
def uploadvideo(request):
    # creating object of file
    obj = request.FILES['video']

    #defining path
    path = "videos/" + obj.name

    #creating object for storing file
    fs = FileSystemStorage()

    # saving file through filesystem storage object
    fs.save(path, obj)

    d={"video":path} #dictionary for sending path

    return render(request,'playvideo.html',{'x':d})

