CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE UNIQUE INDEX "auth_group_permissions_group_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
CREATE UNIQUE INDEX "django_content_type_app_label_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "auth_permission_content_type_id_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE TABLE "hitcount_blacklist_ip" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "ip" varchar(40) NOT NULL UNIQUE);
CREATE TABLE "hitcount_blacklist_user_agent" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_agent" varchar(255) NOT NULL UNIQUE);
CREATE TABLE "hitcount_hit_count" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "hits" integer unsigned NOT NULL, "modified" datetime NOT NULL, "object_pk" integer unsigned NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"));
CREATE UNIQUE INDEX "hitcount_hit_count_content_type_id_4dacb610_uniq" ON "hitcount_hit_count" ("content_type_id", "object_pk");
CREATE INDEX "hitcount_hit_count_417f1b1c" ON "hitcount_hit_count" ("content_type_id");
CREATE TABLE "hitcount_hit" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "ip" varchar(40) NOT NULL, "session" varchar(40) NOT NULL, "user_agent" varchar(255) NOT NULL, "hitcount_id" integer NOT NULL REFERENCES "hitcount_hit_count" ("id"), "user_id" integer NULL REFERENCES "auth_user" ("id"));
CREATE INDEX "hitcount_hit_e2fa5388" ON "hitcount_hit" ("created");
CREATE INDEX "hitcount_hit_527d620b" ON "hitcount_hit" ("hitcount_id");
CREATE INDEX "hitcount_hit_e8701ad4" ON "hitcount_hit" ("user_id");
CREATE TABLE "taggit_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL UNIQUE, "slug" varchar(100) NOT NULL UNIQUE);
CREATE TABLE "taggit_taggeditem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" integer NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "tag_id" integer NOT NULL REFERENCES "taggit_tag" ("id"));
CREATE INDEX "taggit_taggeditem_af31437c" ON "taggit_taggeditem" ("object_id");
CREATE INDEX "taggit_taggeditem_417f1b1c" ON "taggit_taggeditem" ("content_type_id");
CREATE INDEX "taggit_taggeditem_76f094bc" ON "taggit_taggeditem" ("tag_id");
CREATE INDEX "taggit_taggeditem_content_type_id_196cc965_idx" ON "taggit_taggeditem" ("content_type_id", "object_id");
CREATE TABLE "notes_notebook" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(140) NOT NULL, "banner" varchar(100) NULL, "text" text NOT NULL, "created_on" datetime NOT NULL, "updated_on" datetime NOT NULL, "active" bool NOT NULL, "featured" bool NOT NULL, "published" bool NOT NULL, "slug" varchar(50) NOT NULL UNIQUE, "submitter_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE UNIQUE INDEX "notes_notebook_title_0df2fb55_uniq" ON "notes_notebook" ("title", "slug");
CREATE INDEX "notes_notebook_a8919bbb" ON "notes_notebook" ("submitter_id");
CREATE TABLE "django_summernote_attachment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(255) NULL, "file" varchar(100) NOT NULL, "uploaded" datetime NOT NULL);
CREATE TABLE "actstream_follow" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" varchar(255) NOT NULL, "actor_only" bool NOT NULL, "started" datetime NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE UNIQUE INDEX "actstream_follow_user_id_63ca7c27_uniq" ON "actstream_follow" ("user_id", "content_type_id", "object_id");
CREATE INDEX "actstream_follow_af31437c" ON "actstream_follow" ("object_id");
CREATE INDEX "actstream_follow_3bebb2f8" ON "actstream_follow" ("started");
CREATE INDEX "actstream_follow_417f1b1c" ON "actstream_follow" ("content_type_id");
CREATE INDEX "actstream_follow_e8701ad4" ON "actstream_follow" ("user_id");
CREATE TABLE "actstream_action" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "actor_object_id" varchar(255) NOT NULL, "verb" varchar(255) NOT NULL, "description" text NULL, "target_object_id" varchar(255) NULL, "action_object_object_id" varchar(255) NULL, "timestamp" datetime NOT NULL, "public" bool NOT NULL, "action_object_content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "actor_content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "target_content_type_id" integer NULL REFERENCES "django_content_type" ("id"));
CREATE INDEX "actstream_action_c4f7c191" ON "actstream_action" ("actor_object_id");
CREATE INDEX "actstream_action_b512ddf1" ON "actstream_action" ("verb");
CREATE INDEX "actstream_action_1cd2a6ae" ON "actstream_action" ("target_object_id");
CREATE INDEX "actstream_action_9063443c" ON "actstream_action" ("action_object_object_id");
CREATE INDEX "actstream_action_d7e6d55b" ON "actstream_action" ("timestamp");
CREATE INDEX "actstream_action_4c9184f3" ON "actstream_action" ("public");
CREATE INDEX "actstream_action_142874d9" ON "actstream_action" ("action_object_content_type_id");
CREATE INDEX "actstream_action_53a09d9a" ON "actstream_action" ("actor_content_type_id");
CREATE INDEX "actstream_action_e4f9dcc7" ON "actstream_action" ("target_content_type_id");
CREATE TABLE "django_site" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "domain" varchar(100) NOT NULL UNIQUE);
CREATE TABLE "accounts_userprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "first_name" varchar(140) NOT NULL, "last_name" varchar(140) NOT NULL, "job_title" varchar(140) NOT NULL, "created_at" datetime NOT NULL, "url_key" varchar(140) NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id"), "picture" varchar(100) NULL);
CREATE TABLE "django_comment_flags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "flag" varchar(30) NOT NULL, "flag_date" datetime NOT NULL, "comment_id" integer NOT NULL REFERENCES "django_comments" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE UNIQUE INDEX "django_comment_flags_user_id_537f77a7_uniq" ON "django_comment_flags" ("user_id", "comment_id", "flag");
CREATE INDEX "django_comment_flags_327a6c43" ON "django_comment_flags" ("flag");
CREATE INDEX "django_comment_flags_69b97d17" ON "django_comment_flags" ("comment_id");
CREATE INDEX "django_comment_flags_e8701ad4" ON "django_comment_flags" ("user_id");
CREATE TABLE "django_comments" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_pk" text NOT NULL, "user_name" varchar(50) NOT NULL, "user_email" varchar(254) NOT NULL, "user_url" varchar(200) NOT NULL, "comment" text NOT NULL, "ip_address" char(39) NULL, "is_public" bool NOT NULL, "is_removed" bool NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "site_id" integer NOT NULL REFERENCES "django_site" ("id"), "user_id" integer NULL REFERENCES "auth_user" ("id"), "submit_date" datetime NOT NULL);
CREATE INDEX "django_comments_417f1b1c" ON "django_comments" ("content_type_id");
CREATE INDEX "django_comments_9365d6e7" ON "django_comments" ("site_id");
CREATE INDEX "django_comments_e8701ad4" ON "django_comments" ("user_id");
CREATE INDEX "django_comments_d21e9f6c" ON "django_comments" ("submit_date");
CREATE TABLE "postman_message" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "subject" varchar(120) NOT NULL, "body" text NOT NULL, "email" varchar(254) NOT NULL, "sent_at" datetime NOT NULL, "read_at" datetime NULL, "replied_at" datetime NULL, "sender_archived" bool NOT NULL, "recipient_archived" bool NOT NULL, "sender_deleted_at" datetime NULL, "recipient_deleted_at" datetime NULL, "moderation_status" varchar(1) NOT NULL, "moderation_date" datetime NULL, "moderation_reason" varchar(120) NOT NULL, "moderation_by_id" integer NULL REFERENCES "auth_user" ("id"), "parent_id" integer NULL REFERENCES "postman_message" ("id"), "recipient_id" integer NULL REFERENCES "auth_user" ("id"), "sender_id" integer NULL REFERENCES "auth_user" ("id"), "thread_id" integer NULL REFERENCES "postman_message" ("id"));
CREATE INDEX "postman_message_9378d60f" ON "postman_message" ("moderation_by_id");
CREATE INDEX "postman_message_6be37982" ON "postman_message" ("parent_id");
CREATE INDEX "postman_message_8b938c66" ON "postman_message" ("recipient_id");
CREATE INDEX "postman_message_924b1846" ON "postman_message" ("sender_id");
CREATE INDEX "postman_message_e3464c97" ON "postman_message" ("thread_id");
CREATE TABLE "friendship_friendshiprequest" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "message" text NOT NULL, "created" datetime NOT NULL, "rejected" datetime NULL, "viewed" datetime NULL, "from_user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "to_user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE UNIQUE INDEX "friendship_friendshiprequest_from_user_id_003053a1_uniq" ON "friendship_friendshiprequest" ("from_user_id", "to_user_id");
CREATE INDEX "friendship_friendshiprequest_6b4f059f" ON "friendship_friendshiprequest" ("from_user_id");
CREATE INDEX "friendship_friendshiprequest_63add04c" ON "friendship_friendshiprequest" ("to_user_id");
CREATE TABLE "friendship_friend" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "from_user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "to_user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE UNIQUE INDEX "friendship_friend_from_user_id_5aa078c0_uniq" ON "friendship_friend" ("from_user_id", "to_user_id");
CREATE INDEX "friendship_friend_6b4f059f" ON "friendship_friend" ("from_user_id");
CREATE INDEX "friendship_friend_63add04c" ON "friendship_friend" ("to_user_id");
CREATE TABLE "friendship_follow" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "followee_id" integer NOT NULL REFERENCES "auth_user" ("id"), "follower_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE UNIQUE INDEX "friendship_follow_follower_id_75264015_uniq" ON "friendship_follow" ("follower_id", "followee_id");
CREATE INDEX "friendship_follow_641c2af7" ON "friendship_follow" ("followee_id");
CREATE INDEX "friendship_follow_6bde7ca3" ON "friendship_follow" ("follower_id");
CREATE TABLE "newsfeed_newsfeed" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "newsfeed" varchar(140) NOT NULL, "updated_on" datetime NOT NULL, "active" bool NOT NULL, "featured" bool NOT NULL, "published" bool NOT NULL, "submitter_id" integer NOT NULL REFERENCES "auth_user" ("id"), "timestamp" datetime NOT NULL);
CREATE INDEX "newsfeed_newsfeed_a8919bbb" ON "newsfeed_newsfeed" ("submitter_id");
CREATE TABLE "photologue_photoeffect" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(30) NOT NULL UNIQUE, "description" text NOT NULL, "transpose_method" varchar(15) NOT NULL, "color" real NOT NULL, "brightness" real NOT NULL, "contrast" real NOT NULL, "sharpness" real NOT NULL, "filters" varchar(200) NOT NULL, "reflection_size" real NOT NULL, "reflection_strength" real NOT NULL, "background_color" varchar(7) NOT NULL);
CREATE TABLE "photologue_watermark" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(30) NOT NULL UNIQUE, "description" text NOT NULL, "image" varchar(100) NOT NULL, "style" varchar(5) NOT NULL, "opacity" real NOT NULL);
CREATE TABLE "photologue_photosize" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(40) NOT NULL UNIQUE, "width" integer unsigned NOT NULL, "height" integer unsigned NOT NULL, "quality" integer unsigned NOT NULL, "upscale" bool NOT NULL, "crop" bool NOT NULL, "pre_cache" bool NOT NULL, "increment_count" bool NOT NULL, "effect_id" integer NULL REFERENCES "photologue_photoeffect" ("id"), "watermark_id" integer NULL REFERENCES "photologue_watermark" ("id"));
CREATE INDEX "photologue_photosize_5e2b9470" ON "photologue_photosize" ("effect_id");
CREATE INDEX "photologue_photosize_cc9edf33" ON "photologue_photosize" ("watermark_id");
CREATE TABLE "photologue_gallery_photos" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "gallery_id" integer NOT NULL REFERENCES "photologue_gallery" ("id"), "sort_value" integer NOT NULL, "photo_id" integer NOT NULL REFERENCES "photologue_photo" ("id"));
CREATE UNIQUE INDEX "photologue_gallery_photos_gallery_id_ac3d7969_uniq" ON "photologue_gallery_photos" ("gallery_id", "photo_id");
CREATE INDEX "photologue_gallery_photos_6d994cdb" ON "photologue_gallery_photos" ("gallery_id");
CREATE INDEX "photologue_gallery_photos_b4e75e23" ON "photologue_gallery_photos" ("photo_id");
CREATE TABLE "photologue_gallery_sites" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "gallery_id" integer NOT NULL REFERENCES "photologue_gallery" ("id"), "site_id" integer NOT NULL REFERENCES "django_site" ("id"));
CREATE UNIQUE INDEX "photologue_gallery_sites_gallery_id_4158504d_uniq" ON "photologue_gallery_sites" ("gallery_id", "site_id");
CREATE INDEX "photologue_gallery_sites_6d994cdb" ON "photologue_gallery_sites" ("gallery_id");
CREATE INDEX "photologue_gallery_sites_9365d6e7" ON "photologue_gallery_sites" ("site_id");
CREATE TABLE "photologue_photo_sites" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "photo_id" integer NOT NULL REFERENCES "photologue_photo" ("id"), "site_id" integer NOT NULL REFERENCES "django_site" ("id"));
CREATE UNIQUE INDEX "photologue_photo_sites_photo_id_a8528863_uniq" ON "photologue_photo_sites" ("photo_id", "site_id");
CREATE INDEX "photologue_photo_sites_b4e75e23" ON "photologue_photo_sites" ("photo_id");
CREATE INDEX "photologue_photo_sites_9365d6e7" ON "photologue_photo_sites" ("site_id");
CREATE TABLE "photologue_gallery" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "date_added" datetime NOT NULL, "slug" varchar(250) NOT NULL UNIQUE, "description" text NOT NULL, "is_public" bool NOT NULL, "title" varchar(250) NOT NULL UNIQUE);
