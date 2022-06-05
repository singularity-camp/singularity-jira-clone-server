CREATE TABLE "public"."cards" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "description" text, PRIMARY KEY ("id") , UNIQUE ("id"));COMMENT ON TABLE "public"."cards" IS E'Table cards';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
