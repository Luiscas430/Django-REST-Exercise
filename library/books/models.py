from django.db import models

class Thing(models.Model):
    name = models.CharField(max_length = 128)
    image = models.TextField(null=False)

class Author(models.Model):
    name = models.CharField(max_length = 128, default="")
    last_name = models.CharField(max_length = 128, null=True)

class Publisher(models.Model):
    name = models.CharField(max_length = 128)
    headquarters = models.CharField(max_length = 256)
    foundation_year = models.SmallIntegerField()

class Book(models.Model):
    name = models.CharField(max_length = 256)
    publish_year = models.SmallIntegerField()
    pages = models.SmallIntegerField()
    price = models.DecimalField(max_digits = 6, decimal_places = 2)
    authors = models.ManyToManyField(Author, through='BooksAuthors')
    publishers = models.ManyToManyField(Publisher, through='BooksPublishers')
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    
class BooksAuthors(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithAuthors', on_delete = models.DO_NOTHING)
    author = models.ForeignKey(Author, related_name='AuthorWithBooks', on_delete = models.DO_NOTHING)

class BooksPublishers(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithPublishers', on_delete = models.DO_NOTHING)
    publisher = models.ForeignKey(Publisher, related_name='PublisherWithBooks', on_delete = models.DO_NOTHING)
