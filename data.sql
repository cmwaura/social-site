PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2016-09-22 05:50:44.302712');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2016-09-22 05:50:44.612794');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2016-09-22 05:50:44.793973');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2016-09-22 05:50:45.013819');
INSERT INTO "django_migrations" VALUES(5,'contenttypes','0002_remove_content_type_name','2016-09-22 05:50:45.561437');
INSERT INTO "django_migrations" VALUES(6,'auth','0002_alter_permission_name_max_length','2016-09-22 05:50:45.732882');
INSERT INTO "django_migrations" VALUES(7,'auth','0003_alter_user_email_max_length','2016-09-22 05:50:45.944846');
INSERT INTO "django_migrations" VALUES(8,'auth','0004_alter_user_username_opts','2016-09-22 05:50:46.206819');
INSERT INTO "django_migrations" VALUES(9,'auth','0005_alter_user_last_login_null','2016-09-22 05:50:46.442035');
INSERT INTO "django_migrations" VALUES(10,'auth','0006_require_contenttypes_0002','2016-09-22 05:50:46.461923');
INSERT INTO "django_migrations" VALUES(11,'auth','0007_alter_validators_add_error_messages','2016-09-22 05:50:46.769607');
INSERT INTO "django_migrations" VALUES(12,'auth','0008_alter_user_username_max_length','2016-09-22 05:50:47.059318');
INSERT INTO "django_migrations" VALUES(13,'sessions','0001_initial','2016-09-22 05:50:47.130220');
INSERT INTO "django_migrations" VALUES(14,'accounts','0001_initial','2016-09-22 05:53:08.301404');
INSERT INTO "django_migrations" VALUES(15,'hitcount','0001_initial','2016-09-22 05:53:10.041677');
INSERT INTO "django_migrations" VALUES(16,'taggit','0001_initial','2016-09-22 05:53:10.428222');
INSERT INTO "django_migrations" VALUES(17,'taggit','0002_auto_20150616_2121','2016-09-22 05:53:10.756660');
INSERT INTO "django_migrations" VALUES(18,'notes','0001_initial','2016-09-22 05:53:11.426367');
INSERT INTO "django_migrations" VALUES(19,'django_summernote','0001_initial','2016-09-22 20:32:08.080047');
INSERT INTO "django_migrations" VALUES(20,'actstream','0001_initial','2016-09-27 02:26:36.762177');
INSERT INTO "django_migrations" VALUES(21,'actstream','0002_remove_action_data','2016-09-27 02:26:37.004687');
INSERT INTO "django_migrations" VALUES(22,'sites','0001_initial','2016-09-27 02:31:59.499466');
INSERT INTO "django_migrations" VALUES(23,'sites','0002_alter_domain_unique','2016-09-27 02:31:59.645814');
INSERT INTO "django_migrations" VALUES(24,'accounts','0002_userprofile_picture','2016-09-28 18:21:00.488096');
INSERT INTO "django_migrations" VALUES(25,'django_comments','0001_initial','2016-09-29 19:13:12.590639');
INSERT INTO "django_migrations" VALUES(26,'django_comments','0002_update_user_email_field_length','2016-09-29 19:13:12.824689');
INSERT INTO "django_migrations" VALUES(27,'django_comments','0003_add_submit_date_index','2016-09-29 19:13:13.095337');
INSERT INTO "django_migrations" VALUES(28,'postman','0001_initial','2016-09-30 00:57:06.960979');
INSERT INTO "django_migrations" VALUES(29,'comments','0001_initial','2016-09-30 18:25:51.390878');
INSERT INTO "django_migrations" VALUES(30,'friendship','0001_initial','2016-10-02 16:59:41.236907');
INSERT INTO "django_migrations" VALUES(31,'newsfeed','0001_initial','2016-10-05 01:37:53.604561');
INSERT INTO "django_migrations" VALUES(32,'newsfeed','0002_remove_newsfeed_tags','2016-10-05 16:38:00.103846');
INSERT INTO "django_migrations" VALUES(33,'newsfeed','0003_auto_20161010_2008','2016-10-10 20:08:36.081703');
INSERT INTO "django_migrations" VALUES(34,'photologue','0001_initial','2016-10-11 04:02:53.451339');
INSERT INTO "django_migrations" VALUES(35,'photologue','0002_photosize_data','2016-10-11 04:02:53.546238');
INSERT INTO "django_migrations" VALUES(36,'photologue','0003_auto_20140822_1716','2016-10-11 04:02:53.931957');
INSERT INTO "django_migrations" VALUES(37,'photologue','0004_auto_20140915_1259','2016-10-11 04:02:55.287301');
INSERT INTO "django_migrations" VALUES(38,'photologue','0005_auto_20141027_1552','2016-10-11 04:02:55.765812');
INSERT INTO "django_migrations" VALUES(39,'photologue','0006_auto_20141028_2005','2016-10-11 04:02:56.344462');
INSERT INTO "django_migrations" VALUES(40,'photologue','0007_auto_20150404_1737','2016-10-11 04:02:57.319271');
INSERT INTO "django_migrations" VALUES(41,'photologue','0008_auto_20150509_1557','2016-10-11 04:02:58.055945');
INSERT INTO "django_migrations" VALUES(42,'photologue','0009_auto_20160102_0904','2016-10-11 04:02:58.470052');
INSERT INTO "django_migrations" VALUES(43,'photologue','0010_auto_20160105_1307','2016-10-11 04:02:59.634037');
INSERT INTO "django_migrations" VALUES(44,'photologue','0011_auto_20161013_0021','2016-10-13 00:21:47.556364');
INSERT INTO "django_migrations" VALUES(45,'photo','0001_initial','2016-10-13 00:21:48.306293');
INSERT INTO "django_admin_log" VALUES(1,'3','(''This is a feature test'',)',3,'',14,1,'2016-09-22 20:23:51.216750');
INSERT INTO "django_admin_log" VALUES(2,'2','(((''not null hopefully solved'', ''not-null-hopefully-solved''), ''not-null-hopefully-solved-not-null-hopefully-solved''),)',3,'',14,1,'2016-09-22 20:23:51.266617');
INSERT INTO "django_admin_log" VALUES(3,'1','(''This is a feature test'',)',3,'',14,1,'2016-09-22 21:45:03.197976');
INSERT INTO "django_admin_log" VALUES(4,'1','cmwaura',2,'[{"changed": {"fields": ["first_name", "last_name", "job_title", "url_key"], "name": "user profile", "object": "cmwaura profile"}}]',3,1,'2016-09-26 22:19:27.205527');
INSERT INTO "django_admin_log" VALUES(5,'4','dsds',2,'[{"changed": {"fields": ["tags"]}}]',14,1,'2016-09-26 23:30:37.655587');
INSERT INTO "django_admin_log" VALUES(6,'1','cmwaura>pete:this is a test',2,'Changed moderation_status.',21,1,'2016-09-30 01:25:01.892471');
INSERT INTO "django_admin_log" VALUES(7,'2','pete',2,'Changed first_name, last_name, job_title and url_key for user profile "pete profile".',3,1,'2016-09-30 16:21:11.606389');
INSERT INTO "django_admin_log" VALUES(8,'1','User #1 is friends with #2',1,'Added.',25,1,'2016-10-02 17:08:03.318757');
INSERT INTO "django_admin_log" VALUES(9,'2','User #1 is friends with #3',1,'Added.',25,1,'2016-10-02 17:08:26.052145');
INSERT INTO "django_admin_log" VALUES(10,'4','dsds',2,'Changed text and tags.',14,1,'2016-10-04 21:21:43.346752');
INSERT INTO "django_admin_log" VALUES(11,'5','This is a test feature',2,'Changed text and tags.',14,1,'2016-10-04 21:23:00.131637');
INSERT INTO "django_admin_log" VALUES(12,'16','checker',2,'Changed text and tags.',14,1,'2016-10-04 21:23:52.679347');
INSERT INTO "django_admin_log" VALUES(13,'2','pete',2,'Changed picture for user profile "pete profile".',3,1,'2016-10-05 17:55:21.553372');
INSERT INTO "django_admin_log" VALUES(14,'1','beach',1,'Added.',29,1,'2016-10-11 04:09:05.428953');
INSERT INTO "django_admin_log" VALUES(15,'2','beach table',1,'Added.',29,1,'2016-10-11 04:10:23.263019');
INSERT INTO "django_admin_log" VALUES(16,'1','Testing gallery',1,'Added.',28,1,'2016-10-11 04:11:40.625723');
INSERT INTO "django_admin_log" VALUES(17,'2','thumbnail',2,'No fields changed.',32,1,'2016-10-11 22:33:26.617409');
INSERT INTO "django_admin_log" VALUES(18,'3','display',2,'Changed width.',32,1,'2016-10-11 22:33:48.268924');
INSERT INTO "django_admin_log" VALUES(19,'3','display',2,'Changed width.',32,1,'2016-10-11 22:34:21.160882');
INSERT INTO "django_admin_log" VALUES(20,'3','display',2,'Changed width.',32,1,'2016-10-11 22:34:52.221328');
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','permission');
INSERT INTO "django_content_type" VALUES(3,'auth','user');
INSERT INTO "django_content_type" VALUES(4,'auth','group');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'taggit','tag');
INSERT INTO "django_content_type" VALUES(8,'taggit','taggeditem');
INSERT INTO "django_content_type" VALUES(9,'hitcount','blacklistip');
INSERT INTO "django_content_type" VALUES(10,'hitcount','blacklistuseragent');
INSERT INTO "django_content_type" VALUES(11,'hitcount','hit');
INSERT INTO "django_content_type" VALUES(12,'hitcount','hitcount');
INSERT INTO "django_content_type" VALUES(13,'accounts','userprofile');
INSERT INTO "django_content_type" VALUES(14,'notes','notebook');
INSERT INTO "django_content_type" VALUES(15,'django_summernote','attachment');
INSERT INTO "django_content_type" VALUES(16,'actstream','follow');
INSERT INTO "django_content_type" VALUES(17,'actstream','action');
INSERT INTO "django_content_type" VALUES(18,'sites','site');
INSERT INTO "django_content_type" VALUES(19,'django_comments','comment');
INSERT INTO "django_content_type" VALUES(20,'django_comments','commentflag');
INSERT INTO "django_content_type" VALUES(21,'postman','message');
INSERT INTO "django_content_type" VALUES(22,'postman','pendingmessage');
INSERT INTO "django_content_type" VALUES(23,'comments','mpttcomment');
INSERT INTO "django_content_type" VALUES(24,'friendship','friendshiprequest');
INSERT INTO "django_content_type" VALUES(25,'friendship','friend');
INSERT INTO "django_content_type" VALUES(26,'friendship','follow');
INSERT INTO "django_content_type" VALUES(27,'newsfeed','newsfeed');
INSERT INTO "django_content_type" VALUES(28,'photologue','gallery');
INSERT INTO "django_content_type" VALUES(29,'photologue','photo');
INSERT INTO "django_content_type" VALUES(30,'photologue','photoeffect');
INSERT INTO "django_content_type" VALUES(31,'photologue','watermark');
INSERT INTO "django_content_type" VALUES(32,'photologue','photosize');
INSERT INTO "django_content_type" VALUES(33,'photo','userimage');
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(5,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(6,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(7,3,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(8,3,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(9,3,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(10,4,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(11,4,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(12,4,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(16,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(17,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(18,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(19,7,'add_tag','Can add Tag');
INSERT INTO "auth_permission" VALUES(20,7,'change_tag','Can change Tag');
INSERT INTO "auth_permission" VALUES(21,7,'delete_tag','Can delete Tag');
INSERT INTO "auth_permission" VALUES(22,8,'add_taggeditem','Can add Tagged Item');
INSERT INTO "auth_permission" VALUES(23,8,'change_taggeditem','Can change Tagged Item');
INSERT INTO "auth_permission" VALUES(24,8,'delete_taggeditem','Can delete Tagged Item');
INSERT INTO "auth_permission" VALUES(25,9,'add_blacklistip','Can add Blacklisted IP');
INSERT INTO "auth_permission" VALUES(26,9,'change_blacklistip','Can change Blacklisted IP');
INSERT INTO "auth_permission" VALUES(27,9,'delete_blacklistip','Can delete Blacklisted IP');
INSERT INTO "auth_permission" VALUES(28,10,'add_blacklistuseragent','Can add Blacklisted User Agent');
INSERT INTO "auth_permission" VALUES(29,10,'change_blacklistuseragent','Can change Blacklisted User Agent');
INSERT INTO "auth_permission" VALUES(30,10,'delete_blacklistuseragent','Can delete Blacklisted User Agent');
INSERT INTO "auth_permission" VALUES(31,11,'add_hit','Can add hit');
INSERT INTO "auth_permission" VALUES(32,11,'change_hit','Can change hit');
INSERT INTO "auth_permission" VALUES(33,11,'delete_hit','Can delete hit');
INSERT INTO "auth_permission" VALUES(34,12,'add_hitcount','Can add hit count');
INSERT INTO "auth_permission" VALUES(35,12,'change_hitcount','Can change hit count');
INSERT INTO "auth_permission" VALUES(36,12,'delete_hitcount','Can delete hit count');
INSERT INTO "auth_permission" VALUES(37,13,'add_userprofile','Can add user profile');
INSERT INTO "auth_permission" VALUES(38,13,'change_userprofile','Can change user profile');
INSERT INTO "auth_permission" VALUES(39,13,'delete_userprofile','Can delete user profile');
INSERT INTO "auth_permission" VALUES(40,14,'add_notebook','Can add note book');
INSERT INTO "auth_permission" VALUES(41,14,'change_notebook','Can change note book');
INSERT INTO "auth_permission" VALUES(42,14,'delete_notebook','Can delete note book');
INSERT INTO "auth_permission" VALUES(43,15,'add_attachment','Can add attachment');
INSERT INTO "auth_permission" VALUES(44,15,'change_attachment','Can change attachment');
INSERT INTO "auth_permission" VALUES(45,15,'delete_attachment','Can delete attachment');
INSERT INTO "auth_permission" VALUES(46,16,'add_follow','Can add follow');
INSERT INTO "auth_permission" VALUES(47,16,'change_follow','Can change follow');
INSERT INTO "auth_permission" VALUES(48,16,'delete_follow','Can delete follow');
INSERT INTO "auth_permission" VALUES(49,17,'add_action','Can add action');
INSERT INTO "auth_permission" VALUES(50,17,'change_action','Can change action');
INSERT INTO "auth_permission" VALUES(51,17,'delete_action','Can delete action');
INSERT INTO "auth_permission" VALUES(52,18,'add_site','Can add site');
INSERT INTO "auth_permission" VALUES(53,18,'change_site','Can change site');
INSERT INTO "auth_permission" VALUES(54,18,'delete_site','Can delete site');
INSERT INTO "auth_permission" VALUES(55,19,'add_comment','Can add comment');
INSERT INTO "auth_permission" VALUES(56,19,'change_comment','Can change comment');
INSERT INTO "auth_permission" VALUES(57,19,'delete_comment','Can delete comment');
INSERT INTO "auth_permission" VALUES(58,19,'can_moderate','Can moderate comments');
INSERT INTO "auth_permission" VALUES(59,20,'add_commentflag','Can add comment flag');
INSERT INTO "auth_permission" VALUES(60,20,'change_commentflag','Can change comment flag');
INSERT INTO "auth_permission" VALUES(61,20,'delete_commentflag','Can delete comment flag');
INSERT INTO "auth_permission" VALUES(62,21,'add_message','Can add message');
INSERT INTO "auth_permission" VALUES(63,21,'change_message','Can change message');
INSERT INTO "auth_permission" VALUES(64,21,'delete_message','Can delete message');
INSERT INTO "auth_permission" VALUES(65,21,'add_pendingmessage','Can add pending message');
INSERT INTO "auth_permission" VALUES(66,21,'change_pendingmessage','Can change pending message');
INSERT INTO "auth_permission" VALUES(67,21,'delete_pendingmessage','Can delete pending message');
INSERT INTO "auth_permission" VALUES(68,23,'add_mpttcomment','Can add mptt comment');
INSERT INTO "auth_permission" VALUES(69,23,'change_mpttcomment','Can change mptt comment');
INSERT INTO "auth_permission" VALUES(70,23,'delete_mpttcomment','Can delete mptt comment');
INSERT INTO "auth_permission" VALUES(71,24,'add_friendshiprequest','Can add Friendship Request');
INSERT INTO "auth_permission" VALUES(72,24,'change_friendshiprequest','Can change Friendship Request');
INSERT INTO "auth_permission" VALUES(73,24,'delete_friendshiprequest','Can delete Friendship Request');
INSERT INTO "auth_permission" VALUES(74,25,'add_friend','Can add Friend');
INSERT INTO "auth_permission" VALUES(75,25,'change_friend','Can change Friend');
INSERT INTO "auth_permission" VALUES(76,25,'delete_friend','Can delete Friend');
INSERT INTO "auth_permission" VALUES(77,26,'add_follow','Can add Following Relationship');
INSERT INTO "auth_permission" VALUES(78,26,'change_follow','Can change Following Relationship');
INSERT INTO "auth_permission" VALUES(79,26,'delete_follow','Can delete Following Relationship');
INSERT INTO "auth_permission" VALUES(80,27,'add_newsfeed','Can add news feed');
INSERT INTO "auth_permission" VALUES(81,27,'change_newsfeed','Can change news feed');
INSERT INTO "auth_permission" VALUES(82,27,'delete_newsfeed','Can delete news feed');
INSERT INTO "auth_permission" VALUES(83,28,'add_gallery','Can add gallery');
INSERT INTO "auth_permission" VALUES(84,28,'change_gallery','Can change gallery');
INSERT INTO "auth_permission" VALUES(85,28,'delete_gallery','Can delete gallery');
INSERT INTO "auth_permission" VALUES(86,29,'add_photo','Can add photo');
INSERT INTO "auth_permission" VALUES(87,29,'change_photo','Can change photo');
INSERT INTO "auth_permission" VALUES(88,29,'delete_photo','Can delete photo');
INSERT INTO "auth_permission" VALUES(89,30,'add_photoeffect','Can add photo effect');
INSERT INTO "auth_permission" VALUES(90,30,'change_photoeffect','Can change photo effect');
INSERT INTO "auth_permission" VALUES(91,30,'delete_photoeffect','Can delete photo effect');
INSERT INTO "auth_permission" VALUES(92,31,'add_watermark','Can add watermark');
INSERT INTO "auth_permission" VALUES(93,31,'change_watermark','Can change watermark');
INSERT INTO "auth_permission" VALUES(94,31,'delete_watermark','Can delete watermark');
INSERT INTO "auth_permission" VALUES(95,32,'add_photosize','Can add photo size');
INSERT INTO "auth_permission" VALUES(96,32,'change_photosize','Can change photo size');
INSERT INTO "auth_permission" VALUES(97,32,'delete_photosize','Can delete photo size');
INSERT INTO "auth_permission" VALUES(98,33,'add_userimage','Can add user image');
INSERT INTO "auth_permission" VALUES(99,33,'change_userimage','Can change user image');
INSERT INTO "auth_permission" VALUES(100,33,'delete_userimage','Can delete user image');
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$24000$l4crckBcBWU4$/z1jMjfPHVvHwjPe6nHnQYBBYNtUIIrcbB0yFFN2KQE=','2016-10-12 22:29:48.922815',1,'','','cmmwaura20@gmail.com',1,1,'2016-09-22 05:56:24','cmwaura');
INSERT INTO "auth_user" VALUES(2,'pbkdf2_sha256$24000$yLKHAjUqFWqn$4EWgFvw8roSWG2s+/ea2W+GsIJGPnAFi5sfOF81YINE=','2016-10-12 22:27:53.719627',0,'','','cmmwaura20@gmail.com',0,1,'2016-09-28 22:32:49','pete');
INSERT INTO "auth_user" VALUES(3,'pbkdf2_sha256$24000$MArPvyznVOZy$OwgeDMB8C5tvc1IQnbN8AFrzzpXA4kht/OPNZxdzQIU=','2016-10-12 22:09:52.678773',0,'','','cmmwaura20@gmail.com',0,1,'2016-09-28 22:34:13.624905','christina');
INSERT INTO "django_session" VALUES('tllmof9aln7m4bfk0tfpr4vuq3nqsd08','ZWRjZGVhNWFjMDZkMTMzZjhlNTBhM2U4NWQwYmE5MTFmYWRkNzdlODp7Il9hdXRoX3VzZXJfaGFzaCI6ImIxNTVhOGI1NzA4YTM1M2RlYzM4YjJiN2E5OTA2YmJlZWQwMTEwNTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-10-12 22:36:14.191400');
INSERT INTO "django_session" VALUES('v3b1gcaszqki5ihs97hirvswc9seo85g','ZmE2MzcwZmQwZjBkMzgwMmYxYmE5ODA1YjU4YjgzMzUxOWI3OTRlMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2MmYxNGEwZjVmMDBmMjI3NDc0NTM5YTYzYmFkNDNiOTMxYmIzNzUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-10-26 22:29:49.648857');
INSERT INTO "taggit_tag" VALUES(1,'test','test');
INSERT INTO "taggit_tag" VALUES(2,'hello','hello');
INSERT INTO "taggit_tag" VALUES(3,'checker','checker');
INSERT INTO "taggit_taggeditem" VALUES(2,4,14,1);
INSERT INTO "taggit_taggeditem" VALUES(3,21,14,2);
INSERT INTO "taggit_taggeditem" VALUES(4,5,14,1);
INSERT INTO "taggit_taggeditem" VALUES(5,16,14,3);
INSERT INTO "notes_notebook" VALUES(4,'dsds','','<p><br></p><div id="lipsum">
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas est
 a aliquam sollicitudin. Curabitur finibus tortor sed eros venenatis 
pellentesque. Nunc at efficitur justo. Cras suscipit venenatis viverra. 
Curabitur dictum sapien a arcu ultrices suscipit. Duis ut cursus magna. 
Nulla vehicula, massa quis interdum vulputate, tellus risus porttitor 
est, ut porttitor ipsum urna sit amet quam. Morbi sed consequat magna. 
Nulla non neque a nisi blandit pretium. Phasellus dictum turpis lacus, 
mattis euismod diam consectetur in. Donec interdum eu risus et egestas.
</p>
<p>
In eget arcu non diam sodales porttitor a a nisl. Morbi porttitor, magna
 et porta hendrerit, sem ipsum accumsan quam, quis suscipit dui nibh non
 risus. Fusce vel pretium nisl. Duis auctor commodo fermentum. Vivamus 
sed aliquet lectus, vel efficitur dui. Nunc ligula nibh, cursus lobortis
 pellentesque vitae, suscipit at sapien. Nullam ultrices, sem ut 
vestibulum blandit, lectus erat suscipit augue, vitae dignissim metus 
libero non ligula. Vivamus placerat sed urna a sagittis. Sed faucibus 
leo sit amet facilisis mollis. Praesent malesuada ullamcorper purus, 
interdum ultrices sapien dignissim nec. Duis vitae tellus in ante 
porttitor gravida. Pellentesque sodales hendrerit feugiat. Sed vel dui 
ac nisl tempor lacinia nec eget magna. Aliquam molestie molestie lectus 
quis faucibus. Aliquam congue rutrum sem eu cursus.
</p>
<p>
Ut porta sed nisi id finibus. Suspendisse potenti. Vivamus efficitur 
accumsan ex et cursus. Maecenas in eros consequat, volutpat felis et, 
iaculis sapien. Duis et enim non sapien fringilla semper at nec mi. 
Pellentesque venenatis tempor elit. Donec a rutrum lorem. Cras neque 
urna, tristique in aliquam nec, gravida id ipsum. Fusce ac commodo 
sapien. Nam dapibus ligula tortor, eget rhoncus quam commodo quis. Proin
 elementum vitae sem at pulvinar. Nam mattis pulvinar imperdiet. Aenean 
arcu odio, sodales nec placerat ac, porttitor et mi. Quisque congue 
felis ac lectus pharetra, ut vulputate erat blandit. Integer sed odio 
dictum, dapibus est sed, ornare quam.
</p>
<p>
Nam eget suscipit sapien. Praesent lacinia feugiat eros. Curabitur eu 
pretium justo. Suspendisse mattis, urna a lacinia cursus, eros risus 
sollicitudin nisi, ut efficitur erat est a nulla. Ut finibus accumsan 
efficitur. Suspendisse at justo laoreet, commodo risus id, eleifend 
libero. Vestibulum pretium vestibulum rutrum. Nullam dignissim a ipsum 
vel elementum. Donec sed maximus purus, id pulvinar tortor. Proin mollis
 lacus sit amet elementum faucibus.
</p>
<p>
Mauris tristique velit et metus sagittis, in venenatis mi cursus. Nunc 
fermentum elementum ipsum. Curabitur felis risus, convallis non mauris 
vitae, tempor elementum odio. Donec enim magna, porta vel gravida a, 
elementum et justo. Ut sit amet velit nec nibh egestas rhoncus eget 
vitae lectus. Maecenas orci nibh, faucibus eget laoreet fermentum, 
ultricies non leo. Morbi rhoncus fermentum velit ac fermentum. Quisque 
hendrerit enim justo, vel rhoncus felis hendrerit ut. Vivamus aliquam, 
turpis a fringilla egestas, nisi dolor placerat massa, a imperdiet leo 
felis id ex. Cras vestibulum ex ac libero eleifend, at gravida mauris 
auctor. Donec bibendum vehicula tincidunt. Donec posuere enim at ante 
sagittis suscipit. Nunc vitae ex vel lacus consequat venenatis. Integer 
at nibh in turpis ultrices consectetur ultrices eget odio.
</p>
<p>
Nulla eu eros id odio lacinia accumsan sed quis massa. Maecenas et nisl 
velit. Mauris non metus lacinia, aliquet turpis quis, aliquet mi. Nulla 
sem nisl, elementum sed eros sodales, consequat dictum purus. Aenean in 
lacinia erat, in auctor orci. Nulla eros purus, tempus id hendrerit 
vitae, vehicula vitae tellus. Vivamus molestie massa et ante mattis 
tempor.
</p>
<p>
Morbi a egestas lectus, sed mattis velit. Cras a finibus velit. Etiam 
tristique metus ut ullamcorper accumsan. Nam dignissim ex elementum, 
dignissim dui ac, dignissim libero. Nullam nec metus eget leo elementum 
mattis. Suspendisse pharetra ultricies turpis eu ullamcorper. 
Suspendisse ac feugiat elit. Donec elementum ligula a mollis venenatis. 
Nullam neque quam, efficitur eu tortor ac, hendrerit porttitor nisi. 
Integer vitae luctus mi. Nullam convallis lacinia lacus, eget tempus dui
 posuere tempus. Integer justo orci, varius quis lorem ac, tempus mattis
 eros. Integer malesuada lectus non turpis accumsan, sed egestas est 
consectetur. Sed aliquam mauris ac arcu sagittis, tincidunt fermentum 
erat vulputate.
</p></div><p><br></p><p><br></p>','2016-09-22 06:22:43.842802','2016-10-12 21:42:37.777872',1,0,0,'dsds',1);
INSERT INTO "notes_notebook" VALUES(5,'This is a test feature','media/pics/index.jpeg','<p><br></p><div id="lipsum">
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas est
 a aliquam sollicitudin. Curabitur finibus tortor sed eros venenatis 
pellentesque. Nunc at efficitur justo. Cras suscipit venenatis viverra. 
Curabitur dictum sapien a arcu ultrices suscipit. Duis ut cursus magna. 
Nulla vehicula, massa quis interdum vulputate, tellus risus porttitor 
est, ut porttitor ipsum urna sit amet quam. Morbi sed consequat magna. 
Nulla non neque a nisi blandit pretium. Phasellus dictum turpis lacus, 
mattis euismod diam consectetur in. Donec interdum eu risus et egestas.
</p>
<p>
In eget arcu non diam sodales porttitor a a nisl. Morbi porttitor, magna
 et porta hendrerit, sem ipsum accumsan quam, quis suscipit dui nibh non
 risus. Fusce vel pretium nisl. Duis auctor commodo fermentum. Vivamus 
sed aliquet lectus, vel efficitur dui. Nunc ligula nibh, cursus lobortis
 pellentesque vitae, suscipit at sapien. Nullam ultrices, sem ut 
vestibulum blandit, lectus erat suscipit augue, vitae dignissim metus 
libero non ligula. Vivamus placerat sed urna a sagittis. Sed faucibus 
leo sit amet facilisis mollis. Praesent malesuada ullamcorper purus, 
interdum ultrices sapien dignissim nec. Duis vitae tellus in ante 
porttitor gravida. Pellentesque sodales hendrerit feugiat. Sed vel dui 
ac nisl tempor lacinia nec eget magna. Aliquam molestie molestie lectus 
quis faucibus. Aliquam congue rutrum sem eu cursus.
</p>
<p>
Ut porta sed nisi id finibus. Suspendisse potenti. Vivamus efficitur 
accumsan ex et cursus. Maecenas in eros consequat, volutpat felis et, 
iaculis sapien. Duis et enim non sapien fringilla semper at nec mi. 
Pellentesque venenatis tempor elit. Donec a rutrum lorem. Cras neque 
urna, tristique in aliquam nec, gravida id ipsum. Fusce ac commodo 
sapien. Nam dapibus ligula tortor, eget rhoncus quam commodo quis. Proin
 elementum vitae sem at pulvinar. Nam mattis pulvinar imperdiet. Aenean 
arcu odio, sodales nec placerat ac, porttitor et mi. Quisque congue 
felis ac lectus pharetra, ut vulputate erat blandit. Integer sed odio 
dictum, dapibus est sed, ornare quam.
</p>
<p>
Nam eget suscipit sapien. Praesent lacinia feugiat eros. Curabitur eu 
pretium justo. Suspendisse mattis, urna a lacinia cursus, eros risus 
sollicitudin nisi, ut efficitur erat est a nulla. Ut finibus accumsan 
efficitur. Suspendisse at justo laoreet, commodo risus id, eleifend 
libero. Vestibulum pretium vestibulum rutrum. Nullam dignissim a ipsum 
vel elementum. Donec sed maximus purus, id pulvinar tortor. Proin mollis
 lacus sit amet elementum faucibus.
</p>
<p>
Mauris tristique velit et metus sagittis, in venenatis mi cursus. Nunc 
fermentum elementum ipsum. Curabitur felis risus, convallis non mauris 
vitae, tempor elementum odio. Donec enim magna, porta vel gravida a, 
elementum et justo. Ut sit amet velit nec nibh egestas rhoncus eget 
vitae lectus. Maecenas orci nibh, faucibus eget laoreet fermentum, 
ultricies non leo. Morbi rhoncus fermentum velit ac fermentum. Quisque 
hendrerit enim justo, vel rhoncus felis hendrerit ut. Vivamus aliquam, 
turpis a fringilla egestas, nisi dolor placerat massa, a imperdiet leo 
felis id ex. Cras vestibulum ex ac libero eleifend, at gravida mauris 
auctor. Donec bibendum vehicula tincidunt. Donec posuere enim at ante 
sagittis suscipit. Nunc vitae ex vel lacus consequat venenatis. Integer 
at nibh in turpis ultrices consectetur ultrices eget odio.
</p>
<p>
Nulla eu eros id odio lacinia accumsan sed quis massa. Maecenas et nisl 
velit. Mauris non metus lacinia, aliquet turpis quis, aliquet mi. Nulla 
sem nisl, elementum sed eros sodales, consequat dictum purus. Aenean in 
lacinia erat, in auctor orci. Nulla eros purus, tempus id hendrerit 
vitae, vehicula vitae tellus. Vivamus molestie massa et ante mattis 
tempor.
</p>
<p>
Morbi a egestas lectus, sed mattis velit. Cras a finibus velit. Etiam 
tristique metus ut ullamcorper accumsan. Nam dignissim ex elementum, 
dignissim dui ac, dignissim libero. Nullam nec metus eget leo elementum 
mattis. Suspendisse pharetra ultricies turpis eu ullamcorper. 
Suspendisse ac feugiat elit. Donec elementum ligula a mollis venenatis. 
Nullam neque quam, efficitur eu tortor ac, hendrerit porttitor nisi. 
Integer vitae luctus mi. Nullam convallis lacinia lacus, eget tempus dui
 posuere tempus. Integer justo orci, varius quis lorem ac, tempus mattis
 eros. Integer malesuada lectus non turpis accumsan, sed egestas est 
consectetur. Sed aliquam mauris ac arcu sagittis, tincidunt fermentum 
erat vulputate.
</p></div><p><br></p>','2016-09-23 22:03:15.126460','2016-10-04 21:23:00.077122',1,0,0,'this-is-a-test-feature',1);
INSERT INTO "notes_notebook" VALUES(6,'Texting Form inheritance','media/pics/sunsetbeach.jpeg','<p>Form inheritance<br></p>','2016-09-24 00:01:17.886075','2016-10-13 00:08:20.047884',1,0,0,'texting-form-inheritance',1);
INSERT INTO "notes_notebook" VALUES(7,'second inheritance test','media/pics/index_wNujI0f.jpeg','<p>Second inheritance test<br></p>','2016-09-24 00:27:34.108031','2016-09-24 00:27:34.137044',1,0,1,'second-inheritance-test',1);
INSERT INTO "notes_notebook" VALUES(10,'Django activity stream test','media/pics/relaxation.jpeg','(''<p>django activit stream<br></p>'', None)','2016-09-27 19:43:50.624507','2016-10-13 00:05:01.302734',1,0,1,'django-activity-stream-test',1);
INSERT INTO "notes_notebook" VALUES(11,'This is the second activity stream','media/pics/index_ANc0bSm.jpeg','(''<h1>welcome<br></h1>'', None)','2016-09-27 22:55:46.029098','2016-10-12 21:41:28.536923',1,0,1,'this-is-the-second-activity-stream',1);
INSERT INTO "notes_notebook" VALUES(12,'this is just a small test','media/pics/index.jpeg','(''<p>test test <br></p>'', None)','2016-09-29 23:50:14.428486','2016-09-29 23:50:14.531892',1,0,1,'this-is-just-a-small-test',1);
INSERT INTO "notes_notebook" VALUES(13,'This is a pete post','media/pics/index_7coHMkO.jpeg','(''<p>This post was done by pete<br></p>'', None)','2016-09-30 16:11:07.009493','2016-09-30 16:11:07.063279',1,0,1,'this-is-a-pete-post',2);
INSERT INTO "notes_notebook" VALUES(14,'Test post','','(''<p>this is a post<br></p>'', None)','2016-09-30 16:31:33.653793','2016-09-30 16:31:33.781404',1,0,0,'test-post',1);
INSERT INTO "notes_notebook" VALUES(15,'This is a tag trial','','<p>ay<br></p>','2016-09-30 16:42:10.227514','2016-09-30 16:42:10.329993',1,0,0,'this-is-a-tag-trial',1);
INSERT INTO "notes_notebook" VALUES(16,'checker','','<b></b><p><b><br></b></p><div id="lipsum">
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas est
 a aliquam sollicitudin. Curabitur finibus tortor sed eros venenatis 
pellentesque. Nunc at efficitur justo. Cras suscipit venenatis viverra. 
Curabitur dictum sapien a arcu ultrices suscipit. Duis ut cursus magna. 
Nulla vehicula, massa quis interdum vulputate, tellus risus porttitor 
est, ut porttitor ipsum urna sit amet quam. Morbi sed consequat magna. 
Nulla non neque a nisi blandit pretium. Phasellus dictum turpis lacus, 
mattis euismod diam consectetur in. Donec interdum eu risus et egestas.
</p>
<p>
In eget arcu non diam sodales porttitor a a nisl. Morbi porttitor, magna
 et porta hendrerit, sem ipsum accumsan quam, quis suscipit dui nibh non
 risus. Fusce vel pretium nisl. Duis auctor commodo fermentum. Vivamus 
sed aliquet lectus, vel efficitur dui. Nunc ligula nibh, cursus lobortis
 pellentesque vitae, suscipit at sapien. Nullam ultrices, sem ut 
vestibulum blandit, lectus erat suscipit augue, vitae dignissim metus 
libero non ligula. Vivamus placerat sed urna a sagittis. Sed faucibus 
leo sit amet facilisis mollis. Praesent malesuada ullamcorper purus, 
interdum ultrices sapien dignissim nec. Duis vitae tellus in ante 
porttitor gravida. Pellentesque sodales hendrerit feugiat. Sed vel dui 
ac nisl tempor lacinia nec eget magna. Aliquam molestie molestie lectus 
quis faucibus. Aliquam congue rutrum sem eu cursus.
</p>
<p>
Ut porta sed nisi id finibus. Suspendisse potenti. Vivamus efficitur 
accumsan ex et cursus. Maecenas in eros consequat, volutpat felis et, 
iaculis sapien. Duis et enim non sapien fringilla semper at nec mi. 
Pellentesque venenatis tempor elit. Donec a rutrum lorem. Cras neque 
urna, tristique in aliquam nec, gravida id ipsum. Fusce ac commodo 
sapien. Nam dapibus ligula tortor, eget rhoncus quam commodo quis. Proin
 elementum vitae sem at pulvinar. Nam mattis pulvinar imperdiet. Aenean 
arcu odio, sodales nec placerat ac, porttitor et mi. Quisque congue 
felis ac lectus pharetra, ut vulputate erat blandit. Integer sed odio 
dictum, dapibus est sed, ornare quam.
</p>
<p>
Nam eget suscipit sapien. Praesent lacinia feugiat eros. Curabitur eu 
pretium justo. Suspendisse mattis, urna a lacinia cursus, eros risus 
sollicitudin nisi, ut efficitur erat est a nulla. Ut finibus accumsan 
efficitur. Suspendisse at justo laoreet, commodo risus id, eleifend 
libero. Vestibulum pretium vestibulum rutrum. Nullam dignissim a ipsum 
vel elementum. Donec sed maximus purus, id pulvinar tortor. Proin mollis
 lacus sit amet elementum faucibus.
</p>
<p>
Mauris tristique velit et metus sagittis, in venenatis mi cursus. Nunc 
fermentum elementum ipsum. Curabitur felis risus, convallis non mauris 
vitae, tempor elementum odio. Donec enim magna, porta vel gravida a, 
elementum et justo. Ut sit amet velit nec nibh egestas rhoncus eget 
vitae lectus. Maecenas orci nibh, faucibus eget laoreet fermentum, 
ultricies non leo. Morbi rhoncus fermentum velit ac fermentum. Quisque 
hendrerit enim justo, vel rhoncus felis hendrerit ut. Vivamus aliquam, 
turpis a fringilla egestas, nisi dolor placerat massa, a imperdiet leo 
felis id ex. Cras vestibulum ex ac libero eleifend, at gravida mauris 
auctor. Donec bibendum vehicula tincidunt. Donec posuere enim at ante 
sagittis suscipit. Nunc vitae ex vel lacus consequat venenatis. Integer 
at nibh in turpis ultrices consectetur ultrices eget odio.
</p>
<p>
Nulla eu eros id odio lacinia accumsan sed quis massa. Maecenas et nisl 
velit. Mauris non metus lacinia, aliquet turpis quis, aliquet mi. Nulla 
sem nisl, elementum sed eros sodales, consequat dictum purus. Aenean in 
lacinia erat, in auctor orci. Nulla eros purus, tempus id hendrerit 
vitae, vehicula vitae tellus. Vivamus molestie massa et ante mattis 
tempor.
</p>
<p>
Morbi a egestas lectus, sed mattis velit. Cras a finibus velit. Etiam 
tristique metus ut ullamcorper accumsan. Nam dignissim ex elementum, 
dignissim dui ac, dignissim libero. Nullam nec metus eget leo elementum 
mattis. Suspendisse pharetra ultricies turpis eu ullamcorper. 
Suspendisse ac feugiat elit. Donec elementum ligula a mollis venenatis. 
Nullam neque quam, efficitur eu tortor ac, hendrerit porttitor nisi. 
Integer vitae luctus mi. Nullam convallis lacinia lacus, eget tempus dui
 posuere tempus. Integer justo orci, varius quis lorem ac, tempus mattis
 eros. Integer malesuada lectus non turpis accumsan, sed egestas est 
consectetur. Sed aliquam mauris ac arcu sagittis, tincidunt fermentum 
erat vulputate.
</p></div><p><b><br></b><br></p>','2016-09-30 16:44:44.130071','2016-10-04 21:23:52.487266',1,0,0,'checker',1);
INSERT INTO "notes_notebook" VALUES(17,'Tags not workin','','<p>Checking tags<br></p>','2016-10-01 21:24:32.014450','2016-10-01 21:24:32.400878',1,0,1,'tags-not-workin',2);
INSERT INTO "notes_notebook" VALUES(18,'testing tags','','<i>Tag testing<br></i>','2016-10-01 21:29:07.168052','2016-10-01 21:29:07.168281',1,0,1,'testing-tags',1);
INSERT INTO "notes_notebook" VALUES(19,'Tag tester','','<p>Thsi is a tesr<br></p>','2016-10-01 21:32:30.289803','2016-10-01 21:32:30.289978',1,0,1,'tag-tester',1);
INSERT INTO "notes_notebook" VALUES(20,'Title','','<p>tag test<br></p>','2016-10-01 21:33:57.117584','2016-10-01 21:33:57.117742',1,0,1,'title',1);
INSERT INTO "notes_notebook" VALUES(21,'hello','','<p>hello&nbsp;&nbsp;&nbsp;&nbsp;<br></p>','2016-10-01 21:45:07.140081','2016-10-01 21:45:08.254737',1,0,1,'hello',1);
INSERT INTO "actstream_follow" VALUES(3,'2',1,'2016-10-02 22:10:41.429834',3,1);
INSERT INTO "actstream_follow" VALUES(4,'2',1,'2016-10-08 21:19:08.055839',3,3);
INSERT INTO "actstream_follow" VALUES(5,'3',1,'2016-10-11 02:45:59.779468',3,1);
INSERT INTO "actstream_follow" VALUES(6,'1',1,'2016-10-12 22:10:47.403791',3,3);
INSERT INTO "actstream_follow" VALUES(7,'1',1,'2016-10-12 22:28:25.417651',3,2);
INSERT INTO "actstream_action" VALUES(1,'1','created',NULL,'10',NULL,'2016-09-27 19:43:50.679944',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(2,'1','created',NULL,'11',NULL,'2016-09-27 22:55:46.066871',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(3,'1','updated',NULL,'1',NULL,'2016-09-28 19:55:15.750158',1,NULL,3,13);
INSERT INTO "actstream_action" VALUES(4,'1','updated',NULL,'1',NULL,'2016-09-28 20:08:06.972213',1,NULL,3,13);
INSERT INTO "actstream_action" VALUES(5,'1','updated',NULL,'1',NULL,'2016-09-29 23:48:50.578821',1,NULL,3,13);
INSERT INTO "actstream_action" VALUES(6,'1','created',NULL,'12',NULL,'2016-09-29 23:50:14.510718',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(7,'2','created',NULL,'13',NULL,'2016-09-30 16:11:07.034187',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(8,'1','created',NULL,'14',NULL,'2016-09-30 16:31:33.744688',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(9,'1','created',NULL,'15',NULL,'2016-09-30 16:42:10.288998',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(10,'1','created',NULL,'16',NULL,'2016-09-30 16:44:44.203545',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(11,'2','created',NULL,'17',NULL,'2016-10-01 21:24:32.321356',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(12,'1','created',NULL,'21',NULL,'2016-10-01 21:45:08.187732',1,NULL,3,14);
INSERT INTO "actstream_action" VALUES(13,'1','started following',NULL,'2',NULL,'2016-10-02 19:37:37.242702',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(14,'1','started following',NULL,'3',NULL,'2016-10-02 19:38:40.952503',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(15,'1','started following',NULL,'2',NULL,'2016-10-02 22:10:41.484717',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(18,'3','started following',NULL,'2',NULL,'2016-10-08 21:19:08.106508',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(19,'3','updated',NULL,'3',NULL,'2016-10-08 21:22:17.859679',1,NULL,3,13);
INSERT INTO "actstream_action" VALUES(24,'1','wrote',NULL,'13',NULL,'2016-10-11 00:48:50.717545',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(25,'1','wrote',NULL,'14',NULL,'2016-10-11 01:12:10.909187',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(28,'1','wrote',NULL,'17',NULL,'2016-10-11 01:26:31.179942',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(29,'1','wrote',NULL,'18',NULL,'2016-10-11 01:33:11.249518',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(30,'1','wrote',NULL,'19',NULL,'2016-10-11 01:52:34.274245',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(31,'1','wrote',NULL,'20',NULL,'2016-10-11 02:35:44.095271',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(32,'1','started following',NULL,'3',NULL,'2016-10-11 02:45:59.851274',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(33,'3','wrote',NULL,'21',NULL,'2016-10-12 22:10:22.163479',1,NULL,3,27);
INSERT INTO "actstream_action" VALUES(34,'3','started following',NULL,'1',NULL,'2016-10-12 22:10:47.462213',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(35,'2','started following',NULL,'1',NULL,'2016-10-12 22:28:25.457910',1,NULL,3,3);
INSERT INTO "actstream_action" VALUES(36,'2','wrote',NULL,'22',NULL,'2016-10-12 22:29:09.571253',1,NULL,3,27);
INSERT INTO "django_site" VALUES(1,'example.com','example.com');
INSERT INTO "accounts_userprofile" VALUES(1,'Crispus','Mwaura','Comedian','2016-09-22 05:56:24.834775','hello',1,'media/profileImg/beach.jpeg');
INSERT INTO "accounts_userprofile" VALUES(2,'Peter','mwamba','dj','2016-09-28 22:32:49.466986','rfef',2,'media/profileImg/beach_aW5Zt0A.jpeg');
INSERT INTO "accounts_userprofile" VALUES(3,'Christina','CHRISTIE','ARTIST','2016-09-28 22:34:13.850309','',3,'media/profileImg/index.jpeg');
INSERT INTO "django_comments" VALUES(1,'4','cmwaura','cmmwaura20@gmail.com','http://127.0.0.1:8000/notes/dsds/','vnfenfwe','127.0.0.1',1,0,14,1,1,'2016-09-30 19:06:52.203474');
INSERT INTO "django_comments" VALUES(2,'4','cmwaura','cmmwaura20@gmail.com','','i think that this is a powerful contrast','127.0.0.1',1,0,14,1,1,'2016-09-30 20:22:49.411948');
INSERT INTO "postman_message" VALUES(1,'this is a test','body','','2016-09-30 01:22:48','2016-09-30 01:40:26.424799',NULL,0,0,NULL,NULL,'a','2016-09-30 01:25:00.564817','',1,NULL,2,1,NULL);
INSERT INTO "postman_message" VALUES(2,'this is a test message','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In sed imperdiet nunc. Sed ut ex et lacus consectetur congue. Vestibulum non purus dignissim, ultricies nisl quis, accumsan enim. Nulla eros diam, pharetra laoreet nisl id, rutrum consectetur eros. Fusce eget nunc convallis, aliquet est quis, ultricies eros. Aliquam venenatis a sem quis elementum. Maecenas lobortis, arcu vulputate elementum dictum, nunc dui mattis erat, vitae feugiat urna nisi at lacus. Pellentesque feugiat eget dolor nec suscipit. Cras risus sem, mattis eget metus vel, auctor iaculis mauris. Mauris mi neque, ultrices id ullamcorper sed, laoreet sit amet tellus. Donec eget ornare augue. Donec volutpat, purus ut posuere luctus, ligula nunc gravida ante, ut mollis est arcu venenatis arcu. Donec eros diam, euismod et mi et, imperdiet mollis enim. Ut nec felis eu enim mattis sollicitudin.

Sed tempor ipsum a commodo aliquet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque erat dolor, vehicula et convallis eu, ullamcorper et purus. Suspendisse porta fringilla rhoncus. In diam sapien, facilisis vel arcu a, pretium imperdiet elit. Proin vel bibendum ex. Vestibulum vel sollicitudin ligula, eu egestas augue. Morbi in accumsan quam, nec euismod ex. Maecenas vestibulum, elit nec fringilla lobortis, dolor sapien tincidunt magna, eu condimentum nulla nisl vel ex. Sed vel dui a libero molestie porttitor vitae id justo. Donec consequat sollicitudin facilisis.

Duis ultrices lobortis tempus. Sed eros dui, vestibulum sit amet aliquam in, consectetur sit amet enim. In sit amet ligula imperdiet, consectetur ligula at, sagittis dui. Sed porta pellentesque mi sed interdum. Suspendisse nec elit vestibulum, auctor dui vel, placerat leo. Duis id arcu turpis. Nunc at sapien est. Cras condimentum lectus ut aliquam euismod. Suspendisse id molestie mauris. Maecenas est nunc, tincidunt quis tempus vel, aliquet sed ipsum.

In varius quis odio sed pellentesque. Nam a elit vel libero cursus finibus. Fusce tincidunt posuere lorem. Curabitur ac felis purus. Donec at suscipit augue. Etiam at urna id odio tempor pellentesque. Praesent cursus ipsum diam, in convallis ligula tristique at.

Cras dapibus sapien urna, ac condimentum leo sodales id. Donec rhoncus ex sem, vitae accumsan elit volutpat sed. Donec gravida pretium lorem. In sed rhoncus erat. Praesent at commodo turpis. Donec at sodales ipsum. Integer suscipit, turpis a blandit lacinia, justo libero iaculis dolor, eu interdum purus metus vel dui. Vestibulum sed tellus non augue consectetur cursus eu ac odio. Aliquam pharetra sed turpis nec varius. Nam nec congue turpis, sit amet mollis sem. Duis eu vehicula sapien. Maecenas tincidunt blandit nibh, vel pellentesque enim cursus sed. Duis maximus elit in pharetra suscipit. Quisque sed urna mi. Integer nisi neque, euismod vitae dignissim eu, commodo quis felis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','','2016-10-07 01:09:32.423455','2016-10-07 01:10:54.505891',NULL,0,0,NULL,NULL,'a','2016-10-07 01:09:32.440306','',NULL,NULL,2,3,NULL);
INSERT INTO "postman_message" VALUES(3,'this is a showcase','just showcasing the messaging system','','2016-10-08 21:07:17.507691','2016-10-08 21:15:23.718475',NULL,0,0,NULL,NULL,'a','2016-10-08 21:07:17.522234','',NULL,NULL,3,2,NULL);
INSERT INTO "friendship_friendshiprequest" VALUES(1,'hi! you want to be my friend','2016-10-02 17:14:07.178387',NULL,NULL,2,3);
INSERT INTO "friendship_friend" VALUES(1,'2016-10-02 17:06:55',2,1);
INSERT INTO "friendship_friend" VALUES(2,'2016-10-02 17:08:14',3,1);
INSERT INTO "newsfeed_newsfeed" VALUES(4,'testing 123','2016-10-05 16:46:09.651687',1,0,1,1,'2016-10-05 16:46:09.616047');
INSERT INTO "newsfeed_newsfeed" VALUES(5,'this is the second test for 123','2016-10-05 16:49:21.087598',1,0,1,1,'2016-10-05 16:49:21.071586');
INSERT INTO "newsfeed_newsfeed" VALUES(13,'attempting to add a new post','2016-10-11 00:48:50.753595',1,0,1,1,'2016-10-11 00:48:50.696410');
INSERT INTO "newsfeed_newsfeed" VALUES(14,'this is  a databse check','2016-10-11 01:12:10.965267',1,0,1,1,'2016-10-11 01:12:10.884115');
INSERT INTO "newsfeed_newsfeed" VALUES(17,'trial 1','2016-10-11 01:26:31.255721',1,0,1,1,'2016-10-11 01:26:31.031114');
INSERT INTO "newsfeed_newsfeed" VALUES(18,'update','2016-10-11 01:33:11.314718',1,0,1,1,'2016-10-11 01:33:11.219423');
INSERT INTO "newsfeed_newsfeed" VALUES(19,'this is a new feed','2016-10-11 01:52:34.337916',1,0,1,1,'2016-10-11 01:52:34.242526');
INSERT INTO "newsfeed_newsfeed" VALUES(20,'welcome to the universe','2016-10-11 02:35:44.135479',1,0,1,1,'2016-10-11 02:35:44.032429');
INSERT INTO "newsfeed_newsfeed" VALUES(21,'this is a testing status','2016-10-12 22:10:22.233509',1,0,1,3,'2016-10-12 22:10:21.983081');
INSERT INTO "newsfeed_newsfeed" VALUES(22,'this is a new status by pete','2016-10-12 22:29:09.707551',1,0,1,2,'2016-10-12 22:29:09.484073');
INSERT INTO "photologue_photosize" VALUES(1,'admin_thumbnail',100,75,70,0,1,1,0,NULL,NULL);
INSERT INTO "photologue_photosize" VALUES(2,'thumbnail',100,75,70,0,1,1,0,NULL,NULL);
INSERT INTO "photologue_photosize" VALUES(3,'display',400,0,70,0,0,1,1,NULL,NULL);
INSERT INTO "photologue_gallery_photos" VALUES(1,1,1,2);
INSERT INTO "photologue_gallery_photos" VALUES(2,1,2,1);
INSERT INTO "photologue_gallery_sites" VALUES(1,1,1);
INSERT INTO "photologue_photo_sites" VALUES(1,1,1);
INSERT INTO "photologue_photo_sites" VALUES(2,2,1);
INSERT INTO "photologue_photo_sites" VALUES(3,3,1);
INSERT INTO "photologue_photo_sites" VALUES(4,4,1);
INSERT INTO "photologue_photo_sites" VALUES(5,5,1);
INSERT INTO "photologue_photo_sites" VALUES(6,6,1);
INSERT INTO "photologue_photo_sites" VALUES(7,7,1);
INSERT INTO "photologue_photo_sites" VALUES(8,8,1);
INSERT INTO "photologue_gallery" VALUES(1,'2016-10-11 04:11:10','testing-gallery','this is just a quick test',1,'Testing gallery');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',45);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',20);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',33);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',100);
INSERT INTO "sqlite_sequence" VALUES('auth_user',3);
INSERT INTO "sqlite_sequence" VALUES('hitcount_hit_count',0);
INSERT INTO "sqlite_sequence" VALUES('hitcount_hit',0);
INSERT INTO "sqlite_sequence" VALUES('taggit_taggeditem',5);
INSERT INTO "sqlite_sequence" VALUES('notes_notebook',21);
INSERT INTO "sqlite_sequence" VALUES('taggit_tag',3);
INSERT INTO "sqlite_sequence" VALUES('actstream_follow',7);
INSERT INTO "sqlite_sequence" VALUES('actstream_action',36);
INSERT INTO "sqlite_sequence" VALUES('django_site',1);
INSERT INTO "sqlite_sequence" VALUES('accounts_userprofile',3);
INSERT INTO "sqlite_sequence" VALUES('django_comment_flags',0);
INSERT INTO "sqlite_sequence" VALUES('django_comments',2);
INSERT INTO "sqlite_sequence" VALUES('postman_message',3);
INSERT INTO "sqlite_sequence" VALUES('friendship_friendshiprequest',1);
INSERT INTO "sqlite_sequence" VALUES('friendship_friend',2);
INSERT INTO "sqlite_sequence" VALUES('friendship_follow',0);
INSERT INTO "sqlite_sequence" VALUES('newsfeed_newsfeed',22);
INSERT INTO "sqlite_sequence" VALUES('photologue_photosize',3);
INSERT INTO "sqlite_sequence" VALUES('photologue_gallery_photos',2);
INSERT INTO "sqlite_sequence" VALUES('photologue_gallery_sites',1);
INSERT INTO "sqlite_sequence" VALUES('photologue_photo_sites',8);
INSERT INTO "sqlite_sequence" VALUES('photologue_gallery',1);
COMMIT;
