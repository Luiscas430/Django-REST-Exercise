import pytest
from library.books.models import *

#Using Author Model ################################3
# @pytest.mark.django_db #Arrange method
# @pytest.mark.parametrize(
#     'name, last_name',
#     (
#         ('Paulo', 'Coelho'),
#         ('Haruki', 'Murakami'),
#         ('Yordi', 'Rosado')
#     )
# )
# def test_author_name(name, last_name):
#     author = Author.objects.create(name=name, last_name=last_name) #Act method
#     print('This is my authors name: ', author.name)
#     #assert author.last_name == nombre #Assert method
#     assert Author.objects.all().count() == 1
#     author.delete()
#     assert Author.objects.all().count() < 1


#Using Publisher Model ############################################
@pytest.mark.django_db #Arrange method
@pytest.mark.parametrize(
    'name, headquarters, foundation_year',
    (
        ('Penguin Random House', 'New York, US', 2013),
        ('Grupo Santillana', 'Madrid, España', 1959),
        ('Harper Collins', 'New York, US', 2008)
    )
)
def test_publisher_foundation_year(name, headquarters, foundation_year):
    publisher = Publisher.objects.create(name=name, headquarters=headquarters, foundation_year=foundation_year) #Act method
    print('This is the publishers foundation year: ', publisher.foundation_year)

    assert type(publisher.foundation_year) is int

    assert Publisher.objects.all().count() == 1
    publisher.delete()
    assert Publisher.objects.all().count() == 0


@pytest.mark.django_db #Arrange method
@pytest.mark.parametrize(
    'name, headquarters, foundation_year',
    (
        ('Penguin Random House', 'New York, US', 2013),
        ('Grupo Santillana', 'Madrid, España', 1959),
        ('Harper Collins', 'New York, US', 2008)
    )
)
def test_publisher_name(name, headquarters, foundation_year):
    publisher = Publisher.objects.create(name=name, headquarters=headquarters, foundation_year=foundation_year) #Act method
    print('This name of the book: ', publisher.name, 'is less than 64 characters.')

    assert len(publisher.name) < 64

    assert Publisher.objects.all().count() == 1
    publisher.delete()
    assert Publisher.objects.all().count() == 0


#Using Book Model #################################################
@pytest.mark.django_db #Arrange method
@pytest.mark.parametrize(
    'book_name, publish_year, pages, price',
    (
        ('Dune', 2010, 652, 19.99),
        ('Harry Potter Deathly Hallows', 2007, 437, 29.99),
        ('AI, the last invention', 2018, 385, 14.99)
    )
)
def test_book_name(book_name, publish_year, pages, price):
    book = Book.objects.create(name=book_name, publish_year = publish_year, pages = pages, price = price) #Act method
    print('This book is less than 50dlls: ', book.name)

    assert book.price < 50

    assert Book.objects.all().count() == 1
    book.delete()
    assert Book.objects.all().count() == 0


@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
    author = Author.objects.create(name='nombre', last_name='apellido')

    class AuthorQuerySetMock():
        def __init__(self):
            self.some_value = 1
        
        def count(self):
            return 4

    def model_count_mock():
        return AuthorQuerySetMock()

    monkeypatch.setattr(Author.objects, 'all', model_count_mock)

    assert Author.objects.all().count() == 4
    print('Haciendo el MonkeyPatch')
    