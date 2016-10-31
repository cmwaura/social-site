import os

from django.test import TestCase
from django.core.urlresolvers import reverse
from django.contrib.auth.models import User
from django.core.files.uploadedfile import SimpleUploadedFile

from AbstractTest.tests import SetUpTestMixin
from.models import UserProfile
from .forms import UserProfileForm
from django.core.files.images import get_image_dimensions

# Create your tests here.

# class UserProfileTestCase(SetUpTestMixin, TestCase):

# 	def setUp(self, *args, **kwargs):
# 		super(UserProfileTestCase, self).setUp(*args, **kwargs)
# 		self.profile = UserProfile.objects.get(user=self.user)
# 		self.PROJECT_ROOT = os.path.dirname(os.path.abspath('__file__'))


# 	def test_simple_update_view(self):

# 		self.client_login()
# 		response = self.client.get(reverse('user:edit_profile', args=[self.profile.user.username]))
# 		self.assertEqual(response.status_code, 200)

# 		self.assertTrue('form' in str(response.content))
	
# 	def test_formal_update_view(self):
		
# 		update_data = reverse('user:edit_profile', args=[self.profile.user.username])
		
		
# 		self.client_login()
# 		response = self.client.get(update_data)
		
# 		form =  response.context['form']
# 		data = form.initial
		
# 		image_path = self.PROJECT_ROOT + "/social-site/media/media/profileImg/beach_hvjY1ha.jpeg"

# 		test_picture = SimpleUploadedFile(name='beach_hvjY1ha.jpeg', content=open(image_path, 'rb').read(), content_type='image/jpeg')

# 		data = {
# 		'picture':test_picture,
# 		'first_name': 'pete',		
# 		'last_name': 'Yeaman',
# 		'job_title':'programmer'
# 		}
		
# 		print(data['picture'])
		
# 		# POST the form with the changed data
		
# 		r = self.client.post(update_data, data)
# 		# now lets retrieve our objects to see whether we have changed them
		
# 		response = self.client.get(update_data)
		
# 		self.assertEqual(response.context['form'].initial['first_name'], 'pete')

# 	def tearDown(self):
# 		self.user.delete()
		

class UserProfileFormTest(SetUpTestMixin, TestCase):

	def setUp(self, *args, **kwargs):
		super(UserProfileFormTest, self).setUp(*args, **kwargs)
		self.profile = UserProfile.objects.get(user=self.user)
		self.PROJECT_ROOT = os.path.dirname(os.path.abspath('__file__'))

	# def test_get_image_dimensions(self):
	# 	image_path = self.PROJECT_ROOT + "/social-site/media/media/profileImg/beach_hvjY1ha.jpeg"
	# 	test_picture = SimpleUploadedFile(name='beach_hvjY1ha.jpeg', content=open(image_path, 'rb').read(), content_type='image/jpeg')
	# 	w,h = get_image_dimensions(test_picture)
	# 	self.assertTrue(w<300)
	# 	self.assertTrue(w>0)

	def test_valid_data(self):
		'''
		Test the data we place in and see if it is equal to the actual data
		'''
		update_data = reverse('user:edit_profile', args=[self.profile.user.username])
		self.client.login(username='pete', password='password')
		response = self.client.get(update_data)
		print(response)

		image_path = self.PROJECT_ROOT + "/social-site/media/media/profileImg/beach_hvjY1ha.jpeg"

		picture = SimpleUploadedFile(name='beach_hvjY1ha.jpeg', content=open(image_path, 'rb').read(), content_type='image/jpeg')
		form =  response.context['form']
		data = form.initial

		new_data = UserProfileForm({
				'first_name': 'pete',		
				'last_name': 'Yeaman',
				'job_title':'programmer'
		}, files={'picture' : picture})

		self.assertTrue(new_data.is_valid())
		new_data.save()
		# if new_data.is_valid():
		# 	object = new_data.save(commit=False)

		# 	object.user = self.get_user
		# 	profile = object.save()
		# 	print(profile)
			
		self.assertEqual(profile.first_name,'pete')
		
		self.assertEqual(profile.text, 'Yeaman')
	
	# def test_blank_data(self):
	# 	form = UserProfileForm({})
	# 	self.assertFalse(form.is_valid())
	# 	self.assertEqual(form.errors,{			
	# 		'title': [u'This field is required.'],
	# 		'tags': [u'This field is required.'],			
	# 		'text':[u'This field is required.']
	# 	})




	
