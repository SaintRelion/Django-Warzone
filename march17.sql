/*
 Navicat Premium Dump SQL

 Source Server         : Warzone Postgres Prod
 Source Server Type    : PostgreSQL
 Source Server Version : 180003 (180003)
 Source Host           : 76.13.217.76:5000
 Source Catalog        : warzone
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 180003 (180003)
 File Encoding         : 65001

 Date: 17/03/2026 16:59:55
*/


-- ----------------------------
-- Sequence structure for accounts_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_user_groups_id_seq";
CREATE SEQUENCE "public"."accounts_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for accounts_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_user_id_seq";
CREATE SEQUENCE "public"."accounts_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for accounts_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."accounts_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for audit_logger_auditlog_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."audit_logger_auditlog_id_seq";
CREATE SEQUENCE "public"."audit_logger_auditlog_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for authentication_userdevice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."authentication_userdevice_id_seq";
CREATE SEQUENCE "public"."authentication_userdevice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for model_trigger_scheduledtask_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."model_trigger_scheduledtask_id_seq";
CREATE SEQUENCE "public"."model_trigger_scheduledtask_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for otp_otp_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."otp_otp_id_seq";
CREATE SEQUENCE "public"."otp_otp_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resources_billing_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_billing_id_seq";
CREATE SEQUENCE "public"."resources_billing_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resources_paymenthistory_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_paymenthistory_id_seq";
CREATE SEQUENCE "public"."resources_paymenthistory_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resources_plan_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_plan_id_seq";
CREATE SEQUENCE "public"."resources_plan_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resources_subscription_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_subscription_id_seq";
CREATE SEQUENCE "public"."resources_subscription_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for resources_supportticket_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_supportticket_id_seq";
CREATE SEQUENCE "public"."resources_supportticket_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for token_blacklist_blacklistedtoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."token_blacklist_blacklistedtoken_id_seq";
CREATE SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for token_blacklist_outstandingtoken_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."token_blacklist_outstandingtoken_id_seq";
CREATE SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for accounts_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."accounts_user";
CREATE TABLE "public"."accounts_user" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "is_superuser" bool NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "date_joined" timestamptz(6) NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "phone_number" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "street_address" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "city_municipality" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "barangay" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "zip_code" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "service_area" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of accounts_user
-- ----------------------------
INSERT INTO "public"."accounts_user" VALUES (1, 'pbkdf2_sha256$1200000$PZ1dcPZB4l8Eibg66Bf6bM$w0brPq0n0FARaVrIdFT+WsCtV6BjWHH/vXYrq0TdH2o=', NULL, 'f', 'pyromaniac33143@gmail.com', 'f', 't', '2026-03-01 11:41:34.17506+00', 'pyromaniac33143@gmail.com', '09510357836', '123 Main', 'City Mun', 'Bara', '90192', 'roxas', 'Admin', 'Admin', 'active');
INSERT INTO "public"."accounts_user" VALUES (2, 'pbkdf2_sha256$1200000$z6ipHm1Cv86QUgeWrLBxCQ$CaBSy1Zex9CHoyi56Gla02JVtazjlL0NOH6nIqcQAMM=', NULL, 'f', 'armandoyogan77@gmail.com', 'f', 't', '2026-03-01 13:33:46.799686+00', 'armandoyogan77@gmail.com', '09650493548', 'guading', 'katipunan', 'uno', '7101', 'katipunan', 'kc', 'labastida', 'active');
INSERT INTO "public"."accounts_user" VALUES (8, 'pbkdf2_sha256$1200000$0uFHJBd2cwtwKthq6epTmj$Ei3CBP5rR0nfZIcSNmlntQ9SLQYK6tvD++IdgTrEgkU=', NULL, 'f', 'jehoo@gmail.com', 'f', 't', '2026-03-10 01:42:04.991604+00', 'jehoo@gmail.com', '0930379656', 'purok2', 'Manukan', 'villaramos', '7110', 'katipunan', 'jehoo', 'Eguia', 'active');
INSERT INTO "public"."accounts_user" VALUES (4, 'pbkdf2_sha256$1200000$Baeq2rUvrX0K1fFiuiF3y3$RLqhjemnk3OtXx0kW8qmajeWtjdD4udge0aAzo/RZEA=', NULL, 'f', 'kcbastida8@gmail.com', 'f', 't', '2026-03-01 18:39:58.063191+00', 'kcbastida8@gmail.com', '09466728270', 'Jaja', 'Katipunan', 'Laoy', '7109', 'katipunan', 'Kc', 'Bastida', 'active');
INSERT INTO "public"."accounts_user" VALUES (9, 'pbkdf2_sha256$1200000$sqDqrg9Kb0iehPdq35UJMI$e1QT1bUPzKwQ4c0/ZLclHP8jslkO1NFaQGVG1sanE7A=', NULL, 'f', 'daan@gmail.com', 'f', 't', '2026-03-10 01:50:56.652218+00', 'daan@gmail.com', '0930379656', 'purok2', 'Manukan', 'villaramos', '7110', 'katipunan', 'daan', 'janjan', 'active');
INSERT INTO "public"."accounts_user" VALUES (10, 'pbkdf2_sha256$1200000$FCt6d2z3K0Rm9Fonmsx1Nm$TBpk5JQmzRUEETYwgxmKo/gk5Z3tv8JmdiJFmrYlikA=', NULL, 'f', 'Kirkjhonmetuda123@gmail.com', 'f', 't', '2026-03-10 01:58:04.053021+00', 'Kirkjhonmetuda123@gmail.com', '09092887412', 'Purok2', 'Manukan', 'Villramos', '7110', 'katipunan', 'kirk Jhon', 'Metuda', 'active');
INSERT INTO "public"."accounts_user" VALUES (13, 'pbkdf2_sha256$1200000$34LPwuj3kEWRkag50bLH7a$oEWUCF9uEmLXVrcsU7HDsrefwSPHAsULryNTPrBp6eY=', NULL, 'f', 'vinziganz@gmail.com', 'f', 't', '2026-03-10 06:05:47.371445+00', 'vinziganz@gmail.com', '09761556788', 'utanon', 'polanco', 'lapayanbaja', '7106', 'polanco', 'Matt', 'Ganzon', 'active');
INSERT INTO "public"."accounts_user" VALUES (11, 'pbkdf2_sha256$1200000$XPwPWmNMDv0GJIk0KS30PD$LDHJpEVzDD1Q+bMfT2FjgB0DlqnbrRqowIygqYkuwXw=', NULL, 'f', 'vananghag@gmail.com', 'f', 't', '2026-03-10 05:34:37.007966+00', 'vananghag@gmail.com', '09481239510', 'Palayan', 'Dipolog City', 'Olingan', '7100', 'osmeña', 'Vanessa', 'Anghag', 'active');
INSERT INTO "public"."accounts_user" VALUES (12, 'pbkdf2_sha256$1200000$6fDSChX3hRuMmFSWlgQGg2$fmTJGdmR0vpAhOWBnscPbXWzLpFsoI8a/qkA7bx2Jyo=', NULL, 'f', 'lorelyn9928@gmail.com', 'f', 't', '2026-03-10 06:02:00.552711+00', 'lorelyn9928@gmail.com', '09460448563', 'Purok kamansi', 'Katipunan', 'Loyuran', '7109', 'katipunan', 'Lorelyn', 'Romasasa', 'active');
INSERT INTO "public"."accounts_user" VALUES (5, 'pbkdf2_sha256$1200000$jUDcs4IktcAv0hTLCCFuvE$TFU5mk48G/IRYrM+sNzxonCBxiRX1pxgVJXnbgn3qEY=', NULL, 'f', 'capablancadaxe@gmail.com', 'f', 't', '2026-03-03 01:13:32.643384+00', 'capablancadaxe@gmail.com', '09122366558', 'Purok 4', 'Pres. Manuel Roxas', 'Nabillid', '7001', 'roxas', 'Edwin', 'Dacera', 'archived');
INSERT INTO "public"."accounts_user" VALUES (14, 'pbkdf2_sha256$1200000$EMUG0fmeMS77bNTVMM9eVK$z9snFeeur4gLSh+PZDWYrepdqG7aerteOom5bd2Yv24=', NULL, 'f', 'jeanrentura499@gmail.com', 'f', 't', '2026-03-10 06:18:01.289969+00', 'jeanrentura499@gmail.com', '+639364826450', 'Purok 2 Cagaycay', 'Katipunan', 'Daanglungsod', '7109', 'katipunan', 'Jean', 'Rentura', 'active');
INSERT INTO "public"."accounts_user" VALUES (15, 'pbkdf2_sha256$1200000$TUaM0bk7hXXRgsfADumIEo$sKiD28bSD56Jy36vRGnrO8kWk2RuRM9aNLd0RwYo1nM=', NULL, 'f', 'ajbastida0@gmail.com', 'f', 't', '2026-03-11 01:06:14.302548+00', 'ajbastida0@gmail.com', '09074787473', 'purok 5', 'katipunan', 'san Antonio', '7109', 'katipunan', 'kc', 'bastida', 'archived');
INSERT INTO "public"."accounts_user" VALUES (6, 'pbkdf2_sha256$1200000$D5d1NnwDreAph7cwQ9XdHb$qbkT0FF+m+cg6xpSzA9n1tDxEnrzF9ict0pv1QKu/pM=', NULL, 'f', 'nagoyod@gmail.com', 'f', 't', '2026-03-04 02:35:54.750519+00', 'Nagoyod@gmail.com', '09650493548', 'Guading', 'katipunan', 'dos', '7101', 'katipunan', 'John', 'Doe', 'archived');
INSERT INTO "public"."accounts_user" VALUES (3, 'pbkdf2_sha256$1200000$zeXFVFpByHmDRI0PiCsXLk$kvza+0/iAOu27qfLNqA/+nMdxTUFP/i8fzUcJ8j1Exg=', NULL, 'f', 'manhwafavorites@gmail.com', 'f', 't', '2026-03-01 13:45:48.797651+00', 'manhwafavorites@gmail.com', '09510357836', '123', 'City', 'Bar', '1239', 'piñan', 'test', 'Hwa', 'archived');
INSERT INTO "public"."accounts_user" VALUES (16, 'pbkdf2_sha256$1200000$f1lsNtIy0YU6DC4zN9ZbLw$SzJbI68JPGvXhFzyyMGYDKVBhqBXTyd0M8CLV7F+48c=', NULL, 'f', 'nicobenson598@gmail.com', 'f', 't', '2026-03-14 10:52:42.315868+00', 'nicobenson598@gmail.com', '09354202026', 'Purok 3', 'Polanco', 'New lebangon', '7100', 'polanco', 'Nico', 'Benson', 'active');
INSERT INTO "public"."accounts_user" VALUES (23, 'pbkdf2_sha256$1200000$z0mGZw8ErG8yZcFg2nbE6X$HGykZhdcC3dIm3mXQ0tVqgeM0FU4MYZp5BY7uHyY6Ug=', NULL, 'f', 'bastidaraoul@gmail.com', 'f', 't', '2026-03-15 22:09:54.026368+00', 'bastidaraoul@gmail.com', '09466728270', 'purok 6', 'Katipunan', 'San Antonio', '7109', 'katipunan', 'kc', 'bastida', 'active');
INSERT INTO "public"."accounts_user" VALUES (20, 'pbkdf2_sha256$1200000$Xp1y4SEK0gX7TKECF2fAxg$i5biLziCl1NDWhrHLTi9TeTtzG5hGqqLrLY2TUXsG4Y=', NULL, 'f', 'warzonepisonet@gmail.com', 'f', 't', '2026-03-15 23:54:26+00', 'warzonepisonet@gmail.com', '09816491598', 'Purok 5', 'Katipunan', 'Laoy', '7109', 'katipunan', 'Warzone', 'pisonet', 'active');
INSERT INTO "public"."accounts_user" VALUES (24, 'pbkdf2_sha256$1200000$aHhbbneBvxA83x4OXOVJ9G$mZpjrEeNsiIpW4sLDxHwakn3x9SKuPeXR1njbJmQuIo=', NULL, 'f', 'carlfranz1133@gmail.com', 'f', 't', '2026-03-17 01:08:00.275636+00', 'carlfranz1133@gmail.com', '+639122366558', 'Purok 4', 'Roxas', 'Nabilid', '7102', 'roxas', 'Daxe', 'Capablanca', 'active');
INSERT INTO "public"."accounts_user" VALUES (7, 'pbkdf2_sha256$1200000$qg2dRS6fDASFi7UOyQQ1Be$/FBrkjmbswIrmtXox4xAIzVS9pewGoQVOZIZYTOh+PM=', NULL, 'f', 'patrick.bastida123@gmail.com', 'f', 't', '2026-03-04 22:54:44.615036+00', 'patrick.bastida123@gmail.com', '09466728270', 'purok 6', 'katipunan', 'san antonio', '7109', 'katipunan', 'patrick', 'bastida', 'active');

-- ----------------------------
-- Table structure for accounts_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."accounts_user_groups";
CREATE TABLE "public"."accounts_user_groups" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "user_id" int8 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of accounts_user_groups
-- ----------------------------
INSERT INTO "public"."accounts_user_groups" VALUES (1, 1, 2);
INSERT INTO "public"."accounts_user_groups" VALUES (3, 3, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (4, 4, 2);
INSERT INTO "public"."accounts_user_groups" VALUES (5, 5, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (6, 6, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (7, 7, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (8, 2, 2);
INSERT INTO "public"."accounts_user_groups" VALUES (9, 8, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (10, 9, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (11, 10, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (12, 11, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (13, 12, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (14, 13, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (15, 14, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (16, 15, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (17, 16, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (18, 20, 2);
INSERT INTO "public"."accounts_user_groups" VALUES (20, 23, 1);
INSERT INTO "public"."accounts_user_groups" VALUES (21, 24, 1);

-- ----------------------------
-- Table structure for accounts_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."accounts_user_user_permissions";
CREATE TABLE "public"."accounts_user_user_permissions" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "user_id" int8 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of accounts_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for audit_logger_auditlog
-- ----------------------------
DROP TABLE IF EXISTS "public"."audit_logger_auditlog";
CREATE TABLE "public"."audit_logger_auditlog" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "source" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "action" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "category" varchar(100) COLLATE "pg_catalog"."default",
  "object_id" varchar(100) COLLATE "pg_catalog"."default",
  "new_data" jsonb,
  "ip_address" inet,
  "created_at" timestamptz(6) NOT NULL,
  "user_id" int8
)
;

-- ----------------------------
-- Records of audit_logger_auditlog
-- ----------------------------
INSERT INTO "public"."audit_logger_auditlog" VALUES (87, 'anonymous', 'CREATE', 'User', '23', '{"id": 23, "email": "bastidaraoul@gmail.com", "status": "active", "barangay": "San Antonio", "is_staff": false, "password": "password set", "username": "bastidaraoul@gmail.com", "zip_code": "7109", "is_active": true, "last_name": "bastida", "first_name": "kc", "last_login": null, "date_joined": "2026-03-15T22:09:54.026Z", "is_superuser": false, "phone_number": "09466728270", "service_area": "katipunan", "street_address": "purok 6", "city_municipality": "Katipunan"}', NULL, '2026-03-15 22:09:54.247091+00', NULL);
INSERT INTO "public"."audit_logger_auditlog" VALUES (88, 'auth:jwt', 'LOGIN', 'User', '23', NULL, '10.0.1.6', '2026-03-15 22:10:56.347431+00', 23);
INSERT INTO "public"."audit_logger_auditlog" VALUES (89, 'user', 'CREATE', 'Subscription', '19', '{"id": 19, "plan": "Starter Fiber", "user": "bastidaraoul@gmail.com", "amount": "999.00", "status": "pending", "address": "purok 6", "is_archived": false}', '10.0.1.6', '2026-03-15 22:11:09.09114+00', 23);
INSERT INTO "public"."audit_logger_auditlog" VALUES (90, 'auth:jwt', 'LOGIN', 'User', '4', NULL, '10.0.1.6', '2026-03-15 22:12:12.320562+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (91, 'user', 'UPDATE', 'Subscription', '19', '{"status": "pending->active"}', '10.0.1.6', '2026-03-15 22:12:30.984901+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (92, 'system:scheduler', 'CREATE', 'Billing', '18', '{"id": 18, "plan": "Starter Fiber", "user": "bastidaraoul@gmail.com", "amount": "999.00", "customer": "kc bastida", "due_date": "2026-04-14", "is_archived": false, "subscription": "Subscription object (19)"}', NULL, '2026-03-15 22:12:59.307809+00', NULL);
INSERT INTO "public"."audit_logger_auditlog" VALUES (93, 'user', 'CREATE', 'PaymentHistory', '11', '{"id": 11, "bill": "Billing object (18)", "user": "bastidaraoul@gmail.com", "amount": "1000.00", "change": "1.00", "credit": "0.00", "method": "CASH", "status": "pending", "customer": "kc bastida", "voided_at": null, "is_archived": false, "voided_reason": null, "transaction_ref": "", "next_billing_date": "2026-05-14", "transaction_screenshot": ""}', '10.0.1.6', '2026-03-15 22:17:06.693508+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (94, 'user', 'UPDATE', 'PaymentHistory', '11', '{"status": "pending->completed"}', '10.0.1.6', '2026-03-15 22:17:15.824943+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (95, 'auth:jwt', 'LOGIN', 'User', '23', NULL, '10.0.1.6', '2026-03-15 22:40:04.192371+00', 23);
INSERT INTO "public"."audit_logger_auditlog" VALUES (96, 'user', 'CREATE', 'SupportTicket', '9', '{"id": 9, "user": "bastidaraoul@gmail.com", "issue": "No Internet Connection", "status": "open", "customer": "kc bastida", "priority": "urgent", "assigned_to": null, "description": "uhggg", "is_archived": false}', '10.0.1.6', '2026-03-15 22:40:23.434906+00', 23);
INSERT INTO "public"."audit_logger_auditlog" VALUES (97, 'auth:jwt', 'LOGIN', 'User', '4', NULL, '10.0.1.6', '2026-03-15 22:40:35.088016+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (98, 'auth:jwt', 'LOGIN', 'User', '4', NULL, '10.0.1.6', '2026-03-16 05:24:25.420433+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (99, 'auth:jwt', 'LOGIN', 'User', '4', NULL, '10.0.1.6', '2026-03-16 22:15:25.947282+00', 4);
INSERT INTO "public"."audit_logger_auditlog" VALUES (100, 'auth:jwt', 'LOGIN', 'User', '20', NULL, '10.0.1.6', '2026-03-17 01:02:32.748594+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (101, 'auth:jwt', 'LOGIN', 'User', '20', NULL, '10.0.1.6', '2026-03-17 01:07:05.353884+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (102, 'auth:jwt', 'LOGIN', 'User', '20', NULL, '10.0.1.6', '2026-03-17 01:07:48.46305+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (103, 'anonymous', 'CREATE', 'User', '24', '{"id": 24, "email": "carlfranz1133@gmail.com", "status": "active", "barangay": "Nabilid", "is_staff": false, "password": "password set", "username": "carlfranz1133@gmail.com", "zip_code": "7102", "is_active": true, "last_name": "Capablanca", "first_name": "Daxe", "last_login": null, "date_joined": "2026-03-17T01:08:00.275Z", "is_superuser": false, "phone_number": "+639122366558", "service_area": "roxas", "street_address": "Purok 4", "city_municipality": "Roxas"}', NULL, '2026-03-17 01:08:00.505897+00', NULL);
INSERT INTO "public"."audit_logger_auditlog" VALUES (104, 'auth:jwt', 'LOGIN', 'User', '24', NULL, '10.0.1.6', '2026-03-17 01:09:15.838403+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (105, 'user', 'CREATE', 'SupportTicket', '10', '{"id": 10, "user": "carlfranz1133@gmail.com", "issue": "No Internet Connection", "status": "open", "customer": "Daxe Capablanca", "priority": "urgent", "assigned_to": null, "description": "Good day Sir/Ma''am,", "is_archived": false}', '10.0.1.6', '2026-03-17 01:09:51.914585+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (106, 'auth:jwt', 'LOGIN', 'User', '20', NULL, '10.0.1.6', '2026-03-17 01:13:05.861128+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (107, 'user', 'UPDATE', 'User', '7', '{"status": "active->deactivated"}', '10.0.1.6', '2026-03-17 01:14:41.4025+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (108, 'user', 'UPDATE', 'User', '7', '{"status": "deactivated->active"}', '10.0.1.6', '2026-03-17 01:14:54.24503+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (109, 'auth:jwt', 'LOGIN', 'User', '24', NULL, '10.0.1.6', '2026-03-17 01:16:59.297545+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (110, 'user', 'CREATE', 'SupportTicket', '11', '{"id": 11, "user": "carlfranz1133@gmail.com", "issue": "No Internet Connection", "status": "open", "customer": "Daxe Capablanca", "priority": "urgent", "assigned_to": null, "description": "wala", "is_archived": false}', '10.0.1.6', '2026-03-17 01:17:14.120984+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (111, 'user', 'CREATE', 'SupportTicket', '12', '{"id": 12, "user": "carlfranz1133@gmail.com", "issue": "Slow Internet Speed", "status": "open", "customer": "Daxe Capablanca", "priority": "low", "assigned_to": null, "description": "s", "is_archived": false}', '10.0.1.6', '2026-03-17 01:17:24.356715+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (112, 'user', 'CREATE', 'SupportTicket', '13', '{"id": 13, "user": "carlfranz1133@gmail.com", "issue": "Others", "status": "open", "customer": "Daxe Capablanca", "priority": "medium", "assigned_to": null, "description": "fdfd", "is_archived": false}', '10.0.1.6', '2026-03-17 01:18:18.420841+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (113, 'user', 'CREATE', 'Subscription', '20', '{"id": 20, "plan": "Starter Fiber", "user": "carlfranz1133@gmail.com", "amount": "999.00", "status": "pending", "address": "Purok 4", "is_archived": false}', '10.0.1.6', '2026-03-17 01:19:14.950275+00', 24);
INSERT INTO "public"."audit_logger_auditlog" VALUES (114, 'user', 'UPDATE', 'Subscription', '20', '{"status": "pending->active"}', '10.0.1.6', '2026-03-17 01:19:29.742684+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (115, 'system:scheduler', 'CREATE', 'Billing', '19', '{"id": 19, "plan": "Starter Fiber", "user": "carlfranz1133@gmail.com", "amount": "999.00", "customer": "Daxe Capablanca", "due_date": "2026-04-16", "is_archived": false, "subscription": "Subscription object (20)"}', NULL, '2026-03-17 01:19:41.523834+00', NULL);
INSERT INTO "public"."audit_logger_auditlog" VALUES (116, 'user', 'CREATE', 'PaymentHistory', '12', '{"id": 12, "bill": "Billing object (19)", "user": "carlfranz1133@gmail.com", "amount": "1000.00", "change": "1.00", "credit": "0.00", "method": "CASH", "status": "pending", "customer": "Daxe Capablanca", "voided_at": null, "is_archived": false, "voided_reason": null, "transaction_ref": "", "next_billing_date": "2026-05-16", "transaction_screenshot": ""}', '10.0.1.6', '2026-03-17 01:21:12.447908+00', 20);
INSERT INTO "public"."audit_logger_auditlog" VALUES (117, 'user', 'UPDATE', 'PaymentHistory', '12', '{"status": "pending->completed"}', '10.0.1.6', '2026-03-17 01:21:16.891847+00', 20);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO "public"."auth_group" VALUES (1, 'client');
INSERT INTO "public"."auth_group" VALUES (2, 'admin');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO "public"."auth_permission" VALUES (5, 'Can add permission', 3, 'add_permission');
INSERT INTO "public"."auth_permission" VALUES (6, 'Can change permission', 3, 'change_permission');
INSERT INTO "public"."auth_permission" VALUES (7, 'Can delete permission', 3, 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES (8, 'Can view permission', 3, 'view_permission');
INSERT INTO "public"."auth_permission" VALUES (9, 'Can add group', 2, 'add_group');
INSERT INTO "public"."auth_permission" VALUES (10, 'Can change group', 2, 'change_group');
INSERT INTO "public"."auth_permission" VALUES (11, 'Can delete group', 2, 'delete_group');
INSERT INTO "public"."auth_permission" VALUES (12, 'Can view group', 2, 'view_group');
INSERT INTO "public"."auth_permission" VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO "public"."auth_permission" VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO "public"."auth_permission" VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO "public"."auth_permission" VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO "public"."auth_permission" VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO "public"."auth_permission" VALUES (21, 'Can add user device', 6, 'add_userdevice');
INSERT INTO "public"."auth_permission" VALUES (22, 'Can change user device', 6, 'change_userdevice');
INSERT INTO "public"."auth_permission" VALUES (23, 'Can delete user device', 6, 'delete_userdevice');
INSERT INTO "public"."auth_permission" VALUES (24, 'Can view user device', 6, 'view_userdevice');
INSERT INTO "public"."auth_permission" VALUES (25, 'Can add otp', 7, 'add_otp');
INSERT INTO "public"."auth_permission" VALUES (26, 'Can change otp', 7, 'change_otp');
INSERT INTO "public"."auth_permission" VALUES (27, 'Can delete otp', 7, 'delete_otp');
INSERT INTO "public"."auth_permission" VALUES (28, 'Can view otp', 7, 'view_otp');
INSERT INTO "public"."auth_permission" VALUES (29, 'Can add scheduled task', 8, 'add_scheduledtask');
INSERT INTO "public"."auth_permission" VALUES (30, 'Can change scheduled task', 8, 'change_scheduledtask');
INSERT INTO "public"."auth_permission" VALUES (31, 'Can delete scheduled task', 8, 'delete_scheduledtask');
INSERT INTO "public"."auth_permission" VALUES (32, 'Can view scheduled task', 8, 'view_scheduledtask');
INSERT INTO "public"."auth_permission" VALUES (33, 'Can add user', 9, 'add_user');
INSERT INTO "public"."auth_permission" VALUES (34, 'Can change user', 9, 'change_user');
INSERT INTO "public"."auth_permission" VALUES (35, 'Can delete user', 9, 'delete_user');
INSERT INTO "public"."auth_permission" VALUES (36, 'Can view user', 9, 'view_user');
INSERT INTO "public"."auth_permission" VALUES (37, 'Can add activity log', 10, 'add_activitylog');
INSERT INTO "public"."auth_permission" VALUES (38, 'Can change activity log', 10, 'change_activitylog');
INSERT INTO "public"."auth_permission" VALUES (39, 'Can delete activity log', 10, 'delete_activitylog');
INSERT INTO "public"."auth_permission" VALUES (40, 'Can view activity log', 10, 'view_activitylog');
INSERT INTO "public"."auth_permission" VALUES (41, 'Can add billing', 11, 'add_billing');
INSERT INTO "public"."auth_permission" VALUES (42, 'Can change billing', 11, 'change_billing');
INSERT INTO "public"."auth_permission" VALUES (43, 'Can delete billing', 11, 'delete_billing');
INSERT INTO "public"."auth_permission" VALUES (44, 'Can view billing', 11, 'view_billing');
INSERT INTO "public"."auth_permission" VALUES (45, 'Can add payment history', 12, 'add_paymenthistory');
INSERT INTO "public"."auth_permission" VALUES (46, 'Can change payment history', 12, 'change_paymenthistory');
INSERT INTO "public"."auth_permission" VALUES (47, 'Can delete payment history', 12, 'delete_paymenthistory');
INSERT INTO "public"."auth_permission" VALUES (48, 'Can view payment history', 12, 'view_paymenthistory');
INSERT INTO "public"."auth_permission" VALUES (49, 'Can add subscription', 14, 'add_subscription');
INSERT INTO "public"."auth_permission" VALUES (50, 'Can change subscription', 14, 'change_subscription');
INSERT INTO "public"."auth_permission" VALUES (51, 'Can delete subscription', 14, 'delete_subscription');
INSERT INTO "public"."auth_permission" VALUES (52, 'Can view subscription', 14, 'view_subscription');
INSERT INTO "public"."auth_permission" VALUES (53, 'Can add support ticket', 15, 'add_supportticket');
INSERT INTO "public"."auth_permission" VALUES (54, 'Can change support ticket', 15, 'change_supportticket');
INSERT INTO "public"."auth_permission" VALUES (55, 'Can delete support ticket', 15, 'delete_supportticket');
INSERT INTO "public"."auth_permission" VALUES (56, 'Can view support ticket', 15, 'view_supportticket');
INSERT INTO "public"."auth_permission" VALUES (57, 'Can add plan', 13, 'add_plan');
INSERT INTO "public"."auth_permission" VALUES (58, 'Can change plan', 13, 'change_plan');
INSERT INTO "public"."auth_permission" VALUES (59, 'Can delete plan', 13, 'delete_plan');
INSERT INTO "public"."auth_permission" VALUES (60, 'Can view plan', 13, 'view_plan');
INSERT INTO "public"."auth_permission" VALUES (61, 'Can add Blacklisted Token', 16, 'add_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (62, 'Can change Blacklisted Token', 16, 'change_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (63, 'Can delete Blacklisted Token', 16, 'delete_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (64, 'Can view Blacklisted Token', 16, 'view_blacklistedtoken');
INSERT INTO "public"."auth_permission" VALUES (65, 'Can add Outstanding Token', 17, 'add_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (66, 'Can change Outstanding Token', 17, 'change_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (67, 'Can delete Outstanding Token', 17, 'delete_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (68, 'Can view Outstanding Token', 17, 'view_outstandingtoken');
INSERT INTO "public"."auth_permission" VALUES (69, 'Can add audit log', 18, 'add_auditlog');
INSERT INTO "public"."auth_permission" VALUES (70, 'Can change audit log', 18, 'change_auditlog');
INSERT INTO "public"."auth_permission" VALUES (71, 'Can delete audit log', 18, 'delete_auditlog');
INSERT INTO "public"."auth_permission" VALUES (72, 'Can view audit log', 18, 'view_auditlog');

-- ----------------------------
-- Table structure for authentication_userdevice
-- ----------------------------
DROP TABLE IF EXISTS "public"."authentication_userdevice";
CREATE TABLE "public"."authentication_userdevice" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "device_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "user_agent" text COLLATE "pg_catalog"."default" NOT NULL,
  "ip_address" inet,
  "is_trusted" bool NOT NULL,
  "last_used" timestamptz(6) NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "user_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of authentication_userdevice
-- ----------------------------
INSERT INTO "public"."authentication_userdevice" VALUES (35, '0bd73b49-617b-4a74-8a4b-588c94e17ff1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '10.0.1.6', 't', '2026-03-15 22:40:04.19102+00', '2026-03-15 22:10:56.34234+00', 23);
INSERT INTO "public"."authentication_userdevice" VALUES (36, '0bd73b49-617b-4a74-8a4b-588c94e17ff1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '10.0.1.6', 't', '2026-03-16 22:15:25.939402+00', '2026-03-15 22:12:12.318659+00', 4);
INSERT INTO "public"."authentication_userdevice" VALUES (37, '2c9e8c71-cceb-42e8-9aeb-99762b631b5a', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '10.0.1.6', 't', '2026-03-17 01:07:05.352597+00', '2026-03-17 01:02:32.746211+00', 20);
INSERT INTO "public"."authentication_userdevice" VALUES (38, '5c0205b2-1e14-42a1-91db-81baff91da48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '10.0.1.6', 't', '2026-03-17 01:07:48.461219+00', '2026-03-17 01:07:48.461229+00', 20);
INSERT INTO "public"."authentication_userdevice" VALUES (40, '2fa5f394-8e13-433f-810d-924c1d9f0bcf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '10.0.1.6', 't', '2026-03-17 01:13:05.859769+00', '2026-03-17 01:13:05.859778+00', 20);
INSERT INTO "public"."authentication_userdevice" VALUES (39, '5c0205b2-1e14-42a1-91db-81baff91da48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '10.0.1.6', 't', '2026-03-17 01:16:59.29615+00', '2026-03-17 01:09:15.836465+00', 24);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES (2, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (3, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (5, 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES (6, 'authentication', 'userdevice');
INSERT INTO "public"."django_content_type" VALUES (7, 'otp', 'otp');
INSERT INTO "public"."django_content_type" VALUES (8, 'model_trigger', 'scheduledtask');
INSERT INTO "public"."django_content_type" VALUES (9, 'accounts', 'user');
INSERT INTO "public"."django_content_type" VALUES (10, 'resources', 'activitylog');
INSERT INTO "public"."django_content_type" VALUES (11, 'resources', 'billing');
INSERT INTO "public"."django_content_type" VALUES (12, 'resources', 'paymenthistory');
INSERT INTO "public"."django_content_type" VALUES (13, 'resources', 'plan');
INSERT INTO "public"."django_content_type" VALUES (14, 'resources', 'subscription');
INSERT INTO "public"."django_content_type" VALUES (15, 'resources', 'supportticket');
INSERT INTO "public"."django_content_type" VALUES (16, 'token_blacklist', 'blacklistedtoken');
INSERT INTO "public"."django_content_type" VALUES (17, 'token_blacklist', 'outstandingtoken');
INSERT INTO "public"."django_content_type" VALUES (18, 'audit_logger', 'auditlog');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2026-03-01 05:47:11.883174+00');
INSERT INTO "public"."django_migrations" VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2026-03-01 05:47:11.888025+00');
INSERT INTO "public"."django_migrations" VALUES (3, 'auth', '0001_initial', '2026-03-01 05:47:11.901807+00');
INSERT INTO "public"."django_migrations" VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2026-03-01 05:47:11.905473+00');
INSERT INTO "public"."django_migrations" VALUES (5, 'auth', '0003_alter_user_email_max_length', '2026-03-01 05:47:11.908526+00');
INSERT INTO "public"."django_migrations" VALUES (6, 'auth', '0004_alter_user_username_opts', '2026-03-01 05:47:11.910811+00');
INSERT INTO "public"."django_migrations" VALUES (7, 'auth', '0005_alter_user_last_login_null', '2026-03-01 05:47:11.913004+00');
INSERT INTO "public"."django_migrations" VALUES (8, 'auth', '0006_require_contenttypes_0002', '2026-03-01 05:47:11.913637+00');
INSERT INTO "public"."django_migrations" VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2026-03-01 05:47:11.916573+00');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0008_alter_user_username_max_length', '2026-03-01 05:47:11.918662+00');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2026-03-01 05:47:11.920783+00');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0010_alter_group_name_max_length', '2026-03-01 05:47:11.924199+00');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0011_update_proxy_permissions', '2026-03-01 05:47:11.927245+00');
INSERT INTO "public"."django_migrations" VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2026-03-01 05:47:11.929689+00');
INSERT INTO "public"."django_migrations" VALUES (15, 'accounts', '0001_initial', '2026-03-01 05:47:11.944512+00');
INSERT INTO "public"."django_migrations" VALUES (16, 'admin', '0001_initial', '2026-03-01 05:47:11.954101+00');
INSERT INTO "public"."django_migrations" VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2026-03-01 05:47:11.957389+00');
INSERT INTO "public"."django_migrations" VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2026-03-01 05:47:11.960677+00');
INSERT INTO "public"."django_migrations" VALUES (19, 'resources', '0001_initial', '2026-03-01 05:47:12.009018+00');
INSERT INTO "public"."django_migrations" VALUES (20, 'resources', '0002_plan_alter_billing_plan_alter_subscription_plan', '2026-03-01 05:47:12.028644+00');
INSERT INTO "public"."django_migrations" VALUES (21, 'sessions', '0001_initial', '2026-03-01 05:47:12.032953+00');
INSERT INTO "public"."django_migrations" VALUES (22, 'token_blacklist', '0001_initial', '2026-03-01 05:47:12.05163+00');
INSERT INTO "public"."django_migrations" VALUES (23, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2026-03-01 05:47:12.057465+00');
INSERT INTO "public"."django_migrations" VALUES (24, 'token_blacklist', '0003_auto_20171017_2007', '2026-03-01 05:47:12.080679+00');
INSERT INTO "public"."django_migrations" VALUES (25, 'token_blacklist', '0004_auto_20171017_2013', '2026-03-01 05:47:12.092705+00');
INSERT INTO "public"."django_migrations" VALUES (26, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2026-03-01 05:47:12.103116+00');
INSERT INTO "public"."django_migrations" VALUES (27, 'token_blacklist', '0006_auto_20171017_2113', '2026-03-01 05:47:12.11074+00');
INSERT INTO "public"."django_migrations" VALUES (28, 'token_blacklist', '0007_auto_20171017_2214', '2026-03-01 05:47:12.127614+00');
INSERT INTO "public"."django_migrations" VALUES (29, 'token_blacklist', '0008_migrate_to_bigautofield', '2026-03-01 05:47:12.147417+00');
INSERT INTO "public"."django_migrations" VALUES (30, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2026-03-01 05:47:12.179815+00');
INSERT INTO "public"."django_migrations" VALUES (31, 'token_blacklist', '0011_linearizes_history', '2026-03-01 05:47:12.180939+00');
INSERT INTO "public"."django_migrations" VALUES (32, 'token_blacklist', '0012_alter_outstandingtoken_user', '2026-03-01 05:47:12.186324+00');
INSERT INTO "public"."django_migrations" VALUES (33, 'token_blacklist', '0013_alter_blacklistedtoken_options_and_more', '2026-03-01 05:47:12.192568+00');
INSERT INTO "public"."django_migrations" VALUES (34, 'authentication', '0001_initial', '2026-03-01 12:17:59.283007+00');
INSERT INTO "public"."django_migrations" VALUES (35, 'model_trigger', '0001_initial', '2026-03-01 12:17:59.287822+00');
INSERT INTO "public"."django_migrations" VALUES (36, 'otp', '0001_initial', '2026-03-01 12:17:59.298028+00');
INSERT INTO "public"."django_migrations" VALUES (37, 'resources', '0003_remove_subscription_next_billing_date_and_more', '2026-03-02 17:24:02.096504+00');
INSERT INTO "public"."django_migrations" VALUES (38, 'accounts', '0002_user_status', '2026-03-04 17:24:45.585669+00');
INSERT INTO "public"."django_migrations" VALUES (39, 'accounts', '0003_alter_user_status', '2026-03-04 17:24:45.595833+00');
INSERT INTO "public"."django_migrations" VALUES (40, 'resources', '0004_alter_subscription_status', '2026-03-04 17:24:45.602105+00');
INSERT INTO "public"."django_migrations" VALUES (41, 'resources', '0005_alter_paymenthistory_status', '2026-03-04 17:24:45.608907+00');
INSERT INTO "public"."django_migrations" VALUES (42, 'audit_logger', '0001_initial', '2026-03-09 12:26:20.133254+00');
INSERT INTO "public"."django_migrations" VALUES (43, 'audit_logger', '0002_rename_model_name_auditlog_category_and_more', '2026-03-09 12:26:20.15945+00');
INSERT INTO "public"."django_migrations" VALUES (44, 'resources', '0006_remove_supportticket_is_archived', '2026-03-09 12:26:20.167148+00');
INSERT INTO "public"."django_migrations" VALUES (45, 'resources', '0007_supportticket_is_archived', '2026-03-09 12:26:20.17593+00');
INSERT INTO "public"."django_migrations" VALUES (46, 'resources', '0008_delete_activitylog', '2026-03-09 12:26:20.180523+00');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for model_trigger_scheduledtask
-- ----------------------------
DROP TABLE IF EXISTS "public"."model_trigger_scheduledtask";
CREATE TABLE "public"."model_trigger_scheduledtask" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "model" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_id" int4 NOT NULL,
  "rule_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "scheduled_at" timestamptz(6) NOT NULL,
  "repeat_every" interval(6),
  "status" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of model_trigger_scheduledtask
-- ----------------------------
INSERT INTO "public"."model_trigger_scheduledtask" VALUES (20, 'resources.Billing', 18, 'notify_bill_status', '2026-04-04 22:12:59.305763+00', '5 days', 'pending', '2026-03-15 22:12:59.306071+00');
INSERT INTO "public"."model_trigger_scheduledtask" VALUES (19, 'resources.Subscription', 19, 'auto_generate_bill', '2026-03-20 22:13:02.004134+00', '5 days', 'pending', '2026-03-15 22:12:30.980882+00');
INSERT INTO "public"."model_trigger_scheduledtask" VALUES (22, 'resources.Billing', 19, 'notify_bill_status', '2026-04-06 01:19:41.516225+00', '5 days', 'pending', '2026-03-17 01:19:41.516844+00');
INSERT INTO "public"."model_trigger_scheduledtask" VALUES (21, 'resources.Subscription', 20, 'auto_generate_bill', '2026-03-22 01:19:44.542659+00', '5 days', 'pending', '2026-03-17 01:19:29.733516+00');

-- ----------------------------
-- Table structure for otp_otp
-- ----------------------------
DROP TABLE IF EXISTS "public"."otp_otp";
CREATE TABLE "public"."otp_otp" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "code" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "expires_at" timestamptz(6) NOT NULL,
  "verified" bool NOT NULL,
  "attempt_count" int4 NOT NULL,
  "additional_info" jsonb NOT NULL,
  "user_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of otp_otp
-- ----------------------------
INSERT INTO "public"."otp_otp" VALUES (87, '146049', 'email', '2026-03-15 22:10:16.278413+00', '2026-03-15 22:15:16.277988+00', 't', 1, '{}', 23);
INSERT INTO "public"."otp_otp" VALUES (88, '294231', 'email', '2026-03-15 22:11:25.593395+00', '2026-03-15 22:16:25.593045+00', 't', 1, '{}', 4);
INSERT INTO "public"."otp_otp" VALUES (89, '935686', 'sms', '2026-03-16 01:26:58.007856+00', '2026-03-16 01:31:58.00734+00', 't', 1, '{}', 6);
INSERT INTO "public"."otp_otp" VALUES (90, '663705', 'email', '2026-03-17 01:00:52.517366+00', '2026-03-17 01:05:52.515762+00', 't', 1, '{}', 20);
INSERT INTO "public"."otp_otp" VALUES (91, '057226', 'sms', '2026-03-17 01:07:24.802081+00', '2026-03-17 01:12:24.801703+00', 't', 1, '{}', 20);
INSERT INTO "public"."otp_otp" VALUES (92, '399175', 'email', '2026-03-17 01:08:40.643274+00', '2026-03-17 01:13:40.64292+00', 't', 1, '{}', 24);
INSERT INTO "public"."otp_otp" VALUES (93, '801838', 'email', '2026-03-17 01:12:43.367247+00', '2026-03-17 01:17:43.366872+00', 't', 1, '{}', 20);
INSERT INTO "public"."otp_otp" VALUES (94, '520826', 'sms', '2026-03-17 08:19:45.328261+00', '2026-03-17 08:24:45.324141+00', 't', 1, '{}', 6);
INSERT INTO "public"."otp_otp" VALUES (95, '156679', 'sms', '2026-03-17 08:24:15.863968+00', '2026-03-17 08:29:15.863615+00', 't', 1, '{}', 6);
INSERT INTO "public"."otp_otp" VALUES (96, '920121', 'email', '2026-03-17 08:27:12.670427+00', '2026-03-17 08:32:12.669764+00', 't', 3, '{}', 6);
INSERT INTO "public"."otp_otp" VALUES (97, '184455', 'email', '2026-03-17 08:29:37.088227+00', '2026-03-17 08:34:37.087778+00', 't', 1, '{}', 6);
INSERT INTO "public"."otp_otp" VALUES (98, '712564', 'email', '2026-03-17 08:39:14.067473+00', '2026-03-17 08:44:14.067041+00', 't', 1, '{}', 6);
INSERT INTO "public"."otp_otp" VALUES (99, '420958', 'email', '2026-03-17 08:47:45.095257+00', '2026-03-17 08:52:45.094621+00', 'f', 0, '{}', 6);

-- ----------------------------
-- Table structure for resources_billing
-- ----------------------------
DROP TABLE IF EXISTS "public"."resources_billing";
CREATE TABLE "public"."resources_billing" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "is_archived" bool NOT NULL,
  "plan_id" int8 NOT NULL,
  "customer" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "amount" numeric(10,2) NOT NULL,
  "due_date" date NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "user_id" int8 NOT NULL,
  "subscription_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of resources_billing
-- ----------------------------
INSERT INTO "public"."resources_billing" VALUES (17, 'f', 1, 'kc bastida', 999.00, '2026-04-10', '2026-03-11 01:08:30.448331+00', 15, 18);
INSERT INTO "public"."resources_billing" VALUES (16, 'f', 1, 'patrick bastida', 999.00, '2026-06-08', '2026-03-10 05:56:32.001015+00', 7, 17);
INSERT INTO "public"."resources_billing" VALUES (18, 'f', 1, 'kc bastida', 999.00, '2026-04-14', '2026-03-15 22:12:59.300339+00', 23, 19);
INSERT INTO "public"."resources_billing" VALUES (19, 'f', 1, 'Daxe Capablanca', 999.00, '2026-04-16', '2026-03-17 01:19:41.504322+00', 24, 20);

-- ----------------------------
-- Table structure for resources_paymenthistory
-- ----------------------------
DROP TABLE IF EXISTS "public"."resources_paymenthistory";
CREATE TABLE "public"."resources_paymenthistory" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "is_archived" bool NOT NULL,
  "customer" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "method" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "amount" numeric(10,2) NOT NULL,
  "change" numeric(10,2) NOT NULL,
  "credit" numeric(10,2) NOT NULL,
  "transaction_screenshot" text COLLATE "pg_catalog"."default",
  "transaction_ref" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "next_billing_date" date NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "voided_at" timestamptz(6),
  "voided_reason" text COLLATE "pg_catalog"."default",
  "bill_id" int8 NOT NULL,
  "user_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of resources_paymenthistory
-- ----------------------------
INSERT INTO "public"."resources_paymenthistory" VALUES (8, 'f', 'patrick bastida', 'CASH', 1000.00, 1.00, 0.00, '', '', '2026-05-09', '2026-03-11 01:20:49.852766+00', 'pending', NULL, NULL, 16, 7);
INSERT INTO "public"."resources_paymenthistory" VALUES (9, 'f', 'patrick bastida', 'CASH', 1000.00, 1.00, 0.00, '', '', '2026-05-09', '2026-03-11 01:22:39.601929+00', 'completed', NULL, NULL, 16, 7);
INSERT INTO "public"."resources_paymenthistory" VALUES (10, 'f', 'kc bastida', 'CASH', 1000.00, 1.00, 0.00, '', '', '2026-05-10', '2026-03-15 16:43:12.279821+00', 'completed', NULL, NULL, 17, 15);
INSERT INTO "public"."resources_paymenthistory" VALUES (11, 'f', 'kc bastida', 'CASH', 1000.00, 1.00, 0.00, '', '', '2026-05-14', '2026-03-15 22:17:06.691242+00', 'completed', NULL, NULL, 18, 23);
INSERT INTO "public"."resources_paymenthistory" VALUES (12, 'f', 'Daxe Capablanca', 'CASH', 1000.00, 1.00, 0.00, '', '', '2026-05-16', '2026-03-17 01:21:12.444074+00', 'completed', NULL, NULL, 19, 24);

-- ----------------------------
-- Table structure for resources_plan
-- ----------------------------
DROP TABLE IF EXISTS "public"."resources_plan";
CREATE TABLE "public"."resources_plan" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "is_archived" bool NOT NULL,
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "price" numeric(10,2) NOT NULL,
  "speed_mbps" int4 NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "updated_at" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of resources_plan
-- ----------------------------
INSERT INTO "public"."resources_plan" VALUES (1, 'f', 'Starter Fiber', 999.00, 20, 'Fast & Reliable Connection, Ultra-low latency, Perfect for gaming, streaming, & remote work, Affordable package for every user', 'active', '2026-03-04 16:05:25.517784+00', '2026-03-04 16:05:25.517784+00');
INSERT INTO "public"."resources_plan" VALUES (2, 'f', 'Pro Fiber', 1999.00, 50, 'Fast & Reliable Connection, Ultra-low latency, Perfect for gaming, streaming, & remote work, Affordable package for every user', 'active', '2026-03-04 16:05:25.517784+00', '2026-03-04 16:05:25.517784+00');

-- ----------------------------
-- Table structure for resources_subscription
-- ----------------------------
DROP TABLE IF EXISTS "public"."resources_subscription";
CREATE TABLE "public"."resources_subscription" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "is_archived" bool NOT NULL,
  "plan_id" int8 NOT NULL,
  "amount" numeric(10,2) NOT NULL,
  "address" text COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of resources_subscription
-- ----------------------------
INSERT INTO "public"."resources_subscription" VALUES (17, 'f', 1, 999.00, 'purok 6', 'active', 7);
INSERT INTO "public"."resources_subscription" VALUES (18, 'f', 1, 999.00, 'purok 5', 'active', 15);
INSERT INTO "public"."resources_subscription" VALUES (19, 'f', 1, 999.00, 'purok 6', 'active', 23);
INSERT INTO "public"."resources_subscription" VALUES (20, 'f', 1, 999.00, 'Purok 4', 'active', 24);

-- ----------------------------
-- Table structure for resources_supportticket
-- ----------------------------
DROP TABLE IF EXISTS "public"."resources_supportticket";
CREATE TABLE "public"."resources_supportticket" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "customer" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "issue" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "priority" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL,
  "assigned_to_id" int8,
  "user_id" int8 NOT NULL,
  "is_archived" bool NOT NULL
)
;

-- ----------------------------
-- Records of resources_supportticket
-- ----------------------------
INSERT INTO "public"."resources_supportticket" VALUES (1, 'Kc Bastida', 'No Internet Connection', 'red modem', 'medium', 'in_progress', '2026-03-02 10:54:21.006866+00', NULL, 4, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (2, 'Edwin Dacera', 'No Internet Connection', 'Good day, Sir/Ma’am. I would like to report that my internet connection suddenly went down, possibly due to the storm in our area. The fiber line may have been damaged or cut by a fallen tree.', 'urgent', 'resolved', '2026-03-03 01:42:05.948865+00', NULL, 5, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (5, 'patrick bastida', 'Frequent Disconnections', 'ihinay', 'medium', 'open', '2026-03-09 11:36:13.86674+00', NULL, 7, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (3, 'patrick bastida', 'Frequent Disconnections', 'tala', 'medium', 'in_progress', '2026-03-04 22:56:36.447326+00', NULL, 7, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (4, 'Edwin Dacera', 'Router / Modem Issue', 'Good day Sir/Ma''am For today I''m experiencing an issue regarding in my modem can you please check it. Thanks.', 'medium', 'resolved', '2026-03-06 06:19:20.068039+00', NULL, 5, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (6, 'patrick bastida', 'No Internet Connection', 'hinay net', 'low', 'open', '2026-03-10 01:03:18.534782+00', NULL, 7, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (7, 'patrick bastida', 'No Internet Connection', 'wya internet', 'urgent', 'open', '2026-03-15 16:41:45.043519+00', NULL, 7, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (8, 'patrick bastida', 'Slow Internet Speed', 'tas', 'low', 'open', '2026-03-15 16:42:06.100578+00', NULL, 7, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (9, 'kc bastida', 'No Internet Connection', 'uhggg', 'urgent', 'open', '2026-03-15 22:40:23.432773+00', NULL, 23, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (10, 'Daxe Capablanca', 'No Internet Connection', 'Good day Sir/Ma''am,', 'urgent', 'open', '2026-03-17 01:09:51.911352+00', NULL, 24, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (11, 'Daxe Capablanca', 'No Internet Connection', 'wala', 'urgent', 'open', '2026-03-17 01:17:14.118714+00', NULL, 24, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (12, 'Daxe Capablanca', 'Slow Internet Speed', 's', 'low', 'open', '2026-03-17 01:17:24.354778+00', NULL, 24, 'f');
INSERT INTO "public"."resources_supportticket" VALUES (13, 'Daxe Capablanca', 'Others', 'fdfd', 'medium', 'open', '2026-03-17 01:18:18.418871+00', NULL, 24, 'f');

-- ----------------------------
-- Table structure for token_blacklist_blacklistedtoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."token_blacklist_blacklistedtoken";
CREATE TABLE "public"."token_blacklist_blacklistedtoken" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "blacklisted_at" timestamptz(6) NOT NULL,
  "token_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of token_blacklist_blacklistedtoken
-- ----------------------------

-- ----------------------------
-- Table structure for token_blacklist_outstandingtoken
-- ----------------------------
DROP TABLE IF EXISTS "public"."token_blacklist_outstandingtoken";
CREATE TABLE "public"."token_blacklist_outstandingtoken" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "token" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6),
  "expires_at" timestamptz(6) NOT NULL,
  "user_id" int8,
  "jti" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of token_blacklist_outstandingtoken
-- ----------------------------
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (137, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDIxNzQ1NiwiaWF0IjoxNzczNjEyNjU2LCJqdGkiOiIwZmZjZTNkMjBlYmI0MDgzYmY1ZmNkNDQzOTZlOGNmNCIsInVzZXJfaWQiOiIyMyJ9.2SoDs0cmWsgrRbGTQJGtjpdg23tbZvZQX3vwS7NAkHM', '2026-03-15 22:10:56.337147+00', '2026-03-22 22:10:56+00', 23, '0ffce3d20ebb4083bf5fcd44396e8cf4');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (138, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDIxNzUzMiwiaWF0IjoxNzczNjEyNzMyLCJqdGkiOiJkOGVkNGY1MGZkMWY0YWFhOGU3Y2QwMTRhZGQ2OGUzNiIsInVzZXJfaWQiOiI0In0.ekRm4b6qml3RfrXzyXLnXHRZHE-mAj4rBHY72QOSnSE', '2026-03-15 22:12:12.313126+00', '2026-03-22 22:12:12+00', 4, 'd8ed4f50fd1f4aaa8e7cd014add68e36');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (139, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDIxOTIwNCwiaWF0IjoxNzczNjE0NDA0LCJqdGkiOiJiZTIyYjhmNzFmYzM0YmFhOGRlZjA3Y2IxYTQ5MmI2ZCIsInVzZXJfaWQiOiIyMyJ9.Vf26EYHJ52aGBYE_AKsUPZBU1ghx1KG8CsVtU75ioQE', '2026-03-15 22:40:04.185624+00', '2026-03-22 22:40:04+00', 23, 'be22b8f71fc34baa8def07cb1a492b6d');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (140, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDIxOTIzNSwiaWF0IjoxNzczNjE0NDM1LCJqdGkiOiI0M2Y5ZjZiOWEyNTg0NGM1OGI4ODVkYmVhNTQyMjFlZiIsInVzZXJfaWQiOiI0In0.wq3kfsXGtdzjgydL8ULzkT7qf3KzwWP8aAY_he51smY', '2026-03-15 22:40:35.082472+00', '2026-03-22 22:40:35+00', 4, '43f9f6b9a25844c58b885dbea54221ef');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (141, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDIyOTI0MCwiaWF0IjoxNzczNjI0NDQwLCJqdGkiOiJmM2Q1YTFlYzMxZWQ0NWU2OGNkMTczN2FhN2FhZDYxYiIsInVzZXJfaWQiOiI2In0.Li0ugQuwxbtRQnMy5M88-wwfSqa_rDS-g5Ixj5WegSM', '2026-03-16 01:27:20.422296+00', '2026-03-23 01:27:20+00', 6, 'f3d5a1ec31ed45e68cd1737aa7aad61b');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (142, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDI0MzQ2NSwiaWF0IjoxNzczNjM4NjY1LCJqdGkiOiJkMDBkZjVhMTFkMTI0YjcwYjBkZjI5ZTVjNTZhOWYxOSIsInVzZXJfaWQiOiI0In0.S5QSzk8CRqRdhEzGrVb7UVwDwM8Yv7S3XZocTrwOY1o', '2026-03-16 05:24:25.412521+00', '2026-03-23 05:24:25+00', 4, 'd00df5a11d124b70b0df29e5c56a9f19');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (143, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMwNDEyNSwiaWF0IjoxNzczNjk5MzI1LCJqdGkiOiI5N2VjNjA1ZjI3MWQ0ZWMyYjYzZjEwNjI2YjhmOWM5OSIsInVzZXJfaWQiOiI0In0.bs1YTnC311UswtTnesuWmhPOB3UFazVq8yX8UyB1dP8', '2026-03-16 22:15:25.915549+00', '2026-03-23 22:15:25+00', 4, '97ec605f271d4ec2b63f10626b8f9c99');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (144, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMxNDE1MiwiaWF0IjoxNzczNzA5MzUyLCJqdGkiOiI1OWM3NmM3Nzc4M2E0OTJiOWY0OGVjNzgwZTZjM2JiNyIsInVzZXJfaWQiOiIyMCJ9.9BIRRfyfDOxv9fc92pI7Qnop60OcCXXo_130l6rsVxM', '2026-03-17 01:02:32.739524+00', '2026-03-24 01:02:32+00', 20, '59c76c77783a492b9f48ec780e6c3bb7');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (145, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMxNDQyNSwiaWF0IjoxNzczNzA5NjI1LCJqdGkiOiI5NTc5NDg1NDQ4YjM0MjMyOGYzMjcwYzdiNjM1NGQ3MiIsInVzZXJfaWQiOiIyMCJ9.3bF4aw85kqejLktnp-nAMYrR8B0hKMGFpcBSoQNTWzM', '2026-03-17 01:07:05.343729+00', '2026-03-24 01:07:05+00', 20, '9579485448b342328f3270c7b6354d72');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (146, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMxNDQ2OCwiaWF0IjoxNzczNzA5NjY4LCJqdGkiOiJiNTRiYzAxMjZkNzM0YjQyYjlmMmVmNzhkYThmMmMzNSIsInVzZXJfaWQiOiIyMCJ9.XYtKguQ3WVcopZqJ0VrZa9oOAy5KRw1AdG9o146A-9c', '2026-03-17 01:07:48.455805+00', '2026-03-24 01:07:48+00', 20, 'b54bc0126d734b42b9f2ef78da8f2c35');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (147, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMxNDU1NSwiaWF0IjoxNzczNzA5NzU1LCJqdGkiOiJiNTBhYmE0MTdhNzk0NmE5YmUyOGJlNTc4YjJjMjI1MCIsInVzZXJfaWQiOiIyNCJ9.z3tgppFCv2EfRjEeKO1SGPReY1MXIUM62a88lMMw1w4', '2026-03-17 01:09:15.831871+00', '2026-03-24 01:09:15+00', 24, 'b50aba417a7946a9be28be578b2c2250');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (148, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMxNDc4NSwiaWF0IjoxNzczNzA5OTg1LCJqdGkiOiI2YWExMDhlZjVmYWM0ODVhODU0MjljN2JiMjhhODUzZCIsInVzZXJfaWQiOiIyMCJ9.xZs14Yu7sU8OvB6_CRqKgUifjwrdZOiFITjN5wrcT1E', '2026-03-17 01:13:05.854654+00', '2026-03-24 01:13:05+00', 20, '6aa108ef5fac485a85429c7bb28a853d');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDMxNTAxOSwiaWF0IjoxNzczNzEwMjE5LCJqdGkiOiIyOWRiOTg4ZDUxZGY0ZWI5YmJkZWQ3Y2MzOTM2OTRkOSIsInVzZXJfaWQiOiIyNCJ9.4TzL2onBpmRML2M0qH0FeO2P33DnVRSiTJAW0Mho8rk', '2026-03-17 01:16:59.289523+00', '2026-03-24 01:16:59+00', 24, '29db988d51df4eb9bbded7cc393694d9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (150, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDM0MDQwNywiaWF0IjoxNzczNzM1NjA3LCJqdGkiOiI0ODY4NWE2NjQyNDk0YWNjODFlOWIwMGI5N2UwYzBmOSIsInVzZXJfaWQiOiI2In0.AxJiFaCQHJ2yLSaCi8YnLUthTzBUd5t24RLB0W4S0G8', '2026-03-17 08:20:07.770587+00', '2026-03-24 08:20:07+00', 6, '48685a6642494acc81e9b00b97e0c0f9');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (151, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDM0MDY3MCwiaWF0IjoxNzczNzM1ODcwLCJqdGkiOiJmZDQ0NWYzZDIyOWQ0ZTU3YTcxMDE3NGFkNmI5YjAyMCIsInVzZXJfaWQiOiI2In0.XxIBPLOEjpb0zpjBZXelfA8rhgd087paqRltSB9aIyg', '2026-03-17 08:24:30.381386+00', '2026-03-24 08:24:30+00', 6, 'fd445f3d229d4e57a710174ad6b9b020');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (152, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDM0MDg4NCwiaWF0IjoxNzczNzM2MDg0LCJqdGkiOiI0MGZjNDg2MWM5ZmQ0ZjYwYTk2YjE0OTRlMmJiYjI5NCIsInVzZXJfaWQiOiI2In0.4d9Ii7z7Sju9O1DMwJgLe2OqgSy7_I1ZOv7MwgqQL5M', '2026-03-17 08:28:04.711158+00', '2026-03-24 08:28:04+00', 6, '40fc4861c9fd4f60a96b1494e2bbb294');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (153, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDM0MDk5MCwiaWF0IjoxNzczNzM2MTkwLCJqdGkiOiJhMjJlNTkxYTAzNDE0ZGIxOGExM2YwMWJlZWY2YmI1ZCIsInVzZXJfaWQiOiI2In0.8tIKU1odJ8cToT409BaO5jLViRtBTdlbg82nenGQM8I', '2026-03-17 08:29:50.022829+00', '2026-03-24 08:29:50+00', 6, 'a22e591a03414db18a13f01beef6bb5d');
INSERT INTO "public"."token_blacklist_outstandingtoken" VALUES (154, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3NDM0MTU3MCwiaWF0IjoxNzczNzM2NzcwLCJqdGkiOiI5MjRmZWE5MWI3NTY0M2ZiODE2YzkyNWZjOTM2MzdkOCIsInVzZXJfaWQiOiI2In0.IL9cxrPr28jaJrtMCxQH8zvB-UtIvyGROS5urJAoavg', '2026-03-17 08:39:30.602204+00', '2026-03-24 08:39:30+00', 6, '924fea91b75643fb816c925fc93637d8');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_groups_id_seq"
OWNED BY "public"."accounts_user_groups"."id";
SELECT setval('"public"."accounts_user_groups_id_seq"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_id_seq"
OWNED BY "public"."accounts_user"."id";
SELECT setval('"public"."accounts_user_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_user_permissions_id_seq"
OWNED BY "public"."accounts_user_user_permissions"."id";
SELECT setval('"public"."accounts_user_user_permissions_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."audit_logger_auditlog_id_seq"
OWNED BY "public"."audit_logger_auditlog"."id";
SELECT setval('"public"."audit_logger_auditlog_id_seq"', 117, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 72, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."authentication_userdevice_id_seq"
OWNED BY "public"."authentication_userdevice"."id";
SELECT setval('"public"."authentication_userdevice_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 18, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 46, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."model_trigger_scheduledtask_id_seq"
OWNED BY "public"."model_trigger_scheduledtask"."id";
SELECT setval('"public"."model_trigger_scheduledtask_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."otp_otp_id_seq"
OWNED BY "public"."otp_otp"."id";
SELECT setval('"public"."otp_otp_id_seq"', 99, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_billing_id_seq"
OWNED BY "public"."resources_billing"."id";
SELECT setval('"public"."resources_billing_id_seq"', 19, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_paymenthistory_id_seq"
OWNED BY "public"."resources_paymenthistory"."id";
SELECT setval('"public"."resources_paymenthistory_id_seq"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_plan_id_seq"
OWNED BY "public"."resources_plan"."id";
SELECT setval('"public"."resources_plan_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_subscription_id_seq"
OWNED BY "public"."resources_subscription"."id";
SELECT setval('"public"."resources_subscription_id_seq"', 20, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_supportticket_id_seq"
OWNED BY "public"."resources_supportticket"."id";
SELECT setval('"public"."resources_supportticket_id_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq"
OWNED BY "public"."token_blacklist_blacklistedtoken"."id";
SELECT setval('"public"."token_blacklist_blacklistedtoken_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq"
OWNED BY "public"."token_blacklist_outstandingtoken"."id";
SELECT setval('"public"."token_blacklist_outstandingtoken_id_seq"', 154, true);

-- ----------------------------
-- Auto increment value for accounts_user
-- ----------------------------
SELECT setval('"public"."accounts_user_id_seq"', 24, true);

-- ----------------------------
-- Indexes structure for table accounts_user
-- ----------------------------
CREATE INDEX "accounts_user_email_b2644a56_like" ON "public"."accounts_user" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "accounts_user_username_6088629e_like" ON "public"."accounts_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table accounts_user
-- ----------------------------
ALTER TABLE "public"."accounts_user" ADD CONSTRAINT "accounts_user_username_key" UNIQUE ("username");
ALTER TABLE "public"."accounts_user" ADD CONSTRAINT "accounts_user_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table accounts_user
-- ----------------------------
ALTER TABLE "public"."accounts_user" ADD CONSTRAINT "accounts_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for accounts_user_groups
-- ----------------------------
SELECT setval('"public"."accounts_user_groups_id_seq"', 21, true);

-- ----------------------------
-- Indexes structure for table accounts_user_groups
-- ----------------------------
CREATE INDEX "accounts_user_groups_group_id_bd11a704" ON "public"."accounts_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "accounts_user_groups_user_id_52b62117" ON "public"."accounts_user_groups" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table accounts_user_groups
-- ----------------------------
ALTER TABLE "public"."accounts_user_groups" ADD CONSTRAINT "accounts_user_groups_user_id_group_id_59c0b32f_uniq" UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table accounts_user_groups
-- ----------------------------
ALTER TABLE "public"."accounts_user_groups" ADD CONSTRAINT "accounts_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for accounts_user_user_permissions
-- ----------------------------
SELECT setval('"public"."accounts_user_user_permissions_id_seq"', 1, false);

-- ----------------------------
-- Indexes structure for table accounts_user_user_permissions
-- ----------------------------
CREATE INDEX "accounts_user_user_permissions_permission_id_113bb443" ON "public"."accounts_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "accounts_user_user_permissions_user_id_e4f0a161" ON "public"."accounts_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table accounts_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."accounts_user_user_permissions" ADD CONSTRAINT "accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq" UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table accounts_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."accounts_user_user_permissions" ADD CONSTRAINT "accounts_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for audit_logger_auditlog
-- ----------------------------
SELECT setval('"public"."audit_logger_auditlog_id_seq"', 117, true);

-- ----------------------------
-- Indexes structure for table audit_logger_auditlog
-- ----------------------------
CREATE INDEX "audit_logger_auditlog_user_id_46864558" ON "public"."audit_logger_auditlog" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table audit_logger_auditlog
-- ----------------------------
ALTER TABLE "public"."audit_logger_auditlog" ADD CONSTRAINT "audit_logger_auditlog_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for auth_group
-- ----------------------------
SELECT setval('"public"."auth_group_id_seq"', 2, true);

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for auth_group_permissions
-- ----------------------------
SELECT setval('"public"."auth_group_permissions_id_seq"', 1, false);

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for auth_permission
-- ----------------------------
SELECT setval('"public"."auth_permission_id_seq"', 72, true);

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for authentication_userdevice
-- ----------------------------
SELECT setval('"public"."authentication_userdevice_id_seq"', 40, true);

-- ----------------------------
-- Indexes structure for table authentication_userdevice
-- ----------------------------
CREATE INDEX "authentication_userdevice_user_id_a41307c3" ON "public"."authentication_userdevice" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table authentication_userdevice
-- ----------------------------
ALTER TABLE "public"."authentication_userdevice" ADD CONSTRAINT "authentication_userdevice_user_id_device_id_c6461252_uniq" UNIQUE ("user_id", "device_id");

-- ----------------------------
-- Primary Key structure for table authentication_userdevice
-- ----------------------------
ALTER TABLE "public"."authentication_userdevice" ADD CONSTRAINT "authentication_userdevice_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for django_admin_log
-- ----------------------------
SELECT setval('"public"."django_admin_log_id_seq"', 1, false);

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for django_content_type
-- ----------------------------
SELECT setval('"public"."django_content_type_id_seq"', 18, true);

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for django_migrations
-- ----------------------------
SELECT setval('"public"."django_migrations_id_seq"', 46, true);

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Auto increment value for model_trigger_scheduledtask
-- ----------------------------
SELECT setval('"public"."model_trigger_scheduledtask_id_seq"', 22, true);

-- ----------------------------
-- Indexes structure for table model_trigger_scheduledtask
-- ----------------------------
CREATE INDEX "model_trigg_status_b05389_idx" ON "public"."model_trigger_scheduledtask" USING btree (
  "status" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "scheduled_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table model_trigger_scheduledtask
-- ----------------------------
ALTER TABLE "public"."model_trigger_scheduledtask" ADD CONSTRAINT "unique_scheduled_rule_per_instance" UNIQUE ("model", "instance_id", "rule_name");

-- ----------------------------
-- Checks structure for table model_trigger_scheduledtask
-- ----------------------------
ALTER TABLE "public"."model_trigger_scheduledtask" ADD CONSTRAINT "model_trigger_scheduledtask_instance_id_check" CHECK (instance_id >= 0);

-- ----------------------------
-- Primary Key structure for table model_trigger_scheduledtask
-- ----------------------------
ALTER TABLE "public"."model_trigger_scheduledtask" ADD CONSTRAINT "model_trigger_scheduledtask_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for otp_otp
-- ----------------------------
SELECT setval('"public"."otp_otp_id_seq"', 99, true);

-- ----------------------------
-- Indexes structure for table otp_otp
-- ----------------------------
CREATE INDEX "otp_otp_user_id_fe9d6c52" ON "public"."otp_otp" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table otp_otp
-- ----------------------------
ALTER TABLE "public"."otp_otp" ADD CONSTRAINT "otp_otp_attempt_count_check" CHECK (attempt_count >= 0);

-- ----------------------------
-- Primary Key structure for table otp_otp
-- ----------------------------
ALTER TABLE "public"."otp_otp" ADD CONSTRAINT "otp_otp_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for resources_billing
-- ----------------------------
SELECT setval('"public"."resources_billing_id_seq"', 19, true);

-- ----------------------------
-- Indexes structure for table resources_billing
-- ----------------------------
CREATE INDEX "resources_billing_plan_id_e12f907e" ON "public"."resources_billing" USING btree (
  "plan_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "resources_billing_subscription_id_cb6d2d92" ON "public"."resources_billing" USING btree (
  "subscription_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "resources_billing_user_id_5dedca4a" ON "public"."resources_billing" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resources_billing
-- ----------------------------
ALTER TABLE "public"."resources_billing" ADD CONSTRAINT "resources_billing_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for resources_paymenthistory
-- ----------------------------
SELECT setval('"public"."resources_paymenthistory_id_seq"', 12, true);

-- ----------------------------
-- Indexes structure for table resources_paymenthistory
-- ----------------------------
CREATE INDEX "resources_paymenthistory_bill_id_19124a48" ON "public"."resources_paymenthistory" USING btree (
  "bill_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "resources_paymenthistory_user_id_1dc956aa" ON "public"."resources_paymenthistory" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resources_paymenthistory
-- ----------------------------
ALTER TABLE "public"."resources_paymenthistory" ADD CONSTRAINT "resources_paymenthistory_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for resources_plan
-- ----------------------------
SELECT setval('"public"."resources_plan_id_seq"', 1, false);

-- ----------------------------
-- Checks structure for table resources_plan
-- ----------------------------
ALTER TABLE "public"."resources_plan" ADD CONSTRAINT "resources_plan_speed_mbps_check" CHECK (speed_mbps >= 0);

-- ----------------------------
-- Primary Key structure for table resources_plan
-- ----------------------------
ALTER TABLE "public"."resources_plan" ADD CONSTRAINT "resources_plan_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for resources_subscription
-- ----------------------------
SELECT setval('"public"."resources_subscription_id_seq"', 20, true);

-- ----------------------------
-- Indexes structure for table resources_subscription
-- ----------------------------
CREATE INDEX "resources_subscription_plan_id_0e2ebf0a" ON "public"."resources_subscription" USING btree (
  "plan_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "resources_subscription_user_id_f5735324" ON "public"."resources_subscription" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resources_subscription
-- ----------------------------
ALTER TABLE "public"."resources_subscription" ADD CONSTRAINT "resources_subscription_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for resources_supportticket
-- ----------------------------
SELECT setval('"public"."resources_supportticket_id_seq"', 13, true);

-- ----------------------------
-- Indexes structure for table resources_supportticket
-- ----------------------------
CREATE INDEX "resources_supportticket_assigned_to_id_b7696afe" ON "public"."resources_supportticket" USING btree (
  "assigned_to_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "resources_supportticket_user_id_903dac7f" ON "public"."resources_supportticket" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table resources_supportticket
-- ----------------------------
ALTER TABLE "public"."resources_supportticket" ADD CONSTRAINT "resources_supportticket_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for token_blacklist_blacklistedtoken
-- ----------------------------
SELECT setval('"public"."token_blacklist_blacklistedtoken_id_seq"', 1, false);

-- ----------------------------
-- Uniques structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_token_id_key" UNIQUE ("token_id");

-- ----------------------------
-- Primary Key structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Auto increment value for token_blacklist_outstandingtoken
-- ----------------------------
SELECT setval('"public"."token_blacklist_outstandingtoken_id_seq"', 154, true);

-- ----------------------------
-- Indexes structure for table token_blacklist_outstandingtoken
-- ----------------------------
CREATE INDEX "token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like" ON "public"."token_blacklist_outstandingtoken" USING btree (
  "jti" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "token_blacklist_outstandingtoken_user_id_83bc629a" ON "public"."token_blacklist_outstandingtoken" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table token_blacklist_outstandingtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_outstandingtoken" ADD CONSTRAINT "token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq" UNIQUE ("jti");

-- ----------------------------
-- Primary Key structure for table token_blacklist_outstandingtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_outstandingtoken" ADD CONSTRAINT "token_blacklist_outstandingtoken_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table accounts_user_groups
-- ----------------------------
ALTER TABLE "public"."accounts_user_groups" ADD CONSTRAINT "accounts_user_groups_group_id_bd11a704_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."accounts_user_groups" ADD CONSTRAINT "accounts_user_groups_user_id_52b62117_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table accounts_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."accounts_user_user_permissions" ADD CONSTRAINT "accounts_user_user_p_permission_id_113bb443_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."accounts_user_user_permissions" ADD CONSTRAINT "accounts_user_user_p_user_id_e4f0a161_fk_accounts_" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table audit_logger_auditlog
-- ----------------------------
ALTER TABLE "public"."audit_logger_auditlog" ADD CONSTRAINT "audit_logger_auditlog_user_id_46864558_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table authentication_userdevice
-- ----------------------------
ALTER TABLE "public"."authentication_userdevice" ADD CONSTRAINT "authentication_userdevice_user_id_a41307c3_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table otp_otp
-- ----------------------------
ALTER TABLE "public"."otp_otp" ADD CONSTRAINT "otp_otp_user_id_fe9d6c52_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table resources_billing
-- ----------------------------
ALTER TABLE "public"."resources_billing" ADD CONSTRAINT "resources_billing_plan_id_e12f907e_fk_resources_plan_id" FOREIGN KEY ("plan_id") REFERENCES "public"."resources_plan" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."resources_billing" ADD CONSTRAINT "resources_billing_subscription_id_cb6d2d92_fk_resources" FOREIGN KEY ("subscription_id") REFERENCES "public"."resources_subscription" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."resources_billing" ADD CONSTRAINT "resources_billing_user_id_5dedca4a_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table resources_paymenthistory
-- ----------------------------
ALTER TABLE "public"."resources_paymenthistory" ADD CONSTRAINT "resources_paymenthis_bill_id_19124a48_fk_resources" FOREIGN KEY ("bill_id") REFERENCES "public"."resources_billing" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."resources_paymenthistory" ADD CONSTRAINT "resources_paymenthistory_user_id_1dc956aa_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table resources_subscription
-- ----------------------------
ALTER TABLE "public"."resources_subscription" ADD CONSTRAINT "resources_subscription_plan_id_0e2ebf0a_fk_resources_plan_id" FOREIGN KEY ("plan_id") REFERENCES "public"."resources_plan" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."resources_subscription" ADD CONSTRAINT "resources_subscription_user_id_f5735324_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table resources_supportticket
-- ----------------------------
ALTER TABLE "public"."resources_supportticket" ADD CONSTRAINT "resources_supporttic_assigned_to_id_b7696afe_fk_accounts_" FOREIGN KEY ("assigned_to_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."resources_supportticket" ADD CONSTRAINT "resources_supportticket_user_id_903dac7f_fk_accounts_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk" FOREIGN KEY ("token_id") REFERENCES "public"."token_blacklist_outstandingtoken" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table token_blacklist_outstandingtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_outstandingtoken" ADD CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_accounts_" FOREIGN KEY ("user_id") REFERENCES "public"."accounts_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
