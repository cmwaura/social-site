import random
import string
from accounts.models import UserProfile

class UrlChecker(object):

	def __init__(self):
		self.url_keys = UserProfile.objects.all()
		self.items = []

	def load_to_list(self):
		for keys in url_keys:
			self.items.append(keys.url_key)
		return self.items

	def comparison(self, new_url_id):
		'''
		compares the url to all the items in the list and it's there it returns
		true

		'''
		comparison = new_url_id in self.items
		return comparison
	
	def url_generator(key_size=15, chars=string.ascii_uppercase + string.digits):

		the_id = "".join(random.choice(chars) for x in range(key_size))
		return the_id
	
