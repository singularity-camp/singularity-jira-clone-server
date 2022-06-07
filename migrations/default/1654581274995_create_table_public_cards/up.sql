CREATE TABLE "public"."cards" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "description" text, PRIMARY KEY ("id") );COMMENT ON TABLE "public"."cards" IS E'cards for jira clone';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
