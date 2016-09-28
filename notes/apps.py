from django.apps import AppConfig


class NotesConfig(AppConfig):
    name = 'notes'

    def ready(self):
    	from actstream import registry

    	registry.register(self.get_model('NoteBook'))

