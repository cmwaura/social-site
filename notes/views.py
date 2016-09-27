from django.shortcuts import render, Http404
from django.views.generic import ListView, DetailView, CreateView
from django.views.generic.edit import UpdateView, DeleteView
from django.contrib.auth import get_user_model
from django.core.urlresolvers import reverse_lazy

from django.utils import timezone

from .models import NoteBook
from .forms import NotebookForm, NotebookUpdateForm

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

class NoteBookListView(ListView):
	model = NoteBook
	paginate_by = 25
	template_name = 'notes/home.html'

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
		self.objects.tags = form.tags
		self.object.submitter = self.request.user
		self.object.save()

		return super(NoteBookCreateView, self).form_valid(form)

class NoteBookUpdateView(UpdateView):
	model = NoteBook
	form_class = NotebookUpdateForm
	template_name='notes/update-form.html'

class NoteBookDeleteView(DeleteView):
	model = NoteBook
	success_url = reverse_lazy('notes:home')
	template_name = "notes/confirm-delete.html"

	def get_object(self, queryset=None):
		self.object = super(NoteBookDeleteView, self).get_object()
		if not self.object.submitter == self.request.user:
			raise Http404
		return self.object

	def get_context_date(self, **kwargs):
		context = super(NoteBookDetailView, self).get_context_data(**kwargs)
		context['title'] = "success your post has been deleted"
		return context
	
def thank_you(request):
	title = "Thank you for your submission"
	return render(request, context={"title":title}, template_name='notes/thanks.html')

def tag_page(request, tag):
	'''
	page where all the information is filtered based on the tag provided
	'''

	note = NoteBook.objects.filter(tag__name=tag)
	note = note.order_by("created_on")
	template_name = 'notes/tags.html'
	context = {
		"note":note,
		"tag":tag,
	}
	return render(request, context, template_name)