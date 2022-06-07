CREATE TABLE "public"."comments" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "card_id" uuid NOT NULL, "content" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("card_id") REFERENCES "public"."cards"("id") ON UPDATE cascade ON DELETE cascade);COMMENT ON TABLE "public"."comments" IS E'comments for cards';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
