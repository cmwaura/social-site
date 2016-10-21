from django.conf.urls import url
from .views import notes as nlist_view
from .views import NoteBookCreateView as ncreate_view
from .views import NoteBookUpdateView as nupdate_view
from .views import NoteBookDeleteView as ndelete_view
from .views import thank_you as thank_you
from .views import notes_detail as ndetail_view
from .views import ActivityStreamDeleteView as stream_delete


urlpatterns = [
	
	url(r'^home/', nlist_view, name='home'),
	url(r'^update/(?P<slug>[\w-]+)/$', nupdate_view.as_view(), name='update-view'),
	url(r'^delete/(?P<slug>[\w-]+)/$', ndelete_view.as_view(), name='delete-view'),
	url(r'feeds/delete/(?P<pk>\d+)/$', stream_delete.as_view(), name='stream_delete'),
	url(r'^create/', ncreate_view.as_view(), name='create-view'),
	url(r'thanks/', thank_you, name='thanks'),	
	url(r'^(?P<slug>[\w-]+)/$', ndetail_view, name='single-notes'),
	

	
]
