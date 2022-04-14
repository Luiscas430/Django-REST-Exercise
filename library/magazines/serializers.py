from rest_framework import serializers
from .models import *

class EditorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Editor
        fields = ['id', 'name', 'last_name']

class MagazineSerializer(serializers.ModelSerializer):
    editors = serializers.StringRelatedField(many=True)
    class Meta:
        model = Magazine
        fields = ['id', 'title', 'magazine_name', 'edition', 'pages', 'editors', 'created_at', 'updated_at']

class MagazinesEditorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = MagazinesEditors
        fields = ['id', 'magazine', 'editor']