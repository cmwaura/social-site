from django.test import TestCase, RequestFactory
from .models import NoteBook
from .forms import NotebookForm, NotebookUpdateForm
from django.contrib.auth.models import User 
from actstream.models import Action, actor_stream
from django.utils.text import slugify
from django.core.urlresolvers import reverse

# Create your tests here.

class NoteBookUrlTest(TestCase):
	'''
	testing the homepage url to see whether it passes
	[passed]
	'''

	def test_homepage(self):
		response = self.client.get("/notes/home/")
		self.assertEqual(response.status_code, 200)

class SetUpTestMixin(object):

	def setUp(self, *args, **kwargs):
		self.factory = RequestFactory()
		self.user = User.objects.create_user(username="pete", email="pete@project.com", password="password")
		self.get_user = User.objects.get(username="pete")
		self.single_notepad = NoteBook.objects.create(title="Single entry", submitter=self.get_user, slug= "single-entry",\
			text="this is what we will use for our single plage test")

class NoteBookModelsTestCase(SetUpTestMixin, TestCase):
	'''
	in this situation we aill be testing the __str__ test_string_rep
	in the models.py [passed]
	'''

	
	def test_string_repr(self):
		note = NoteBook(title = "test title ", submitter=self.get_user)
		self.assertEqual(str(note), note.title)
	
	def test_get_absolute_url(self):
		'''
		Testing for the get_absolute_url function defined in the models.py
		'''

		note = NoteBook.objects.create(title="my entry title", submitter=self.get_user, slug="entry-title")
		self.assertIsNotNone(note.get_absolute_url())

class NoteBookHomeClientViewTest(SetUpTestMixin, TestCase):

	def setUp(self, *args, **kwargs):
		super(NoteBookHomeClientViewTest, self).setUp(*args, **kwargs)

	def test_one_blog(self):
		'''
		This is testing just one entry on the home page 
		'''
		NoteBook.objects.create(title="title-1", submitter=self.get_user, slug="title-1", text="description")
		response = self.client.get('/notes/home/')
		self.assertContains(response, "title-1")		
		self.assertContains(response, "description")

	def test_two_blogs(self):
		'''
		Since this is a list view, its also better to test two entries.
		'''
		NoteBook.objects.create(title="Second entry", submitter=self.get_user, slug= "second-entry", text="description")
		NoteBook.objects.create(title="this is a title", submitter=self.get_user, slug= "this-title", text="description")
		response = self.client.get('/notes/home/')
		self.assertContains(response, "Second entry")
		self.assertContains(response, "description")
		self.assertContains(response, "this is a title")

class NoteBookSinglePageView(SetUpTestMixin, TestCase):


	def test_basic_view(self):
		'''
		it checks the blog and uses the client to get the response status_code then 
		verifies that it is equal to 200
		'''
		response = self.client.get(self.single_notepad.get_absolute_url())
		self.assertEqual(response.status_code, 200)

	def test_title_in_notes(self):
		response = self.client.get(self.single_notepad.get_absolute_url())
		self.assertContains(response, self.single_notepad.title)

	def test_text_in_notes(self):
		response = self.client.get(self.single_notepad.get_absolute_url())
		self.assertContains(response, self.single_notepad.text)


class NoteBookCreateFormTestView(SetUpTestMixin, TestCase):

	

	def test_valid_data(self):
		'''
		Test the data we place in and see if it is equal to the actual data
		'''
		form = NotebookForm({
					'title': "nice title",
					'text':'this is a description',					
					'tags':'test',
		})
		if form.is_valid():
			object = form.save(commit=False)
			object.submitter = self.get_user
			notes = form.save()
			form.save_m2m()
		self.assertEqual(notes.title, "nice title")
		
		self.assertEqual(notes.text, "this is a description")
	
	def test_blank_data(self):
		form = NotebookForm({})
		self.assertFalse(form.is_valid())
		self.assertEqual(form.errors,{			
			'title': [u'This field is required.'],
			'tags': [u'This field is required.'],			
			'text':[u'This field is required.']
		})


# class NoteBookUpdateFormTestView(SetUpTestMixin, TestCase):

# 	def test_update_form(self):
# 		from django.test import Client
# 		client = Client().post('/accounts/login/', {'username': 'pete', 'password': 'password'})


# 		notepad = NoteBook.objects.create(title="Second entry", submitter=self.get_user, slug= slugify("Second entry"), text="description")
# 		update_data = reverse('notes:update-view', args=[notepad.slug])
# 		response = self.client.get(update_data)
# 		print(response)
# 		form =  response.context['form']
# 		data = form.initial
# 		# Lets change the title and description

# 		data = {
# 		'title': 'test',		
# 		'text': 'update description'
# 		}

		
# 		# POST the form with the changed data
# 		r = self.client.post(update_data, data)
# 		# now lets retrieve our objects to see whether we have changed them

# 		response = self.client.get(update_data)
# 		# see if it contains the new title from data['title']=test
# 		self.assertContains(response, 'test')
# 		# see if it contains the description 
# 		self.assertEqual(response.context['form'].initial['text'], 'update text')
