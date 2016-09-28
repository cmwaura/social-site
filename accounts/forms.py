from django import forms
from .models import UserProfile


class UserProfileForm(forms.ModelForm):

	class Meta:
		model = UserProfile
		fields = ['picture', 'first_name', 'last_name', 'job_title']
		exclude = ('user', 'created_at',)


	def clean_name(self):
		firstname = self.cleaned_data.get('first_name')
		lastname = self.cleaned_data.get('first_name')
		return firstname, lastname

	def job_title(self):
		job_title  = self.cleaned_data.get('job_title')
		return job_title

	def clean_picture(self):
		picture = self.cleaned_data.get("picute")
		
		try:
			w,h = get_image_dimensions(picture)

			max_width=200
			max_height = 200

			if w>max_width or h>max_height:
				raise forms.ValidationError(
					u'please use an image smaller than that'
					)
			# validate the content type
			main, sub = picture.content_type.split('/')
			if not(main=='image' and sub in ['jpg', 'jpeg', 'gif','png']):
				raise forms.ValidationError(u'please use a JPEG, GIF or PNG')

			if len(picture)> (20*1024):
				raise forms.ValidationError(
					"picture size may not exceed 20k.")
		except AttributeError:
			pass

		return picture
	