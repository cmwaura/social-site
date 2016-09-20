from django.shortcuts import render
from .models import NoteBook
from .forms import NotebookForm
from django.views.generic import ListView
# Create your views here.

class NoteBookListView(ListView):
	model = NoteBook
	paginate_by = 25
	queryset = NoteBook.objects.all()
	def get_context_data(self):
