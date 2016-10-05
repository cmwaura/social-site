from django import forms

from .models import NewsFeed

class NewsFeedForm(forms.ModelForm):
	class Meta:
		model = NewsFeed
		fields=['newsfeed']

	def clean_newsfeed(self):
		newsfeed = self.cleaned_data.get('newsfeed')
		return newsfeed

