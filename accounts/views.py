from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import get_user_model
from django.views.generic import UpdateView, DetailView
from registration.backends.hmac.views import ActivationView

# app detail imports 
from .models import UserProfile
from .forms import UserProfileForm

# extra scripts.
from .utils import generate_new


# Create your views here.

class UserProfileDetailView(DetailView):
	model  = get_user_model()
	slug_field = "username"
	template_name = 'user/profile.html'

	def get_object(self, queryset=None):
		user = super(UserProfileDetailView, self).get_object(queryset)
		UserProfile.objects.get_or_create(user=user)
		return user


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
		self.object.first_name, self.object.lastname = form.clean_name()
		self.object.job_title = form.job_title()
		self.object.save()
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
