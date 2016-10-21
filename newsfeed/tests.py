from django.test import TestCase
from django.core.urlresolvers import reverse

from AbstractTest.tests import SetUpTestMixin

from .models import NewsFeed
from .forms import NewsFeedForm

# Create your tests here.
# class NewFeedTest(TestCase):


class NewsFeedCreateFormTest(SetUpTestMixin, TestCase):
	obj = NewsFeed

	@classmethod
	def setup_test_model_klass(self, cls, obj=None, *args):
		super(NewsFeedCreateFormTest, self).setup_test_model_klass(cls, *args)
		
		
	def test_valid_data(self):
		'''
		Test the data we place in and see if it is equal to the actual data
		'''
		form = NewsFeedForm({
					'newsfeed': "nice title",
					
		})
		if form.is_valid():
			object = form.save(commit=False)
			object.submitter = self.get_user
			newsfeed = form.save()
			
		self.assertEqual(newsfeed.newsfeed, "nice title")
	
	def test_blank_data(self):
		form = NewsFeedForm({})
		self.assertFalse(form.is_valid())
		self.assertEqual(form.errors,{			
			'newsfeed': [u'This field is required.'],
			
		})

class NewsFeedCreateTestView(SetUpTestMixin, TestCase):

	def setUp(self, *args, **kwargs):
		super(NewsFeedCreateTestView, self).setUp(*args, **kwargs)
		self.newsfeed = NewsFeed(newsfeed="Second entry")

	def test_create_view(self):
		'''
		Sanity check
		'''
		note = self.newsfeed
		response = self.client.get(reverse('newsfeed:create-view'))
		self.assertEqual(response.status_code, 200)
		self.assertTrue('form' in str(response.content))
		data = {
		'newsfeed': 'test',		
		
		}
		form = NewsFeedForm(data=data)
		# login the client
		self.client.login(username='pete', password='password')
		# POST the form with the created data
		
		self.assertEqual(form.is_valid(), True)
		r = self.client.post(reverse('newsfeed:create-view'), data)
		
		# now lets retrieve our objects to see whether we have created them
		
		feed = NewsFeed.objects.order_by('-timestamp').first()
		
		# see if it contains the new title from data['newsfeed']=test
		
		self.assertEqual(feed.newsfeed, 'test')

class NewsFeedDeleteTestView(SetUpTestMixin, TestCase):

	# obj = NewsFeed
	# def setup_test_model_klass(cls, obj=None):
	# 	super(NewsFeedDeleteTestView, cls).setup_test_model_klass(*args, **kwargs)
	
	def setUp(self, *args, **kwargs):
		super(NewsFeedDeleteTestView, self).setUp(*args, **kwargs)
		
		self.single_newsfeed = NewsFeed.objects.create(newsfeed="Single entry", submitter=self.get_user)
		

	def test_get_delete_request(self):

		newsfeed = self.single_newsfeed
		self.client_login()
		response = self.client.get(reverse('newsfeed:delete-view', args=[newsfeed.pk]))
		self.assertContains(response, 'are you sure you want to delete')

	def test_http404_getobject_failure(self):
		'''
		testing to make sure that if the client is not logged  and the client is not the submitter of the 
		article, we receive back a http 404 error
		'''
		newsfeed = self.single_newsfeed
		response = self.client.get(reverse('newsfeed:delete-view', args=[newsfeed.pk]), follow=True)
		self.assertEqual(response.status_code, 404)


	def test_post_delete_request(self):
		newsfeed = self.single_newsfeed
		self.client_login()
		post_response = self.client.post(reverse('newsfeed:delete-view', args=[newsfeed.pk]), follow=True)
		self.assertRedirects(post_response, reverse('feeds'), status_code=302)
