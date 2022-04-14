import pytest
from library.magazines.models import *

#Using Editor Model################################
@pytest.mark.django_db #Arrange method
@pytest.mark.parametrize(
    'name, last_name',
    (
        ('Juan', 'Hernandez Herrero'),
        ('Otto', 'Fuerbringer'),
        ('Richard', 'Dorment')
    )
)
def test_editor_name(name, last_name):
    editor = Editor.objects.create(name=name, last_name=last_name) #Act method
    print('This is my editors name: ', editor.name)

    assert editor.name == 'Juan' or editor.name == 'Otto' or editor.name == 'Richard'
    assert Editor.objects.all().count() == 1
    editor.delete()
    assert Editor.objects.all().count() < 1


#Using Magazine Model#########################3
@pytest.mark.django_db 
@pytest.mark.parametrize(
    'title, magazine_name, edition, pages',
    (
        ('Best Mens Fragances for Summer', 'Mens Health', 35, 55),
        ('Grammy Awards 2022', 'People', 23, 47),
        ('Mustang al ataque', 'Automovil Panamericano', 45, 36)
    )
)
def test_magazine_edition(title, magazine_name, edition, pages):
    magazine = Magazine.objects.create(title=title, magazine_name = magazine_name, edition = edition, pages = pages) #Act method
    print('The magazine', magazine.magazine_name, 'is not a limited edition.')

    limited_editions = [15, 20, 98, 46]
    assert magazine.edition not in limited_editions

    assert Magazine.objects.all().count() == 1
    magazine.delete()
    assert Magazine.objects.all().count() == 0



@pytest.mark.django_db 
@pytest.mark.parametrize(
    'title, magazine_name, edition, pages',
    (
        ('How to trim your beard', 'Mens Health', 42, 55),
        ('New Hollywood Marriage', 'People', 67, 48),
        ('Caballeros del v8', 'Automovil Panamericano', 54, 36)
    )
)
def test_magazine_pages(title, magazine_name, edition, pages):
    magazine = Magazine.objects.create(title=title, magazine_name = magazine_name, edition = edition, pages = pages) #Act method
    print('The', magazine.magazine_name, 'magazine has', magazine.pages, 'pages')

    assert isinstance(magazine.pages, int)

    assert Magazine.objects.all().count() == 1
    magazine.delete()
    assert Magazine.objects.all().count() == 0

   



