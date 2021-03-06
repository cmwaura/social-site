"""billable URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

from django.conf import settings
from django.conf.urls import url, include
from django.conf.urls.static import static

from django.contrib import admin
from newsfeed.views import NewsFeedListView as feeds
from notes.views import tag_page as tag_page
from notes.views import search as search
from ajax_select import urls as ajax_select_urls
# # to be fixed 

import notifications.urls

   
urlpatterns = [
    url(r'^grappelli/', include('grappelli.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^$', feeds.as_view(), name='feeds'),
    url(r'^users/', include('accounts.urls', namespace='user')),
    
    url(r'^activity/', include('actstream.urls')),  
    url(r'^summernote/', include('django_summernote.urls')),
    url(r'^accounts/', include('registration.backends.hmac.urls')),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^tag/(?P<tag>[\w-]+)/$', tag_page, name="tag_page"),
    url(r'^notes/', include('notes.urls', namespace='notes')),
    url(r'^newsfeed/', include('newsfeed.urls', namespace='newsfeed')),
    url(r'^gallery/', include('imagestore.urls', namespace='imagestore')),
    url(r'^comments/', include('django_comments.urls')),
    url(r'^messages/', include('postman.urls', namespace='postman')),
    url(r'^s/$', search, name='search'),
    url(r'^ajax_select/', include(ajax_select_urls)),
    url('^inbox/notifications/', include(notifications.urls, namespace='notifications')),

]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

