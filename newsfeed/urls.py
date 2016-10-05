from django.conf.urls import url

from .views import NewsFeedCreateView as newsfeed_create

urlpatterns = [
	url(r'^create/', newsfeed_create.as_view(), name='create-view'),
]