from rest_framework import serializers
from .models import *

class ThingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Thing
        fields = ['id', 'name', 'image']

class AuthorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Author
        fields = ['id', 'name', 'last_name']

class BookSerializer(serializers.ModelSerializer):
    #author = AuthorSerializer()
    authors = serializers.StringRelatedField(many=True)
    publishers = serializers.StringRelatedField(many=True)
    class Meta:
        model = Book
        fields = ['id', 'name', 'authors', 'publishers', 'publish_year', 'pages', 'price', 'created_at', 'updated_at']

    '''
    # A fuerzas crear un modelo antes que otro
    def create(self, vdata):
        author = vdata.pop('author')
        author_instance = Auhtor.objects.create(**author)
        book_instance = Book.objects.create(author = author_instance, **vdata)
        return book_instance
    '''

class BooksAuthorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BooksAuthors
        fields = ['id', 'book', 'author']

class PublisherSerializer(serializers.ModelSerializer):
    class Meta:
        model = Publisher
        fields = ['id', 'name', 'headquarters', 'foundation_year']

class BooksPublishersSerializer(serializers.ModelSerializer):
    class Meta:
        model = BooksPublishers
        fields = ['id', 'book', 'publisher']