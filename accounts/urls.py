from django.conf.urls import url
from accounts.views import UserProfileFormView as user_edit
from accounts.views import UserProfileDetailView as user_profile

urlpatterns =[
		url(r'^edit-profile/(?P<slug>[\w-]+)/$', user_edit.as_view(), name='edit_profile'), 
   		url(r'^(?P<slug>[\w-]+)/$', user_profile.as_view(), name="profile"),



]