from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin

from .models import NoteBook

class NoteBookAdmin(SummernoteModelAdmin):
	list_display = ("__str__", "created_on", "updated_on", "active", "featured", "published")

	prepopulated_fields = {"slug":("title",)}



admin.site.register(NoteBook, NoteBookAdmin)
