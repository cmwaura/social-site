from functools import reduce


from django.shortcuts import render, Http404
from django.db.models import Q
from django.views.generic import ListView, DetailView, CreateView
from django.views.generic.edit import DeleteView
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse_lazy

from actstream import action
from actstream.views import stream
from actstream.models import Action, actor_stream, user_stream, following

from .models import NewsFeed
from .forms import NewsFeedForm
# Create your views here.



class NewsFeedMixin(object):
	model = NewsFeed
	success_url = "/"

class NewsFeedCreateView(NewsFeedMixin,CreateView):

	
	form_class = NewsFeedForm
	template_name = 'notes/forms.html'

	def form_valid(self, form):

		self.object = form.save(commit=False)
		self.object.newsfeed= form.clean_newsfeed() 
		self.object.submitter = self.request.user
		
		self.object.save()
		form.save_m2m()

		action.send(self.request.user, verb='wrote', target=form.instance)

		return super(NewsFeedCreateView, self).form_valid(form)

class NewsFeedListView(NewsFeedMixin, ListView):
		
	template_name = 'feeds/feeds.html'
	queryset = NewsFeed.objects.all().order_by('-timestamp')
	context_object_name = 'feeds'
	
	def __init__(self, *args, **kwargs):

		'''
		Adding an extra initializating which will be used in the methods below
		'''

		super(NewsFeedListView, self).__init__(*args, **kwargs)
		self.context_list = []

	

	def get_context_data(self, **kwargs):
		'''

			Activity doesnt include the self.request.user but the newsfeed includes the request.user. 
			So if a user post a newsfeed, it should update to include him. So in this method we are doing 
			the check where the actions are added to the context variable if they dont include the user 
		
		'''
		submitters = list(follower for follower in following(self.request.user))
		submitters.append(self.request.user)
		query= reduce(lambda q, submitter: q|Q(submitter=submitter), submitters, Q())
		status_feeds = NewsFeed.objects.filter(query).order_by("-timestamp")
		action_context_list = self.action_context()
		context = super(NewsFeedListView, self).get_context_data(**kwargs)
		context['status_feeds'] = status_feeds

		context['user_activity'] = action_context_list
		return context

	def action_context(self):
		'''

			refactored method. This method filters the users actions by truncating the request.users action.
			It takes in the queryset from Action.objects.all() and returns all the actions that the other users
			made as a list.

		'''
		actions = user_stream(self.request.user)[:4]
		
		return actions
	

class NewsFeedDeleteView(DeleteView):

	model = NewsFeed
	success_url = reverse_lazy('feeds')
	template_name = "feeds/confirm-delete.html"


	def get_object(self, queryset=None):
		self.object = super(NewsFeedDeleteView, self).get_object()
		if not self.object.submitter == self.request.user:
			raise Http404
		
		return self.object
