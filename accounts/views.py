from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import get_user_model
from .models import UserProfile
from .forms import UserProfileForm
# Create your views here.

from django.views.generic import UpdateView, DetailView
from .utils.utils import UrlChecker 

class UserProfileDetailView(DetailView):
	model  = get_user_model()
	slug_field = "username"
	template_name = 'user/profile.html'

	def get_object(self, queryset=None):
		user = super(UserProfileDetailView, self).get_object(queryset)
		UserProfile.objects.get_or_create(user=user)
		return user


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
		self.object.first_name, self.object.lastname = form.clean_name()
		self.object.job_title = form.job_title()
		self.object.save()
		return HttpResponseRedirect(self.get_success_url())