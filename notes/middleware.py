from django.contrib.auth.decorators import login_required
from django.conf import settings


EXCEPTION_URL_SUFFIX_LIST = getattr(settings, 'LOGIN_EXCEPTION_URL_SUFFIX_LIST', ())



class LoginRequiredMiddleware(object):

	def process_view(self, request, view_func, view_args, view_kwargs):
		# This middleware is meant to handle all the login required webpages and  give access to the 
		# anonymous users based on approved views.
		path = request.path
		for exception_url in EXCEPTION_URL_SUFFIX_LIST:
			if path.startswith(exception_url):
				return None

		is_login_required = getattr(view_func, 'login_required', True)
		if not is_login_required:
			return None
		return login_required(view_func)(request, *view_args, **view_kwargs)
