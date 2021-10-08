from django.conf.urls import url
from django.urls import path
from django.views.generic import RedirectView

from server import views

urlpatterns = [
    path('', views.home, name="home"),
    path('home/', views.home, name="home"),
    path('event/', views.event, name="event"),
    path('gallery/', views.gallery, name="gallery"),
    path('register/', views.registration, name="registration"),
    path('training/', views.training, name="training"),
    path('login/', views.login),
    path('logout/', views.logout),
    path('user/', views.user),
    path('delete/<bid>', views.delete)
    # url(r'^favicon\.ico$', RedirectView.as_view(url='/static/images/favicon.ico'))
]
