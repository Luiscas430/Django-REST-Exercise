from library.magazines import views
from rest_framework import routers
from django.urls import path, include

router = routers.DefaultRouter()
router.register(r'editors', views.EditorViewSet)
router.register(r'magazineseditor', views.MagazinesEditorsViewSet)
router.register(r'', views.MagazineViewSet)

urlpatterns = [
    path('', include(router.urls)),
]