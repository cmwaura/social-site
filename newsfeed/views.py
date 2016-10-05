from django.shortcuts import render
from django.views.generic import ListView, DetailView, CreateView
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User

from actstream import action
from actstream.views import stream

from .models import NewsFeed
from .forms import NewsFeedForm
# Create your views here.


class NewsFeedCreateView(CreateView):

	model = NewsFeed
	form_class = NewsFeedForm
	template_name = None
	success_url = "/feeds"
	def form_valid(self, form):

		self.object = form.save(commit=False)
		self.object.newsfeed= form.clean_newsfeed() 
		self.object.submitter = self.request.user
		
		self.object.save()
		form.save_m2m()

		# action.send(self.request.user, verb='created', target=form.instance)

		return super(NewsFeedCreateView, self).form_valid(form)



