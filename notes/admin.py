from django.contrib import admin


from .models import NoteBook

class NoteBookAdmin(admin.ModelAdmin):
	list_display = ("__str__", "created_on", "updated_on", "active", "featured")

	prepopulated_fields = {"slug":("title",)}



admin.site.register(NoteBook, NoteBookAdmin)
