from django.db import models
from django.contrib.auth.models import User
from taggit.managers import TaggableManager

# Create your models here.
class NewsFeed(models.Model):

	newsfeed = models.CharField(max_length=140, blank =False, null=False)
	submitter = models.ForeignKey(User)
	created_on = models.DateTimeField(auto_now_add=True, auto_now=False)
	updated_on = models.DateTimeField(auto_now_add=False, auto_now=True)
	active = models.BooleanField(default=True)
	featured = models.BooleanField(default=False)
	published = models.BooleanField(default=True)
	
	
	def __str__(self):
		return self.newsfeed

	
