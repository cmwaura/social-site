from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
# Create your models here.


class UserProfile(models.Model):

	user = models.OneToOneField(User, unique=True)
	first_name = models.CharField("First Name", max_length=140, null=False, blank=False)
	last_name = models.CharField("Last Name", max_length=140, null=False, blank=False)
	job_title = models.CharField("Job title", max_length=140)
	created_at = models.DateTimeField("Created At", auto_now_add=True)
	url_key = models.CharField(max_length=140)
	class Meta:
		ordering = ('created_at',)


	def __str__(self): 
		print (self.user)
		return "%s profile" %self.user




def create_user_profile(sender, instance, created, **kwargs):
	if created:
		profile, created = UserProfile.objects.get_or_create(user=instance)

post_save.connect(create_user_profile, sender=User)