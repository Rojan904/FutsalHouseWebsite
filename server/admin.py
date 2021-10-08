from django.contrib import admin

# Register your models here.
from server.models import carouselimg, heading, sliderimg, indeximg, index2, index3,\
    trainingimg, trainingtext, \
    galleryimg, book


class carouselimgAdmin(admin.ModelAdmin):
    list_display = ['img']


class headingAdmin(admin.ModelAdmin):
    list_display = ('para1', 'para2', 'para3')


class sliderimgAdmin(admin.ModelAdmin):
    list_display = ('img', 'text')


class indeximgAdmin(admin.ModelAdmin):
    list_display = ('img','text','head','para')


class index2Admin(admin.ModelAdmin):
    list_display = ('img1','text1','head1','para1','img2','text2','head2','para2','img3','text3','head3','para3')


class index3Admin(admin.ModelAdmin):
    list_display = ('head','para')


class trainingimgAdmin(admin.ModelAdmin):
    list_display = ('imgfirst','textfirst','imgsec','textsec','imgthird','textthird','imgfour','textfour')


class trainingtextAdmin(admin.ModelAdmin):
    list_display = ('head1','paraf1','paraf2','paraf3', 'head2','paras1','paras2','paras3', 'head3','parat1','parat2','parat3')


class galleryimgAdmin(admin.ModelAdmin):
    list_display = ('img1','img2','img3','img4','img5','img6','img7','img8','img9','img10','img11','img12','img13','img14','img15','img16')



# admin.site.register(carouselimg, carouselimgAdmin)
admin.site.register(sliderimg, sliderimgAdmin)
admin.site.register(heading, headingAdmin)
admin.site.register(indeximg, indeximgAdmin)
admin.site.register(index2, index2Admin)
admin.site.register(index3, index3Admin)
admin.site.register(trainingimg, trainingimgAdmin)
admin.site.register(trainingtext, trainingtextAdmin)
admin.site.register(galleryimg, galleryimgAdmin)

