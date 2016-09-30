from django.apps import AppConfig,apps
import accounts

class NotesConfig(AppConfig):
    name = 'notes'

    def ready(self):
    	from actstream import registry

    	registry.register(self.get_model('NoteBook'))
    	registry.register(apps.get_model('accounts.UserProfile'))

