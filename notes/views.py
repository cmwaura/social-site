from django.shortcuts import render, Http404
from django.views.generic import ListView, DetailView, CreateView
from django.views.generic.edit import UpdateView, DeleteView
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User
from django.contrib.auth.mixins import LoginRequiredMixin
from django.core.urlresolvers import reverse_lazy
from django.utils import timezone
from django.contrib.auth.decorators import login_required

#third party imports

from actstream import action
from actstream.models import Action
from actstream.views import stream
# project imports
from .models import NoteBook
from .forms import NotebookForm, NotebookUpdateForm
from django.contrib.contenttypes.models import ContentType
from accounts.models import UserProfile

user = get_user_model()

# Create your views here.
class NoteMixinDetailView(object):
	model = NoteBook

	def get_context_data(self, **kwargs):
		context = super(NoteMixinDetailView, self).get_context_data(**kwargs)
		context['notebook_list'] = NoteBook.objects.all()
		context['notebook_views'] = ["ajax", "detail", "detail-with-count"]
		return context

class FeedView(ListView):
	model = Action
	template_name = 'feeds/feeds.html'
	queryset = Action.objects.all()
	context_object_name = 'actions'

	def __init__(self, *args, **kwargs):

		'''
		Adding an extra initializating which will be used in the methods below
		'''

		super(FeedView, self).__init__(*args, **kwargs)
		self.context_list = []

	def get_context_data(self, **kwargs):
		'''
		In this case we are getting all the actions that a user has done that where the
		user isnt the person logged in. So we check the list and filter out all the users
		not who is not self.request.user
		'''
		from actstream.models import actor_stream
		print(actor_stream(self.request.user))
		context = super(FeedView, self).get_context_data(**kwargs)
		for action in self.queryset:
			if str(action.actor) != str(self.request.user) and\
			 str(action.target) != str(self.request.user):
			 	self.context_list.append(action)	
		context['user_activity'] = self.context_list
		return context



class NoteBookListView(ListView):
	model = NoteBook
	paginate_by = 25
	template_name = 'notes/home.html'

notes = NoteBookListView.as_view()
notes.login_required = False


class NoteBookDetailView(NoteMixinDetailView, DetailView):
	# model = NoteBook
	template_name = 'notes/single.html'
	context_object_name = 'notepage'

	def get_context_data(self, **kwargs):
		context = super(NoteBookDetailView, self).get_context_data(**kwargs)
		duration = timezone.now() - self.object.created_on
		context['duration'] = duration
		return context

class NoteBookBaseEditMixin(object):
	model=NoteBook
	success_url = '/notes/thanks'

class NoteBookCreateView(NoteBookBaseEditMixin, CreateView):
	form_class = NotebookForm
	template_name = 'notes/forms.html'
	slug_field = 'slug'
		
	def form_valid(self, form):

		self.object = form.save(commit=False)
		self.object.title= form.clean_title() 
		self.object.text = form.clean_text()
		self.object.submitter = self.request.user
		
		self.object.save()
		form.save_m2m()

		action.send(self.request.user, verb='created', target=form.instance)

		return super(NoteBookCreateView, self).form_valid(form)

class NoteBookUpdateView(UpdateView):
	'''
	Update view to support the user editting their notebooks.
	'''
	model = NoteBook
	form_class = NotebookUpdateForm
	template_name='notes/update-form.html'

class NoteBookDeleteView(DeleteView):
	'''
	Delete View for the user to delete a notebook. In this class, the methods
	get_context_data and get_object will be overridden to include extra restrictions
	'''
	model = NoteBook
	success_url = reverse_lazy('notes:home')
	template_name = "notes/confirm-delete.html"

	def get_object(self, queryset=None):
		self.object = super(NoteBookDeleteView, self).get_object()
		if not self.object.submitter == self.request.user:
			raise Http404
		return self.object

	def get_context_data(self, **kwargs):
		context = super(NoteBookDetailView, self).get_context_data(**kwargs)
		
		context['title'] = "success your post has been deleted"
		return context
	
def thank_you(request):
	'''
	Thank you page rendered after a successful form submission
	'''

	title = "Thank you for your submission"
	return render(request, context={"title":title}, template_name='notes/thanks.html')

def tag_page(request, tag):
	'''
	page where all the information is filtered based on the tag provided
	'''

	note = NoteBook.objects.filter(tags__name=tag)
	template = 'notes/tags.html'
	context = {
		"note":note,
		"tag":tag,
	}
	return render(request, template, context)


def search(request):
	'''
	Simple miniature search form that checks the database for the item with 
	the title supplied as q. Uses the query title_icontains.
	'''
	try:
		q = request.GET.get('q')
	except:
		q=None
	if q:
		notes = NoteBook.objects.filter(title__icontains=q)
		notes_count = notes.count()
		accounts = User.objects.filter(username__icontains=q)
		accounts_count = accounts.count()
		total_count = notes_count + accounts_count
		context = {
			"query":q,
			"notes":notes,
			"notes_count": notes_count,
			"accounts": accounts,
			"account_count":accounts_count,
			"total_count":total_count
		}
		print(context)
		template ="notes/results.html"
	else:
		context={}
		template = "notes/home.html"

	return render(request, template, context)

class ActivityStreamDeleteView(DeleteView):
	model = Action
	success_url=reverse_lazy("feeds")

	def get_object(self, queryset=None):
		self.object = super(NoteBookDeleteView, self).get_object()
		if not self.object.submitter == self.request.user:
			raise Http404
		return self.object

	def get_context_data(self, **kwargs):
		context = super(ActivityStreamDeleteView, self).get_context_data(**kwargs)
		context['title'] = "success your post has been deleted"
		print(context['title'])
		from django.contrib import messages
		messages.success(self.request, context[title])
		return context
	