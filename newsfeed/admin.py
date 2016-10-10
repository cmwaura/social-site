from django.contrib import admin
from .models import NewsFeed
# Register your models here.
class NewsFeedAdmin(admin.ModelAdmin):
	list_display = ("__str__", "timestamp", "updated_on", "active", "featured", "published")




admin.site.register(NewsFeed, NewsFeedAdmin)
