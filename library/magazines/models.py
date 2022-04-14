from django.db import models

class Editor(models.Model):
    name = models.CharField(max_length = 128)
    last_name = models.CharField(max_length = 128, null=True)

class Magazine(models.Model):
    title = models.CharField(max_length = 128, null = True)
    magazine_name = models.CharField(max_length = 64, null = True)
    edition = models.SmallIntegerField(null = True)
    pages = models.SmallIntegerField()
    editors = models.ManyToManyField('Editor', through='MagazinesEditors')
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    

class MagazinesEditors(models.Model):
    magazine = models.ForeignKey(Magazine, related_name='MagazineWithEditors', on_delete = models.DO_NOTHING)
    editor = models.ForeignKey(Editor, related_name='EditorWithMagazines', on_delete = models.DO_NOTHING)
   
