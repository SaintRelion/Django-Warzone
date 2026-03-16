/*
 Navicat Premium Dump SQL

 Source Server         : PostgreSQL 18
 Source Server Type    : PostgreSQL
 Source Server Version : 180001 (180001)
 Source Host           : localhost:5433
 Source Catalog        : warzone
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 180001 (180001)
 File Encoding         : 65001

 Date: 15/03/2026 22:48:07
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
-- Sequence structure for accounts_user_groups_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_user_groups_id_seq1";
CREATE SEQUENCE "public"."accounts_user_groups_id_seq1" 
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
-- Sequence structure for accounts_user_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_user_id_seq1";
CREATE SEQUENCE "public"."accounts_user_id_seq1" 
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
-- Sequence structure for accounts_user_user_permissions_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_user_user_permissions_id_seq1";
CREATE SEQUENCE "public"."accounts_user_user_permissions_id_seq1" 
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
-- Sequence structure for auth_group_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq1";
CREATE SEQUENCE "public"."auth_group_id_seq1" 
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
-- Sequence structure for auth_group_permissions_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq1";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq1" 
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
-- Sequence structure for auth_permission_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq1";
CREATE SEQUENCE "public"."auth_permission_id_seq1" 
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
-- Sequence structure for authentication_userdevice_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."authentication_userdevice_id_seq1";
CREATE SEQUENCE "public"."authentication_userdevice_id_seq1" 
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
-- Sequence structure for django_admin_log_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq1";
CREATE SEQUENCE "public"."django_admin_log_id_seq1" 
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
-- Sequence structure for django_content_type_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq1";
CREATE SEQUENCE "public"."django_content_type_id_seq1" 
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
-- Sequence structure for django_migrations_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq1";
CREATE SEQUENCE "public"."django_migrations_id_seq1" 
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
-- Sequence structure for model_trigger_scheduledtask_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."model_trigger_scheduledtask_id_seq1";
CREATE SEQUENCE "public"."model_trigger_scheduledtask_id_seq1" 
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
-- Sequence structure for otp_otp_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."otp_otp_id_seq1";
CREATE SEQUENCE "public"."otp_otp_id_seq1" 
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
-- Sequence structure for resources_billing_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_billing_id_seq1";
CREATE SEQUENCE "public"."resources_billing_id_seq1" 
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
-- Sequence structure for resources_paymenthistory_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_paymenthistory_id_seq1";
CREATE SEQUENCE "public"."resources_paymenthistory_id_seq1" 
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
-- Sequence structure for resources_plan_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_plan_id_seq1";
CREATE SEQUENCE "public"."resources_plan_id_seq1" 
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
-- Sequence structure for resources_subscription_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_subscription_id_seq1";
CREATE SEQUENCE "public"."resources_subscription_id_seq1" 
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
-- Sequence structure for resources_supportticket_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."resources_supportticket_id_seq1";
CREATE SEQUENCE "public"."resources_supportticket_id_seq1" 
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
-- Sequence structure for token_blacklist_blacklistedtoken_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."token_blacklist_blacklistedtoken_id_seq1";
CREATE SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq1" 
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
-- Sequence structure for token_blacklist_outstandingtoken_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."token_blacklist_outstandingtoken_id_seq1";
CREATE SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq1" 
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
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_groups_id_seq"
OWNED BY "public"."accounts_user_groups"."id";
SELECT setval('"public"."accounts_user_groups_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_groups_id_seq1"
OWNED BY "public"."accounts_user_groups"."id";
SELECT setval('"public"."accounts_user_groups_id_seq1"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_id_seq"
OWNED BY "public"."accounts_user"."id";
SELECT setval('"public"."accounts_user_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_id_seq1"
OWNED BY "public"."accounts_user"."id";
SELECT setval('"public"."accounts_user_id_seq1"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_user_permissions_id_seq"
OWNED BY "public"."accounts_user_user_permissions"."id";
SELECT setval('"public"."accounts_user_user_permissions_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."accounts_user_user_permissions_id_seq1"
OWNED BY "public"."accounts_user_user_permissions"."id";
SELECT setval('"public"."accounts_user_user_permissions_id_seq1"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."audit_logger_auditlog_id_seq"
OWNED BY "public"."audit_logger_auditlog"."id";
SELECT setval('"public"."audit_logger_auditlog_id_seq"', 132, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq1"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq1"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq1"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq1"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 68, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq1"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq1"', 72, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."authentication_userdevice_id_seq"
OWNED BY "public"."authentication_userdevice"."id";
SELECT setval('"public"."authentication_userdevice_id_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."authentication_userdevice_id_seq1"
OWNED BY "public"."authentication_userdevice"."id";
SELECT setval('"public"."authentication_userdevice_id_seq1"', 26, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_admin_log_id_seq1"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq1"', 21, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 17, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq1"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq1"', 18, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 40, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq1"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq1"', 46, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."model_trigger_scheduledtask_id_seq"
OWNED BY "public"."model_trigger_scheduledtask"."id";
SELECT setval('"public"."model_trigger_scheduledtask_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."model_trigger_scheduledtask_id_seq1"
OWNED BY "public"."model_trigger_scheduledtask"."id";
SELECT setval('"public"."model_trigger_scheduledtask_id_seq1"', 46, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."otp_otp_id_seq"
OWNED BY "public"."otp_otp"."id";
SELECT setval('"public"."otp_otp_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."otp_otp_id_seq1"
OWNED BY "public"."otp_otp"."id";
SELECT setval('"public"."otp_otp_id_seq1"', 51, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_billing_id_seq"
OWNED BY "public"."resources_billing"."id";
SELECT setval('"public"."resources_billing_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_billing_id_seq1"
OWNED BY "public"."resources_billing"."id";
SELECT setval('"public"."resources_billing_id_seq1"', 41, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_paymenthistory_id_seq"
OWNED BY "public"."resources_paymenthistory"."id";
SELECT setval('"public"."resources_paymenthistory_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_paymenthistory_id_seq1"
OWNED BY "public"."resources_paymenthistory"."id";
SELECT setval('"public"."resources_paymenthistory_id_seq1"', 12, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_plan_id_seq"
OWNED BY "public"."resources_plan"."id";
SELECT setval('"public"."resources_plan_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_plan_id_seq1"
OWNED BY "public"."resources_plan"."id";
SELECT setval('"public"."resources_plan_id_seq1"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_subscription_id_seq"
OWNED BY "public"."resources_subscription"."id";
SELECT setval('"public"."resources_subscription_id_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_subscription_id_seq1"
OWNED BY "public"."resources_subscription"."id";
SELECT setval('"public"."resources_subscription_id_seq1"', 25, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_supportticket_id_seq"
OWNED BY "public"."resources_supportticket"."id";
SELECT setval('"public"."resources_supportticket_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."resources_supportticket_id_seq1"
OWNED BY "public"."resources_supportticket"."id";
SELECT setval('"public"."resources_supportticket_id_seq1"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq"
OWNED BY "public"."token_blacklist_blacklistedtoken"."id";
SELECT setval('"public"."token_blacklist_blacklistedtoken_id_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_blacklistedtoken_id_seq1"
OWNED BY "public"."token_blacklist_blacklistedtoken"."id";
SELECT setval('"public"."token_blacklist_blacklistedtoken_id_seq1"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq"
OWNED BY "public"."token_blacklist_outstandingtoken"."id";
SELECT setval('"public"."token_blacklist_outstandingtoken_id_seq"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."token_blacklist_outstandingtoken_id_seq1"
OWNED BY "public"."token_blacklist_outstandingtoken"."id";
SELECT setval('"public"."token_blacklist_outstandingtoken_id_seq1"', 82, true);

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
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

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
-- Checks structure for table resources_plan
-- ----------------------------
ALTER TABLE "public"."resources_plan" ADD CONSTRAINT "resources_plan_speed_mbps_check" CHECK (speed_mbps >= 0);

-- ----------------------------
-- Primary Key structure for table resources_plan
-- ----------------------------
ALTER TABLE "public"."resources_plan" ADD CONSTRAINT "resources_plan_pkey" PRIMARY KEY ("id");

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
-- Uniques structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_token_id_key" UNIQUE ("token_id");

-- ----------------------------
-- Primary Key structure for table token_blacklist_blacklistedtoken
-- ----------------------------
ALTER TABLE "public"."token_blacklist_blacklistedtoken" ADD CONSTRAINT "token_blacklist_blacklistedtoken_pkey" PRIMARY KEY ("id");

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
