import os

if __name__ == '__main__':
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bbs.settings')
    import django

    django.setup()

    from blog import models
    from django.db.models import Count


