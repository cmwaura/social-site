import json
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import get_user_model
from django.views.generic import UpdateView, DetailView
from django.contrib.auth import get_user_model
# third party apps

from registration.backends.hmac.views import ActivationView
from actstream.models import Action
from actstream import action
from actstream.models import following, followers

# app detail imports 
from notes.views import NoteBookCreateView
from .models import UserProfile
from .forms import UserProfileForm
from actstream.models import actor_stream
# extra scripts.


user = get_user_model()

# Create your views here.

class UserProfileDetailView(DetailView):
	model  = get_user_model()
	slug_field = "username"
	template_name = 'user/profile.html'
	
	def get_object(self, queryset=None):
		user = super(UserProfileDetailView, self).get_object(queryset)
		UserProfile.objects.get_or_create(user=user)
		return user

	def get_user_followee(self):
		'''
		people that the self.request.user is following
		'''

		followee = following(self.request.user)
		return followee

	def get_user_followers(self):
		'''
		people that follow self.request.user
		'''

		follower = followers(self.request.user)[:6]
		return follower

	def get_follower_count(self):
		follower_count = len(followers(self.request.user))
		return follower_count

	def get_context_data(self, **kwargs):
		'''
		here we are getting all the feeds associated with an individual user and if the actor is the user
		then we will display it on the profile page else it will be displayed in the feeds page.
		'''
		context = super(UserProfileDetailView, self).get_context_data(**kwargs)
		# here we get the user profile object which we will use to pass to the actor_stream()
		# and generate the profile stream

		profile = self.get_object()
		# passing the actor_stream as a context var
		context['user_feeds'] = actor_stream(profile)
		# getting the user followers and user followee based on the user
		context['followers'] = self.get_user_followers()
		context['followees'] = self.get_user_followee()
		context['follower_count'] = self.get_follower_count()
		return context


class UserProfileFormView(UpdateView):
	model = UserProfile
	form_class = UserProfileForm
	template_name = 'user/forms.html'


	def get_object(self, queryset=None):
		
		return UserProfile.objects.get_or_create(user=self.request.user)[0]

	def get_success_url(self):
		return reverse("user:profile", kwargs={'slug':self.request.user.username})
	
	def form_valid(self, form):

		self.object = form.save(commit=False)
		self.object.user = self.request.user
		self.object.picture = form.clean_picture()
		self.object.first_name, self.object.lastname = form.clean_name()
		self.object.job_title = form.job_title()
		self.object.save()
		action.send(self.request.user, verb='updated', target=form.instance)
		return HttpResponseRedirect(self.get_success_url())

