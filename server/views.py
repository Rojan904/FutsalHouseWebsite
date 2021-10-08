from datetime import datetime

from django.contrib import messages, auth
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from server.models import carouselimg, heading, sliderimg, indeximg, index2, index3, trainingimg, trainingtext, \
    galleryimg, book


def home(request):
    # slider = carouselimg.objects.all()
    carousel = sliderimg.objects.all()
    text = heading.objects.all()
    index = indeximg.objects.all()
    indexsec = index2.objects.all()
    indexthird = index3.objects.all()
    return render(request, 'index.html',
                  {'text': text, 'carousel': carousel, 'index': index, 'indexsec': indexsec, 'indexthird': indexthird})


def event(request):
    return render(request, 'event.html')


def gallery(request):
    galery = galleryimg.objects.all()
    return render(request, 'gallery.html', {'galery': galery})


def registration(request):
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        email = request.POST['email']
        if password1 == password2:
            if User.objects.filter(username=username).exists():
                # print("username taken")
                messages.info(request, 'Username taken')
            else:
                user = User.objects.create_user(first_name=first_name, last_name=last_name, username=username,
                                                password=password1, email=email)
                user.save()
                # messages.info(request, 'User created')
                return redirect('../login/')
        else:
            # print('password not matched.')
            messages.info(request, 'Password wrong')
            return redirect('../register')
    else:
        return render(request, 'registration.html')


def login(request):
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect("../user/")
            # return HttpResponse()
        else:
            messages.info(request, 'invalid Credential')
            return redirect('../login/')

    else:
        return render(request, 'login.html')


def logout(request):
    auth.logout(request)
    return redirect('../')


@login_required
def user(request):
    if request.method == "POST":

        if request.POST.get("add"):
            user = request.user
            name = request.POST['name']
            email = request.POST['email']
            contact1 = request.POST['contact']
            date = request.POST['date']
            time = request.POST['time']
            books = book(user=user, name=name, email=email, contact=contact1,
                         date=date, time=time)
            books.save()
        else:
            bid = request.POST['id']
            var = book.objects.get(id=bid)
            var.name = request.POST['name']
            var.email = request.POST['email']
            var.contact1 = request.POST['contact']
            var.date = request.POST['date']
            var.time = request.POST['time']
            var.books = book(name=var.name, email=var.email, contact=var.contact1,
                             date=var.date, time=var.time)
            var.save()

    booking = book.objects.all()
    return render(request, 'user.html', {'booking': booking})


def training(request):
    train1 = trainingimg.objects.all()
    train2 = trainingtext.objects.all()
    return render(request, 'training.html', {'train1': train1, 'train2': train2})


def delete(request, bid)    :
    var = book.objects.get(id=bid)
    var.delete()
    vari = book.objects.filter(user=request.user)
    return render(request, 'user.html', {'booking': vari})
