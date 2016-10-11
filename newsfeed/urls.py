from django.conf.urls import url

from .views import NewsFeedCreateView as newsfeed_create
from .views import NewsFeedDeleteView as newsfeed_delete
urlpatterns = [
	url(r'^create/', newsfeed_create.as_view(), name='create-view'),
	url(r'^delete/(?P<pk>[0-9]+)/$', newsfeed_delete.as_view(), name='delete-feed'),

]