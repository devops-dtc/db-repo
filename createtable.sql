-- Table: public.subjects

-- DROP TABLE IF EXISTS public.subjects;

CREATE TABLE IF NOT EXISTS public.subjects
(
    subject_id integer NOT NULL,
    description text COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    CONSTRAINT subjects_pkey PRIMARY KEY (subject_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.subjects
    OWNER to postgres;

    -- Table: public.users

-- DROP TABLE IF EXISTS public.users;

CREATE TABLE IF NOT EXISTS public.users
(
    user_id integer NOT NULL DEFAULT nextval('users_user_id_seq'::regclass),
    password character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(255) COLLATE pg_catalog."default" NOT NULL,
    mobile character varying(255) COLLATE pg_catalog."default" NOT NULL,
    address character varying(255) COLLATE pg_catalog."default",
    created_on timestamp without time zone,
    last_login timestamp without time zone,
    token text COLLATE pg_catalog."default",
    firstname character varying(50) COLLATE pg_catalog."default",
    lastname character varying(50) COLLATE pg_catalog."default",
    username character(255) COLLATE pg_catalog."default",
    name text COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (user_id),
    CONSTRAINT users_address_key UNIQUE (address),
    CONSTRAINT users_email_key UNIQUE (email),
    CONSTRAINT users_mobile_key UNIQUE (mobile)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;
