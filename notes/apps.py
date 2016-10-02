
from django.apps import AppConfig,apps
import accounts



class NotesConfig(AppConfig):
    name = 'notes'

    def ready(self):
    	from actstream import registry
    	from django.contrib.auth.models import User

    	registry.register(self.get_model('NoteBook'))
    	registry.register(apps.get_model('accounts.UserProfile'))
    	registry.register(User)