from django.db import models
from django.contrib.auth.models import User

from taggit.managers import TaggableManager
# Create your models here.
class NoteBook(models.Model):
	title = models.CharField(max_length=140, blank =False, null=False)
	submitter = models.ForeignKey(User)
	banner = models.ImageField(upload_to='media/pics', null=True,blank=True)
	text = models.TextField(max_length=100000, blank=False, null=False)
	created_on = models.DateTimeField(auto_now_add=True, auto_now=False)
	updated_on = models.DateTimeField(auto_now_add=False, auto_now=True)
	active = models.BooleanField(default=True)
	featured = models.BooleanField(default=False)
	slug = models.SlugField(unique=True)
	tags = TaggableManager()

	def __str__(self):
		return self.title

	class Meta:
		unique_together = ('title', 'slug',)

	def get_absolute_url(self):
		pass

	
	
	
	
	