from django.db import models

# Create your models here.
from django_comments.models import Comment
from mptt.models import MPTTModel, TreeForeignKey


class MPTTComment(MPTTModel):
	'''
	threaded commenting system that adds support to django comments
	'''
	posting = models.ForeignKey(Comment)
	parent = TreeForeignKey('self', null=True, blank=True, related_name='children')

	class MPTTMeta:
		''' 
		comments on the first level will be ordered by date of submission
		'''

		order_insertion_by= ['submit_date']

	class Meta:

		ordering = ['tree_id', 'lft']

	def save(self, *args, **kwargs):
		MPTTComment.objects.rebuild()
		return super(CommentForm, self).save(*args, **kwargs)