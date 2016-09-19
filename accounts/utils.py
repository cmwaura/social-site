import random
import string
from .models import UserProfile

class IdGenerator(object):

	def __init__(self):
		self.url_keys = UserProfile.objects.all()
		self.items = []
		self.key_size = 18
		self.chars = string.ascii_uppercase + string.digits

	def load_to_list(self):
		for keys in self.url_keys:
			self.items.append(keys.url_key)
		return self.items

	def comparison(self, id_list,new_url_id):
		'''
		compares the url to all the items in the list and it's there it returns
		true

		'''
		for single_id in id_list:
			if str(new_url_id) == str(single_id):
				return True
		return False
	
	def url_generator(self):

		the_id = "".join(random.choice(self.chars) for x in range(self.key_size))
		return the_id

def generate_new():
	generator = IdGenerator()
	id_list = generator.load_to_list()
	new_id = generator.url_generator()
	value = generator.comparison(id_list, new_id)
	if value is False:
		new_id = new_id
		return new_id
	else:
		generate_new()
generate_new()



	
