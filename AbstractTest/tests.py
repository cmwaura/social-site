from django.contrib.auth.models import User 
from notes.models import NoteBook


class SetUpTestMixin(object):
	model_klass=NoteBook
	@classmethod
	def setup_test_model_klass(cls, obj=None):
		# super(NewsFeedCreateFormTest, self).setup_test_model_klass(*args)
		# obj = NewsFeed
		if obj is None:
			obj = cls.model_klass
			return obj

	def setUp(self, *args, **kwargs):		
		self.user = User.objects.create_user(username="pete", email="pete@project.com", password="password")
		self.get_user = User.objects.get(username="pete")
		self.test_klass = SetUpTestMixin.setup_test_model_klass()
		

	def client_login(self):
		return self.client.login(username='pete', password='password')