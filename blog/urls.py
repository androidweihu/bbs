from django.urls import path
from blog import views

urlpatterns = [
    path('(\w+)/article/(\d+)/', views.article_detail),  # 文章详情  article_detail(request, xiaohei, 1)
    path('(\w+)', views.home),  # home(request, username)

]
