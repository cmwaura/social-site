from django import forms
from .models import UserProfile


class UserProfileForm(forms.ModelForm):

	class Meta:
		model = UserProfile
		exclude = ('user', 'created_at',)


	def clean_name(self):
		firstname = self.cleaned_data.get('first_name')
		lastname = self.cleaned_data.get('first_name')
		return firstname, lastname

	def job_title(self):
		job_title  = self.cleaned_data.get('job_title')
		return job_title