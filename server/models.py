from django.conf import settings
from django.db import models


# Create your models here.


class carouselimg(models.Model):
    img = models.FileField(upload_to='pics')


class sliderimg(models.Model):
    img = models.FileField(upload_to='pics')
    text = models.CharField(max_length=5)


class heading(models.Model):
    para1 = models.TextField()
    para2 = models.TextField()
    para3 = models.TextField()


class indeximg(models.Model):
    img = models.FileField(upload_to='pics')
    text = models.CharField(max_length=5)
    head = models.TextField()
    para = models.TextField()


class index2(models.Model):
    img1 = models.FileField(upload_to='pics')
    text1 = models.CharField(max_length=5)
    head1 = models.TextField()
    para1 = models.TextField()

    img2 = models.FileField(upload_to='pics')
    text2 = models.CharField(max_length=5)
    head2 = models.TextField()
    para2 = models.TextField()

    img3 = models.FileField(upload_to='pics')
    text3 = models.CharField(max_length=5)
    head3 = models.TextField()
    para3 = models.TextField()


class index3(models.Model):
    head = models.TextField()
    para = models.TextField()


class trainingimg(models.Model):
    imgfirst = models.FileField(upload_to='pics')
    textfirst = models.CharField(max_length=5)
    imgsec = models.FileField(upload_to='pics')
    textsec = models.CharField(max_length=5)
    imgthird = models.FileField(upload_to='pics')
    textthird = models.CharField(max_length=5)
    imgfour = models.FileField(upload_to='pics')
    textfour = models.CharField(max_length=5)


class trainingtext(models.Model):
    head1 = models.TextField()
    paraf1 = models.TextField()
    paraf2 = models.TextField()
    paraf3 = models.TextField()
    head2 = models.TextField()
    paras1 = models.TextField()
    paras2 = models.TextField()
    paras3 = models.TextField()
    head3 = models.TextField()
    parat1 = models.TextField()
    parat2 = models.TextField()
    parat3 = models.TextField()


class galleryimg(models.Model):
    img1 = models.FileField()
    img2 = models.FileField()
    img3 = models.FileField()
    img4 = models.FileField()
    img5 = models.FileField()
    img6 = models.FileField()
    img7 = models.FileField()
    img8 = models.FileField()
    img9 = models.FileField()
    img10 = models.FileField()
    img11 = models.FileField()
    img12 = models.FileField()
    img13 = models.FileField()
    img14 = models.FileField()
    img15 = models.FileField()
    img16 = models.FileField()


class book(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=200)
    contact = models.CharField(max_length=50)
    date = models.DateField()
    time = models.IntegerField()
