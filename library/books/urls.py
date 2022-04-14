from library.books import views
from rest_framework import routers
from django.urls import path, include

router = routers.DefaultRouter()
router.register(r'authors', views.AuthorViewSet, 'authors')
router.register(r'booksauthor', views.BooksAuthorsViewSet, 'booksauthor')
router.register(r'publishers', views.PublisherViewSet, 'publishers')
router.register(r'bookspublisher', views.BooksPublishersViewSet, 'bookspublisher')
router.register(r'', views.BookViewSet)

urlpatterns = [
    path('', include(router.urls)),
]