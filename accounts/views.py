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
from .utils import generate_new

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
		followee = following(self.request.user)
		return followee

	def get_user_followers(self):
		follower = followers(self.request.user)
		return follower

	def get_context_data(self, **kwargs):
		'''
		here we are getting all the feeds associated with an individual user and if the actor is the user
		then we will display it on the profile page else it will be displayed in the feeds page.
		'''
		context_list = []
		context = super(UserProfileDetailView, self).get_context_data(**kwargs)
		# here we get the user profile object which we will use to pass to the actor_stream()
		# and generate the profile stream

		profile = self.get_object()
		# passing the actor_stream as a context var
		context['user_feeds'] = actor_stream(profile)
		context['followers'] = self.get_user_followers()
		context['followee'] = self.get_user_followee()
		print(context['followee'])
		print(context['followers'])
		return context

		
	

def base_tester(request):
	return render(request, template_name="base.html")

class UserProfileFormView(UpdateView):
	model = UserProfile
	form_class = UserProfileForm
	template_name = 'user/forms.html'
	success_url = '.'

	def get_object(self, queryset=None):
		
		return UserProfile.objects.get_or_create(user=self.request.user)[0]

	def get_success_url(self):
		return reverse("profile", kwargs={'slug':self.request.user})
	
	def form_valid(self, form):

		self.object = form.save(commit=False)
		self.object.user = self.request.user
		self.object.picture = form.clean_picture()
		self.object.first_name, self.object.lastname = form.clean_name()
		self.object.job_title = form.job_title()
		self.object.save()
		action.send(self.request.user, verb='updated', target=form.instance)
		return HttpResponseRedirect(self.get_success_url())

class RegistrationActivation(ActivationView):
	''' 
	**Come back to this view**
	in this view we will override the activation method of registration and generate a new url for the user
	'''

	def activate(self, *args, **kwargs):
		super(self, RegistrationActivation).activate(*args, **kwargs)
		username = self.validate_key(kwargs.get('activation_key'))
		if username is not None:
			user = self.get_user(username)
			self.object = UserProfile.objects.get(user=user)
			if user is not None:
				user.is_active = True
				self.object.url_key = generate_new()
				self.object.save()
				user.save()
		return False
