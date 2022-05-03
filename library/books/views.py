from rest_framework import viewsets
from rest_framework import permissions
from library.books.serializers import *
import base64
from rest_framework import pagination
from rest_framework.response import Response
from django.core.cache import cache
from django.views.decorators.cache import cache_page
from django.utils.decorators import method_decorator
from django.views.decorators.vary import vary_on_cookie
from rest_framework import status
from django.views.decorators.vary import vary_on_headers

# class LibraryViewSet(viewsets.ModelViewSet):
#     queryset = Library.objects.all().order_by('id')
#     serializer_class = LibrarySerializer
#     permission_classes = []
    
    
#     def list(self, request):
#         library_queryset = Library.objects.filter(id__gt = 0)
#         # Try to play with the above line for example:
#         # library_queryset = Library.objects.filter(id__lte = request.library_id)
#         # Using that line it will use a parameter called "library_id" of your request
#         # in order to retrieve all the libraries that contains an ID less than equal (<=)
#         # of the library_id parameter

#         serializer = LibrarySerializer(library_queryset, many = True)
#         return Response(serializer.data)
    
#     # You can also override the other methods and also you can use the PRIMARY KEY passed at the end of the URL request
#     def retrieve(self, request, pk=None):
#         library_queryset = Library.objects.filter(id = pk)
#         serializer = LibrarySerializer(library_queryset)
#         return Response(serializer.data)

#Implementar esto en el final
class CustomPagination(pagination.PageNumberPagination):
    page_size = 2
    page_size_query_param = 'size'
    max_page_size = 20
    page_query_param = 'p'

class CustomPaginationOffset(pagination.LimitOffsetPagination):
    default_limit = 2
    limit_query_param = 'limit'
    offset_query_param = 'offset'
    max_limit = 50

class ThingViewSet(viewsets.ModelViewSet):
    queryset = Thing.objects.all().order_by('id')
    serializer_class = ThingSerializer
    permission_classes = []

#@method_decorator(cache_page(60*60, key_prefix='main'))
#@method_decorator(vary_on_headers('Authorization',))
class AuthorViewSet(viewsets.ModelViewSet):
    queryset = Author.objects.all().order_by('name')
    serializer_class = AuthorSerializer
    permission_classes = []
    #pagination_class = CustomPaginationOffset

class BookViewSet(viewsets.ModelViewSet):
    queryset = Book.objects.all().order_by('name')
    serializer_class = BookSerializer
    permission_classes = []

class BooksAuthorsViewSet(viewsets.ModelViewSet):
    queryset = BooksAuthors.objects.all()
    serializer_class = BooksAuthorsSerializer
    permission_classes = []

class PublisherViewSet(viewsets.ModelViewSet):
    queryset = Publisher.objects.all().order_by('name')
    serializer_class = PublisherSerializer
    permission_classes = []

class BooksPublishersViewSet(viewsets.ModelViewSet):
    queryset = BooksPublishers.objects.all()
    serializer_class = BooksPublishersSerializer
    permission_classes = []

