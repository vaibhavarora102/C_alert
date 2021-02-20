from django.shortcuts import *
from django.http import *
from django.core.files.storage import FileSystemStorage
from django.views.decorators.csrf import *
import numpy as np
import tensorflow as tf

def index(request):
    return render(request, 'index.html')
def livevideo(request):
    return render(request, 'livevideo.html')

@csrf_protect
def uploadvideo(request):
    obj = request.FILES['video']
    path = "videos/" + obj.name
    fs = FileSystemStorage()
    fs.save(path, obj)
    d = {"video": path}
    return render(request, 'playvideo.html', {'x': d})

model = "crime_alert.h5"

model= tf.keras.models.load_model(model)
test_image = "videos/demo.mp4"

def imgprep(test_image):
    from tensorflow.keras.preprocessing import image
    test_image=image.load_img(test_image, target_size=(224,224),
        interpolation='nearest')

    test_image = image.img_to_array(test_image)
    test_image =test_image/255
    test_image = np.expand_dims(test_image, axis=0)
    return test_image


def pred(model, test_image):
    test_image = imgprep(test_image)
    predictions = model.predict(test_image)
    predicted_bboxes = predictions[1][0][0:4]
    prediction_Score = predictions[0][0][0]
    if prediction_Score < 0.5:
        x = "criminal_case"
    else:
        x = "normal case"
    return x, predicted_bboxes

x,prediction_box =pred(model, test_image)
print(x)