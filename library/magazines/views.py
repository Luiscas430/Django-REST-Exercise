from rest_framework import viewsets
from rest_framework import permissions
from library.magazines.serializers import *

class EditorViewSet(viewsets.ModelViewSet):
    queryset = Editor.objects.all().order_by('name')
    serializer_class = EditorSerializer
    permission_classes = []

class MagazineViewSet(viewsets.ModelViewSet):
    queryset = Magazine.objects.all().order_by('magazine_name')
    serializer_class = MagazineSerializer
    permission_classes = []

class MagazinesEditorsViewSet(viewsets.ModelViewSet):
    queryset = MagazinesEditors.objects.all()
    serializer_class = MagazinesEditorsSerializer
    permission_classes = []
