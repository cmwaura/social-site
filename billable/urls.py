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

from accounts.views import UserProfileFormView as user_edit
from accounts.views import UserProfileDetailView as user_profile
from accounts.views import base_tester
from accounts.views import RegistrationActivation as activation_url

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', base_tester, name='base'),
    url(r'^users/(?P<slug>[\w-]+)/$', user_profile.as_view(), name="profile"),
    url(r'^edit-profile/$', user_edit.as_view(), name='edit_profile'),    
    url(r'^summernote/', include('django_summernote.urls')),
    url(r'^accounts/', include('registration.backends.hmac.urls')),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^notes/', include('notes.urls', namespace='notes')),

]
# if settings.DEBUG:
#     urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
#     urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

