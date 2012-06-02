CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "stories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "priority" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "user_sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "login" varchar(255), "email" varchar(255), "persistence_token" varchar(255), "crypted_password" varchar(255), "password_salt" varchar(255), "single_access_token" varchar(255), "perishable_token" varchar(255), "login_count" integer, "failed_login_count" integer, "last_request_at" datetime, "current_login_at" datetime, "last_login_at" datetime, "current_login_ip" varchar(255), "last_login_ip" varchar(255), "status" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120523112044');

INSERT INTO schema_migrations (version) VALUES ('20120529192027');

INSERT INTO schema_migrations (version) VALUES ('20120529195312');