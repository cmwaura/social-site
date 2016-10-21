from django.utils.text import slugify
from django.core.urlresolvers import reverse, reverse_lazy

from django.test import TestCase, RequestFactory
from django.contrib.auth.models import User 
from .models import NoteBook
from .forms import NotebookForm, NotebookUpdateForm

from actstream.models import Action, actor_stream

# Create your tests here.

# class NoteBookUrlTest(TestCase):
# 	'''
# 	testing the homepage url to see whether it passes
# 	[passed]
# 	'''

# 	def test_homepage(self):
# 		response = self.client.get("/notes/home/")
# 		self.assertEqual(response.status_code, 200)

class SetUpTestMixin(object):

	def setUp(self, *args, **kwargs):
		self.factory = RequestFactory()
		self.user = User.objects.create_user(username="pete", email="pete@project.com", password="password")
		self.get_user = User.objects.get(username="pete")
		self.single_notepad = NoteBook.objects.create(title="Single entry", submitter=self.get_user, slug= "single-entry",\
			text="this is what we will use for our single plage test")

	def client_login(self):
		return self.client.login(username='pete', password='password')

# class NoteBookModelsTestCase(SetUpTestMixin, TestCase):
# 	'''
# 	in this situation we aill be testing the __str__ test_string_rep
# 	in the models.py [passed]
# 	'''

	
# 	def test_string_repr(self):
# 		note = NoteBook(title = "test title ", submitter=self.get_user)
# 		self.assertEqual(str(note), note.title)
	
# 	def test_get_absolute_url(self):
# 		'''
# 		Testing for the get_absolute_url function defined in the models.py
# 		'''

# 		note = NoteBook.objects.create(title="my entry title", submitter=self.get_user, slug="entry-title")
# 		self.assertIsNotNone(note.get_absolute_url())

# class NoteBookHomeClientViewTest(SetUpTestMixin, TestCase):

# 	def setUp(self, *args, **kwargs):
# 		super(NoteBookHomeClientViewTest, self).setUp(*args, **kwargs)

# 	def test_one_blog(self):
# 		'''
# 		This is testing just one entry on the home page 
# 		'''
# 		NoteBook.objects.create(title="title-1", submitter=self.get_user, slug="title-1", text="description")
# 		response = self.client.get('/notes/home/')
# 		self.assertContains(response, "title-1")		
# 		self.assertContains(response, "description")

# 	def test_two_blogs(self):
# 		'''
# 		Since this is a list view, its also better to test two entries.
# 		'''
# 		NoteBook.objects.create(title="Second entry", submitter=self.get_user, slug= "second-entry", text="description")
# 		NoteBook.objects.create(title="this is a title", submitter=self.get_user, slug= "this-title", text="description")
# 		response = self.client.get('/notes/home/')
# 		self.assertContains(response, "Second entry")
# 		self.assertContains(response, "description")
# 		self.assertContains(response, "this is a title")

# class NoteBookSinglePageView(SetUpTestMixin, TestCase):


# 	def test_basic_view(self):
# 		'''
# 		it checks the blog and uses the client to get the response status_code then 
# 		verifies that it is equal to 200
# 		'''
# 		response = self.client.get(self.single_notepad.get_absolute_url())
# 		self.assertEqual(response.status_code, 200)

# 	def test_title_in_notes(self):
# 		response = self.client.get(self.single_notepad.get_absolute_url())
# 		self.assertContains(response, self.single_notepad.title)

# 	def test_text_in_notes(self):
# 		response = self.client.get(self.single_notepad.get_absolute_url())
# 		self.assertContains(response, self.single_notepad.text)


# class NoteBookCreateFormTest(SetUpTestMixin, TestCase):

	

# 	def test_valid_data(self):
# 		'''
# 		Test the data we place in and see if it is equal to the actual data
# 		'''
# 		form = NotebookForm({
# 					'title': "nice title",
# 					'text':'this is a description',					
# 					'tags':'test',
# 		})
# 		if form.is_valid():
# 			object = form.save(commit=False)
# 			object.submitter = self.get_user
# 			notes = form.save()
# 			form.save_m2m()
# 		self.assertEqual(notes.title, "nice title")
		
# 		self.assertEqual(notes.text, "this is a description")
	
# 	def test_blank_data(self):
# 		form = NotebookForm({})
# 		self.assertFalse(form.is_valid())
# 		self.assertEqual(form.errors,{			
# 			'title': [u'This field is required.'],
# 			'tags': [u'This field is required.'],			
# 			'text':[u'This field is required.']
# 		})


# class NoteBookUpdateViewTestView(SetUpTestMixin, TestCase):

# 	def test_update_view(self):
		
# 		notepad = self.single_notepad
# 		response = self.client.get(reverse('notes:update-view', args=[notepad.slug]))
# 		self.assertEqual(response.status_code, 200)
# 		self.assertTrue('form' in str(response.content))

# 	def test_update_form(self):
# 		notepad = self.single_notepad
# 		update_data = reverse('notes:update-view', args=[notepad.slug])
# 		response = self.client.get(update_data)
# 		form =  response.context['form']
# 		data = form.initial
# 		# Lets change the title and description

# 		data = {
# 		'title': 'test',		
# 		'text': 'update text'
# 		}

		
# 		# POST the form with the changed data
# 		self.client.login(username='pete', password='password')
# 		r = self.client.post(update_data, data)
# 		# now lets retrieve our objects to see whether we have changed them

# 		response = self.client.get(update_data)
# 		# see if it contains the new title from data['title']=test
# 		self.assertContains(response, 'test')
# 		# see if it contains the description 
# 		self.assertEqual(response.context['form'].initial['text'], 'update text')

# class NoteBookCreateTestView(SetUpTestMixin, TestCase):

# 	def setUp(self, *args, **kwargs):
# 		super(NoteBookCreateTestView, self).setUp(*args, **kwargs)
# 		self.note = NoteBook(title="Second entry", slug= "second-entry", text="description")

# 	def test_create_view(self):
# 		'''
# 		Sanity check
# 		'''
# 		note = self.note
# 		response = self.client.get(reverse('notes:create-view'))
# 		self.assertEqual(response.status_code, 200)
# 		self.assertTrue('form' in str(response.content))
# 		data = {
# 		'title': 'test',		
# 		'text': 'create description',
# 		'tags':'tags'
# 		}
# 		form = NotebookForm(data=data)
# 		# login the client
# 		self.client.login(username='pete', password='password')
# 		# POST the form with the created data
		
# 		self.assertEqual(form.is_valid(), True)
# 		r = self.client.post(reverse('notes:create-view'), data)
# 		print(response.context['form'].errors)
# 		# now lets retrieve our objects to see whether we have created them
# 		print(r.content)
# 		blog = NoteBook.objects.order_by('-created_on').first()
# 		print(blog)
# 		print(NoteBook.objects.all())
# 		# see if it contains the new title from data['title']=test
# 		# see if it contains the description 
# 		self.assertEqual(blog.title, 'test')
# 		self.assertEqual(blog.text, data['text'])

class NoteBookDeleteTestView(SetUpTestMixin, TestCase):

	

	def test_get_delete_request(self):

		note = self.single_notepad
		self.client_login()
		response = self.client.get(reverse('notes:delete-view', args=[note.slug]))
		self.assertContains(response, 'are you sure you want to delete')

	def test_http404_getobject_failure(self):
		'''
		testing to make sure that if the client is not logged  and the client is not the submitter of the 
		article, we receive back a http 404 error
		'''
		note = self.single_notepad
		response = self.client.get(reverse('notes:delete-view', args=[note.slug]), follow=True)
		self.assertEqual(response.status_code, 404)


	def test_post_delete_request(self):
		note = self.single_notepad
		self.client_login()
		post_response = self.client.post(reverse('notes:delete-view', args=[note.slug]), follow=True)
		self.assertRedirects(post_response, reverse('notes:home'), status_code=302)

class NoteBookThankYou(TestCase):

	def test_get_thank_you(self):
		response  = self.client.get(reverse('notes:thanks'), follow=True)
		self.assertContains(response, 'Thank you for your submission')

