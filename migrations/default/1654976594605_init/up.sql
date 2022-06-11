SET check_function_bodies = false;
CREATE TABLE public.cards (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    title text NOT NULL,
    description text
);
COMMENT ON TABLE public.cards IS 'cards for jira clone';
CREATE TABLE public.comments (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    card_id uuid NOT NULL,
    content text NOT NULL
);
COMMENT ON TABLE public.comments IS 'comments for cards';
ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cards(id) ON UPDATE CASCADE ON DELETE CASCADE;
