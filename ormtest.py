import os

if __name__ == '__main__':
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bbs.settings')
    import django

    django.setup()

    from blog import models
    from django.db.models import Count

    # user = models.UserInfo.objects.all()
    # print(user)

    # user=models.UserInfo.objects.filter(username='weihu').filter()
    # blog=user.blog
    # category_list = models.Category.objects.filter(blog=blog).annotate(c=Count("article")).values("title", "c")
    # print(category_list)

