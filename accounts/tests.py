import os
from django.test import TestCase
from AbstractTest.tests import SetUpTestMixin
from django.contrib.auth.models import User
# from django.contrib.auth.models import authenticate
from django.core.urlresolvers import reverse
from django.core.files.uploadedfile import SimpleUploadedFile
from.models import UserProfile
import uuid
# Create your tests here.

class UserProfileTestCase(SetUpTestMixin, TestCase):

	def setUp(self, *args, **kwargs):
		super(UserProfileTestCase, self).setUp(*args, **kwargs)
		self.profile = UserProfile.objects.get(user=self.user)
		self.PROJECT_ROOT = os.path.dirname(os.path.abspath('__file__'))


	def test_update_view(self):
		self.client_login()
		response = self.client.get(reverse('user:edit_profile', args=[self.profile.user.username]))
		self.assertEqual(response.status_code, 200)

		self.assertTrue('form' in str(response.content))
	
	def test_update_form(self):
		
		update_data = reverse('user:edit_profile', args=[self.profile.user.username])
		
		
		self.client_login()
		response = self.client.get(update_data)
		
		form =  response.context['form']
		data = form.initial
		# Lets change the title and description
		image_path = self.PROJECT_ROOT + "/social-site/media/media/profileImg/beach_hvjY1ha.jpeg"

		test_picture = SimpleUploadedFile(name='beach_hvjY1ha.jpeg', content=open(image_path, 'rb').read(), content_type='image/jpeg')

		data = {
		'picture':test_picture,
		'first_name': 'pete',		
		'last_name': 'Yeaman',
		'job_title':'programmer'
		}
		
		
		# POST the form with the changed data
		self.client_login()
		r = self.client.post(update_data, data)
		# now lets retrieve our objects to see whether we have changed them

		response = self.client.get(update_data)
		# see if it contains the new title from data['title']=test
		# see if it contains the description 
		self.assertEqual(response.context['form'].initial['first_name'], 'pete')

	def tearDown(self):
		self.user.delete()
		
	





	
