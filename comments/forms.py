from django import forms
from django.contrib.admin import widgets

from django_comments.forms import CommentForm

from .models import MPTTComment

class MPTTCommentForm(CommentForm):
	parent = forms.ModelChoiceField(queryset=MPTTComment.objects.all(), required=False, widget=forms.HiddenInput)

	def get_comment_model(self):

		'''
		use custom model instead of built in comment sys

		'''
		return MPTTComment

	def get_comment_create_data(self):
		data = super(MPTTCommentForm, self).get_comment_create_data()
		data['parent'] = self.cleaned_data['parent']
		return data