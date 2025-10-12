from django.contrib import admin
from django.urls import path, include
from django.http import HttpResponse


def home(request):
    return HttpResponse(
        "<h1>Welcome to my Django App on AWS!"
        "</h1><p>Go to <a href='/polls/'>Polls</a> "
        "or <a href='/admin/'>Admin</a>.</p>"
    )


urlpatterns = [
    path("", home, name="home"),
    path("polls/", include("polls.urls")),
    path("admin/", admin.site.urls),
]
