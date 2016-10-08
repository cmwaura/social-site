from django.conf.urls import url
from .views import notes as nlist_view
from .views import NoteBookCreateView as ncreate_view
from .views import NoteBookUpdateView as nupdate_view
from .views import NoteBookDeleteView as ndelete_view
from .views import thank_you as thank_you
from .views import NoteBookDetailView as ndetail_view


urlpatterns = [
	
	url(r'^home/', nlist_view, name='home'),
	url(r'^update/(?P<slug>[\w-]+)/$', nupdate_view.as_view(), name='update-view'),
	url(r'^delete/(?P<slug>[\w-]+)/$', ndelete_view.as_view(), name='delete-view'),
	url(r'^create/', ncreate_view.as_view(), name='create-view'),
	url(r'thanks/', thank_you, name='thanks'),	
	url(r'^(?P<slug>[\w-]+)/$', ndetail_view.as_view(), name='single-notes'),
	
	
]
