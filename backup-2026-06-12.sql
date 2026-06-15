--
-- PostgreSQL database dump
--

\restrict jrVYdBUZfgGGok5PpIgc34mokZ5lat2RgkxxdNQkLxh3MXBZ1tYCbnyJ6tzQJwG

-- Dumped from database version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO shokan;

--
-- Name: admin_permissions_api_token_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admin_permissions_api_token_lnk (
    id integer NOT NULL,
    permission_id integer,
    api_token_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_api_token_lnk OWNER TO shokan;

--
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admin_permissions_api_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_api_token_lnk_id_seq OWNER TO shokan;

--
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admin_permissions_api_token_lnk_id_seq OWNED BY public.admin_permissions_api_token_lnk.id;


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO shokan;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO shokan;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO shokan;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO shokan;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO shokan;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO shokan;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO shokan;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO shokan;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO shokan;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: admissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.admissions (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    subtitle character varying(255),
    more character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admissions OWNER TO shokan;

--
-- Name: admissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.admissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admissions_id_seq OWNER TO shokan;

--
-- Name: admissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.admissions_id_seq OWNED BY public.admissions.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.categories OWNER TO shokan;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO shokan;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: components_shared_components; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.components_shared_components (
    id integer NOT NULL,
    title text,
    subtitle text,
    graduate text,
    educat text,
    code text
);


ALTER TABLE public.components_shared_components OWNER TO shokan;

--
-- Name: components_shared_components_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.components_shared_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_components_id_seq OWNER TO shokan;

--
-- Name: components_shared_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.components_shared_components_id_seq OWNED BY public.components_shared_components.id;


--
-- Name: components_shared_items; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.components_shared_items (
    id integer NOT NULL,
    title text
);


ALTER TABLE public.components_shared_items OWNER TO shokan;

--
-- Name: components_shared_items_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.components_shared_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_items_id_seq OWNER TO shokan;

--
-- Name: components_shared_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.components_shared_items_id_seq OWNED BY public.components_shared_items.id;


--
-- Name: components_shared_links; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.components_shared_links (
    id integer NOT NULL,
    text character varying(255),
    url text
);


ALTER TABLE public.components_shared_links OWNER TO shokan;

--
-- Name: components_shared_links_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.components_shared_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_links_id_seq OWNER TO shokan;

--
-- Name: components_shared_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.components_shared_links_id_seq OWNED BY public.components_shared_links.id;


--
-- Name: components_shared_magistrs; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.components_shared_magistrs (
    id integer NOT NULL,
    title text,
    description text
);


ALTER TABLE public.components_shared_magistrs OWNER TO shokan;

--
-- Name: components_shared_magistrs_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.components_shared_magistrs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_magistrs_id_seq OWNER TO shokan;

--
-- Name: components_shared_magistrs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.components_shared_magistrs_id_seq OWNED BY public.components_shared_magistrs.id;


--
-- Name: components_shared_titles; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.components_shared_titles (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_shared_titles OWNER TO shokan;

--
-- Name: components_shared_titles_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.components_shared_titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_shared_titles_id_seq OWNER TO shokan;

--
-- Name: components_shared_titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.components_shared_titles_id_seq OWNED BY public.components_shared_titles.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    subtitle character varying(255),
    phone bigint,
    address text,
    room character varying(255),
    schedule character varying(255),
    social_media text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.contacts OWNER TO shokan;

--
-- Name: contacts_comissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.contacts_comissions (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    email text,
    locales text,
    dayswork text,
    number text,
    more character varying(255),
    doc text,
    med text,
    identifycard text,
    photos text,
    card character varying(255),
    certificate text,
    "grant" text,
    cardboard text,
    envelope text,
    sectitle text,
    instagram text,
    instaurl text,
    toogis text,
    toogisurl text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.contacts_comissions OWNER TO shokan;

--
-- Name: contacts_comissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.contacts_comissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_comissions_id_seq OWNER TO shokan;

--
-- Name: contacts_comissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.contacts_comissions_id_seq OWNED BY public.contacts_comissions.id;


--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_id_seq OWNER TO shokan;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: docs; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.docs (
    id integer NOT NULL,
    document_id character varying(255),
    text text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    url text
);


ALTER TABLE public.docs OWNER TO shokan;

--
-- Name: docs_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.docs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.docs_id_seq OWNER TO shokan;

--
-- Name: docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.docs_id_seq OWNED BY public.docs.id;


--
-- Name: errors; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.errors (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    subtitle text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    home character varying(255),
    again text
);


ALTER TABLE public.errors OWNER TO shokan;

--
-- Name: errors_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.errors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.errors_id_seq OWNER TO shokan;

--
-- Name: errors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.errors_id_seq OWNED BY public.errors.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    focal_point jsonb,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO shokan;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO shokan;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO shokan;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO shokan;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO shokan;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO shokan;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    document_id character varying(255),
    site_name character varying(255),
    site_description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.globals OWNER TO shokan;

--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.globals_id_seq OWNER TO shokan;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: graduates; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.graduates (
    id integer NOT NULL,
    document_id character varying(255),
    graduates character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.graduates OWNER TO shokan;

--
-- Name: graduates_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.graduates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.graduates_id_seq OWNER TO shokan;

--
-- Name: graduates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.graduates_id_seq OWNED BY public.graduates.id;


--
-- Name: heads; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.heads (
    id integer NOT NULL,
    document_id character varying(255),
    heading character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.heads OWNER TO shokan;

--
-- Name: heads_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.heads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.heads_id_seq OWNER TO shokan;

--
-- Name: heads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.heads_id_seq OWNED BY public.heads.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO shokan;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO shokan;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.images (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.images OWNER TO shokan;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.images_id_seq OWNER TO shokan;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: info_admissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.info_admissions (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    subtitle character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.info_admissions OWNER TO shokan;

--
-- Name: info_admissions_cmps; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.info_admissions_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.info_admissions_cmps OWNER TO shokan;

--
-- Name: info_admissions_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.info_admissions_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.info_admissions_cmps_id_seq OWNER TO shokan;

--
-- Name: info_admissions_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.info_admissions_cmps_id_seq OWNED BY public.info_admissions_cmps.id;


--
-- Name: info_admissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.info_admissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.info_admissions_id_seq OWNER TO shokan;

--
-- Name: info_admissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.info_admissions_id_seq OWNED BY public.info_admissions.id;


--
-- Name: links; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.links (
    id integer NOT NULL,
    document_id character varying(255),
    toogis text,
    instagram text,
    youtube text,
    linkedin text,
    facebook text,
    tiktok text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.links OWNER TO shokan;

--
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.links_id_seq OWNER TO shokan;

--
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- Name: list_documents; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.list_documents (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    title character varying(255),
    subtitle character varying(255),
    description character varying(255)
);


ALTER TABLE public.list_documents OWNER TO shokan;

--
-- Name: list_documents_cmps; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.list_documents_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.list_documents_cmps OWNER TO shokan;

--
-- Name: list_documents_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.list_documents_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.list_documents_cmps_id_seq OWNER TO shokan;

--
-- Name: list_documents_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.list_documents_cmps_id_seq OWNED BY public.list_documents_cmps.id;


--
-- Name: list_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.list_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.list_documents_id_seq OWNER TO shokan;

--
-- Name: list_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.list_documents_id_seq OWNED BY public.list_documents.id;


--
-- Name: news_articles; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.news_articles (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    published date,
    description text,
    subtitle text,
    descriptor jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.news_articles OWNER TO shokan;

--
-- Name: news_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.news_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_articles_id_seq OWNER TO shokan;

--
-- Name: news_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.news_articles_id_seq OWNED BY public.news_articles.id;


--
-- Name: professions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.professions (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    code text,
    subtitle text,
    graduates text,
    form text,
    url text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.professions OWNER TO shokan;

--
-- Name: professions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.professions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.professions_id_seq OWNER TO shokan;

--
-- Name: professions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.professions_id_seq OWNED BY public.professions.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    text text
);


ALTER TABLE public.questions OWNER TO shokan;

--
-- Name: questions_categories_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.questions_categories_lnk (
    id integer NOT NULL,
    question_id integer,
    category_id integer,
    category_ord double precision
);


ALTER TABLE public.questions_categories_lnk OWNER TO shokan;

--
-- Name: questions_categories_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.questions_categories_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_categories_lnk_id_seq OWNER TO shokan;

--
-- Name: questions_categories_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.questions_categories_lnk_id_seq OWNED BY public.questions_categories_lnk.id;


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_id_seq OWNER TO shokan;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: questions_statics; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.questions_statics (
    id integer NOT NULL,
    document_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    title text,
    heading text,
    paragraph text,
    placeholder text
);


ALTER TABLE public.questions_statics OWNER TO shokan;

--
-- Name: questions_statics_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.questions_statics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_statics_id_seq OWNER TO shokan;

--
-- Name: questions_statics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.questions_statics_id_seq OWNED BY public.questions_statics.id;


--
-- Name: reseptions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.reseptions (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    subtitle character varying(255),
    year bigint,
    days character varying(255),
    consult text,
    phone bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    asked character varying(255),
    questions text,
    national_exam character varying(255),
    testing_exam text
);


ALTER TABLE public.reseptions OWNER TO shokan;

--
-- Name: reseptions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.reseptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reseptions_id_seq OWNER TO shokan;

--
-- Name: reseptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.reseptions_id_seq OWNED BY public.reseptions.id;


--
-- Name: static_articles; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.static_articles (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.static_articles OWNER TO shokan;

--
-- Name: static_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.static_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.static_articles_id_seq OWNER TO shokan;

--
-- Name: static_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.static_articles_id_seq OWNED BY public.static_articles.id;


--
-- Name: static_attributes; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.static_attributes (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    subtitle text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.static_attributes OWNER TO shokan;

--
-- Name: static_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.static_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.static_attributes_id_seq OWNER TO shokan;

--
-- Name: static_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.static_attributes_id_seq OWNED BY public.static_attributes.id;


--
-- Name: static_infos; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.static_infos (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.static_infos OWNER TO shokan;

--
-- Name: static_infos_cmps; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.static_infos_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.static_infos_cmps OWNER TO shokan;

--
-- Name: static_infos_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.static_infos_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.static_infos_cmps_id_seq OWNER TO shokan;

--
-- Name: static_infos_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.static_infos_cmps_id_seq OWNED BY public.static_infos_cmps.id;


--
-- Name: static_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.static_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.static_infos_id_seq OWNER TO shokan;

--
-- Name: static_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.static_infos_id_seq OWNED BY public.static_infos.id;


--
-- Name: static_programms; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.static_programms (
    id integer NOT NULL,
    document_id character varying(255),
    title text,
    more text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.static_programms OWNER TO shokan;

--
-- Name: static_programms_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.static_programms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.static_programms_id_seq OWNER TO shokan;

--
-- Name: static_programms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.static_programms_id_seq OWNED BY public.static_programms.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO shokan;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO shokan;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO shokan;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO shokan;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO shokan;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO shokan;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO shokan;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    kind character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO shokan;

--
-- Name: strapi_api_tokens_admin_user_owner_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_api_tokens_admin_user_owner_lnk (
    id integer NOT NULL,
    api_token_id integer,
    user_id integer,
    api_token_ord double precision
);


ALTER TABLE public.strapi_api_tokens_admin_user_owner_lnk OWNER TO shokan;

--
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq OWNED BY public.strapi_api_tokens_admin_user_owner_lnk.id;


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO shokan;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO shokan;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO shokan;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO shokan;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO shokan;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO shokan;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO shokan;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO shokan;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO shokan;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO shokan;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO shokan;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO shokan;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO shokan;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO shokan;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO shokan;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO shokan;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO shokan;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO shokan;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO shokan;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO shokan;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO shokan;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO shokan;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO shokan;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO shokan;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO shokan;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO shokan;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO shokan;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO shokan;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO shokan;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO shokan;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO shokan;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO shokan;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO shokan;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO shokan;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO shokan;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO shokan;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO shokan;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO shokan;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO shokan;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO shokan;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO shokan;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO shokan;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO shokan;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO shokan;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO shokan;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: shokan
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO shokan;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: shokan
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO shokan;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shokan
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_api_token_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_api_token_lnk_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: admissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admissions ALTER COLUMN id SET DEFAULT nextval('public.admissions_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: components_shared_components id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_components_id_seq'::regclass);


--
-- Name: components_shared_items id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_items ALTER COLUMN id SET DEFAULT nextval('public.components_shared_items_id_seq'::regclass);


--
-- Name: components_shared_links id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_links ALTER COLUMN id SET DEFAULT nextval('public.components_shared_links_id_seq'::regclass);


--
-- Name: components_shared_magistrs id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_magistrs ALTER COLUMN id SET DEFAULT nextval('public.components_shared_magistrs_id_seq'::regclass);


--
-- Name: components_shared_titles id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_titles ALTER COLUMN id SET DEFAULT nextval('public.components_shared_titles_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: contacts_comissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts_comissions ALTER COLUMN id SET DEFAULT nextval('public.contacts_comissions_id_seq'::regclass);


--
-- Name: docs id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.docs ALTER COLUMN id SET DEFAULT nextval('public.docs_id_seq'::regclass);


--
-- Name: errors id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.errors ALTER COLUMN id SET DEFAULT nextval('public.errors_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: graduates id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.graduates ALTER COLUMN id SET DEFAULT nextval('public.graduates_id_seq'::regclass);


--
-- Name: heads id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.heads ALTER COLUMN id SET DEFAULT nextval('public.heads_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: info_admissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions ALTER COLUMN id SET DEFAULT nextval('public.info_admissions_id_seq'::regclass);


--
-- Name: info_admissions_cmps id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions_cmps ALTER COLUMN id SET DEFAULT nextval('public.info_admissions_cmps_id_seq'::regclass);


--
-- Name: links id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- Name: list_documents id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents ALTER COLUMN id SET DEFAULT nextval('public.list_documents_id_seq'::regclass);


--
-- Name: list_documents_cmps id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents_cmps ALTER COLUMN id SET DEFAULT nextval('public.list_documents_cmps_id_seq'::regclass);


--
-- Name: news_articles id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.news_articles ALTER COLUMN id SET DEFAULT nextval('public.news_articles_id_seq'::regclass);


--
-- Name: professions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.professions ALTER COLUMN id SET DEFAULT nextval('public.professions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: questions_categories_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_categories_lnk ALTER COLUMN id SET DEFAULT nextval('public.questions_categories_lnk_id_seq'::regclass);


--
-- Name: questions_statics id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_statics ALTER COLUMN id SET DEFAULT nextval('public.questions_statics_id_seq'::regclass);


--
-- Name: reseptions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.reseptions ALTER COLUMN id SET DEFAULT nextval('public.reseptions_id_seq'::regclass);


--
-- Name: static_articles id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_articles ALTER COLUMN id SET DEFAULT nextval('public.static_articles_id_seq'::regclass);


--
-- Name: static_attributes id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_attributes ALTER COLUMN id SET DEFAULT nextval('public.static_attributes_id_seq'::regclass);


--
-- Name: static_infos id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos ALTER COLUMN id SET DEFAULT nextval('public.static_infos_id_seq'::regclass);


--
-- Name: static_infos_cmps id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos_cmps ALTER COLUMN id SET DEFAULT nextval('public.static_infos_cmps_id_seq'::regclass);


--
-- Name: static_programms id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_programms ALTER COLUMN id SET DEFAULT nextval('public.static_programms_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_admin_user_owner_lnk_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
279	zp0hwpavks85pyg0x9n529g5	plugin::content-manager.explorer.create	{}	api::doc.doc	{"fields": ["text", "url"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:18:21.008	2026-05-29 13:18:21.008	2026-05-29 13:18:21.008	\N	\N	\N
2	t0syiz1btkxxuxgszhe9zhx0	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	[]	2026-05-22 15:50:01.537	2026-05-22 15:50:01.537	2026-05-22 15:50:01.537	\N	\N	\N
3	jl80yvq7n61ro4tzcdgmn4n0	plugin::content-manager.explorer.create	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	[]	2026-05-22 15:50:01.539	2026-05-22 15:50:01.539	2026-05-22 15:50:01.539	\N	\N	\N
280	wmabsxix8rm4s4z29s34h4st	plugin::content-manager.explorer.read	{}	api::doc.doc	{"fields": ["text", "url"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:18:21.013	2026-05-29 13:18:21.013	2026-05-29 13:18:21.014	\N	\N	\N
5	jhtn540fvg23bwveppip8sjy	plugin::content-manager.explorer.create	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"]}	[]	2026-05-22 15:50:01.544	2026-05-22 15:50:01.544	2026-05-22 15:50:01.544	\N	\N	\N
281	brnxbq0ok6vns75hgrrocpb6	plugin::content-manager.explorer.update	{}	api::doc.doc	{"fields": ["text", "url"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:18:21.016	2026-05-29 13:18:21.016	2026-05-29 13:18:21.017	\N	\N	\N
282	dbrjq6j0es66jgvzeytidl9s	plugin::content-manager.explorer.delete	{}	api::doc.doc	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:18:21.02	2026-05-29 13:18:21.02	2026-05-29 13:18:21.02	\N	\N	\N
283	s75i7epfkls0sx7cpl861acp	plugin::content-manager.explorer.publish	{}	api::doc.doc	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:18:21.022	2026-05-29 13:18:21.022	2026-05-29 13:18:21.023	\N	\N	\N
11	ulo4flwwi62z67tklatdhlv0	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	[]	2026-05-22 15:50:01.557	2026-05-22 15:50:01.557	2026-05-22 15:50:01.557	\N	\N	\N
12	vqkfno16rkvqvicbxgqo6acg	plugin::content-manager.explorer.read	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	[]	2026-05-22 15:50:01.559	2026-05-22 15:50:01.559	2026-05-22 15:50:01.559	\N	\N	\N
14	dqbvcoxtttn81uyt8nc35nj7	plugin::content-manager.explorer.read	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"]}	[]	2026-05-22 15:50:01.563	2026-05-22 15:50:01.563	2026-05-22 15:50:01.563	\N	\N	\N
302	wpoenkaoa234no9u576fw7ha	plugin::content-manager.explorer.delete	{}	api::error.error	{"locales": ["en", "ru", "kk"]}	[]	2026-06-01 15:39:41.705	2026-06-01 15:39:41.705	2026-06-01 15:39:41.706	\N	\N	\N
303	n3xhug3xe67c8own6l3g1wld	plugin::content-manager.explorer.publish	{}	api::error.error	{"locales": ["en", "ru", "kk"]}	[]	2026-06-01 15:39:41.708	2026-06-01 15:39:41.708	2026-06-01 15:39:41.708	\N	\N	\N
20	yp8uk2kxu6hhyymfqn43kyke	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	[]	2026-05-22 15:50:01.575	2026-05-22 15:50:01.575	2026-05-22 15:50:01.575	\N	\N	\N
21	q85vr8805i6uok1et0ov33ok	plugin::content-manager.explorer.update	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	[]	2026-05-22 15:50:01.577	2026-05-22 15:50:01.577	2026-05-22 15:50:01.577	\N	\N	\N
278	dyphdk8nc0ly9pngd8l4t30u	plugin::content-manager.explorer.publish	{}	api::reseption.reseption	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.142	2026-05-29 13:12:38.142	2026-05-29 13:12:38.142	\N	\N	\N
23	q5ofrin4mw8vuzlpy9jmda26	plugin::content-manager.explorer.update	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"]}	[]	2026-05-22 15:50:01.582	2026-05-22 15:50:01.582	2026-05-22 15:50:01.582	\N	\N	\N
29	id6hs3b7p0afp5fm9sw4ppzy	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2026-05-22 15:50:01.594	2026-05-22 15:50:01.594	2026-05-22 15:50:01.594	\N	\N	\N
30	j7vaeqi9k6g989ogopc5mvln	plugin::content-manager.explorer.delete	{}	api::link.link	{}	[]	2026-05-22 15:50:01.598	2026-05-22 15:50:01.598	2026-05-22 15:50:01.598	\N	\N	\N
354	kzeokjittbq973p3cokra0ns	plugin::content-manager.explorer.delete	{}	api::question.question	{"locales": ["en", "ru", "kk"]}	[]	2026-06-03 13:47:41.884	2026-06-03 13:47:41.884	2026-06-03 13:47:41.884	\N	\N	\N
355	ughn0bd3vy6ppjhqzpabmft4	plugin::content-manager.explorer.publish	{}	api::question.question	{"locales": ["en", "ru", "kk"]}	[]	2026-06-03 13:47:41.886	2026-06-03 13:47:41.886	2026-06-03 13:47:41.886	\N	\N	\N
284	i8ejkhrji5qekc9yc3ynzmf2	plugin::content-manager.explorer.create	{}	api::head.head	{"fields": ["heading"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:32:23.871	2026-05-29 13:32:23.871	2026-05-29 13:32:23.872	\N	\N	\N
285	tu6hfo6osrbpcyyq0pgpbk1q	plugin::content-manager.explorer.read	{}	api::head.head	{"fields": ["heading"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:32:23.881	2026-05-29 13:32:23.881	2026-05-29 13:32:23.881	\N	\N	\N
286	vp8lbsgl9jzb3uj976agn9w8	plugin::content-manager.explorer.update	{}	api::head.head	{"fields": ["heading"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:32:23.886	2026-05-29 13:32:23.886	2026-05-29 13:32:23.887	\N	\N	\N
287	btay2oirxqgoc4z7bn9x3409	plugin::content-manager.explorer.delete	{}	api::head.head	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:32:23.891	2026-05-29 13:32:23.891	2026-05-29 13:32:23.892	\N	\N	\N
288	mq9wznkgwxl7tkzo2gfnuyej	plugin::content-manager.explorer.publish	{}	api::head.head	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:32:23.895	2026-05-29 13:32:23.895	2026-05-29 13:32:23.896	\N	\N	\N
38	u8xccb1ciq1dohxdsme5wzfr	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2026-05-22 15:50:01.615	2026-05-22 15:50:01.615	2026-05-22 15:50:01.615	\N	\N	\N
39	c6wcu0t17ljn4dfy65xn4sru	plugin::content-manager.explorer.publish	{}	api::link.link	{}	[]	2026-05-22 15:50:01.617	2026-05-22 15:50:01.617	2026-05-22 15:50:01.617	\N	\N	\N
396	lr7x2zhj1tbd4gwn8wzxp0zt	plugin::content-manager.explorer.create	{}	api::question.question	{"fields": ["title", "categories", "text"], "locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:25:32.15	2026-06-03 14:25:32.15	2026-06-03 14:25:32.15	\N	\N	\N
397	rgixr6lsx0lpywhu3862r2pm	plugin::content-manager.explorer.read	{}	api::question.question	{"fields": ["title", "categories", "text"], "locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:25:32.155	2026-06-03 14:25:32.155	2026-06-03 14:25:32.155	\N	\N	\N
398	ljn6s9kbockhdcgttz07v6pq	plugin::content-manager.explorer.update	{}	api::question.question	{"fields": ["title", "categories", "text"], "locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:25:32.157	2026-06-03 14:25:32.157	2026-06-03 14:25:32.158	\N	\N	\N
46	s4fxnemk2jmdr13sihzhm35b	plugin::upload.read	{}	\N	{}	[]	2026-05-22 15:50:01.633	2026-05-22 15:50:01.633	2026-05-22 15:50:01.633	\N	\N	\N
47	grqgb4kivbqd3tjl2bqu9xj6	plugin::upload.configure-view	{}	\N	{}	[]	2026-05-22 15:50:01.636	2026-05-22 15:50:01.636	2026-05-22 15:50:01.636	\N	\N	\N
48	hi6z3rxnf0vpa16ilsnpbc4d	plugin::upload.assets.create	{}	\N	{}	[]	2026-05-22 15:50:01.638	2026-05-22 15:50:01.638	2026-05-22 15:50:01.638	\N	\N	\N
49	n9xfte1zgj9j1sra2vcli5oz	plugin::upload.assets.update	{}	\N	{}	[]	2026-05-22 15:50:01.64	2026-05-22 15:50:01.64	2026-05-22 15:50:01.64	\N	\N	\N
50	kq1peyowfzdo6ogfz9kgt81y	plugin::upload.assets.download	{}	\N	{}	[]	2026-05-22 15:50:01.642	2026-05-22 15:50:01.642	2026-05-22 15:50:01.642	\N	\N	\N
51	hfwb4ldk79lijn9htej12n8h	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-05-22 15:50:01.644	2026-05-22 15:50:01.644	2026-05-22 15:50:01.644	\N	\N	\N
53	iq180flfps8ihryi0o9el8f0	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	["admin::is-creator"]	2026-05-22 15:50:01.651	2026-05-22 15:50:01.651	2026-05-22 15:50:01.651	\N	\N	\N
54	fkzsex39i8vnegd8bippiea5	plugin::content-manager.explorer.create	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	["admin::is-creator"]	2026-05-22 15:50:01.653	2026-05-22 15:50:01.653	2026-05-22 15:50:01.653	\N	\N	\N
56	svtpe5hs9a3e1vkdxdh10e4q	plugin::content-manager.explorer.create	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"]}	["admin::is-creator"]	2026-05-22 15:50:01.657	2026-05-22 15:50:01.657	2026-05-22 15:50:01.657	\N	\N	\N
62	zi97xot3uf0tkvwyy1e4d551	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	["admin::is-creator"]	2026-05-22 15:50:01.67	2026-05-22 15:50:01.67	2026-05-22 15:50:01.67	\N	\N	\N
63	omyet766adjm8cft4zqstqnv	plugin::content-manager.explorer.read	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	["admin::is-creator"]	2026-05-22 15:50:01.672	2026-05-22 15:50:01.672	2026-05-22 15:50:01.672	\N	\N	\N
65	snznxps2kr7c2f3fsq9y7979	plugin::content-manager.explorer.read	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"]}	["admin::is-creator"]	2026-05-22 15:50:01.676	2026-05-22 15:50:01.676	2026-05-22 15:50:01.676	\N	\N	\N
399	h8zgjiy5e428byfgvzmohvrr	plugin::content-manager.explorer.create	{}	api::error.error	{"fields": ["title", "subtitle", "home", "again"], "locales": ["en", "ru", "kk"]}	[]	2026-06-04 12:36:40.662	2026-06-04 12:36:40.662	2026-06-04 12:36:40.662	\N	\N	\N
400	j2h0zupp8k1v7e1cnoog6yep	plugin::content-manager.explorer.read	{}	api::error.error	{"fields": ["title", "subtitle", "home", "again"], "locales": ["en", "ru", "kk"]}	[]	2026-06-04 12:36:40.669	2026-06-04 12:36:40.669	2026-06-04 12:36:40.669	\N	\N	\N
71	x5zvvre02xi77jnd8yybw3cu	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	["admin::is-creator"]	2026-05-22 15:50:01.689	2026-05-22 15:50:01.689	2026-05-22 15:50:01.689	\N	\N	\N
72	kudwp8w8ds3ril5wra26ikxe	plugin::content-manager.explorer.update	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	["admin::is-creator"]	2026-05-22 15:50:01.691	2026-05-22 15:50:01.691	2026-05-22 15:50:01.691	\N	\N	\N
401	ging1g387cpwr3d4bi3h7o62	plugin::content-manager.explorer.update	{}	api::error.error	{"fields": ["title", "subtitle", "home", "again"], "locales": ["en", "ru", "kk"]}	[]	2026-06-04 12:36:40.671	2026-06-04 12:36:40.671	2026-06-04 12:36:40.672	\N	\N	\N
74	almtr71jvi58n4l2taob93w7	plugin::content-manager.explorer.update	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"]}	["admin::is-creator"]	2026-05-22 15:50:01.695	2026-05-22 15:50:01.695	2026-05-22 15:50:01.695	\N	\N	\N
80	u9q7khbqgmp7iu6dnrnx3wp7	plugin::content-manager.explorer.delete	{}	api::global.global	{}	["admin::is-creator"]	2026-05-22 15:50:01.707	2026-05-22 15:50:01.707	2026-05-22 15:50:01.707	\N	\N	\N
81	rwcpkz2r3l7rjcijhk34sqwi	plugin::content-manager.explorer.delete	{}	api::link.link	{}	["admin::is-creator"]	2026-05-22 15:50:01.709	2026-05-22 15:50:01.709	2026-05-22 15:50:01.709	\N	\N	\N
88	fbztzo3f4i5rciatdy6l2snx	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-05-22 15:50:01.723	2026-05-22 15:50:01.723	2026-05-22 15:50:01.723	\N	\N	\N
89	imz5imau8d3y7sfbgeb4775s	plugin::upload.configure-view	{}	\N	{}	[]	2026-05-22 15:50:01.725	2026-05-22 15:50:01.725	2026-05-22 15:50:01.725	\N	\N	\N
90	s1kpep1zh690veq67zv12hv3	plugin::upload.assets.create	{}	\N	{}	[]	2026-05-22 15:50:01.727	2026-05-22 15:50:01.727	2026-05-22 15:50:01.727	\N	\N	\N
91	hs0q7z9ua3cbdvfnvjtaxa93	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-05-22 15:50:01.729	2026-05-22 15:50:01.729	2026-05-22 15:50:01.729	\N	\N	\N
92	d9afulyfzworqzpc9kvjgi2m	plugin::upload.assets.download	{}	\N	{}	[]	2026-05-22 15:50:01.731	2026-05-22 15:50:01.731	2026-05-22 15:50:01.731	\N	\N	\N
93	nx4j7xffcbsn4dnabickohpg	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-05-22 15:50:01.733	2026-05-22 15:50:01.733	2026-05-22 15:50:01.733	\N	\N	\N
94	a327z4lp3kz978ij7kbskklt	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-05-22 15:50:01.763	2026-05-22 15:50:01.763	2026-05-22 15:50:01.763	\N	\N	\N
96	hafj6enx36tv294g2mi8jog7	plugin::content-manager.explorer.create	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	[]	2026-05-22 15:50:01.768	2026-05-22 15:50:01.768	2026-05-22 15:50:01.768	\N	\N	\N
97	n5ihizxl2o9pzoezuh5s2chh	plugin::content-manager.explorer.create	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	[]	2026-05-22 15:50:01.77	2026-05-22 15:50:01.77	2026-05-22 15:50:01.77	\N	\N	\N
343	i8aaa2zekinj84ns7irvewki	plugin::content-manager.explorer.create	{}	api::questions-static.questions-static	{"fields": ["title", "heading", "paragraph", "placeholder"]}	[]	2026-06-03 12:23:47.626	2026-06-03 12:23:47.626	2026-06-03 12:23:47.627	\N	\N	\N
344	dbikd3jv3mgmksojxxn0h29l	plugin::content-manager.explorer.read	{}	api::questions-static.questions-static	{"fields": ["title", "heading", "paragraph", "placeholder"]}	[]	2026-06-03 12:23:47.631	2026-06-03 12:23:47.631	2026-06-03 12:23:47.632	\N	\N	\N
345	zjomk4va2g32xqiepjjnejit	plugin::content-manager.explorer.update	{}	api::questions-static.questions-static	{"fields": ["title", "heading", "paragraph", "placeholder"]}	[]	2026-06-03 12:23:47.634	2026-06-03 12:23:47.634	2026-06-03 12:23:47.635	\N	\N	\N
388	qt430k55yt7ibstdynzof0oa	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["title"], "locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:02:32.133	2026-06-03 14:02:32.133	2026-06-03 14:02:32.133	\N	\N	\N
389	wo4lnpsbuv4t5az8yhrvlqes	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["title"], "locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:02:32.139	2026-06-03 14:02:32.139	2026-06-03 14:02:32.139	\N	\N	\N
390	zg1e1e7e22y3rzr5l6leaivz	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["title"], "locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:02:32.142	2026-06-03 14:02:32.142	2026-06-03 14:02:32.142	\N	\N	\N
391	tirkwqmgin5aw5iemr2do7t6	plugin::content-manager.explorer.delete	{}	api::category.category	{"locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:02:32.144	2026-06-03 14:02:32.144	2026-06-03 14:02:32.144	\N	\N	\N
392	thrznmocdlg042argax96wpd	plugin::content-manager.explorer.publish	{}	api::category.category	{"locales": ["en", "ru", "kk"]}	[]	2026-06-03 14:02:32.147	2026-06-03 14:02:32.147	2026-06-03 14:02:32.147	\N	\N	\N
294	i8i9l7687v8zrnixpdteee8s	plugin::content-manager.explorer.create	{}	api::graduate.graduate	{"fields": ["graduates"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 16:12:41.771	2026-05-29 16:12:41.771	2026-05-29 16:12:41.771	\N	\N	\N
104	g17ge63jv0kavcfl7e1tdmj6	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-05-22 15:50:01.785	2026-05-22 15:50:01.785	2026-05-22 15:50:01.785	\N	\N	\N
295	d8k28ca53v1bqk6cuumx2by8	plugin::content-manager.explorer.read	{}	api::graduate.graduate	{"fields": ["graduates"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 16:12:41.777	2026-05-29 16:12:41.777	2026-05-29 16:12:41.777	\N	\N	\N
106	rcqd677bwzciqwgin5g5k83c	plugin::content-manager.explorer.read	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	[]	2026-05-22 15:50:01.788	2026-05-22 15:50:01.788	2026-05-22 15:50:01.788	\N	\N	\N
107	nwymmeajonxe2e4eqc3kevxv	plugin::content-manager.explorer.read	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	[]	2026-05-22 15:50:01.79	2026-05-22 15:50:01.79	2026-05-22 15:50:01.79	\N	\N	\N
296	csyt2ux9gjfp36pfxnvri34o	plugin::content-manager.explorer.update	{}	api::graduate.graduate	{"fields": ["graduates"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 16:12:41.78	2026-05-29 16:12:41.78	2026-05-29 16:12:41.78	\N	\N	\N
297	lepkyesysru2cyiofts0jvz9	plugin::content-manager.explorer.delete	{}	api::graduate.graduate	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 16:12:41.783	2026-05-29 16:12:41.783	2026-05-29 16:12:41.783	\N	\N	\N
298	ddmgedinaf5ipddrybxsjc5z	plugin::content-manager.explorer.publish	{}	api::graduate.graduate	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 16:12:41.786	2026-05-29 16:12:41.786	2026-05-29 16:12:41.786	\N	\N	\N
114	u2zul77nllsrplcg5qjspzba	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-05-22 15:50:01.804	2026-05-22 15:50:01.804	2026-05-22 15:50:01.804	\N	\N	\N
405	hu9iwvzkmnttsc9lqp7l24qo	plugin::content-manager.explorer.delete	{}	api::info-admission.info-admission	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 13:17:12.472	2026-06-10 13:17:12.472	2026-06-10 13:17:12.472	\N	\N	\N
116	vdqy14w4bqvno6urausifq8s	plugin::content-manager.explorer.update	{}	api::global.global	{"fields": ["siteName", "favicon", "siteDescription"]}	[]	2026-05-22 15:50:01.808	2026-05-22 15:50:01.808	2026-05-22 15:50:01.808	\N	\N	\N
117	oe2tsqryg7bx7nptjgxawkc3	plugin::content-manager.explorer.update	{}	api::link.link	{"fields": ["toogis", "instagram", "youtube", "linkedin", "facebook", "tiktok"]}	[]	2026-05-22 15:50:01.81	2026-05-22 15:50:01.81	2026-05-22 15:50:01.81	\N	\N	\N
406	stfcmxwby6xe0saku83ppw26	plugin::content-manager.explorer.publish	{}	api::info-admission.info-admission	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 13:17:12.475	2026-06-10 13:17:12.475	2026-06-10 13:17:12.475	\N	\N	\N
335	suyxh2r0w37otmgxpusawkod	plugin::content-manager.explorer.delete	{}	api::questions-static.questions-static	{}	[]	2026-06-03 12:21:31.098	2026-06-03 12:21:31.098	2026-06-03 12:21:31.098	\N	\N	\N
336	jacpdprlkf95ok3qd543lkml	plugin::content-manager.explorer.publish	{}	api::questions-static.questions-static	{}	[]	2026-06-03 12:21:31.1	2026-06-03 12:21:31.1	2026-06-03 12:21:31.101	\N	\N	\N
124	jco2mnxtsya7it511fua7t2u	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-05-22 15:50:01.824	2026-05-22 15:50:01.824	2026-05-22 15:50:01.824	\N	\N	\N
126	tqig69q1txlcs4v1sevvf7c2	plugin::content-manager.explorer.delete	{}	api::global.global	{}	[]	2026-05-22 15:50:01.829	2026-05-22 15:50:01.829	2026-05-22 15:50:01.829	\N	\N	\N
127	y89h18g93tmwpwktsko64n78	plugin::content-manager.explorer.delete	{}	api::link.link	{}	[]	2026-05-22 15:50:01.831	2026-05-22 15:50:01.831	2026-05-22 15:50:01.831	\N	\N	\N
134	kl39ho1rn5h5vbf6xj1n5dmt	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-05-22 15:50:01.844	2026-05-22 15:50:01.844	2026-05-22 15:50:01.844	\N	\N	\N
407	swb8cgilgknjwvvtzyih4p5h	plugin::content-manager.explorer.create	{}	api::info-admission.info-admission	{"fields": ["title", "subtitle", "links.text", "links.url"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 13:18:10.563	2026-06-10 13:18:10.563	2026-06-10 13:18:10.564	\N	\N	\N
136	wp1b16020oyxmnuk88x2mn9v	plugin::content-manager.explorer.publish	{}	api::global.global	{}	[]	2026-05-22 15:50:01.848	2026-05-22 15:50:01.848	2026-05-22 15:50:01.848	\N	\N	\N
137	tkxt4xcdbfhmvzcpyzx49coz	plugin::content-manager.explorer.publish	{}	api::link.link	{}	[]	2026-05-22 15:50:01.85	2026-05-22 15:50:01.85	2026-05-22 15:50:01.85	\N	\N	\N
408	wx8x9uvxev090pl37uelaugu	plugin::content-manager.explorer.read	{}	api::info-admission.info-admission	{"fields": ["title", "subtitle", "links.text", "links.url"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 13:18:10.568	2026-06-10 13:18:10.568	2026-06-10 13:18:10.568	\N	\N	\N
409	ww21klk6x7vpyq7o9nfiqnkp	plugin::content-manager.explorer.update	{}	api::info-admission.info-admission	{"fields": ["title", "subtitle", "links.text", "links.url"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 13:18:10.571	2026-06-10 13:18:10.571	2026-06-10 13:18:10.571	\N	\N	\N
144	il43wdn4ev5dipsubm0f6czn	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-05-22 15:50:01.864	2026-05-22 15:50:01.864	2026-05-22 15:50:01.864	\N	\N	\N
145	ecbwgcyzhakom0esmy0oln96	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-05-22 15:50:01.865	2026-05-22 15:50:01.865	2026-05-22 15:50:01.865	\N	\N	\N
146	q4ylaed3z92xs31xl4kz6mwg	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-05-22 15:50:01.867	2026-05-22 15:50:01.867	2026-05-22 15:50:01.867	\N	\N	\N
147	g2red6ov0iutv4qit482zqta	plugin::content-type-builder.read	{}	\N	{}	[]	2026-05-22 15:50:01.869	2026-05-22 15:50:01.869	2026-05-22 15:50:01.869	\N	\N	\N
148	p2mhd9y06cs1gbcgexlze0vh	plugin::email.settings.read	{}	\N	{}	[]	2026-05-22 15:50:01.871	2026-05-22 15:50:01.871	2026-05-22 15:50:01.871	\N	\N	\N
149	c7okqexrqr8p2t37p9iuhthh	plugin::upload.read	{}	\N	{}	[]	2026-05-22 15:50:01.873	2026-05-22 15:50:01.873	2026-05-22 15:50:01.873	\N	\N	\N
150	z4oq3qq1h5itw45qfl8wx4qf	plugin::upload.assets.create	{}	\N	{}	[]	2026-05-22 15:50:01.874	2026-05-22 15:50:01.874	2026-05-22 15:50:01.875	\N	\N	\N
151	gx395wv4ficbg09oa94zkuhi	plugin::upload.assets.update	{}	\N	{}	[]	2026-05-22 15:50:01.876	2026-05-22 15:50:01.876	2026-05-22 15:50:01.876	\N	\N	\N
152	lkqaamihrlpmyccfinyaaifd	plugin::upload.assets.download	{}	\N	{}	[]	2026-05-22 15:50:01.878	2026-05-22 15:50:01.878	2026-05-22 15:50:01.878	\N	\N	\N
153	o1kni8afelmpf2xqh4axogmc	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-05-22 15:50:01.88	2026-05-22 15:50:01.88	2026-05-22 15:50:01.88	\N	\N	\N
154	pvvgpmjwm8huvp5hqu5km04x	plugin::upload.configure-view	{}	\N	{}	[]	2026-05-22 15:50:01.882	2026-05-22 15:50:01.882	2026-05-22 15:50:01.882	\N	\N	\N
155	w7zliyhu3uuagcc5mi2cbsdv	plugin::upload.settings.read	{}	\N	{}	[]	2026-05-22 15:50:01.884	2026-05-22 15:50:01.884	2026-05-22 15:50:01.884	\N	\N	\N
156	o19d0wca9t04psfswnvvjfdk	plugin::i18n.locale.create	{}	\N	{}	[]	2026-05-22 15:50:01.886	2026-05-22 15:50:01.886	2026-05-22 15:50:01.886	\N	\N	\N
157	p67rrtnciwpvl6ahsy8vfczv	plugin::i18n.locale.read	{}	\N	{}	[]	2026-05-22 15:50:01.888	2026-05-22 15:50:01.888	2026-05-22 15:50:01.888	\N	\N	\N
158	fnd522w9jp8wvocscwsqksfu	plugin::i18n.locale.update	{}	\N	{}	[]	2026-05-22 15:50:01.89	2026-05-22 15:50:01.89	2026-05-22 15:50:01.89	\N	\N	\N
159	anbabni25ocuuesfx0han8qy	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-05-22 15:50:01.892	2026-05-22 15:50:01.892	2026-05-22 15:50:01.892	\N	\N	\N
160	zq9tkx504kg0htgeaqanosaq	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-05-22 15:50:01.894	2026-05-22 15:50:01.894	2026-05-22 15:50:01.894	\N	\N	\N
161	synkfd70nl3bqr0vckg03ra4	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-05-22 15:50:01.896	2026-05-22 15:50:01.896	2026-05-22 15:50:01.896	\N	\N	\N
162	om3vdf5xnb2de7vxxb4f3gc9	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-05-22 15:50:01.897	2026-05-22 15:50:01.897	2026-05-22 15:50:01.897	\N	\N	\N
163	vh2txubjlhwc4pthom1c0gey	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-05-22 15:50:01.899	2026-05-22 15:50:01.899	2026-05-22 15:50:01.9	\N	\N	\N
164	rpvdrljnyx0hlm06uga559rj	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-05-22 15:50:01.901	2026-05-22 15:50:01.901	2026-05-22 15:50:01.901	\N	\N	\N
165	y68uuejze6vd5uotzase8qbk	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-05-22 15:50:01.903	2026-05-22 15:50:01.903	2026-05-22 15:50:01.903	\N	\N	\N
166	ibysh1eegbq49zyt0u6rl2dj	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-05-22 15:50:01.905	2026-05-22 15:50:01.905	2026-05-22 15:50:01.905	\N	\N	\N
167	vfj9ctohtsq41iie51zrgh1d	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-05-22 15:50:01.907	2026-05-22 15:50:01.907	2026-05-22 15:50:01.907	\N	\N	\N
168	pffei47m8ablvuh8wi3tvm8h	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-05-22 15:50:01.909	2026-05-22 15:50:01.909	2026-05-22 15:50:01.909	\N	\N	\N
169	r5jq1bmkls21y8xwx6yaaze8	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-05-22 15:50:01.911	2026-05-22 15:50:01.911	2026-05-22 15:50:01.911	\N	\N	\N
170	fq8s061cttkd78yb1vawwman	admin::marketplace.read	{}	\N	{}	[]	2026-05-22 15:50:01.914	2026-05-22 15:50:01.914	2026-05-22 15:50:01.914	\N	\N	\N
171	rn7uisv7y6a1u61bujn0hm34	admin::webhooks.create	{}	\N	{}	[]	2026-05-22 15:50:01.916	2026-05-22 15:50:01.916	2026-05-22 15:50:01.916	\N	\N	\N
172	py4l0jxbr2kdn3uge4854erp	admin::webhooks.read	{}	\N	{}	[]	2026-05-22 15:50:01.918	2026-05-22 15:50:01.918	2026-05-22 15:50:01.918	\N	\N	\N
173	ep1nbo28ujevl3mzd4cyb30g	admin::webhooks.update	{}	\N	{}	[]	2026-05-22 15:50:01.92	2026-05-22 15:50:01.92	2026-05-22 15:50:01.92	\N	\N	\N
174	kbgbhkf2k4o16s54l436bw6i	admin::webhooks.delete	{}	\N	{}	[]	2026-05-22 15:50:01.922	2026-05-22 15:50:01.922	2026-05-22 15:50:01.922	\N	\N	\N
175	vf8hud639c8wxu1tfdbxn46n	admin::users.create	{}	\N	{}	[]	2026-05-22 15:50:01.924	2026-05-22 15:50:01.924	2026-05-22 15:50:01.924	\N	\N	\N
176	mtfkreot9ir62nh5t1tetfxj	admin::users.read	{}	\N	{}	[]	2026-05-22 15:50:01.926	2026-05-22 15:50:01.926	2026-05-22 15:50:01.926	\N	\N	\N
177	kzo0b6p0i7q9d9l7qllpiq1i	admin::users.update	{}	\N	{}	[]	2026-05-22 15:50:01.928	2026-05-22 15:50:01.928	2026-05-22 15:50:01.928	\N	\N	\N
178	ctt1hbbsqqidgi8rn7m9etq8	admin::users.delete	{}	\N	{}	[]	2026-05-22 15:50:01.93	2026-05-22 15:50:01.93	2026-05-22 15:50:01.93	\N	\N	\N
179	q0eexvrxpn5kon96w5vlchuw	admin::roles.create	{}	\N	{}	[]	2026-05-22 15:50:01.931	2026-05-22 15:50:01.931	2026-05-22 15:50:01.931	\N	\N	\N
180	v35vto2yo7gpyy7qa98p8brv	admin::roles.read	{}	\N	{}	[]	2026-05-22 15:50:01.933	2026-05-22 15:50:01.933	2026-05-22 15:50:01.933	\N	\N	\N
181	e5sp8mjtm9nhrlc9rlm2xptk	admin::roles.update	{}	\N	{}	[]	2026-05-22 15:50:01.935	2026-05-22 15:50:01.935	2026-05-22 15:50:01.935	\N	\N	\N
182	u52avls4qyrztok6wgn1wwek	admin::roles.delete	{}	\N	{}	[]	2026-05-22 15:50:01.937	2026-05-22 15:50:01.937	2026-05-22 15:50:01.937	\N	\N	\N
183	okeuqjmvb3vnijth51fu0nhr	admin::api-tokens.access	{}	\N	{}	[]	2026-05-22 15:50:01.939	2026-05-22 15:50:01.939	2026-05-22 15:50:01.939	\N	\N	\N
184	krl9anvjccpvt2beh5tzayyq	admin::admin-tokens.access	{}	\N	{}	[]	2026-05-22 15:50:01.942	2026-05-22 15:50:01.942	2026-05-22 15:50:01.942	\N	\N	\N
185	hg54zsgwvumbc4dyjrniw6ci	admin::admin-tokens.create	{}	\N	{}	[]	2026-05-22 15:50:01.943	2026-05-22 15:50:01.943	2026-05-22 15:50:01.943	\N	\N	\N
186	l1oejl7q69rofk79j7iowv8p	admin::admin-tokens.read	{}	\N	{}	[]	2026-05-22 15:50:01.945	2026-05-22 15:50:01.945	2026-05-22 15:50:01.945	\N	\N	\N
187	q0ztsty51o4j9zeun3s59vlw	admin::admin-tokens.update	{}	\N	{}	[]	2026-05-22 15:50:01.947	2026-05-22 15:50:01.947	2026-05-22 15:50:01.947	\N	\N	\N
188	bvqljai6kk0kdjlgfplkp1nx	admin::admin-tokens.regenerate	{}	\N	{}	[]	2026-05-22 15:50:01.949	2026-05-22 15:50:01.949	2026-05-22 15:50:01.949	\N	\N	\N
189	lu413gxdoaci4le9vnoimdc6	admin::admin-tokens.delete	{}	\N	{}	[]	2026-05-22 15:50:01.951	2026-05-22 15:50:01.951	2026-05-22 15:50:01.951	\N	\N	\N
254	qfrd48pxh5ox7qd97s964fux	plugin::content-manager.explorer.create	{}	api::admission.admission	{"fields": ["title", "subtitle", "more"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.08	2026-05-29 13:12:38.08	2026-05-29 13:12:38.08	\N	\N	\N
255	e3x3w3bkdenkgdjxdlo32chq	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["title", "subtitle", "phone", "address", "room", "schedule", "socialMedia"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.085	2026-05-29 13:12:38.085	2026-05-29 13:12:38.085	\N	\N	\N
190	bl6ubqahzdrs6daphnsbslkm	admin::api-tokens.create	{}	\N	{}	[]	2026-05-22 15:50:01.953	2026-05-22 15:50:01.953	2026-05-22 15:50:01.953	\N	\N	\N
191	bq6yi9l8e9p3xssxw02xm2hn	admin::api-tokens.read	{}	\N	{}	[]	2026-05-22 15:50:01.955	2026-05-22 15:50:01.955	2026-05-22 15:50:01.955	\N	\N	\N
192	xkny28k5ocl4qvf4vblbz5ov	admin::api-tokens.update	{}	\N	{}	[]	2026-05-22 15:50:01.957	2026-05-22 15:50:01.957	2026-05-22 15:50:01.957	\N	\N	\N
193	konipfjzdl3po9y1hpifgq14	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-05-22 15:50:01.959	2026-05-22 15:50:01.959	2026-05-22 15:50:01.959	\N	\N	\N
194	dyu1i6g4o1h92anf7cf56ivp	admin::api-tokens.delete	{}	\N	{}	[]	2026-05-22 15:50:01.961	2026-05-22 15:50:01.961	2026-05-22 15:50:01.961	\N	\N	\N
195	yt2y4zx6v63ru9nelpezl1wc	admin::project-settings.update	{}	\N	{}	[]	2026-05-22 15:50:01.963	2026-05-22 15:50:01.963	2026-05-22 15:50:01.963	\N	\N	\N
196	vaek1xcwo8qn6tt4zq3jrjmq	admin::project-settings.read	{}	\N	{}	[]	2026-05-22 15:50:01.965	2026-05-22 15:50:01.965	2026-05-22 15:50:01.965	\N	\N	\N
197	i7gkags5kufssxyxi6a8vk8c	admin::transfer.tokens.access	{}	\N	{}	[]	2026-05-22 15:50:01.967	2026-05-22 15:50:01.967	2026-05-22 15:50:01.967	\N	\N	\N
198	azdijgm8cx9e40zjoqbomr0t	admin::transfer.tokens.create	{}	\N	{}	[]	2026-05-22 15:50:01.969	2026-05-22 15:50:01.969	2026-05-22 15:50:01.969	\N	\N	\N
199	oovrjek9viqm58anxaim6g1e	admin::transfer.tokens.read	{}	\N	{}	[]	2026-05-22 15:50:01.971	2026-05-22 15:50:01.971	2026-05-22 15:50:01.971	\N	\N	\N
200	ofnpgn79gh1ilrqw4z025z8c	admin::transfer.tokens.update	{}	\N	{}	[]	2026-05-22 15:50:01.973	2026-05-22 15:50:01.973	2026-05-22 15:50:01.973	\N	\N	\N
201	fthsh4w87ii4gcr6iy2p5md7	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-05-22 15:50:01.975	2026-05-22 15:50:01.975	2026-05-22 15:50:01.975	\N	\N	\N
202	dhwsw8xxhfhwg37u8zzwmjc2	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-05-22 15:50:01.977	2026-05-22 15:50:01.977	2026-05-22 15:50:01.977	\N	\N	\N
256	pchl3oic6yt4oj1fvxrsh47t	plugin::content-manager.explorer.create	{}	api::list-document.list-document	{"fields": ["title", "subtitle", "description", "items.title"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.088	2026-05-29 13:12:38.088	2026-05-29 13:12:38.089	\N	\N	\N
257	hvxaixprxpyfkls336yc25dx	plugin::content-manager.explorer.create	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.091	2026-05-29 13:12:38.091	2026-05-29 13:12:38.091	\N	\N	\N
258	pyh7c7h33s9n8jaz6zbu0oon	plugin::content-manager.explorer.create	{}	api::reseption.reseption	{"fields": ["title", "subtitle", "year", "days", "consult", "phone", "asked", "questions", "nationalExam", "testingExam"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.094	2026-05-29 13:12:38.094	2026-05-29 13:12:38.094	\N	\N	\N
259	w79ofzyvkkwfyegkssem3221	plugin::content-manager.explorer.read	{}	api::admission.admission	{"fields": ["title", "subtitle", "more"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.096	2026-05-29 13:12:38.096	2026-05-29 13:12:38.096	\N	\N	\N
260	hdd9vruc76x58jk6qamvjxp2	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["title", "subtitle", "phone", "address", "room", "schedule", "socialMedia"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.099	2026-05-29 13:12:38.099	2026-05-29 13:12:38.099	\N	\N	\N
261	z807mwcrk75sf64wgi6bdzhs	plugin::content-manager.explorer.read	{}	api::list-document.list-document	{"fields": ["title", "subtitle", "description", "items.title"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.102	2026-05-29 13:12:38.102	2026-05-29 13:12:38.102	\N	\N	\N
262	pktyusd7vw5s0d34mtjuiqa6	plugin::content-manager.explorer.read	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.104	2026-05-29 13:12:38.104	2026-05-29 13:12:38.104	\N	\N	\N
263	ehehtgrjpirkid6lygzf1dsa	plugin::content-manager.explorer.read	{}	api::reseption.reseption	{"fields": ["title", "subtitle", "year", "days", "consult", "phone", "asked", "questions", "nationalExam", "testingExam"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.106	2026-05-29 13:12:38.106	2026-05-29 13:12:38.106	\N	\N	\N
264	fnx3bca5k6zo1ri1h6rt5sxg	plugin::content-manager.explorer.update	{}	api::admission.admission	{"fields": ["title", "subtitle", "more"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.109	2026-05-29 13:12:38.109	2026-05-29 13:12:38.109	\N	\N	\N
265	d71s0v11grb6v1qwaqqnwsgt	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["title", "subtitle", "phone", "address", "room", "schedule", "socialMedia"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.111	2026-05-29 13:12:38.111	2026-05-29 13:12:38.111	\N	\N	\N
266	s7bx6ikmhmrahpicedstbt8n	plugin::content-manager.explorer.update	{}	api::list-document.list-document	{"fields": ["title", "subtitle", "description", "items.title"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.113	2026-05-29 13:12:38.113	2026-05-29 13:12:38.113	\N	\N	\N
267	i3axrfc60e8rc2v29hhgapql	plugin::content-manager.explorer.update	{}	api::profession.profession	{"fields": ["title", "code", "subtitle", "graduates", "form", "url"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.115	2026-05-29 13:12:38.115	2026-05-29 13:12:38.116	\N	\N	\N
268	yfbfxq4oeohj5efj0eab372f	plugin::content-manager.explorer.update	{}	api::reseption.reseption	{"fields": ["title", "subtitle", "year", "days", "consult", "phone", "asked", "questions", "nationalExam", "testingExam"], "locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.118	2026-05-29 13:12:38.118	2026-05-29 13:12:38.118	\N	\N	\N
269	g144c63hf00l2hs1m9tfvyuh	plugin::content-manager.explorer.delete	{}	api::admission.admission	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.12	2026-05-29 13:12:38.12	2026-05-29 13:12:38.12	\N	\N	\N
270	oux5qdqbmiimqp8v2c1dx97s	plugin::content-manager.explorer.delete	{}	api::contact.contact	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.122	2026-05-29 13:12:38.122	2026-05-29 13:12:38.122	\N	\N	\N
271	jagxen6cll4fq98u9oa12p7u	plugin::content-manager.explorer.delete	{}	api::list-document.list-document	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.125	2026-05-29 13:12:38.125	2026-05-29 13:12:38.125	\N	\N	\N
272	fote5wgm2xllbkucqqm95i9p	plugin::content-manager.explorer.delete	{}	api::profession.profession	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.128	2026-05-29 13:12:38.128	2026-05-29 13:12:38.128	\N	\N	\N
273	by4r67zkxdfmcnaenk0aqpqh	plugin::content-manager.explorer.delete	{}	api::reseption.reseption	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.13	2026-05-29 13:12:38.13	2026-05-29 13:12:38.13	\N	\N	\N
274	dnnhxccm7o7ux0g0vqxtq1lj	plugin::content-manager.explorer.publish	{}	api::admission.admission	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.132	2026-05-29 13:12:38.132	2026-05-29 13:12:38.132	\N	\N	\N
275	bl89793iol1dap9u48bm5q2l	plugin::content-manager.explorer.publish	{}	api::contact.contact	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.135	2026-05-29 13:12:38.135	2026-05-29 13:12:38.135	\N	\N	\N
276	dxrjz39thgegk670n37isx07	plugin::content-manager.explorer.publish	{}	api::list-document.list-document	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.137	2026-05-29 13:12:38.137	2026-05-29 13:12:38.137	\N	\N	\N
277	o8xop8ffnvc5jzmqkdd3c69e	plugin::content-manager.explorer.publish	{}	api::profession.profession	{"locales": ["en", "ru", "kk"]}	[]	2026-05-29 13:12:38.139	2026-05-29 13:12:38.139	2026-05-29 13:12:38.139	\N	\N	\N
410	s8y4c8ia2dr9dyskijz59q90	plugin::content-manager.explorer.create	{}	api::contacts-comission.contacts-comission	{"fields": ["title", "email", "locales", "dayswork", "number", "more", "doc", "med", "identifycard", "photos", "card", "certificate", "grant", "cardboard", "envelope", "sectitle", "instagram", "instaurl", "toogis", "toogisurl"]}	[]	2026-06-10 21:03:46.376	2026-06-10 21:03:46.376	2026-06-10 21:03:46.376	\N	\N	\N
411	ghatwafhd5wjwmxcqoxrl819	plugin::content-manager.explorer.create	{}	api::news-article.news-article	{"fields": ["title", "published", "img", "description", "subtitle", "descriptor"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.382	2026-06-10 21:03:46.382	2026-06-10 21:03:46.383	\N	\N	\N
412	gf59hdhmkfikwibdmvgfurvm	plugin::content-manager.explorer.create	{}	api::static-article.static-article	{"fields": ["title", "description"]}	[]	2026-06-10 21:03:46.385	2026-06-10 21:03:46.385	2026-06-10 21:03:46.385	\N	\N	\N
413	gr6xhh35tfnaqkngy0lkgf77	plugin::content-manager.explorer.create	{}	api::static-attribute.static-attribute	{"fields": ["title", "subtitle"]}	[]	2026-06-10 21:03:46.389	2026-06-10 21:03:46.389	2026-06-10 21:03:46.389	\N	\N	\N
414	ex5sg2u0ng77li7ty910y5v1	plugin::content-manager.explorer.create	{}	api::static-info.static-info	{"fields": ["block.title", "block.description", "content.title", "content.description", "item.title", "title"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.392	2026-06-10 21:03:46.392	2026-06-10 21:03:46.392	\N	\N	\N
415	uk5xxorgrshud58c7yrdzfpy	plugin::content-manager.explorer.create	{}	api::static-programm.static-programm	{"fields": ["title", "more"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.396	2026-06-10 21:03:46.396	2026-06-10 21:03:46.396	\N	\N	\N
416	u6ibmc44asvutoe3wkzvqcft	plugin::content-manager.explorer.read	{}	api::contacts-comission.contacts-comission	{"fields": ["title", "email", "locales", "dayswork", "number", "more", "doc", "med", "identifycard", "photos", "card", "certificate", "grant", "cardboard", "envelope", "sectitle", "instagram", "instaurl", "toogis", "toogisurl"]}	[]	2026-06-10 21:03:46.399	2026-06-10 21:03:46.399	2026-06-10 21:03:46.399	\N	\N	\N
417	myltkzk2fdq23ajbub19ab63	plugin::content-manager.explorer.read	{}	api::news-article.news-article	{"fields": ["title", "published", "img", "description", "subtitle", "descriptor"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.402	2026-06-10 21:03:46.402	2026-06-10 21:03:46.403	\N	\N	\N
418	rwh27ksodqe3zof4zzb0hbcs	plugin::content-manager.explorer.read	{}	api::static-article.static-article	{"fields": ["title", "description"]}	[]	2026-06-10 21:03:46.405	2026-06-10 21:03:46.405	2026-06-10 21:03:46.406	\N	\N	\N
419	bxcfo1id5r0vruk14gwt9kiq	plugin::content-manager.explorer.read	{}	api::static-attribute.static-attribute	{"fields": ["title", "subtitle"]}	[]	2026-06-10 21:03:46.41	2026-06-10 21:03:46.41	2026-06-10 21:03:46.41	\N	\N	\N
420	qxibpx5hm816mcpk3tzdv7eb	plugin::content-manager.explorer.read	{}	api::static-info.static-info	{"fields": ["block.title", "block.description", "content.title", "content.description", "item.title", "title"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.413	2026-06-10 21:03:46.413	2026-06-10 21:03:46.413	\N	\N	\N
421	swro2swvuzzd5l3ltcjqb3tv	plugin::content-manager.explorer.read	{}	api::static-programm.static-programm	{"fields": ["title", "more"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.416	2026-06-10 21:03:46.416	2026-06-10 21:03:46.416	\N	\N	\N
422	y0dic2glhhcroknju5dig8bg	plugin::content-manager.explorer.update	{}	api::contacts-comission.contacts-comission	{"fields": ["title", "email", "locales", "dayswork", "number", "more", "doc", "med", "identifycard", "photos", "card", "certificate", "grant", "cardboard", "envelope", "sectitle", "instagram", "instaurl", "toogis", "toogisurl"]}	[]	2026-06-10 21:03:46.418	2026-06-10 21:03:46.418	2026-06-10 21:03:46.418	\N	\N	\N
423	b4j5ir9g6vkj98cwkn958tq2	plugin::content-manager.explorer.update	{}	api::news-article.news-article	{"fields": ["title", "published", "img", "description", "subtitle", "descriptor"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.421	2026-06-10 21:03:46.421	2026-06-10 21:03:46.421	\N	\N	\N
424	xr4vk0bbqiuuyfucvwnpz4h3	plugin::content-manager.explorer.update	{}	api::static-article.static-article	{"fields": ["title", "description"]}	[]	2026-06-10 21:03:46.424	2026-06-10 21:03:46.424	2026-06-10 21:03:46.424	\N	\N	\N
425	sol5kx0o2mvubr2mnj4judrc	plugin::content-manager.explorer.update	{}	api::static-attribute.static-attribute	{"fields": ["title", "subtitle"]}	[]	2026-06-10 21:03:46.426	2026-06-10 21:03:46.426	2026-06-10 21:03:46.426	\N	\N	\N
426	lm3q4zyry7lqbinzvektbuhx	plugin::content-manager.explorer.update	{}	api::static-info.static-info	{"fields": ["block.title", "block.description", "content.title", "content.description", "item.title", "title"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.429	2026-06-10 21:03:46.429	2026-06-10 21:03:46.429	\N	\N	\N
427	m3om1i8sw4j2k2zcatspkp0y	plugin::content-manager.explorer.update	{}	api::static-programm.static-programm	{"fields": ["title", "more"], "locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.432	2026-06-10 21:03:46.432	2026-06-10 21:03:46.432	\N	\N	\N
428	o95j2jkhj9rodcjh57adk5j5	plugin::content-manager.explorer.delete	{}	api::contacts-comission.contacts-comission	{}	[]	2026-06-10 21:03:46.435	2026-06-10 21:03:46.435	2026-06-10 21:03:46.435	\N	\N	\N
429	se2sf7kessxc24kmjgvsjhzy	plugin::content-manager.explorer.delete	{}	api::news-article.news-article	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.437	2026-06-10 21:03:46.437	2026-06-10 21:03:46.437	\N	\N	\N
430	jx4s4yuxdq1vxb1e7aw097a5	plugin::content-manager.explorer.delete	{}	api::static-article.static-article	{}	[]	2026-06-10 21:03:46.439	2026-06-10 21:03:46.439	2026-06-10 21:03:46.439	\N	\N	\N
431	cii6tcnwhtkstzw1is2tfest	plugin::content-manager.explorer.delete	{}	api::static-attribute.static-attribute	{}	[]	2026-06-10 21:03:46.442	2026-06-10 21:03:46.442	2026-06-10 21:03:46.442	\N	\N	\N
432	w6f41py3yr3zmfuts1s6dtjq	plugin::content-manager.explorer.delete	{}	api::static-info.static-info	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.445	2026-06-10 21:03:46.445	2026-06-10 21:03:46.445	\N	\N	\N
433	afcvovqa177sqqmdhrhn2d42	plugin::content-manager.explorer.delete	{}	api::static-programm.static-programm	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.448	2026-06-10 21:03:46.448	2026-06-10 21:03:46.448	\N	\N	\N
434	wguoawrfouy05c7z5cy5k5uv	plugin::content-manager.explorer.publish	{}	api::contacts-comission.contacts-comission	{}	[]	2026-06-10 21:03:46.451	2026-06-10 21:03:46.451	2026-06-10 21:03:46.451	\N	\N	\N
435	x6m61cud1gjjuojr5u1zprux	plugin::content-manager.explorer.publish	{}	api::news-article.news-article	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.454	2026-06-10 21:03:46.454	2026-06-10 21:03:46.454	\N	\N	\N
436	y7rhrjwxz14s2970xgka2amb	plugin::content-manager.explorer.publish	{}	api::static-article.static-article	{}	[]	2026-06-10 21:03:46.457	2026-06-10 21:03:46.457	2026-06-10 21:03:46.457	\N	\N	\N
437	esj60mx51crbialozmdrb5ln	plugin::content-manager.explorer.publish	{}	api::static-attribute.static-attribute	{}	[]	2026-06-10 21:03:46.46	2026-06-10 21:03:46.46	2026-06-10 21:03:46.46	\N	\N	\N
438	kbhlndd6j010yec1zsl6yiim	plugin::content-manager.explorer.publish	{}	api::static-info.static-info	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.463	2026-06-10 21:03:46.463	2026-06-10 21:03:46.463	\N	\N	\N
439	nyzvh4xmwzgiunytt9yq4z6t	plugin::content-manager.explorer.publish	{}	api::static-programm.static-programm	{"locales": ["en", "ru", "kk"]}	[]	2026-06-10 21:03:46.466	2026-06-10 21:03:46.466	2026-06-10 21:03:46.466	\N	\N	\N
440	cfjhmmxo4wmhzbaly3vvdqys	plugin::content-manager.explorer.create	{}	api::image.image	{"fields": ["image"]}	[]	2026-06-12 08:48:52.2	2026-06-12 08:48:52.2	2026-06-12 08:48:52.201	\N	\N	\N
441	jgwewcgzo85yxehvy8t4fg03	plugin::content-manager.explorer.read	{}	api::image.image	{"fields": ["image"]}	[]	2026-06-12 08:48:52.211	2026-06-12 08:48:52.211	2026-06-12 08:48:52.211	\N	\N	\N
442	aonsm56gk0pcj2hw7jy8kl7g	plugin::content-manager.explorer.update	{}	api::image.image	{"fields": ["image"]}	[]	2026-06-12 08:48:52.216	2026-06-12 08:48:52.216	2026-06-12 08:48:52.216	\N	\N	\N
443	zf6qi22xu1psgf53vakxd5qx	plugin::content-manager.explorer.delete	{}	api::image.image	{}	[]	2026-06-12 08:48:52.22	2026-06-12 08:48:52.22	2026-06-12 08:48:52.22	\N	\N	\N
444	ctau8cuh52hh4hvs9hry91z2	plugin::content-manager.explorer.publish	{}	api::image.image	{}	[]	2026-06-12 08:48:52.223	2026-06-12 08:48:52.223	2026-06-12 08:48:52.223	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_api_token_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admin_permissions_api_token_lnk (id, permission_id, api_token_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
319	279	1	177
2	2	2	2
3	3	2	3
320	280	1	178
5	5	2	5
321	281	1	179
322	282	1	180
323	283	1	181
11	11	2	11
12	12	2	12
14	14	2	14
439	399	1	226
440	400	1	227
20	20	2	20
21	21	2	21
342	302	1	195
23	23	2	23
343	303	1	196
441	401	1	228
447	407	1	234
448	408	1	235
449	409	1	236
29	29	2	29
30	30	2	30
38	38	2	38
39	39	2	39
46	46	2	46
47	47	2	47
48	48	2	48
49	49	2	49
50	50	2	50
51	51	2	51
53	53	3	2
54	54	3	3
56	56	3	5
62	62	3	11
63	63	3	12
65	65	3	14
383	343	1	202
384	344	1	203
385	345	1	204
71	71	3	20
72	72	3	21
74	74	3	23
394	354	1	213
395	355	1	214
80	80	3	29
81	81	3	30
88	88	3	37
89	89	3	38
90	90	3	39
91	91	3	40
92	92	3	41
93	93	3	42
94	94	1	1
96	96	1	3
97	97	1	4
104	104	1	11
428	388	1	218
106	106	1	13
107	107	1	14
429	389	1	219
430	390	1	220
431	391	1	221
432	392	1	222
114	114	1	21
116	116	1	23
117	117	1	24
124	124	1	31
126	126	1	33
127	127	1	34
134	134	1	41
136	136	1	43
137	137	1	44
144	144	1	51
145	145	1	52
146	146	1	53
147	147	1	54
148	148	1	55
149	149	1	56
150	150	1	57
151	151	1	58
152	152	1	59
153	153	1	60
154	154	1	61
155	155	1	62
156	156	1	63
157	157	1	64
158	158	1	65
159	159	1	66
160	160	1	67
161	161	1	68
162	162	1	69
163	163	1	70
164	164	1	71
165	165	1	72
166	166	1	73
167	167	1	74
168	168	1	75
169	169	1	76
170	170	1	77
171	171	1	78
172	172	1	79
173	173	1	80
174	174	1	81
175	175	1	82
176	176	1	83
177	177	1	84
178	178	1	85
179	179	1	86
180	180	1	87
181	181	1	88
182	182	1	89
183	183	1	90
184	184	1	91
185	185	1	92
186	186	1	93
187	187	1	94
188	188	1	95
189	189	1	96
190	190	1	97
191	191	1	98
192	192	1	99
193	193	1	100
194	194	1	101
195	195	1	102
196	196	1	103
197	197	1	104
198	198	1	105
199	199	1	106
200	200	1	107
201	201	1	108
202	202	1	109
324	284	1	182
325	285	1	183
326	286	1	184
327	287	1	185
328	288	1	186
334	294	1	187
335	295	1	188
336	296	1	189
337	297	1	190
338	298	1	191
436	396	1	223
437	397	1	224
438	398	1	225
445	405	1	232
446	406	1	233
375	335	1	200
376	336	1	201
294	254	1	152
295	255	1	153
296	256	1	154
297	257	1	155
298	258	1	156
299	259	1	157
300	260	1	158
301	261	1	159
302	262	1	160
303	263	1	161
304	264	1	162
305	265	1	163
306	266	1	164
307	267	1	165
308	268	1	166
309	269	1	167
310	270	1	168
311	271	1	169
312	272	1	170
313	273	1	171
314	274	1	172
315	275	1	173
316	276	1	174
317	277	1	175
318	278	1	176
450	410	1	237
451	411	1	238
452	412	1	239
453	413	1	240
454	414	1	241
455	415	1	242
456	416	1	243
457	417	1	244
458	418	1	245
459	419	1	246
460	420	1	247
461	421	1	248
462	422	1	249
463	423	1	250
464	424	1	251
465	425	1	252
466	426	1	253
467	427	1	254
468	428	1	255
469	429	1	256
470	430	1	257
471	431	1	258
472	432	1	259
473	433	1	260
474	434	1	261
475	435	1	262
476	436	1	263
477	437	1	264
478	438	1	265
479	439	1	266
480	440	1	267
481	441	1	268
482	442	1	269
483	443	1	270
484	444	1	271
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i8sa8cb7gjy40tst1fsr00qw	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-05-22 15:50:01.516	2026-05-22 15:50:01.516	2026-05-22 15:50:01.516	\N	\N	\N
2	q048r3qelmp031sr7guvs9pb	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-05-22 15:50:01.521	2026-05-22 15:50:01.521	2026-05-22 15:50:01.521	\N	\N	\N
3	xxvo0oraj1cpf4kyzvgshguj	Author	strapi-author	Authors can manage the content they have created.	2026-05-22 15:50:01.523	2026-05-22 15:50:01.523	2026-05-22 15:50:01.523	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	ricdrc40d0kzx6ckwnfb6g0e	KIRILL	STYAZHKIN	\N	kirill123iop@gmail.com	$2a$10$BL1bYTN73VoSNVRGPYtVA.QT19.6Eghmc1b7.QBT1r0gylZT.ysHO	\N	\N	t	f	\N	2026-05-22 15:50:19.335	2026-05-22 15:50:19.335	2026-05-22 15:50:19.335	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: admissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.admissions (id, document_id, title, subtitle, more, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	iev2b2qlck0mcdqvgo6cn19e	Master's degree	In-depth academic and pedagogical training	Read more	2026-05-26 14:34:41.415	2026-05-26 14:34:41.415	\N	1	1	en
4	iev2b2qlck0mcdqvgo6cn19e	Master's degree	In-depth academic and pedagogical training	Read more	2026-05-26 14:34:41.415	2026-05-26 14:34:41.415	2026-05-26 14:34:41.423	1	1	en
1	e48zr4q59vrgodzz8khwlfr1	Undergraduate degree	A bachelor’s degree in the chosen field	Read more	2026-05-26 14:33:22.484	2026-05-26 14:34:54.118	\N	1	1	en
6	e48zr4q59vrgodzz8khwlfr1	Undergraduate degree	A bachelor’s degree in the chosen field	Read more	2026-05-26 14:33:22.484	2026-05-26 14:34:54.118	2026-05-26 14:34:54.124	1	1	en
7	qkw6d6cfm991dsos8jdw55ea	Doctoral programme	Higher education and research	Read more	2026-05-26 14:35:41.104	2026-05-26 14:35:41.104	\N	1	1	en
8	qkw6d6cfm991dsos8jdw55ea	Doctoral programme	Higher education and research	Read more	2026-05-26 14:35:41.104	2026-05-26 14:35:41.104	2026-05-26 14:35:41.11	1	1	en
9	e48zr4q59vrgodzz8khwlfr1	Бакалавриат 	Сіз таңдаған саладағы негізгі жоғары білім біліктілігі	Толығырақ білу	2026-05-29 12:47:23.437	2026-05-29 12:47:23.437	\N	1	1	kk
10	e48zr4q59vrgodzz8khwlfr1	Бакалавриат 	Сіз таңдаған саладағы негізгі жоғары білім біліктілігі	Толығырақ білу	2026-05-29 12:47:23.437	2026-05-29 12:47:23.437	2026-05-29 12:47:23.445	1	1	kk
11	iev2b2qlck0mcdqvgo6cn19e	Магистратура	Академиялық және оқыту бойынша тереңдетілген дайындық	Толығырақ білу	2026-05-29 12:47:58.52	2026-05-29 12:47:58.52	\N	1	1	kk
12	iev2b2qlck0mcdqvgo6cn19e	Магистратура	Академиялық және оқыту бойынша тереңдетілген дайындық	Толығырақ білу	2026-05-29 12:47:58.52	2026-05-29 12:47:58.52	2026-05-29 12:47:58.526	1	1	kk
13	qkw6d6cfm991dsos8jdw55ea	Докторантура	Жоғары білім және зерттеу	Толығырақ оқу	2026-05-29 12:48:30.816	2026-05-29 12:48:30.816	\N	1	1	kk
14	qkw6d6cfm991dsos8jdw55ea	Докторантура	Жоғары білім және зерттеу	Толығырақ оқу	2026-05-29 12:48:30.816	2026-05-29 12:48:30.816	2026-05-29 12:48:30.822	1	1	kk
15	glaq3ylft6ha398c2ypzxpjs	Бакалавриат	Базовое высшее образование по выбранной специальности	Подробнее	2026-05-29 12:50:53.273	2026-05-29 12:50:53.273	\N	1	1	ru
16	glaq3ylft6ha398c2ypzxpjs	Бакалавриат	Базовое высшее образование по выбранной специальности	Подробнее	2026-05-29 12:50:53.273	2026-05-29 12:50:53.273	2026-05-29 12:50:53.279	1	1	ru
17	auo8s19e1kk26fa0bdvbu1ws	Магистратура	Углублённая научно-педагогическая подготовка	Подробнее	2026-05-29 12:51:22.625	2026-05-29 12:51:22.625	\N	1	1	ru
18	auo8s19e1kk26fa0bdvbu1ws	Магистратура	Углублённая научно-педагогическая подготовка	Подробнее	2026-05-29 12:51:22.625	2026-05-29 12:51:22.625	2026-05-29 12:51:22.631	1	1	ru
19	ppjorr97y2zhl42vld2q5csx	Докторантура	Высшая ступень обучения и научных исследований	Подробнее	2026-05-29 12:51:42.53	2026-05-29 12:51:42.53	\N	1	1	ru
20	ppjorr97y2zhl42vld2q5csx	Докторантура	Высшая ступень обучения и научных исследований	Подробнее	2026-05-29 12:51:42.53	2026-05-29 12:51:42.53	2026-05-29 12:51:42.535	1	1	ru
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.categories (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
49	yazxt9wbhy6bwulpqrrs9sqw	ЕНТ	2026-06-03 16:52:10.697	2026-06-03 16:52:10.697	\N	1	1	kk
50	yazxt9wbhy6bwulpqrrs9sqw	ЕНТ	2026-06-03 16:52:10.697	2026-06-03 16:52:10.697	2026-06-03 16:52:10.702	1	1	kk
13	bhz2dzi3es1i991r6ard0rgw	Education	2026-06-03 16:15:36.921	2026-06-03 16:15:36.921	\N	1	1	en
14	bhz2dzi3es1i991r6ard0rgw	Education	2026-06-03 16:15:36.921	2026-06-03 16:15:36.921	2026-06-03 16:15:36.927	1	1	en
15	it99esrf2tgfnrxrsdcpwsgg	Reception	2026-06-03 16:16:02.055	2026-06-03 16:16:02.055	\N	1	1	en
16	it99esrf2tgfnrxrsdcpwsgg	Reception	2026-06-03 16:16:02.055	2026-06-03 16:16:02.055	2026-06-03 16:16:02.062	1	1	en
17	t7403am4v7522gixt8ezn6u9	Prospective student	2026-06-03 16:16:31.144	2026-06-03 16:16:31.144	\N	1	1	en
18	t7403am4v7522gixt8ezn6u9	Prospective student	2026-06-03 16:16:31.144	2026-06-03 16:16:31.144	2026-06-03 16:16:31.15	1	1	en
19	ku2yvmt0czie7adcpz4avbhh	Grants	2026-06-03 16:16:41.117	2026-06-03 16:16:41.117	\N	1	1	en
20	ku2yvmt0czie7adcpz4avbhh	Grants	2026-06-03 16:16:41.117	2026-06-03 16:16:41.117	2026-06-03 16:16:41.123	1	1	en
21	dsplu7elcsmph89b6d8gdv82	National Standardized Testing	2026-06-03 16:17:36.871	2026-06-03 16:17:36.871	\N	1	1	en
22	dsplu7elcsmph89b6d8gdv82	National Standardized Testing	2026-06-03 16:17:36.871	2026-06-03 16:17:36.871	2026-06-03 16:17:36.877	1	1	en
7	bhz2dzi3es1i991r6ard0rgw	Оқыту	2026-06-03 14:03:08.936	2026-06-03 16:22:59.83	\N	1	1	kk
33	bhz2dzi3es1i991r6ard0rgw	Оқыту	2026-06-03 14:03:08.936	2026-06-03 16:22:59.83	2026-06-03 16:22:59.838	1	1	kk
23	z1qwv76mtel3nvi8dlrlr8e1	ЕНТ	2026-06-03 16:20:27.51	2026-06-03 16:23:28.068	\N	1	1	ru
34	z1qwv76mtel3nvi8dlrlr8e1	ЕНТ	2026-06-03 16:20:27.51	2026-06-03 16:23:28.068	2026-06-03 16:23:28.075	1	1	ru
9	g6ricaji4t34ybhkv1t7a07x	Болашақ студенттерге	2026-06-03 14:03:16.835	2026-06-03 16:25:40.023	\N	1	1	kk
36	g6ricaji4t34ybhkv1t7a07x	Болашақ студенттерге	2026-06-03 14:03:16.835	2026-06-03 16:25:40.023	2026-06-03 16:25:40.03	1	1	kk
5	j5iuj95pkg5s3hoj0826v24u	Гранттар	2026-06-03 14:03:03.331	2026-06-03 16:25:45.75	\N	1	1	kk
37	j5iuj95pkg5s3hoj0826v24u	Гранттар	2026-06-03 14:03:03.331	2026-06-03 16:25:45.75	2026-06-03 16:25:45.755	1	1	kk
1	s9fk2u6nh7ie9e3aex7juanf	Қабылдау	2026-06-03 14:02:52.224	2026-06-03 16:26:16.603	\N	1	1	kk
40	s9fk2u6nh7ie9e3aex7juanf	Қабылдау	2026-06-03 14:02:52.224	2026-06-03 16:26:16.603	2026-06-03 16:26:16.609	1	1	kk
29	bzckl5jcwynkebfjmt23letb	Приём	2026-06-03 16:21:21.855	2026-06-03 16:28:15.924	\N	1	1	ru
45	bzckl5jcwynkebfjmt23letb	Приём	2026-06-03 16:21:21.855	2026-06-03 16:28:15.924	2026-06-03 16:28:15.931	1	1	ru
31	gdtmy9p43ikrt2kf9z3swbx8	Обучение	2026-06-03 16:21:31.698	2026-06-03 16:28:44.566	\N	1	1	ru
46	gdtmy9p43ikrt2kf9z3swbx8	Обучение	2026-06-03 16:21:31.698	2026-06-03 16:28:44.566	2026-06-03 16:28:44.571	1	1	ru
27	ljji4shq5wtr892k664psdz4	Абитуриенту	2026-06-03 16:21:09.747	2026-06-03 16:28:54.254	\N	1	1	ru
47	ljji4shq5wtr892k664psdz4	Абитуриенту	2026-06-03 16:21:09.747	2026-06-03 16:28:54.254	2026-06-03 16:28:54.261	1	1	ru
25	ytsrtcp4xzcvsthq74ikafz8	Гранты	2026-06-03 16:20:55.181	2026-06-03 16:28:59.55	\N	1	1	ru
48	ytsrtcp4xzcvsthq74ikafz8	Гранты	2026-06-03 16:20:55.181	2026-06-03 16:28:59.55	2026-06-03 16:28:59.556	1	1	ru
\.


--
-- Data for Name: components_shared_components; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.components_shared_components (id, title, subtitle, graduate, educat, code) FROM stdin;
\.


--
-- Data for Name: components_shared_items; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.components_shared_items (id, title) FROM stdin;
9	Educational qualification (original)
10	Medical certificate (Form No. 075-U)
11	A copy of the vaccination record
12	4 3×4 photos
13	A copy of your ID
14	Unified National Examination certificate (if available)
15	Grant certificate (if applicable)
16	A5 envelope — 1 pc.
17	Cardboard stapler — 1 pc.
18	Special examination results
19	Educational qualification (original)
20	Medical certificate (Form No. 075-U)
21	A copy of the vaccination record
22	4 3×4 photos
23	A copy of your ID
24	Unified National Examination certificate (if available)
25	Grant certificate (if applicable)
26	A5 envelope — 1 pc.
27	Cardboard stapler — 1 pc.
28	Special examination results
29	Документ об образовании (подлинник)
30	Мед. справка по форме №075-У
31	Копия прививочного паспорта (для очной формы обучения)
32	4 фото 3×4
33	Копия удостоверения личности (при себе иметь оригинал)
34	Сертификат ЕНТ (при наличии)
35	Свидетельство о гранте (при наличии)
36	Конверт А5 — 1 шт.
37	Скоросшиватель картонный — 1 шт.
38	\nРезультаты специального экзамена (для педагогических и медицинских образовательных программ)
39	Документ об образовании (подлинник)
40	Мед. справка по форме №075-У
41	Копия прививочного паспорта (для очной формы обучения)
42	4 фото 3×4
43	Копия удостоверения личности (при себе иметь оригинал)
44	Сертификат ЕНТ (при наличии)
45	Свидетельство о гранте (при наличии)
46	Конверт А5 — 1 шт.
47	Скоросшиватель картонный — 1 шт.
48	\nРезультаты специального экзамена (для педагогических и медицинских образовательных программ)
49	Білімдік біліктілік (түпнұсқа)
50	\nМедициналық анықтама (075-U формасы)
51	Копия прививочного паспорта (для очной формы обучения)
52	4 3×4 фотосурет
53	Жеке куәлігіңіздің көшірмесі (түпнұсқасын өзіңізбен бірге әкеліңіз)
54	Бірыңғай ұлттық тестілеу сертификаты (бар болған жағдайда)
55	Грант сертификаты (қажет болған жағдайда)
56	A5 конверт — 1 дана
57	Картонды степлер — 1 дана.
58	Мамандыққа сай емтиханның нәтижелері (мұғалімдерді даярлау және медициналық бағдарламалар үшін)
59	Білімдік біліктілік (түпнұсқа)
60	\nМедициналық анықтама (075-U формасы)
61	Копия прививочного паспорта (для очной формы обучения)
62	4 3×4 фотосурет
63	Жеке куәлігіңіздің көшірмесі (түпнұсқасын өзіңізбен бірге әкеліңіз)
64	Бірыңғай ұлттық тестілеу сертификаты (бар болған жағдайда)
65	Грант сертификаты (қажет болған жағдайда)
66	A5 конверт — 1 дана
67	Картонды степлер — 1 дана.
68	Мамандыққа сай емтиханның нәтижелері (мұғалімдерді даярлау және медициналық бағдарламалар үшін)
\.


--
-- Data for Name: components_shared_links; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.components_shared_links (id, text, url) FROM stdin;
42	Ш. Уәлиханов атындағы Көкшетау университетінің білім беру бағдарламалары бойынша оқу ақысы	https://shokan.edu.kz/documents/4260/2026-2027_%D0%BE%D2%9B%D1%83_%D2%9B%D2%B1%D0%BD%D1%8B%D0%BD%D1%8B%D2%A3_%D0%BF%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D1%83%D1%80%D0%B0%D0%BD%D1%82%D1%8B.pdf
43	Жоғары және жоғары оқу орнынан кейінгі білімнің білім беру бағдарламаларын іске асыратын білім беру ұйымдарына оқуға қабылдаудың үлгілік қағидалары	https://adilet.zan.kz/rus/docs/V1800017650
28	Образовательные программы на прием 2026 года	https://shokan.edu.kz/documents/4247/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%9C%D0%B0%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D1%83%D1%80%D0%B0.pdf
29	Типовые правила приема на обучение в организации образования, реализующие образовательные программы высшего и послевузовского образования	https://adilet.zan.kz/rus/docs/V1800017650
30	Документация для магистратуры	https://shokan.edu.kz/ru/graduate/dokumentaciya-dlya-magistratury/
31	Образовательные программы на прием 2026 года	https://shokan.edu.kz/documents/4247/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%9C%D0%B0%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D1%83%D1%80%D0%B0.pdf
32	Типовые правила приема на обучение в организации образования, реализующие образовательные программы высшего и послевузовского образования	https://adilet.zan.kz/rus/docs/V1800017650
33	Документация для магистратуры	https://shokan.edu.kz/ru/graduate/dokumentaciya-dlya-magistratury/
34	Образовательные программы на прием 2026 года	https://shokan.edu.kz/documents/4246/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%94%D0%BE%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BD%D1%82%D1%83%D1%80%D0%B0.pdf
35	Типовые правила приема на обучение в организации образования, реализующие образовательные программы высшего и послевузовского образования	https://adilet.zan.kz/rus/docs/V1800017650
36	Документация для докторантуры	https://shokan.edu.kz/ru/phd/dokumentaciya-dlya-doktarantury/
37	Образовательные программы на прием 2026 года	https://shokan.edu.kz/documents/4246/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%94%D0%BE%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BD%D1%82%D1%83%D1%80%D0%B0.pdf
38	Типовые правила приема на обучение в организации образования, реализующие образовательные программы высшего и послевузовского образования	https://adilet.zan.kz/rus/docs/V1800017650
39	Документация для докторантуры	https://shokan.edu.kz/ru/phd/dokumentaciya-dlya-doktarantury/
47	2026 жылғы қабылдауға білім беру бағдарламалары	https://shokan.edu.kz/documents/4247/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%9C%D0%B0%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D1%83%D1%80%D0%B0.pdf
48	Жоғары және жоғары оқу орнынан кейінгі білімнің білім беру бағдарламаларын іске асыратын білім беру ұйымдарына оқуға қабылдаудың үлгілік қағидалары	https://adilet.zan.kz/rus/docs/V1800017650
40	2026 жылғы қабылдауға білім беру бағдарламалары	https://shokan.edu.kz/documents/4296/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%91%D0%B0%D0%BA%D0%B0%D0%BB%D0%B0%D0%B2%D1%80%D0%B8%D0%B0%D1%82_1.pdf
53	2026 жылғы қабылдауға білім беру бағдарламалары	https://shokan.edu.kz/documents/4246/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%94%D0%BE%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BD%D1%82%D1%83%D1%80%D0%B0.pdf
54	Жоғары және жоғары оқу орнынан кейінгі білімнің білім беру бағдарламаларын іске асыратын білім беру ұйымдарына оқуға қабылдаудың үлгілік қағидалары	https://adilet.zan.kz/rus/docs/V1800017650
55	Докторантураға арналған құжаттама	https://shokan.edu.kz/kk/phd/dokumentaciya-dlya-doktarantury/
56	2026 жылғы қабылдауға білім беру бағдарламалары	https://shokan.edu.kz/documents/4246/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%94%D0%BE%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BD%D1%82%D1%83%D1%80%D0%B0.pdf
57	Жоғары және жоғары оқу орнынан кейінгі білімнің білім беру бағдарламаларын іске асыратын білім беру ұйымдарына оқуға қабылдаудың үлгілік қағидалары	https://adilet.zan.kz/rus/docs/V1800017650
58	Докторантураға арналған құжаттама	https://shokan.edu.kz/kk/phd/dokumentaciya-dlya-doktarantury/
59	Educational programs at the reception in 2026	https://shokan.edu.kz/documents/4296/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%91%D0%B0%D0%BA%D0%B0%D0%BB%D0%B0%D0%B2%D1%80%D0%B8%D0%B0%D1%82_1.pdf
60	Tuition fees for the educational programs of Sh. Ualikhanov Kokshetau University	https://shokan.edu.kz/documents/4259/%D0%9F%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D1%83%D1%80%D0%B0%D0%BD%D1%82_%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8_%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F_2026-2027_%D1%83%D1%87.%D0%B3__1.pdf
61	Standard rules for admission to training in educational organizations implementing educational programs of higher and postgraduate education	https://adilet.zan.kz/rus/docs/V1800017650
62	Other types of financial assistance for applicants	https://shokan.edu.kz/en/undergraduate/drugie-vidy-finansovoj-pomoshi-dlya-abiturientov/
63	Educational programs at the reception in 2026	https://shokan.edu.kz/documents/4296/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%91%D0%B0%D0%BA%D0%B0%D0%BB%D0%B0%D0%B2%D1%80%D0%B8%D0%B0%D1%82_1.pdf
64	Tuition fees for the educational programs of Sh. Ualikhanov Kokshetau University	https://shokan.edu.kz/documents/4259/%D0%9F%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D1%83%D1%80%D0%B0%D0%BD%D1%82_%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8_%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F_2026-2027_%D1%83%D1%87.%D0%B3__1.pdf
65	Standard rules for admission to training in educational organizations implementing educational programs of higher and postgraduate education	https://adilet.zan.kz/rus/docs/V1800017650
66	Other types of financial assistance for applicants	https://shokan.edu.kz/en/undergraduate/drugie-vidy-finansovoj-pomoshi-dlya-abiturientov/
67	Другие виды финансовой помощи для абитуриентов	https://shokan.edu.kz/ru/undergraduate/drugie-vidy-finansovoj-pomoshi-dlya-abiturientov/
19	Образовательные программы на прием 2026 года	https://shokan.edu.kz/documents/4296/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%91%D0%B0%D0%BA%D0%B0%D0%BB%D0%B0%D0%B2%D1%80%D0%B8%D0%B0%D1%82_1.pdf
21	Cтоимость обучения по образовательным программам Кокшетауского университета им.Ш.Уалиханова	https://shokan.edu.kz/documents/4259/%D0%9F%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D1%83%D1%80%D0%B0%D0%BD%D1%82_%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8_%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F_2026-2027_%D1%83%D1%87.%D0%B3__1.pdf
24	Типовые правила приема на обучение в организации образования, реализующие образовательные программы высшего и послевузовского образования	https://adilet.zan.kz/rus/docs/V1800017650
68	Образовательные программы на прием 2026 года	https://shokan.edu.kz/documents/4296/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%91%D0%B0%D0%BA%D0%B0%D0%BB%D0%B0%D0%B2%D1%80%D0%B8%D0%B0%D1%82_1.pdf
69	Cтоимость обучения по образовательным программам Кокшетауского университета им.Ш.Уалиханова	https://shokan.edu.kz/documents/4259/%D0%9F%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D1%83%D1%80%D0%B0%D0%BD%D1%82_%D1%81%D1%82%D0%BE%D0%B8%D0%BC%D0%BE%D1%81%D1%82%D0%B8_%D0%BE%D0%B1%D1%83%D1%87%D0%B5%D0%BD%D0%B8%D1%8F_2026-2027_%D1%83%D1%87.%D0%B3__1.pdf
70	Типовые правила приема на обучение в организации образования, реализующие образовательные программы высшего и послевузовского образования	https://adilet.zan.kz/rus/docs/V1800017650
71	Другие виды финансовой помощи для абитуриентов	https://shokan.edu.kz/ru/undergraduate/drugie-vidy-finansovoj-pomoshi-dlya-abiturientov/
49	Магистратураға арналған құжаттама	https://shokan.edu.kz/kk/graduate/dokumentaciya-dlya-magistratury/
85	2026 жылғы қабылдауға білім беру бағдарламалары	https://shokan.edu.kz/documents/4247/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%9C%D0%B0%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D1%83%D1%80%D0%B0.pdf
86	Жоғары және жоғары оқу орнынан кейінгі білімнің білім беру бағдарламаларын іске асыратын білім беру ұйымдарына оқуға қабылдаудың үлгілік қағидалары	https://adilet.zan.kz/rus/docs/V1800017650
87	Магистратураға арналған құжаттама	https://shokan.edu.kz/kk/graduate/dokumentaciya-dlya-magistratury/
88	Талапкерлерге арналған қаржылық көмектің басқа түрлері	https://shokan.edu.kz/kk/undergraduate/drugie-vidy-finansovoj-pomoshi-dlya-abiturientov/
89	2026 жылғы қабылдауға білім беру бағдарламалары	https://shokan.edu.kz/documents/4296/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%91%D0%B0%D0%BA%D0%B0%D0%BB%D0%B0%D0%B2%D1%80%D0%B8%D0%B0%D1%82_1.pdf
90	Ш. Уәлиханов атындағы Көкшетау университетінің білім беру бағдарламалары бойынша оқу ақысы	https://shokan.edu.kz/documents/4260/2026-2027_%D0%BE%D2%9B%D1%83_%D2%9B%D2%B1%D0%BD%D1%8B%D0%BD%D1%8B%D2%A3_%D0%BF%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D1%83%D1%80%D0%B0%D0%BD%D1%82%D1%8B.pdf
91	Жоғары және жоғары оқу орнынан кейінгі білімнің білім беру бағдарламаларын іске асыратын білім беру ұйымдарына оқуға қабылдаудың үлгілік қағидалары	https://adilet.zan.kz/rus/docs/V1800017650
92	Талапкерлерге арналған қаржылық көмектің басқа түрлері	https://shokan.edu.kz/kk/undergraduate/drugie-vidy-finansovoj-pomoshi-dlya-abiturientov/
93	Educational programs at the reception in 2026	https://shokan.edu.kz/documents/4247/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%9C%D0%B0%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D1%83%D1%80%D0%B0.pdf
94	Standard rules for admission to training in educational organizations implementing educational programs of higher and postgraduate education	https://adilet.zan.kz/rus/docs/V1800017650
95	Documentation for Master's Program	https://shokan.edu.kz/en/graduate/dokumentaciya-dlya-magistratury/
96	Educational programs at the reception in 2026	https://shokan.edu.kz/documents/4247/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%9C%D0%B0%D0%B3%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D1%83%D1%80%D0%B0.pdf
97	Standard rules for admission to training in educational organizations implementing educational programs of higher and postgraduate education	https://adilet.zan.kz/rus/docs/V1800017650
98	Documentation for Master's Program	https://shokan.edu.kz/en/graduate/dokumentaciya-dlya-magistratury/
99	Educational programs at the reception in 2026	https://shokan.edu.kz/documents/4246/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%94%D0%BE%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BD%D1%82%D1%83%D1%80%D0%B0.pdf
100	Standard rules for admission to training in educational organizations implementing educational programs of higher and postgraduate education	https://adilet.zan.kz/rus/docs/V1800017650
101	Documentation for doctoral studies	https://shokan.edu.kz/en/phd/dokumentaciya-dlya-doktarantury/
102	Educational programs at the reception in 2026	https://shokan.edu.kz/documents/4246/%D0%A0%D0%B5%D0%B5%D1%81%D1%82%D1%80_%D0%9E%D0%9F_%D0%94%D0%BE%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BD%D1%82%D1%83%D1%80%D0%B0.pdf
103	Standard rules for admission to training in educational organizations implementing educational programs of higher and postgraduate education	https://adilet.zan.kz/rus/docs/V1800017650
104	Documentation for doctoral studies	https://shokan.edu.kz/en/phd/dokumentaciya-dlya-doktarantury/
\.


--
-- Data for Name: components_shared_magistrs; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.components_shared_magistrs (id, title, description) FROM stdin;
\.


--
-- Data for Name: components_shared_titles; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.components_shared_titles (id, title, description) FROM stdin;
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.contacts (id, document_id, title, subtitle, phone, address, room, schedule, social_media, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
3	wqhl3eitir0rlm7nemro852k	Свяжитесь с нами	Контакты приёмной комиссии	87783967678	Казахстан, 020000, г. Кокшетау,\nул. Абая, 76, главный корпус,	ауд. 126а	Пн–Пт · 09:00–18:00	Мы в социальных сетях — пишите, следите за новостями приёма	2026-05-29 13:14:15.794	2026-05-29 13:14:15.794	\N	1	1	ru
4	wqhl3eitir0rlm7nemro852k	Свяжитесь с нами	Контакты приёмной комиссии	87783967678	Казахстан, 020000, г. Кокшетау,\nул. Абая, 76, главный корпус,	ауд. 126а	Пн–Пт · 09:00–18:00	Мы в социальных сетях — пишите, следите за новостями приёма	2026-05-29 13:14:15.794	2026-05-29 13:14:15.794	2026-05-29 13:14:15.803	1	1	ru
5	exu4zn79gdisx6lp503ig9ow	Contact us	Admissions office contacts	87783967678	Kazakhstan, 020000, Kokshetau, Abay str. 76, main building	room 126a	Mon–Fri · 09:00–18:00	Follow us on social media — write to us, stay updated	2026-05-29 13:15:01.239	2026-05-29 13:15:01.239	\N	1	1	en
6	exu4zn79gdisx6lp503ig9ow	Contact us	Admissions office contacts	87783967678	Kazakhstan, 020000, Kokshetau, Abay str. 76, main building	room 126a	Mon–Fri · 09:00–18:00	Follow us on social media — write to us, stay updated	2026-05-29 13:15:01.239	2026-05-29 13:15:01.239	2026-05-29 13:15:01.246	1	1	en
1	m943ess8mvdgc1ryknp5ssjr	Бізбен байланысыңыз	Қабылдау бөлімінің байланыс мәліметтері	87783967678	Қазақстан, 020000, Көкшетау қаласы, Абай көшесі, 76, негізгі ғимарат	126а бөлме	Дүйсенбіден жұмаға дейін · 09:00–18:00	Әлеуметтік желілерде бізді қадағалаңыз — жазыңыз, жаңалықтардан хабардар болыңыз	2026-05-26 15:19:22.31	2026-05-29 13:15:54.551	\N	1	1	kk
7	m943ess8mvdgc1ryknp5ssjr	Бізбен байланысыңыз	Қабылдау бөлімінің байланыс мәліметтері	87783967678	Қазақстан, 020000, Көкшетау қаласы, Абай көшесі, 76, негізгі ғимарат	126а бөлме	Дүйсенбіден жұмаға дейін · 09:00–18:00	Әлеуметтік желілерде бізді қадағалаңыз — жазыңыз, жаңалықтардан хабардар болыңыз	2026-05-26 15:19:22.31	2026-05-29 13:15:54.551	2026-05-29 13:15:54.558	1	1	kk
\.


--
-- Data for Name: contacts_comissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.contacts_comissions (id, document_id, title, email, locales, dayswork, number, more, doc, med, identifycard, photos, card, certificate, "grant", cardboard, envelope, sectitle, instagram, instaurl, toogis, toogisurl, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: docs; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.docs (id, document_id, text, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, url) FROM stdin;
3	td6o3nuuos7l7k9awdj9w3f1	Дорожная карта абитуриента 2024	2026-05-29 13:18:45.883	2026-05-29 13:18:45.883	\N	1	1	ru	\N
4	td6o3nuuos7l7k9awdj9w3f1	Дорожная карта абитуриента 2024	2026-05-29 13:18:45.883	2026-05-29 13:18:45.883	2026-05-29 13:18:45.892	1	1	ru	\N
1	weku2dyjdna4jm3oswhr6moz	2024 жылғы университетке түсушінің жол картасы	2026-05-28 13:35:46.332	2026-05-29 13:19:06.733	\N	1	1	kk	\N
5	weku2dyjdna4jm3oswhr6moz	2024 жылғы университетке түсушінің жол картасы	2026-05-28 13:35:46.332	2026-05-29 13:19:06.733	2026-05-29 13:19:06.741	1	1	kk	\N
6	cpbegthh7bgifsminbv763d0	2024 College Applicant Roadmap	2026-05-29 13:19:23.332	2026-05-29 13:19:23.332	\N	1	1	en	\N
7	cpbegthh7bgifsminbv763d0	2024 College Applicant Roadmap	2026-05-29 13:19:23.332	2026-05-29 13:19:23.332	2026-05-29 13:19:23.34	1	1	en	\N
\.


--
-- Data for Name: errors; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.errors (id, document_id, title, subtitle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, home, again) FROM stdin;
1	mtu0rp4i47x110h3uuhykbez	Something went wrong!	An unexpected error occurred	2026-06-04 12:37:12.986	2026-06-04 12:37:12.986	\N	1	1	en	Back to Home	Try again
2	mtu0rp4i47x110h3uuhykbez	Something went wrong!	An unexpected error occurred	2026-06-04 12:37:12.986	2026-06-04 12:37:12.986	2026-06-04 12:37:12.997	1	1	en	Back to Home	Try again
3	gwumnn8c1zeajgx2kk0i901l	Что-то пошло не так!	Произошла непредвиденная ошибка	2026-06-04 12:41:18.249	2026-06-04 12:41:18.249	\N	1	1	ru	Вернуться на главную страницу	Попробуйте ещё раз
4	gwumnn8c1zeajgx2kk0i901l	Что-то пошло не так!	Произошла непредвиденная ошибка	2026-06-04 12:41:18.249	2026-06-04 12:41:18.249	2026-06-04 12:41:18.257	1	1	ru	Вернуться на главную страницу	Попробуйте ещё раз
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.files (id, document_id, name, alternative_text, caption, focal_point, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	bkbpdb1czhb799y7mbl4wp0l	WhatsApp Image 2026-06-11 at 16.21.07.jpeg	\N	\N	\N	1024	1280	{"large": {"ext": ".jpeg", "url": "/uploads/large_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45.jpeg", "hash": "large_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45", "mime": "image/jpeg", "name": "large_WhatsApp Image 2026-06-11 at 16.21.07.jpeg", "path": null, "size": 129.52, "width": 800, "height": 1000, "sizeInBytes": 129519}, "small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45.jpeg", "hash": "small_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45", "mime": "image/jpeg", "name": "small_WhatsApp Image 2026-06-11 at 16.21.07.jpeg", "path": null, "size": 48.98, "width": 400, "height": 500, "sizeInBytes": 48978}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45.jpeg", "hash": "medium_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45", "mime": "image/jpeg", "name": "medium_WhatsApp Image 2026-06-11 at 16.21.07.jpeg", "path": null, "size": 85.74, "width": 600, "height": 750, "sizeInBytes": 85742}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45.jpeg", "hash": "thumbnail_Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2026-06-11 at 16.21.07.jpeg", "path": null, "size": 6.58, "width": 125, "height": 156, "sizeInBytes": 6578}}	Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45	.jpeg	image/jpeg	170.32	/uploads/Whats_App_Image_2026_06_11_at_16_21_07_ede9599a45.jpeg	\N	local	\N	/	2026-06-12 08:49:42.497	2026-06-12 08:49:42.497	2026-06-12 08:49:42.498	1	1	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	api::image.image	image	1
2	1	2	api::image.image	image	1
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.globals (id, document_id, site_name, site_description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: graduates; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.graduates (id, document_id, graduates, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	v8zswce9cngvmwpzc6fdpu70	Бакалавриат	2026-05-29 15:49:18.032	2026-05-29 15:49:18.032	\N	1	1	kk
2	v8zswce9cngvmwpzc6fdpu70	Бакалавриат	2026-05-29 15:49:18.032	2026-05-29 15:49:18.032	2026-05-29 15:49:18.04	1	1	kk
3	minyoaedc4ol87vcwa1lpz94	Магистратура	2026-05-29 15:49:22.487	2026-05-29 15:49:22.487	\N	1	1	kk
4	minyoaedc4ol87vcwa1lpz94	Магистратура	2026-05-29 15:49:22.487	2026-05-29 15:49:22.487	2026-05-29 15:49:22.493	1	1	kk
5	ye7zynwp3hq23e8kp4hhiw2i	Докторантура	2026-05-29 15:49:26.83	2026-05-29 15:49:26.83	\N	1	1	kk
6	ye7zynwp3hq23e8kp4hhiw2i	Докторантура	2026-05-29 15:49:26.83	2026-05-29 15:49:26.83	2026-05-29 15:49:26.835	1	1	kk
7	waumx3si0pfpg6bs4i7rs7f2	Бакалавриат	2026-05-29 16:13:11.061	2026-05-29 16:13:11.061	\N	1	1	ru
8	waumx3si0pfpg6bs4i7rs7f2	Бакалавриат	2026-05-29 16:13:11.061	2026-05-29 16:13:11.061	2026-05-29 16:13:11.069	1	1	ru
9	m2vpuvjf4jupfe3q2dcyzjho	Магистратура	2026-05-29 16:13:15.869	2026-05-29 16:13:15.869	\N	1	1	ru
10	m2vpuvjf4jupfe3q2dcyzjho	Магистратура	2026-05-29 16:13:15.869	2026-05-29 16:13:15.869	2026-05-29 16:13:15.875	1	1	ru
11	t1bj6fiouxj5wxugytuqqoty	Докторантура	2026-05-29 16:13:20.16	2026-05-29 16:13:20.16	\N	1	1	ru
12	t1bj6fiouxj5wxugytuqqoty	Докторантура	2026-05-29 16:13:20.16	2026-05-29 16:13:20.16	2026-05-29 16:13:20.166	1	1	ru
13	t1bj6fiouxj5wxugytuqqoty	Undergraduate	2026-05-29 16:13:54.215	2026-06-11 09:02:26.541	\N	1	1	en
19	t1bj6fiouxj5wxugytuqqoty	Undergraduate	2026-05-29 16:13:54.215	2026-06-11 09:02:26.541	2026-06-11 09:02:26.548	1	1	en
20	i8qjsxato66mljn3h0iqw5g2	Graduate	2026-06-11 09:03:24.14	2026-06-11 09:03:24.14	\N	1	1	en
21	i8qjsxato66mljn3h0iqw5g2	Graduate	2026-06-11 09:03:24.14	2026-06-11 09:03:24.14	2026-06-11 09:03:24.145	1	1	en
22	k161jmvnstlm2845tz4gou7a	Doctoral Studies	2026-06-11 09:03:29.996	2026-06-11 09:03:29.996	\N	1	1	en
23	k161jmvnstlm2845tz4gou7a	Doctoral Studies	2026-06-11 09:03:29.996	2026-06-11 09:03:29.996	2026-06-11 09:03:30.001	1	1	en
\.


--
-- Data for Name: heads; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.heads (id, document_id, heading, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
5	g0v2ibrhi9f7p4mjmpvqol0w	 Admission	2026-05-29 13:32:50.047	2026-05-29 13:32:50.047	\N	1	1	en
6	g0v2ibrhi9f7p4mjmpvqol0w	 Admission	2026-05-29 13:32:50.047	2026-05-29 13:32:50.047	2026-05-29 13:32:50.056	1	1	en
7	qwjlnuw1tjfzyeskrdmkq1uo	Documents	2026-05-29 13:32:59.659	2026-05-29 13:32:59.659	\N	1	1	en
8	qwjlnuw1tjfzyeskrdmkq1uo	Documents	2026-05-29 13:32:59.659	2026-05-29 13:32:59.659	2026-05-29 13:32:59.665	1	1	en
9	mtwrmv38ym6myr8jx05yf5z4	Поступление	2026-05-29 13:33:14.762	2026-05-29 13:33:14.762	\N	1	1	ru
10	mtwrmv38ym6myr8jx05yf5z4	Поступление	2026-05-29 13:33:14.762	2026-05-29 13:33:14.762	2026-05-29 13:33:14.768	1	1	ru
11	vt0r0vyk25hx79x2fdpd7iho	Документы	2026-05-29 13:33:22.059	2026-05-29 13:33:22.059	\N	1	1	ru
12	vt0r0vyk25hx79x2fdpd7iho	Документы	2026-05-29 13:33:22.059	2026-05-29 13:33:22.059	2026-05-29 13:33:22.064	1	1	ru
1	xhw3dtujflc95bvwv6zdhhq7	Қабылдау	2026-05-28 13:04:21.788	2026-05-29 13:33:34.751	\N	1	1	kk
13	xhw3dtujflc95bvwv6zdhhq7	Қабылдау	2026-05-28 13:04:21.788	2026-05-29 13:33:34.751	2026-05-29 13:33:34.758	1	1	kk
3	i3srjz6pdbpgganbogrrwahf	Құжаттар	2026-05-28 13:31:17.541	2026-05-29 13:33:46.7	\N	1	1	kk
14	i3srjz6pdbpgganbogrrwahf	Құжаттар	2026-05-28 13:31:17.541	2026-05-29 13:33:46.7	2026-05-29 13:33:46.708	1	1	kk
15	evymkb96v04221xmkkvtxdt3	Информация для поступающих	2026-06-10 13:46:24.529	2026-06-10 13:46:24.529	\N	1	1	ru
16	evymkb96v04221xmkkvtxdt3	Информация для поступающих	2026-06-10 13:46:24.529	2026-06-10 13:46:24.529	2026-06-10 13:46:24.537	1	1	ru
17	bb0osisio6tpyhz2jru25mlc	Өтініш берушілерге арналған ақпарат	2026-06-10 13:46:57.726	2026-06-10 13:46:57.726	\N	1	1	kk
18	bb0osisio6tpyhz2jru25mlc	Өтініш берушілерге арналған ақпарат	2026-06-10 13:46:57.726	2026-06-10 13:46:57.726	2026-06-10 13:46:57.733	1	1	kk
19	ozii90nkkakwjhp2iuyb1zp7	Information for Prospective Students	2026-06-10 13:47:11.911	2026-06-10 13:47:11.911	\N	1	1	en
20	ozii90nkkakwjhp2iuyb1zp7	Information for Prospective Students	2026-06-10 13:47:11.911	2026-06-10 13:47:11.911	2026-06-10 13:47:11.918	1	1	en
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	mh61qfg2aho2ljmhrfj3flzm	English (en)	en	2026-05-22 15:50:01.441	2026-05-22 15:50:01.441	2026-05-22 15:50:01.442	\N	\N	\N
3	pppclg85x9cl290ypp8kjo3l	Russian	ru	2026-05-29 12:45:04.478	2026-05-29 12:45:04.478	2026-05-29 12:45:04.478	1	1	\N
2	xrpx1s29ld9m6s7mnhcp5l6l	Kazakh	kk	2026-05-29 12:44:51.575	2026-05-29 12:45:09.52	2026-05-29 12:44:51.576	1	1	\N
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.images (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	i791awj7kkts0hfr4wnxdgd8	2026-06-12 08:49:46.174	2026-06-12 08:49:46.174	\N	1	1	\N
2	i791awj7kkts0hfr4wnxdgd8	2026-06-12 08:49:46.174	2026-06-12 08:49:46.174	2026-06-12 08:49:46.184	1	1	\N
\.


--
-- Data for Name: info_admissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.info_admissions (id, document_id, title, subtitle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
24	m2fcd1tuvubjrv22eot5mzuw	Құжаттар	Магистратураға түсу	2026-06-10 14:17:32.418	2026-06-10 14:26:26.993	\N	1	1	kk
34	m2fcd1tuvubjrv22eot5mzuw	Құжаттар	Магистратураға түсу	2026-06-10 14:17:32.418	2026-06-10 14:26:26.993	2026-06-10 14:26:27.003	1	1	kk
21	swr1kpghfrrxj0pkgu3d6y7w	Құжат	Бакалавриатқа түсу	2026-06-10 14:15:23.775	2026-06-10 14:26:38.337	\N	1	1	kk
35	swr1kpghfrrxj0pkgu3d6y7w	Құжат	Бакалавриатқа түсу	2026-06-10 14:15:23.775	2026-06-10 14:26:38.337	2026-06-10 14:26:38.347	1	1	kk
36	gd0vsob1zuvxmcba6iw03wb8	Documents	Getting into the Master's program	2026-06-10 14:28:22.721	2026-06-10 14:28:22.721	\N	1	1	en
37	gd0vsob1zuvxmcba6iw03wb8	Documents	Getting into the Master's program	2026-06-10 14:28:22.721	2026-06-10 14:28:22.721	2026-06-10 14:28:22.729	1	1	en
38	coglj3xxoumshvh01sbesy6i	Documents	Admission to Doctoral Studies	2026-06-10 14:30:16.292	2026-06-10 14:30:16.292	\N	1	1	en
17	hmgkg5ny5jopvkrzulmltvuh	Документы 	Поступление в магистратуру	2026-06-10 14:03:59.039	2026-06-10 14:03:59.039	\N	1	1	ru
18	hmgkg5ny5jopvkrzulmltvuh	Документы 	Поступление в магистратуру	2026-06-10 14:03:59.039	2026-06-10 14:03:59.039	2026-06-10 14:03:59.047	1	1	ru
19	ce4vsdij61fg8b61epiubbvx	Документы 	Поступление в докторантуру	2026-06-10 14:06:14.93	2026-06-10 14:06:14.93	\N	1	1	ru
20	ce4vsdij61fg8b61epiubbvx	Документы 	Поступление в докторантуру	2026-06-10 14:06:14.93	2026-06-10 14:06:14.93	2026-06-10 14:06:14.939	1	1	ru
39	coglj3xxoumshvh01sbesy6i	Documents	Admission to Doctoral Studies	2026-06-10 14:30:16.292	2026-06-10 14:30:16.292	2026-06-10 14:30:16.299	1	1	en
26	a57uat45le505v5mlwbbzxlj	Құжаттар	Докторантураға түсу	2026-06-10 14:18:38.584	2026-06-10 14:18:38.584	\N	1	1	kk
27	a57uat45le505v5mlwbbzxlj	Құжаттар	Докторантураға түсу	2026-06-10 14:18:38.584	2026-06-10 14:18:38.584	2026-06-10 14:18:38.592	1	1	kk
28	mjk503ljpguenbx1oez0920e	Documents	Admission to the Bachelor's degree	2026-06-10 14:21:30.318	2026-06-10 14:21:30.318	\N	1	1	en
29	mjk503ljpguenbx1oez0920e	Documents	Admission to the Bachelor's degree	2026-06-10 14:21:30.318	2026-06-10 14:21:30.318	2026-06-10 14:21:30.326	1	1	en
13	whjenoodbmogztc0tjyc1c78	Документы	Поступление в бакалавриат	2026-06-10 14:01:25.187	2026-06-10 14:22:03.572	\N	1	1	ru
30	whjenoodbmogztc0tjyc1c78	Документы	Поступление в бакалавриат	2026-06-10 14:01:25.187	2026-06-10 14:22:03.572	2026-06-10 14:22:03.584	1	1	ru
\.


--
-- Data for Name: info_admissions_cmps; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.info_admissions_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
123	36	93	shared.links	links	1
124	36	94	shared.links	links	2
125	36	95	shared.links	links	3
126	37	96	shared.links	links	1
127	37	97	shared.links	links	2
128	37	98	shared.links	links	3
129	38	99	shared.links	links	1
130	38	100	shared.links	links	2
131	38	101	shared.links	links	3
132	39	102	shared.links	links	1
133	39	103	shared.links	links	2
134	39	104	shared.links	links	3
39	17	28	shared.links	links	1
40	17	29	shared.links	links	2
41	17	30	shared.links	links	3
42	18	31	shared.links	links	1
43	18	32	shared.links	links	2
44	18	33	shared.links	links	3
45	19	34	shared.links	links	1
46	19	35	shared.links	links	2
47	19	36	shared.links	links	3
48	20	37	shared.links	links	1
49	20	38	shared.links	links	2
50	20	39	shared.links	links	3
65	26	53	shared.links	links	1
66	26	54	shared.links	links	2
67	26	55	shared.links	links	3
68	27	56	shared.links	links	1
69	27	57	shared.links	links	2
70	27	58	shared.links	links	3
71	28	59	shared.links	links	1
72	28	60	shared.links	links	2
73	28	61	shared.links	links	3
74	28	62	shared.links	links	4
75	29	63	shared.links	links	1
76	29	64	shared.links	links	2
77	29	65	shared.links	links	3
78	29	66	shared.links	links	4
59	24	47	shared.links	links	1
60	24	48	shared.links	links	2
61	24	49	shared.links	links	3
27	13	19	shared.links	links	1
30	13	21	shared.links	links	2
35	13	24	shared.links	links	3
82	13	67	shared.links	links	4
83	30	68	shared.links	links	1
84	30	69	shared.links	links	2
85	30	70	shared.links	links	3
86	30	71	shared.links	links	4
112	34	85	shared.links	links	1
113	34	86	shared.links	links	2
114	34	87	shared.links	links	3
51	21	40	shared.links	links	1
54	21	42	shared.links	links	2
55	21	43	shared.links	links	3
118	21	88	shared.links	links	4
119	35	89	shared.links	links	1
120	35	90	shared.links	links	2
121	35	91	shared.links	links	3
122	35	92	shared.links	links	4
\.


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.links (id, document_id, toogis, instagram, youtube, linkedin, facebook, tiktok, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: list_documents; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.list_documents (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, title, subtitle, description) FROM stdin;
3	dsqf32ygg3digtsnisbob2iy	2026-05-26 16:37:13.536	2026-05-26 16:37:13.536	\N	1	1	en	What to prepare?	List of documents	Put together your application before submitting it...
4	dsqf32ygg3digtsnisbob2iy	2026-05-26 16:37:13.536	2026-05-26 16:37:13.536	2026-05-26 16:37:13.548	1	1	en	What to prepare?	List of documents	Put together your application before submitting it...
5	p5yisxjivtoepmceuz8ms3yv	2026-05-29 13:22:13.102	2026-05-29 13:22:13.102	\N	1	1	ru	Что подготовить?	Перечень документов	Соберите пакет до подачи заявления. Оригиналы предъявляются лично в приёмной комиссии.
6	p5yisxjivtoepmceuz8ms3yv	2026-05-29 13:22:13.102	2026-05-29 13:22:13.102	2026-05-29 13:22:13.112	1	1	ru	Что подготовить?	Перечень документов	Соберите пакет до подачи заявления. Оригиналы предъявляются лично в приёмной комиссии.
7	avvauxakdz2ph23r08u131sd	2026-05-29 13:24:25.484	2026-05-29 13:24:25.484	\N	1	1	kk	Мен не дайындауым керек?	Құжаттар тізімі	Өтініш беруден бұрын өтініш пакетін жинап алыңыз. Түпнұсқа құжаттарды қабылдау бөліміне жеке өзіңіз тапсыруыңыз қажет.
8	avvauxakdz2ph23r08u131sd	2026-05-29 13:24:25.484	2026-05-29 13:24:25.484	2026-05-29 13:24:25.493	1	1	kk	Мен не дайындауым керек?	Құжаттар тізімі	Өтініш беруден бұрын өтініш пакетін жинап алыңыз. Түпнұсқа құжаттарды қабылдау бөліміне жеке өзіңіз тапсыруыңыз қажет.
\.


--
-- Data for Name: list_documents_cmps; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.list_documents_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
9	3	9	shared.item	items	1
10	3	10	shared.item	items	2
11	3	11	shared.item	items	3
12	3	12	shared.item	items	4
13	3	13	shared.item	items	5
14	3	14	shared.item	items	6
15	3	15	shared.item	items	7
16	3	16	shared.item	items	8
17	3	17	shared.item	items	9
18	3	18	shared.item	items	10
19	4	19	shared.item	items	1
20	4	20	shared.item	items	2
21	4	21	shared.item	items	3
22	4	22	shared.item	items	4
23	4	23	shared.item	items	5
24	4	24	shared.item	items	6
25	4	25	shared.item	items	7
26	4	26	shared.item	items	8
27	4	27	shared.item	items	9
28	4	28	shared.item	items	10
29	5	29	shared.item	items	1
30	5	30	shared.item	items	2
31	5	31	shared.item	items	3
32	5	32	shared.item	items	4
33	5	33	shared.item	items	5
34	5	34	shared.item	items	6
35	5	35	shared.item	items	7
36	5	36	shared.item	items	8
37	5	37	shared.item	items	9
38	5	38	shared.item	items	10
39	6	39	shared.item	items	1
40	6	40	shared.item	items	2
41	6	41	shared.item	items	3
42	6	42	shared.item	items	4
43	6	43	shared.item	items	5
44	6	44	shared.item	items	6
45	6	45	shared.item	items	7
46	6	46	shared.item	items	8
47	6	47	shared.item	items	9
48	6	48	shared.item	items	10
49	7	49	shared.item	items	1
50	7	50	shared.item	items	2
51	7	51	shared.item	items	3
52	7	52	shared.item	items	4
53	7	53	shared.item	items	5
54	7	54	shared.item	items	6
55	7	55	shared.item	items	7
56	7	56	shared.item	items	8
57	7	57	shared.item	items	9
58	7	58	shared.item	items	10
59	8	59	shared.item	items	1
60	8	60	shared.item	items	2
61	8	61	shared.item	items	3
62	8	62	shared.item	items	4
63	8	63	shared.item	items	5
64	8	64	shared.item	items	6
65	8	65	shared.item	items	7
66	8	66	shared.item	items	8
67	8	67	shared.item	items	9
68	8	68	shared.item	items	10
\.


--
-- Data for Name: news_articles; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.news_articles (id, document_id, title, published, description, subtitle, descriptor, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: professions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.professions (id, document_id, title, code, subtitle, graduates, form, url, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
25	fp5ivjafson3xoj7w0uhzt9i	История и религиоведение (Major)	6B01601	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/istoriya-i-religiovedenie-major/	2026-06-11 07:36:32.728	2026-06-11 07:36:32.728	\N	1	1	ru
26	fp5ivjafson3xoj7w0uhzt9i	История и религиоведение (Major)	6B01601	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/istoriya-i-religiovedenie-major/	2026-06-11 07:36:32.728	2026-06-11 07:36:32.728	2026-06-11 07:36:32.74	1	1	ru
27	vsy7jaurrfqddqgxc8jo9qv2	Банковское дело и финансовый менеджмент	6В04106	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/bankovskoe-delo-i-finansovyj-menedzhment-major-minor/	2026-06-11 07:36:57.101	2026-06-11 07:36:57.101	\N	1	1	ru
28	vsy7jaurrfqddqgxc8jo9qv2	Банковское дело и финансовый менеджмент	6В04106	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/bankovskoe-delo-i-finansovyj-menedzhment-major-minor/	2026-06-11 07:36:57.101	2026-06-11 07:36:57.101	2026-06-11 07:36:57.109	1	1	ru
29	jwlio7mqxcpd9qemfcfdw4tw	Переводческое дело (английский, немецкий/китайский) (Major / Minor)	6B02302	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-major-minor/	2026-06-11 07:37:32.693	2026-06-11 07:37:32.693	\N	1	1	ru
30	jwlio7mqxcpd9qemfcfdw4tw	Переводческое дело (английский, немецкий/китайский) (Major / Minor)	6B02302	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-major-minor/	2026-06-11 07:37:32.693	2026-06-11 07:37:32.693	2026-06-11 07:37:32.699	1	1	ru
31	phic2bwvbchw4w92lij3crbf	Эксплуатация и ремонт автомобильного транспорта	6B07103	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/ekspluataciya-i-remont-avtomobilnogo-transporta/	2026-06-11 07:38:00.838	2026-06-11 07:38:00.838	\N	1	1	ru
32	phic2bwvbchw4w92lij3crbf	Эксплуатация и ремонт автомобильного транспорта	6B07103	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/ekspluataciya-i-remont-avtomobilnogo-transporta/	2026-06-11 07:38:00.838	2026-06-11 07:38:00.838	2026-06-11 07:38:00.845	1	1	ru
33	hirndp4hj937zhbo2f5m0twd	Аграрная техника и технология	6B08701	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/agrarnaya-tehnika-i-tehnologiya/	2026-06-11 07:38:38.379	2026-06-11 07:38:38.379	\N	1	1	ru
34	hirndp4hj937zhbo2f5m0twd	Аграрная техника и технология	6B08701	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/agrarnaya-tehnika-i-tehnologiya/	2026-06-11 07:38:38.379	2026-06-11 07:38:38.379	2026-06-11 07:38:38.385	1	1	ru
35	ndb0ccd0dgf7wop3q1ehs421	Агрономия	6В08103	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/agronomiya-bachelor/	2026-06-11 07:38:57.454	2026-06-11 07:38:57.454	\N	1	1	ru
36	ndb0ccd0dgf7wop3q1ehs421	Агрономия	6В08103	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/agronomiya-bachelor/	2026-06-11 07:38:57.454	2026-06-11 07:38:57.454	2026-06-11 07:38:57.461	1	1	ru
37	keou33bwx2t889log175eiwz	Информационные системы	6B06104	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/informacionnye-sistemy/	2026-06-11 07:39:14.902	2026-06-11 07:39:14.902	\N	1	1	ru
38	keou33bwx2t889log175eiwz	Информационные системы	6B06104	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/informacionnye-sistemy/	2026-06-11 07:39:14.902	2026-06-11 07:39:14.902	2026-06-11 07:39:14.907	1	1	ru
39	usmi1hgg7igfngf90cnegldm	Технология хранения и переработки зерна	6B07203	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/tehnologiya-hraneniya-i-pererabotki-zerna/	2026-06-11 07:39:34.734	2026-06-11 07:39:34.734	\N	1	1	ru
40	usmi1hgg7igfngf90cnegldm	Технология хранения и переработки зерна	6B07203	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/tehnologiya-hraneniya-i-pererabotki-zerna/	2026-06-11 07:39:34.734	2026-06-11 07:39:34.734	2026-06-11 07:39:34.74	1	1	ru
41	riari4yixyatxtqooryos18g	Безопасность жизнедеятельности и защита окружающей среды	6B11203	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/bezopasnost-zhiznedeyatelnosti-i-zashita-okruzhayushej-sredy/	2026-06-11 07:39:51.854	2026-06-11 07:39:51.854	\N	1	1	ru
42	riari4yixyatxtqooryos18g	Безопасность жизнедеятельности и защита окружающей среды	6B11203	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/bezopasnost-zhiznedeyatelnosti-i-zashita-okruzhayushej-sredy/	2026-06-11 07:39:51.854	2026-06-11 07:39:51.854	2026-06-11 07:39:51.86	1	1	ru
43	incu4cirmop1804zkkij9c39	Биология	6B05101	Биология, Химия	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biologiya/	2026-06-11 07:40:08.028	2026-06-11 07:40:08.028	\N	1	1	ru
44	incu4cirmop1804zkkij9c39	Биология	6B05101	Биология, Химия	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biologiya/	2026-06-11 07:40:08.028	2026-06-11 07:40:08.028	2026-06-11 07:40:08.033	1	1	ru
45	mzwz2yxy5ms27ddmmbay0mk9	Биология	6B01514	Биология, Химия	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biologiya-6b01514/	2026-06-11 07:41:06.712	2026-06-11 07:41:06.712	\N	1	1	ru
46	mzwz2yxy5ms27ddmmbay0mk9	Биология	6B01514	Биология, Химия	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biologiya-6b01514/	2026-06-11 07:41:06.712	2026-06-11 07:41:06.712	2026-06-11 07:41:06.718	1	1	ru
47	brioz9c2qe243plowfvmu6xr	Биотехнология по отраслям	6В05102	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biotehnologiya-po-otraslyam/	2026-06-11 07:41:22.176	2026-06-11 07:41:22.176	\N	1	1	ru
48	brioz9c2qe243plowfvmu6xr	Биотехнология по отраслям	6В05102	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biotehnologiya-po-otraslyam/	2026-06-11 07:41:22.176	2026-06-11 07:41:22.176	2026-06-11 07:41:22.182	1	1	ru
73	k14drtydu09ftu5e00cgonrm	Физика	6B05301	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizika/	2026-06-11 07:46:53.262	2026-06-11 07:46:53.262	\N	1	1	ru
49	buy92c18n60749hh3vldv30i	Бухгалтерский учет и экономический анализ	6B04105	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/buhgalterskij-uchet-i-ekonomicheskij-analiz/	2026-06-11 07:41:39.303	2026-06-11 07:41:39.303	\N	1	1	ru
50	buy92c18n60749hh3vldv30i	Бухгалтерский учет и экономический анализ	6B04105	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/buhgalterskij-uchet-i-ekonomicheskij-analiz/	2026-06-11 07:41:39.303	2026-06-11 07:41:39.303	2026-06-11 07:41:39.31	1	1	ru
51	y3au973fy7ts4f7my7swhtqv	География - История	6B01502	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/geografiya-istoriya/	2026-06-11 07:41:58.489	2026-06-11 07:41:58.489	\N	1	1	ru
52	y3au973fy7ts4f7my7swhtqv	География - История	6B01502	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/geografiya-istoriya/	2026-06-11 07:41:58.489	2026-06-11 07:41:58.489	2026-06-11 07:41:58.496	1	1	ru
53	ixwrc6cu461vf24ipjb8y4h1	Горное дело	6B07202	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/gornoe-delo/	2026-06-11 07:43:03.011	2026-06-11 07:43:03.011	\N	1	1	ru
54	ixwrc6cu461vf24ipjb8y4h1	Горное дело	6B07202	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/gornoe-delo/	2026-06-11 07:43:03.011	2026-06-11 07:43:03.011	2026-06-11 07:43:03.017	1	1	ru
55	tuiju7pl0wrga8d2x6cohbjd	Цифровое проектирование зданий и сооружений	6B07303	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/cifrovoe-proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 07:43:39.225	2026-06-11 07:43:39.225	\N	1	1	ru
56	tuiju7pl0wrga8d2x6cohbjd	Цифровое проектирование зданий и сооружений	6B07303	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/cifrovoe-proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 07:43:39.225	2026-06-11 07:43:39.225	2026-06-11 07:43:39.231	1	1	ru
57	mrql0pzp8uadrumy5gmy6cuo	Научная история	6B02201	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/nauchnaya-istoriya/	2026-06-11 07:43:55.79	2026-06-11 07:43:55.79	\N	1	1	ru
58	mrql0pzp8uadrumy5gmy6cuo	Научная история	6B02201	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/nauchnaya-istoriya/	2026-06-11 07:43:55.79	2026-06-11 07:43:55.79	2026-06-11 07:43:55.797	1	1	ru
59	vckiqhzzhkwzsj66m88cewup	Физическая культура и спорт	6B01403	Творческий экзамен	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizicheskaya-kultura-i-sport/	2026-06-11 07:44:12.809	2026-06-11 07:44:12.809	\N	1	1	ru
60	vckiqhzzhkwzsj66m88cewup	Физическая культура и спорт	6B01403	Творческий экзамен	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizicheskaya-kultura-i-sport/	2026-06-11 07:44:12.809	2026-06-11 07:44:12.809	2026-06-11 07:44:12.816	1	1	ru
61	mwo71mryh6y5zedk78a6lshy	Дизайн и компьютерная графика	6B02102	Творческий экзамен - черчение, Творческий экзамен - рисунок (графика)	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/dizajn-i-kompyuternaya-grafika/	2026-06-11 07:44:31.012	2026-06-11 07:44:31.012	\N	1	1	ru
62	mwo71mryh6y5zedk78a6lshy	Дизайн и компьютерная графика	6B02102	Творческий экзамен - черчение, Творческий экзамен - рисунок (графика)	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/dizajn-i-kompyuternaya-grafika/	2026-06-11 07:44:31.012	2026-06-11 07:44:31.012	2026-06-11 07:44:31.017	1	1	ru
63	nb864g1i1p5p7fuzgv7376pv	Вычислительная техника и программное обеспечение (безопасность компьютерных систем и сетей)	6B06102	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/vychislitelnaya-tehnika-i-programmnoe-obespechenie-bezopasnost-kompyuternyh-sistem-i-setej/	2026-06-11 07:44:50.876	2026-06-11 07:44:50.876	\N	1	1	ru
64	nb864g1i1p5p7fuzgv7376pv	Вычислительная техника и программное обеспечение (безопасность компьютерных систем и сетей)	6B06102	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/vychislitelnaya-tehnika-i-programmnoe-obespechenie-bezopasnost-kompyuternyh-sistem-i-setej/	2026-06-11 07:44:50.876	2026-06-11 07:44:50.876	2026-06-11 07:44:50.883	1	1	ru
65	dhyaeaok868v8o1cgyy1umn8	BIM проектирование зданий и сооружений	6B07301	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 07:45:36.562	2026-06-11 07:45:36.562	\N	1	1	ru
66	dhyaeaok868v8o1cgyy1umn8	BIM проектирование зданий и сооружений	6B07301	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 07:45:36.562	2026-06-11 07:45:36.562	2026-06-11 07:45:36.567	1	1	ru
67	osqv0i7prg8o5d1cwpkgd6f1	Психология	6B03101	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/psihologiya/	2026-06-11 07:45:54.613	2026-06-11 07:45:54.613	\N	1	1	ru
68	osqv0i7prg8o5d1cwpkgd6f1	Психология	6B03101	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/psihologiya/	2026-06-11 07:45:54.613	2026-06-11 07:45:54.613	2026-06-11 07:45:54.62	1	1	ru
69	sg7clq7ku3ub7guq960h8954	Технология производства продукции животноводства	6B08201	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/tehnologiya-proizvodstva-produkcii-zhivotnovodstva/	2026-06-11 07:46:13.218	2026-06-11 07:46:13.218	\N	1	1	ru
70	sg7clq7ku3ub7guq960h8954	Технология производства продукции животноводства	6B08201	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/tehnologiya-proizvodstva-produkcii-zhivotnovodstva/	2026-06-11 07:46:13.218	2026-06-11 07:46:13.218	2026-06-11 07:46:13.224	1	1	ru
71	dzlq4uue9sc51fbidrg0knwq	Туризм	6B11102	География, Иностранный язык	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/tourizm/	2026-06-11 07:46:31.309	2026-06-11 07:46:31.309	\N	1	1	ru
72	dzlq4uue9sc51fbidrg0knwq	Туризм	6B11102	География, Иностранный язык	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/tourizm/	2026-06-11 07:46:31.309	2026-06-11 07:46:31.309	2026-06-11 07:46:31.314	1	1	ru
74	k14drtydu09ftu5e00cgonrm	Физика	6B05301	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizika/	2026-06-11 07:46:53.262	2026-06-11 07:46:53.262	2026-06-11 07:46:53.267	1	1	ru
75	h332hfqdm89324l1haqb5s56	Физика - информатика	6В01510	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizika-informatika/	2026-06-11 07:47:30.486	2026-06-11 07:47:30.486	\N	1	1	ru
76	h332hfqdm89324l1haqb5s56	Физика - информатика	6В01510	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizika-informatika/	2026-06-11 07:47:30.486	2026-06-11 07:47:30.486	2026-06-11 07:47:30.492	1	1	ru
77	jusod61dq01ghxm8x87cvcgi	Физика (полиязычное обучение)	6В01511	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizika-poliyazychnoe-obuchenie/	2026-06-11 07:47:55.978	2026-06-11 07:47:55.978	\N	1	1	ru
78	jusod61dq01ghxm8x87cvcgi	Физика (полиязычное обучение)	6В01511	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizika-poliyazychnoe-obuchenie/	2026-06-11 07:47:55.978	2026-06-11 07:47:55.978	2026-06-11 07:47:55.984	1	1	ru
79	l3067lj8vo67vle70eetcra1	Информатика и робототехника (полиязычное обучение)	6В01513	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/informatika-i-robototehnika-poliyazychnoe-obuchenie/	2026-06-11 07:48:13.555	2026-06-11 07:48:13.555	\N	1	1	ru
80	l3067lj8vo67vle70eetcra1	Информатика и робототехника (полиязычное обучение)	6В01513	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/informatika-i-robototehnika-poliyazychnoe-obuchenie/	2026-06-11 07:48:13.555	2026-06-11 07:48:13.555	2026-06-11 07:48:13.56	1	1	ru
81	jckt74tbud4fzlmcie82c30f	Химия и биология (полиязычное обучение)	6В01507	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/himiya-biologiya-poliyazychnoe-obuchenie/	2026-06-11 07:48:31.002	2026-06-11 07:48:31.002	\N	1	1	ru
82	jckt74tbud4fzlmcie82c30f	Химия и биология (полиязычное обучение)	6В01507	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/himiya-biologiya-poliyazychnoe-obuchenie/	2026-06-11 07:48:31.002	2026-06-11 07:48:31.002	2026-06-11 07:48:31.009	1	1	ru
83	ytv40j8hdb1hjlthd5pptkvy	Иностранный язык: два иностранных языка (английский, немецкий/китайский)	6B01701	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-anglijskij-nemeckijkitajskij/	2026-06-11 07:48:48.393	2026-06-11 07:48:48.393	\N	1	1	ru
84	ytv40j8hdb1hjlthd5pptkvy	Иностранный язык: два иностранных языка (английский, немецкий/китайский)	6B01701	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-anglijskij-nemeckijkitajskij/	2026-06-11 07:48:48.393	2026-06-11 07:48:48.393	2026-06-11 07:48:48.4	1	1	ru
85	i7zbj1jdw5cv6uq4qc062e82	Экология	6B05201	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/ekologiya/	2026-06-11 07:49:14.933	2026-06-11 07:49:14.933	\N	1	1	ru
86	i7zbj1jdw5cv6uq4qc062e82	Экология	6B05201	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/ekologiya/	2026-06-11 07:49:14.933	2026-06-11 07:49:14.933	2026-06-11 07:49:14.94	1	1	ru
87	yd4e9q15zthvss3goieqwkwa	Юриспруденция	6B04201	Всемирная история, Человек, общество, право	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/yurisprudenciya/	2026-06-11 07:49:30.803	2026-06-11 07:49:30.803	\N	1	1	ru
88	yd4e9q15zthvss3goieqwkwa	Юриспруденция	6B04201	Всемирная история, Человек, общество, право	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/yurisprudenciya/	2026-06-11 07:49:30.803	2026-06-11 07:49:30.803	2026-06-11 07:49:30.808	1	1	ru
89	rfdty68eq4ljuib791qctnfd	Общая медицина (Major)	6В10101 Набор по данной образовательной программе не осуществляется	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/obshaya-medicina-major/	2026-06-11 07:50:28.013	2026-06-11 07:50:28.013	\N	1	1	ru
90	rfdty68eq4ljuib791qctnfd	Общая медицина (Major)	6В10101 Набор по данной образовательной программе не осуществляется	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/obshaya-medicina-major/	2026-06-11 07:50:28.013	2026-06-11 07:50:28.013	2026-06-11 07:50:28.019	1	1	ru
91	vx7jd9397dct1sy9ijlj1kf3	Инженер 3D моделирования в горном деле	6B07205	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inzhener-3d-modelirovaniya-v-gornom-dele/	2026-06-11 07:50:49.088	2026-06-11 07:50:49.088	\N	1	1	ru
92	vx7jd9397dct1sy9ijlj1kf3	Инженер 3D моделирования в горном деле	6B07205	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inzhener-3d-modelirovaniya-v-gornom-dele/	2026-06-11 07:50:49.088	2026-06-11 07:50:49.088	2026-06-11 07:50:49.092	1	1	ru
93	s6jdz5v0inlf2c5gtffh3t5k	Казахский язык и литература	6В01707	Казахский язык, Казахская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/aza-tilinde-oytatyn-zhne-oytpajtyn-mektepterdegi-aza-tili-men-debieti/	2026-06-11 07:52:49.275	2026-06-11 07:52:49.275	\N	1	1	ru
94	s6jdz5v0inlf2c5gtffh3t5k	Казахский язык и литература	6В01707	Казахский язык, Казахская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/aza-tilinde-oytatyn-zhne-oytpajtyn-mektepterdegi-aza-tili-men-debieti/	2026-06-11 07:52:49.275	2026-06-11 07:52:49.275	2026-06-11 07:52:49.281	1	1	ru
95	fye4llehri5hyn1uummx6q4j	Казахская филология	6B02301	Казахский язык, Казахская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/kazahskaya-filologiya/	2026-06-11 07:53:29.848	2026-06-11 07:53:29.848	\N	1	1	ru
96	fye4llehri5hyn1uummx6q4j	Казахская филология	6B02301	Казахский язык, Казахская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/kazahskaya-filologiya/	2026-06-11 07:53:29.848	2026-06-11 07:53:29.848	2026-06-11 07:53:29.853	1	1	ru
97	tfbskbvzlmn1t9b4cepv8v0s	Лесные ресурсы и лесоводство	6B08301	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/lesnye-resursy-i-lesovodstvo/	2026-06-11 07:53:47.351	2026-06-11 07:53:47.351	\N	1	1	ru
98	tfbskbvzlmn1t9b4cepv8v0s	Лесные ресурсы и лесоводство	6B08301	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/lesnye-resursy-i-lesovodstvo/	2026-06-11 07:53:47.351	2026-06-11 07:53:47.351	2026-06-11 07:53:47.358	1	1	ru
99	va1ts8npkglj3hfbn8est5se	Математика (полиязычное обучение)	6В01506	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/matematika-poliyazychnoe-obuchenie/	2026-06-11 07:54:10.131	2026-06-11 07:54:10.131	\N	1	1	ru
100	va1ts8npkglj3hfbn8est5se	Математика (полиязычное обучение)	6В01506	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/matematika-poliyazychnoe-obuchenie/	2026-06-11 07:54:10.131	2026-06-11 07:54:10.131	2026-06-11 07:54:10.137	1	1	ru
101	a9nal8sa9l7leaiucntdlxzd	Математика - Информатика	6В01508	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/matematika-informatika/	2026-06-11 07:54:38.23	2026-06-11 07:54:38.23	\N	1	1	ru
102	a9nal8sa9l7leaiucntdlxzd	Математика - Информатика	6В01508	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/matematika-informatika/	2026-06-11 07:54:38.23	2026-06-11 07:54:38.23	2026-06-11 07:54:38.236	1	1	ru
103	d6idwtwk97fl4lykf66lbijs	Математика - Физика	6В01509	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/matematika-fizika/	2026-06-11 07:55:01.006	2026-06-11 07:55:01.006	\N	1	1	ru
104	d6idwtwk97fl4lykf66lbijs	Математика - Физика	6В01509	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/matematika-fizika/	2026-06-11 07:55:01.006	2026-06-11 07:55:01.006	2026-06-11 07:55:01.012	1	1	ru
105	m2gecz2wtvg5uj43495h4ih2	Дошкольное образование (IP)	6B01202	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/doshkolnoe-obuchenie-i-vospitanie-major/	2026-06-11 08:03:00.694	2026-06-11 08:03:00.694	\N	1	1	ru
106	m2gecz2wtvg5uj43495h4ih2	Дошкольное образование (IP)	6B01202	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/doshkolnoe-obuchenie-i-vospitanie-major/	2026-06-11 08:03:00.694	2026-06-11 08:03:00.694	2026-06-11 08:03:00.699	1	1	ru
107	f885dhs3q1v0aro6uvmrjmoh	Химия и биология в основной школе (полиязычное обучение)	6В01504	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/himiya-i-biologiya-v-osnovnoj-shkole-poliyazychnoe-obuchenie/	2026-06-11 08:03:19.027	2026-06-11 08:03:19.027	\N	1	1	ru
108	f885dhs3q1v0aro6uvmrjmoh	Химия и биология в основной школе (полиязычное обучение)	6В01504	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/himiya-i-biologiya-v-osnovnoj-shkole-poliyazychnoe-obuchenie/	2026-06-11 08:03:19.027	2026-06-11 08:03:19.027	2026-06-11 08:03:19.033	1	1	ru
109	stg9t3fbcoywpbtogx3d6gb1	Русский язык и литература в школах с русским и нерусским языками обучения	6В01708	Русский язык, Русская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/russkij-yazyk-i-literatura-v-shkolah-s-russkim-i-nerusskim-yazykami-obucheniya/	2026-06-11 08:03:48.765	2026-06-11 08:03:48.765	\N	1	1	ru
110	stg9t3fbcoywpbtogx3d6gb1	Русский язык и литература в школах с русским и нерусским языками обучения	6В01708	Русский язык, Русская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/russkij-yazyk-i-literatura-v-shkolah-s-russkim-i-nerusskim-yazykami-obucheniya/	2026-06-11 08:03:48.765	2026-06-11 08:03:48.765	2026-06-11 08:03:48.773	1	1	ru
111	rlg69apcmg578ddq1h3idheh	Педагогика и психология	6B01101	Бакалавриат	Биология, География	Очная	https://shokan.edu.kz/ru/educational-programs/pedagogika-i-psihologiya/	2026-06-11 08:04:05.223	2026-06-11 08:04:05.223	\N	1	1	ru
112	rlg69apcmg578ddq1h3idheh	Педагогика и психология	6B01101	Бакалавриат	Биология, География	Очная	https://shokan.edu.kz/ru/educational-programs/pedagogika-i-psihologiya/	2026-06-11 08:04:05.223	2026-06-11 08:04:05.223	2026-06-11 08:04:05.229	1	1	ru
113	ihkimit3br6m6yamuzbh3jd0	Начальное образование (IP)	6В01302	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya/	2026-06-11 08:04:26.202	2026-06-11 08:04:26.202	\N	1	1	ru
114	ihkimit3br6m6yamuzbh3jd0	Начальное образование (IP)	6В01302	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya/	2026-06-11 08:04:26.202	2026-06-11 08:04:26.202	2026-06-11 08:04:26.206	1	1	ru
115	hzbdxv9w27pepp65avgapmgu	Почвоведение и агрохимия	6B08102	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/pochvovedenie-i-agrohimiya-6b08102/	2026-06-11 08:05:33.241	2026-06-11 08:05:33.241	\N	1	1	ru
116	hzbdxv9w27pepp65avgapmgu	Почвоведение и агрохимия	6B08102	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/pochvovedenie-i-agrohimiya-6b08102/	2026-06-11 08:05:33.241	2026-06-11 08:05:33.241	2026-06-11 08:05:33.245	1	1	ru
117	r7jezssku19ra3u95l4xn9lc	Иностранный язык: два иностранных языка в основной школе (немецкий, английский)	6B01703	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-v-osnovnoj-shkole-nemeckij-anglijskij/	2026-06-11 08:05:49.921	2026-06-11 08:05:49.921	\N	1	1	ru
118	r7jezssku19ra3u95l4xn9lc	Иностранный язык: два иностранных языка в основной школе (немецкий, английский)	6B01703	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-v-osnovnoj-shkole-nemeckij-anglijskij/	2026-06-11 08:05:49.921	2026-06-11 08:05:49.921	2026-06-11 08:05:49.928	1	1	ru
119	nw31eq5qsah7171n396mjf77	Теология	6В02202	Творческий экзамен	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/teologiya/	2026-06-11 08:06:06.401	2026-06-11 08:06:06.401	\N	1	1	ru
120	nw31eq5qsah7171n396mjf77	Теология	6В02202	Творческий экзамен	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/teologiya/	2026-06-11 08:06:06.401	2026-06-11 08:06:06.401	2026-06-11 08:06:06.408	1	1	ru
121	frbnzbfal3808784g2owbafi	Обогащение полезных ископаемых	6B07206	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/obogashenie-poleznyh-iskopaemyh1/	2026-06-11 08:06:30.123	2026-06-11 08:06:30.123	\N	1	1	ru
122	frbnzbfal3808784g2owbafi	Обогащение полезных ископаемых	6B07206	Математика, Физика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/obogashenie-poleznyh-iskopaemyh1/	2026-06-11 08:06:30.123	2026-06-11 08:06:30.123	2026-06-11 08:06:30.131	1	1	ru
123	gjwmlpj5332lv0okvw1ft8dy	Наука о данных (Data Science)	6В06105	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/6v06105-data-science/	2026-06-11 08:07:07.614	2026-06-11 08:07:07.614	\N	1	1	ru
124	gjwmlpj5332lv0okvw1ft8dy	Наука о данных (Data Science)	6В06105	Математика, Информатика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/6v06105-data-science/	2026-06-11 08:07:07.614	2026-06-11 08:07:07.614	2026-06-11 08:07:07.621	1	1	ru
125	ggxsgh1zker73q8rhbh8475r	Менеджмент в отраслях	6В04103	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/menedzhment-v-otraslyah-major-minor/	2026-06-11 08:07:33.217	2026-06-11 08:07:33.217	\N	1	1	ru
126	ggxsgh1zker73q8rhbh8475r	Менеджмент в отраслях	6В04103	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/menedzhment-v-otraslyah-major-minor/	2026-06-11 08:07:33.217	2026-06-11 08:07:33.217	2026-06-11 08:07:33.223	1	1	ru
127	k2yb5cz9s53jbfitmy5avb8f	Общественное здоровье	6В10102	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/obshestvennoe-zdorove/	2026-06-11 08:07:48.156	2026-06-11 08:07:48.156	\N	1	1	ru
128	k2yb5cz9s53jbfitmy5avb8f	Общественное здоровье	6В10102	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/obshestvennoe-zdorove/	2026-06-11 08:07:48.156	2026-06-11 08:07:48.156	2026-06-11 08:07:48.161	1	1	ru
129	cqpoa3b1eoyk87g7t4y4w8im	Казахский язык и литература в школах с неказахским языком обучения	6В01706	Казахский язык, Казахская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/kazahskij-yazyk-i-literatura-v-shkolah-s-nekazahskim-yazykom-obucheniya/	2026-06-11 08:08:04.906	2026-06-11 08:08:04.906	\N	1	1	ru
130	cqpoa3b1eoyk87g7t4y4w8im	Казахский язык и литература в школах с неказахским языком обучения	6В01706	Казахский язык, Казахская литература	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/kazahskij-yazyk-i-literatura-v-shkolah-s-nekazahskim-yazykom-obucheniya/	2026-06-11 08:08:04.906	2026-06-11 08:08:04.906	2026-06-11 08:08:04.913	1	1	ru
131	b1vsp17p67njxyfudumailsw	Психология IP	6B01103	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/psihologiya-v-obrazovanii/	2026-06-11 08:08:19.537	2026-06-11 08:08:19.537	\N	1	1	ru
132	b1vsp17p67njxyfudumailsw	Психология IP	6B01103	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/psihologiya-v-obrazovanii/	2026-06-11 08:08:19.537	2026-06-11 08:08:19.537	2026-06-11 08:08:19.543	1	1	ru
133	l3se5iyg3zugcmrt9uk2dlgd	Медицина	6В10104	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/6v10104-medicina-major/	2026-06-11 08:08:38.395	2026-06-11 08:08:38.395	\N	1	1	ru
134	l3se5iyg3zugcmrt9uk2dlgd	Медицина	6В10104	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/6v10104-medicina-major/	2026-06-11 08:08:38.395	2026-06-11 08:08:38.395	2026-06-11 08:08:38.401	1	1	ru
135	vo4mjcqrvytdrgb73dqwz79d	Химия (IP)	6B01534	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/himiyaip/	2026-06-11 08:09:01.716	2026-06-11 08:09:01.716	\N	1	1	ru
136	vo4mjcqrvytdrgb73dqwz79d	Химия (IP)	6B01534	Химия, Биология	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/himiyaip/	2026-06-11 08:09:01.716	2026-06-11 08:09:01.716	2026-06-11 08:09:01.723	1	1	ru
137	wv0nblxbk9ea25l8ni8unthw	Переводческое дело (английский, немецкий/китайский) (Университет Миколос Ромириса, Литва)	6B02302	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-dvudiplomnaya-kokshetauskij-universitet-imshualihanova-universitet-mikolos-romirisa-litva/	2026-06-11 08:09:24.36	2026-06-11 08:09:24.36	\N	1	1	ru
138	wv0nblxbk9ea25l8ni8unthw	Переводческое дело (английский, немецкий/китайский) (Университет Миколос Ромириса, Литва)	6B02302	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-dvudiplomnaya-kokshetauskij-universitet-imshualihanova-universitet-mikolos-romirisa-litva/	2026-06-11 08:09:24.36	2026-06-11 08:09:24.36	2026-06-11 08:09:24.366	1	1	ru
139	s24eehun9u1unczgcdwu3gqz	Художественное образование (IP)	6B01416	Творческий экзамен - рисунок (графика), Творческий экзамен - живопись	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/hudozhestvennoe-obrazovanie-ip/	2026-06-11 08:09:39.59	2026-06-11 08:09:39.59	\N	1	1	ru
140	s24eehun9u1unczgcdwu3gqz	Художественное образование (IP)	6B01416	Творческий экзамен - рисунок (графика), Творческий экзамен - живопись	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/hudozhestvennoe-obrazovanie-ip/	2026-06-11 08:09:39.59	2026-06-11 08:09:39.59	2026-06-11 08:09:39.599	1	1	ru
141	aexpjm7q1qqw0tzksxw886ol	Трудовое обучение и основы предпринимательства (IP)	6B01420	Творческий экзамен - черчение, Творческий экзамен - рисунок (графика)	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/trudovoe-obuchenie-i-osnovy-predprinimatelstva-ip/	2026-06-11 08:10:02.568	2026-06-11 08:10:02.568	\N	1	1	ru
142	aexpjm7q1qqw0tzksxw886ol	Трудовое обучение и основы предпринимательства (IP)	6B01420	Творческий экзамен - черчение, Творческий экзамен - рисунок (графика)	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/trudovoe-obuchenie-i-osnovy-predprinimatelstva-ip/	2026-06-11 08:10:02.568	2026-06-11 08:10:02.568	2026-06-11 08:10:02.573	1	1	ru
143	vtt4sgmrynd3pydj34wkb6h4	Биология (IP)	6B01533	Биология, Химия	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biologiya-6b01533/	2026-06-11 08:10:25.486	2026-06-11 08:10:25.486	\N	1	1	ru
144	vtt4sgmrynd3pydj34wkb6h4	Биология (IP)	6B01533	Биология, Химия	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/biologiya-6b01533/	2026-06-11 08:10:25.486	2026-06-11 08:10:25.486	2026-06-11 08:10:25.492	1	1	ru
145	pmus0b48v8v37ji5ltvspl0m	Машиностроение	6B07104	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/mashinostroenie/	2026-06-11 08:10:50.051	2026-06-11 08:10:50.051	\N	1	1	ru
146	pmus0b48v8v37ji5ltvspl0m	Машиностроение	6B07104	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/mashinostroenie/	2026-06-11 08:10:50.051	2026-06-11 08:10:50.051	2026-06-11 08:10:50.056	1	1	ru
147	ey5b4iuzbnv5zn8xxmd40y4k	Транспорт, транспортная техника и технологии	6B07105	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/transport-transportnaya-tehnika-i-tehnologii/	2026-06-11 08:11:06.172	2026-06-11 08:11:06.172	\N	1	1	ru
148	ey5b4iuzbnv5zn8xxmd40y4k	Транспорт, транспортная техника и технологии	6B07105	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/transport-transportnaya-tehnika-i-tehnologii/	2026-06-11 08:11:06.172	2026-06-11 08:11:06.172	2026-06-11 08:11:06.178	1	1	ru
149	xa35pshhd69sjuopo79azndk	Глобальный менеджмент («Woosong» Южная Корея)	6В04107	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/globalnyj-menedzhment/	2026-06-11 08:11:21.95	2026-06-11 08:11:21.95	\N	1	1	ru
150	xa35pshhd69sjuopo79azndk	Глобальный менеджмент («Woosong» Южная Корея)	6В04107	Математика, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/globalnyj-menedzhment/	2026-06-11 08:11:21.95	2026-06-11 08:11:21.95	2026-06-11 08:11:21.956	1	1	ru
151	ytcpaaanbz53bsx9tt91otxm	Туризм и гостеприимство («Woosong» Южная Корея)	6B11103	География, Иностранный язык	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/turizm-i-gostepriimstvo/	2026-06-11 08:11:39.291	2026-06-11 08:11:39.291	\N	1	1	ru
152	ytcpaaanbz53bsx9tt91otxm	Туризм и гостеприимство («Woosong» Южная Корея)	6B11103	География, Иностранный язык	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/turizm-i-gostepriimstvo/	2026-06-11 08:11:39.291	2026-06-11 08:11:39.291	2026-06-11 08:11:39.297	1	1	ru
155	zkx896gxsnsln62bj8u0owsf	Иностранные языки (IP)	6В01702	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inostrannye-yazyki-ip/	2026-06-11 08:12:21.396	2026-06-11 08:12:21.396	\N	1	1	ru
156	zkx896gxsnsln62bj8u0owsf	Иностранные языки (IP)	6В01702	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/inostrannye-yazyki-ip/	2026-06-11 08:12:21.396	2026-06-11 08:12:21.396	2026-06-11 08:12:21.402	1	1	ru
159	zttcqnfxfbsmx5oj38g3gpm6	Дошкольное обучение и воспитание	6B01201	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/doshkolnoe-obuchenie-i-vospitanie/	2026-06-11 08:12:55.265	2026-06-11 08:12:55.265	\N	1	1	ru
160	zttcqnfxfbsmx5oj38g3gpm6	Дошкольное обучение и воспитание	6B01201	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/doshkolnoe-obuchenie-i-vospitanie/	2026-06-11 08:12:55.265	2026-06-11 08:12:55.265	2026-06-11 08:12:55.271	1	1	ru
161	z2okbyoeuojpi061lkfwnkgk	Педагогика и методика начального обучения	6B01301	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya-6b01301/	2026-06-11 08:13:17.346	2026-06-11 08:13:17.346	\N	1	1	ru
162	z2okbyoeuojpi061lkfwnkgk	Педагогика и методика начального обучения	6B01301	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya-6b01301/	2026-06-11 08:13:17.346	2026-06-11 08:13:17.346	2026-06-11 08:13:17.351	1	1	ru
153	ah57gwtw0yt09qmiaob06fn4	Английский язык (IP)	6B01703	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/anglijskij-yazyk-ip/	2026-06-11 08:11:58.078	2026-06-11 08:11:58.078	\N	1	1	ru
154	ah57gwtw0yt09qmiaob06fn4	Английский язык (IP)	6B01703	Иностранный язык (английский), Всемирная история	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/anglijskij-yazyk-ip/	2026-06-11 08:11:58.078	2026-06-11 08:11:58.078	2026-06-11 08:11:58.085	1	1	ru
157	wqcy43jq36f9r4c0f6oy70g3	Журналистика	6В03202	Эссе, Собеседование	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/zhurnalistika/	2026-06-11 08:12:37.634	2026-06-11 08:12:37.634	\N	1	1	ru
158	wqcy43jq36f9r4c0f6oy70g3	Журналистика	6В03202	Эссе, Собеседование	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/zhurnalistika/	2026-06-11 08:12:37.634	2026-06-11 08:12:37.634	2026-06-11 08:12:37.64	1	1	ru
163	nwy93ubfg7t3ly57idi6igzm	Социальная педагогика и самопознание, тьютор инклюзивного образования	6B01801	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/socialnaya-pedagogika-i-samopoznanie-tyutor-inklyuzivnogo-obrazovaniya-6b01801/	2026-06-11 08:13:34.793	2026-06-11 08:13:34.793	\N	1	1	ru
164	nwy93ubfg7t3ly57idi6igzm	Социальная педагогика и самопознание, тьютор инклюзивного образования	6B01801	Биология, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/socialnaya-pedagogika-i-samopoznanie-tyutor-inklyuzivnogo-obrazovaniya-6b01801/	2026-06-11 08:13:34.793	2026-06-11 08:13:34.793	2026-06-11 08:13:34.798	1	1	ru
165	izda2mm4bmhr9us7ptvz0n5s	Физика	6В01511	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizikaa/	2026-06-11 08:13:58.413	2026-06-11 08:13:58.413	\N	1	1	ru
166	izda2mm4bmhr9us7ptvz0n5s	Физика	6В01511	Физика, Математика	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/fizikaa/	2026-06-11 08:13:58.413	2026-06-11 08:13:58.413	2026-06-11 08:13:58.419	1	1	ru
167	gtqorqy39k6m3s1d25ewllqm	История	6B01603	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/istoriya/	2026-06-11 08:14:15.374	2026-06-11 08:14:15.374	\N	1	1	ru
168	gtqorqy39k6m3s1d25ewllqm	История	6B01603	Всемирная история, География	Бакалавриат	Очная	https://shokan.edu.kz/ru/educational-programs/istoriya/	2026-06-11 08:14:15.374	2026-06-11 08:14:15.374	2026-06-11 08:14:15.381	1	1	ru
169	orqpk61m9w7n15o6bkx6byt1	Тарих және дінтану (Major)	6B01601	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/istoriya-i-religiovedenie-major/	2026-06-11 08:17:07.136	2026-06-11 08:17:07.136	\N	1	1	kk
170	orqpk61m9w7n15o6bkx6byt1	Тарих және дінтану (Major)	6B01601	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/istoriya-i-religiovedenie-major/	2026-06-11 08:17:07.136	2026-06-11 08:17:07.136	2026-06-11 08:17:07.142	1	1	kk
171	ohneokl63wm6vfb00tq6g51i	Банк ісі және қаржы менеджменті	6В04106	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/bankovskoe-delo-i-finansovyj-menedzhment-major-minor/	2026-06-11 08:17:31.047	2026-06-11 08:17:31.047	\N	1	1	kk
172	ohneokl63wm6vfb00tq6g51i	Банк ісі және қаржы менеджменті	6В04106	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/bankovskoe-delo-i-finansovyj-menedzhment-major-minor/	2026-06-11 08:17:31.047	2026-06-11 08:17:31.047	2026-06-11 08:17:31.053	1	1	kk
173	uc0edyqcdxstr7xl2d17h91l	Аударма ісі (ағылшын, неміс/қытай)	6B02302	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-major-minor/	2026-06-11 08:17:51.665	2026-06-11 08:17:51.665	\N	1	1	kk
174	uc0edyqcdxstr7xl2d17h91l	Аударма ісі (ағылшын, неміс/қытай)	6B02302	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-major-minor/	2026-06-11 08:17:51.665	2026-06-11 08:17:51.665	2026-06-11 08:17:51.671	1	1	kk
175	oq8flvblr3srzy9iq0t0i42c	Автомобиль көліктерін пайдалану және жөндеу	6B07103	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/ekspluataciya-i-remont-avtomobilnogo-transporta/	2026-06-11 08:18:07.201	2026-06-11 08:18:07.201	\N	1	1	kk
176	oq8flvblr3srzy9iq0t0i42c	Автомобиль көліктерін пайдалану және жөндеу	6B07103	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/ekspluataciya-i-remont-avtomobilnogo-transporta/	2026-06-11 08:18:07.201	2026-06-11 08:18:07.201	2026-06-11 08:18:07.209	1	1	kk
177	p5we0gq7bk6t5f992zgln22v	Аграрлық техника және технология	6B08701	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/agrarnaya-tehnika-i-tehnologiya/	2026-06-11 08:18:23.084	2026-06-11 08:18:23.084	\N	1	1	kk
178	p5we0gq7bk6t5f992zgln22v	Аграрлық техника және технология	6B08701	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/agrarnaya-tehnika-i-tehnologiya/	2026-06-11 08:18:23.084	2026-06-11 08:18:23.084	2026-06-11 08:18:23.091	1	1	kk
179	bnusod3rfgrm6u89wvbkq7z3	Агрономия	6В08103	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/agronomiya-bachelor/	2026-06-11 08:18:49.267	2026-06-11 08:18:49.267	\N	1	1	kk
180	bnusod3rfgrm6u89wvbkq7z3	Агрономия	6В08103	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/agronomiya-bachelor/	2026-06-11 08:18:49.267	2026-06-11 08:18:49.267	2026-06-11 08:18:49.273	1	1	kk
181	dcdpfzxvdskwdpqo76q43v8y	Ақпараттық жүйелер	6B06104	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/informacionnye-sistemy/	2026-06-11 08:19:05.529	2026-06-11 08:19:05.529	\N	1	1	kk
182	dcdpfzxvdskwdpqo76q43v8y	Ақпараттық жүйелер	6B06104	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/informacionnye-sistemy/	2026-06-11 08:19:05.529	2026-06-11 08:19:05.529	2026-06-11 08:19:05.534	1	1	kk
183	q3cqy1fiz9fuzjydwytsh6th	Астықты сақтау және қайта өңдеу технологиясы	6B07203	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/tehnologiya-hraneniya-i-pererabotki-zerna/	2026-06-11 08:19:21.662	2026-06-11 08:19:21.662	\N	1	1	kk
184	q3cqy1fiz9fuzjydwytsh6th	Астықты сақтау және қайта өңдеу технологиясы	6B07203	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/tehnologiya-hraneniya-i-pererabotki-zerna/	2026-06-11 08:19:21.662	2026-06-11 08:19:21.662	2026-06-11 08:19:21.667	1	1	kk
185	d1ea36g68lxid3j0anaugtvf	Тіршілік қауіпсіздігі және қоршаған ортаны қорғау	6B11203	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/bezopasnost-zhiznedeyatelnosti-i-zashita-okruzhayushej-sredy/	2026-06-11 08:19:38.893	2026-06-11 08:19:38.893	\N	1	1	kk
186	d1ea36g68lxid3j0anaugtvf	Тіршілік қауіпсіздігі және қоршаған ортаны қорғау	6B11203	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/bezopasnost-zhiznedeyatelnosti-i-zashita-okruzhayushej-sredy/	2026-06-11 08:19:38.893	2026-06-11 08:19:38.893	2026-06-11 08:19:38.899	1	1	kk
187	gt1eoss6dmqa9szigjokzn78	Биология	6B05101	Биология, Химия	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biologiya/	2026-06-11 08:19:53.627	2026-06-11 08:19:53.627	\N	1	1	kk
188	gt1eoss6dmqa9szigjokzn78	Биология	6B05101	Биология, Химия	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biologiya/	2026-06-11 08:19:53.627	2026-06-11 08:19:53.627	2026-06-11 08:19:53.633	1	1	kk
189	tbxky7jffi9hcagc8i0l3vlu	Биология	6B01514	Биология, Химия	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biologiya-6b01514/	2026-06-11 08:20:19.955	2026-06-11 08:20:19.955	\N	1	1	kk
190	tbxky7jffi9hcagc8i0l3vlu	Биология	6B01514	Биология, Химия	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biologiya-6b01514/	2026-06-11 08:20:19.955	2026-06-11 08:20:19.955	2026-06-11 08:20:19.96	1	1	kk
193	d1dqg5cg6qia7qmeswtzffkq	Бухгалтерлік есеп және экономикалық талдау	6B04105	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/buhgalterskij-uchet-i-ekonomicheskij-analiz/	2026-06-11 08:20:52.086	2026-06-11 08:20:52.086	\N	1	1	kk
194	d1dqg5cg6qia7qmeswtzffkq	Бухгалтерлік есеп және экономикалық талдау	6B04105	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/buhgalterskij-uchet-i-ekonomicheskij-analiz/	2026-06-11 08:20:52.086	2026-06-11 08:20:52.086	2026-06-11 08:20:52.091	1	1	kk
205	ya7eeolbuejntd0zme4m1l31	Дизайн және компьютерлік графика	6B02102	Шығармашылық емтихан - сызу, Шығармашылық емтихан - сурет салу (графика)	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/dizajn-i-kompyuternaya-grafika/	2026-06-11 08:22:59.043	2026-06-11 08:22:59.043	\N	1	1	kk
206	ya7eeolbuejntd0zme4m1l31	Дизайн және компьютерлік графика	6B02102	Шығармашылық емтихан - сызу, Шығармашылық емтихан - сурет салу (графика)	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/dizajn-i-kompyuternaya-grafika/	2026-06-11 08:22:59.043	2026-06-11 08:22:59.043	2026-06-11 08:22:59.048	1	1	kk
191	rr05s5ivpycu8y44ts5264jo	Биотехнология сала бойынша	6В05102	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biotehnologiya-po-otraslyam/	2026-06-11 08:20:35.346	2026-06-11 08:20:35.346	\N	1	1	kk
192	rr05s5ivpycu8y44ts5264jo	Биотехнология сала бойынша	6В05102	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biotehnologiya-po-otraslyam/	2026-06-11 08:20:35.346	2026-06-11 08:20:35.346	2026-06-11 08:20:35.352	1	1	kk
197	vw9dgb9yi22un9ty1thgcgel	Тау-кен ісі	6B07202	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/gornoe-delo/	2026-06-11 08:21:21.837	2026-06-11 08:21:21.837	\N	1	1	kk
198	vw9dgb9yi22un9ty1thgcgel	Тау-кен ісі	6B07202	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/gornoe-delo/	2026-06-11 08:21:21.837	2026-06-11 08:21:21.837	2026-06-11 08:21:21.843	1	1	kk
195	aju04fhdhrtezlqv4da43ol0	География - Тарих	6B01502	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/geografiya-istoriya/	2026-06-11 08:21:05.902	2026-06-11 08:21:05.902	\N	1	1	kk
196	aju04fhdhrtezlqv4da43ol0	География - Тарих	6B01502	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/geografiya-istoriya/	2026-06-11 08:21:05.902	2026-06-11 08:21:05.902	2026-06-11 08:21:05.91	1	1	kk
199	e4dlvskrzgdin4yhk2rj9h3n	Ғимараттар мен имараттарды цифрлық жобалау	6B07303	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/cifrovoe-proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:21:41.278	2026-06-11 08:21:41.278	\N	1	1	kk
200	e4dlvskrzgdin4yhk2rj9h3n	Ғимараттар мен имараттарды цифрлық жобалау	6B07303	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/cifrovoe-proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:21:41.278	2026-06-11 08:21:41.278	2026-06-11 08:21:41.283	1	1	kk
201	sgej3r5p1kcl69l6ag7out2d	Ғылыми тарих	6B02201	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/nauchnaya-istoriya/	2026-06-11 08:22:00.335	2026-06-11 08:22:00.335	\N	1	1	kk
202	sgej3r5p1kcl69l6ag7out2d	Ғылыми тарих	6B02201	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/nauchnaya-istoriya/	2026-06-11 08:22:00.335	2026-06-11 08:22:00.335	2026-06-11 08:22:00.341	1	1	kk
203	hk828rnrljxeejop80zl0cnv	Дене шынықтыру және спорт	6B01403	Шығармашылық емтихан	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizicheskaya-kultura-i-sport/	2026-06-11 08:22:24.253	2026-06-11 08:22:24.253	\N	1	1	kk
204	hk828rnrljxeejop80zl0cnv	Дене шынықтыру және спорт	6B01403	Шығармашылық емтихан	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizicheskaya-kultura-i-sport/	2026-06-11 08:22:24.253	2026-06-11 08:22:24.253	2026-06-11 08:22:24.26	1	1	kk
207	sga4jk5oq92whf40cxrnfile	Есептеу техникасы және бағдарламалық қамтамасыз ету (Компьютерлік жүйелер менжелілердің қауіпсіздігі)	6B06102	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/vychislitelnaya-tehnika-i-programmnoe-obespechenie-bezopasnost-kompyuternyh-sistem-i-setej/	2026-06-11 08:23:20.343	2026-06-11 08:23:20.343	\N	1	1	kk
208	sga4jk5oq92whf40cxrnfile	Есептеу техникасы және бағдарламалық қамтамасыз ету (Компьютерлік жүйелер менжелілердің қауіпсіздігі)	6B06102	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/vychislitelnaya-tehnika-i-programmnoe-obespechenie-bezopasnost-kompyuternyh-sistem-i-setej/	2026-06-11 08:23:20.343	2026-06-11 08:23:20.343	2026-06-11 08:23:20.349	1	1	kk
209	ljmqq2ott9yzh8lssulopgal	BIM Ғимараттар мен имараттарды жобалау	6B07301	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:23:37.615	2026-06-11 08:23:37.615	\N	1	1	kk
210	ljmqq2ott9yzh8lssulopgal	BIM Ғимараттар мен имараттарды жобалау	6B07301	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:23:37.615	2026-06-11 08:23:37.615	2026-06-11 08:23:37.622	1	1	kk
211	j7vs1oe3by1hnpuzpye1jfdq	Психология	6B03101	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/psihologiya/	2026-06-11 08:24:01.791	2026-06-11 08:24:01.791	\N	1	1	kk
212	j7vs1oe3by1hnpuzpye1jfdq	Психология	6B03101	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/psihologiya/	2026-06-11 08:24:01.791	2026-06-11 08:24:01.791	2026-06-11 08:24:01.798	1	1	kk
213	ew0fcppxb64konrb0ptm7y9l	Мал шаруашылығы өнімдерін өндіру технологиясы	6B08201	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/tehnologiya-proizvodstva-produkcii-zhivotnovodstva/	2026-06-11 08:24:56.143	2026-06-11 08:24:56.143	\N	1	1	kk
214	ew0fcppxb64konrb0ptm7y9l	Мал шаруашылығы өнімдерін өндіру технологиясы	6B08201	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/tehnologiya-proizvodstva-produkcii-zhivotnovodstva/	2026-06-11 08:24:56.143	2026-06-11 08:24:56.143	2026-06-11 08:24:56.149	1	1	kk
215	luaz0wb005irof7vt8ijlag8	Туризм	6B11102	География, Шет тілі	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/tourizm/	2026-06-11 08:25:12.07	2026-06-11 08:25:12.07	\N	1	1	kk
216	luaz0wb005irof7vt8ijlag8	Туризм	6B11102	География, Шет тілі	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/tourizm/	2026-06-11 08:25:12.07	2026-06-11 08:25:12.07	2026-06-11 08:25:12.076	1	1	kk
217	js18a3anvqucgp3m9eze9o81	Физика	6B05301	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizika/	2026-06-11 08:25:28.973	2026-06-11 08:25:28.973	\N	1	1	kk
218	js18a3anvqucgp3m9eze9o81	Физика	6B05301	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizika/	2026-06-11 08:25:28.973	2026-06-11 08:25:28.973	2026-06-11 08:25:28.978	1	1	kk
219	zti8kdvpfvjvwldv0mh477b4	Физика - информатика	6В01510	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizika-informatika/	2026-06-11 08:25:51.662	2026-06-11 08:25:51.662	\N	1	1	kk
220	zti8kdvpfvjvwldv0mh477b4	Физика - информатика	6В01510	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizika-informatika/	2026-06-11 08:25:51.662	2026-06-11 08:25:51.662	2026-06-11 08:25:51.668	1	1	kk
221	a3gbavslffmnre1kvl1a7ooz	Физика (көптілді оқыту)	6В01511	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizika-poliyazychnoe-obuchenie/	2026-06-11 08:26:07.587	2026-06-11 08:26:07.587	\N	1	1	kk
222	a3gbavslffmnre1kvl1a7ooz	Физика (көптілді оқыту)	6В01511	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizika-poliyazychnoe-obuchenie/	2026-06-11 08:26:07.587	2026-06-11 08:26:07.587	2026-06-11 08:26:07.593	1	1	kk
223	bmdyzs3kgwbt4bf1ommhmi2e	Информатика және робототехника (көптілді оқыту)	6В01513	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/informatika-i-robototehnika-poliyazychnoe-obuchenie/	2026-06-11 08:26:20.381	2026-06-11 08:26:20.381	\N	1	1	kk
224	bmdyzs3kgwbt4bf1ommhmi2e	Информатика және робототехника (көптілді оқыту)	6В01513	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/informatika-i-robototehnika-poliyazychnoe-obuchenie/	2026-06-11 08:26:20.381	2026-06-11 08:26:20.381	2026-06-11 08:26:20.388	1	1	kk
231	zs0bd81kycisugmr1b5m0is6	Құқықтану	6B04201	Дүниежүзі тарихы, Адам.Қоғам.Құқық	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/yurisprudenciya/	2026-06-11 08:27:28.704	2026-06-11 08:27:28.704	\N	1	1	kk
232	zs0bd81kycisugmr1b5m0is6	Құқықтану	6B04201	Дүниежүзі тарихы, Адам.Қоғам.Құқық	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/yurisprudenciya/	2026-06-11 08:27:28.704	2026-06-11 08:27:28.704	2026-06-11 08:27:28.709	1	1	kk
225	wutialptrc0ur1xjpig9fqop	Химия және биология (көп тілді білім беру)	6В01507	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/himiya-biologiya-poliyazychnoe-obuchenie/	2026-06-11 08:26:36.527	2026-06-11 08:26:36.527	\N	1	1	kk
226	wutialptrc0ur1xjpig9fqop	Химия және биология (көп тілді білім беру)	6В01507	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/himiya-biologiya-poliyazychnoe-obuchenie/	2026-06-11 08:26:36.527	2026-06-11 08:26:36.527	2026-06-11 08:26:36.532	1	1	kk
227	wx5hunprphp1fkdy8dp7eq2h	Шет тілі: екі шет тілі (ағылшын, неміс / қытай)	6B01701	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-anglijskij-nemeckijkitajskij/	2026-06-11 08:26:52.273	2026-06-11 08:26:52.273	\N	1	1	kk
228	wx5hunprphp1fkdy8dp7eq2h	Шет тілі: екі шет тілі (ағылшын, неміс / қытай)	6B01701	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-anglijskij-nemeckijkitajskij/	2026-06-11 08:26:52.273	2026-06-11 08:26:52.273	2026-06-11 08:26:52.279	1	1	kk
229	lc3sh7k8u2qfe1ckk9dkl0zd	Экология	6B05201	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/ekologiya/	2026-06-11 08:27:08.203	2026-06-11 08:27:08.203	\N	1	1	kk
230	lc3sh7k8u2qfe1ckk9dkl0zd	Экология	6B05201	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/ekologiya/	2026-06-11 08:27:08.203	2026-06-11 08:27:08.203	2026-06-11 08:27:08.207	1	1	kk
233	uiahg9xjlp5w3x74adgw7tmt	Жалпы медицина (Major)	6В10101 Осы білім беру бағдарламасы бойынша қабылдау жүзеге асырылмайды	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/obshaya-medicina-major/	2026-06-11 08:27:52.622	2026-06-11 08:27:52.622	\N	1	1	kk
234	uiahg9xjlp5w3x74adgw7tmt	Жалпы медицина (Major)	6В10101 Осы білім беру бағдарламасы бойынша қабылдау жүзеге асырылмайды	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/obshaya-medicina-major/	2026-06-11 08:27:52.622	2026-06-11 08:27:52.622	2026-06-11 08:27:52.628	1	1	kk
235	woh2lm0czn252nazew3t24ao	Тау-кенөндірісіндегі 3D модельдеу инженері	6B07205	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inzhener-3d-modelirovaniya-v-gornom-dele/	2026-06-11 08:28:07.25	2026-06-11 08:28:07.25	\N	1	1	kk
236	woh2lm0czn252nazew3t24ao	Тау-кенөндірісіндегі 3D модельдеу инженері	6B07205	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inzhener-3d-modelirovaniya-v-gornom-dele/	2026-06-11 08:28:07.25	2026-06-11 08:28:07.25	2026-06-11 08:28:07.256	1	1	kk
237	o6msbq1xdm3ab6ykr2yim7jg	Қазақ тілі мен әдебиеті	6В01707	Қазақ тілі, Қазақ әдебиеті	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/aza-tilinde-oytatyn-zhne-oytpajtyn-mektepterdegi-aza-tili-men-debieti/	2026-06-11 08:28:30.095	2026-06-11 08:28:30.095	\N	1	1	kk
238	o6msbq1xdm3ab6ykr2yim7jg	Қазақ тілі мен әдебиеті	6В01707	Қазақ тілі, Қазақ әдебиеті	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/aza-tilinde-oytatyn-zhne-oytpajtyn-mektepterdegi-aza-tili-men-debieti/	2026-06-11 08:28:30.095	2026-06-11 08:28:30.095	2026-06-11 08:28:30.1	1	1	kk
239	rdnxwpgii83om9osv0s8489j	Қазақ филологиясы	6B02301	Қазақ тілі, Қазақ әдебиеті	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/kazahskaya-filologiya/	2026-06-11 08:30:17.462	2026-06-11 08:30:17.462	\N	1	1	kk
240	rdnxwpgii83om9osv0s8489j	Қазақ филологиясы	6B02301	Қазақ тілі, Қазақ әдебиеті	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/kazahskaya-filologiya/	2026-06-11 08:30:17.462	2026-06-11 08:30:17.462	2026-06-11 08:30:17.467	1	1	kk
241	z2jubhu8dv5jqgijqopdg3mj	Орман ресурстары және орман шаруашылығы	6B08301	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/lesnye-resursy-i-lesovodstvo/	2026-06-11 08:39:35.281	2026-06-11 08:39:35.281	\N	1	1	kk
242	z2jubhu8dv5jqgijqopdg3mj	Орман ресурстары және орман шаруашылығы	6B08301	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/lesnye-resursy-i-lesovodstvo/	2026-06-11 08:39:35.281	2026-06-11 08:39:35.281	2026-06-11 08:39:35.286	1	1	kk
243	dmn85d87surk00y033knp0y9	Математика (көптілді оқыту)	6В01506	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/matematika-poliyazychnoe-obuchenie/	2026-06-11 08:39:51.318	2026-06-11 08:39:51.318	\N	1	1	kk
244	dmn85d87surk00y033knp0y9	Математика (көптілді оқыту)	6В01506	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/matematika-poliyazychnoe-obuchenie/	2026-06-11 08:39:51.318	2026-06-11 08:39:51.318	2026-06-11 08:39:51.324	1	1	kk
245	t3s8ogwtulbx0rz9ic9q01iq	Математика - Информатика	6В01508	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/matematika-informatika/	2026-06-11 08:40:06.736	2026-06-11 08:40:06.736	\N	1	1	kk
246	t3s8ogwtulbx0rz9ic9q01iq	Математика - Информатика	6В01508	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/matematika-informatika/	2026-06-11 08:40:06.736	2026-06-11 08:40:06.736	2026-06-11 08:40:06.744	1	1	kk
247	vw1tc4yex7eikfyfnw3x49y0	Математика - Физика	6В01509	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/matematika-fizika/	2026-06-11 08:40:23.201	2026-06-11 08:40:23.201	\N	1	1	kk
248	vw1tc4yex7eikfyfnw3x49y0	Математика - Физика	6В01509	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/matematika-fizika/	2026-06-11 08:40:23.201	2026-06-11 08:40:23.201	2026-06-11 08:40:23.208	1	1	kk
249	i66do1nyt9hhpvk6ttraliv8	Мектепке дейінгі білім беру (IP)	6B01202	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/doshkolnoe-obuchenie-i-vospitanie-major/	2026-06-11 08:40:40.982	2026-06-11 08:40:40.982	\N	1	1	kk
250	i66do1nyt9hhpvk6ttraliv8	Мектепке дейінгі білім беру (IP)	6B01202	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/doshkolnoe-obuchenie-i-vospitanie-major/	2026-06-11 08:40:40.982	2026-06-11 08:40:40.982	2026-06-11 08:40:40.988	1	1	kk
251	x00cmsmgm3204e1f0t03hboe	Негізгі мектептегі химия және биология (көп тілді білім беру)	6В01504	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/himiya-i-biologiya-v-osnovnoj-shkole-poliyazychnoe-obuchenie/	2026-06-11 08:40:59.707	2026-06-11 08:40:59.707	\N	1	1	kk
252	x00cmsmgm3204e1f0t03hboe	Негізгі мектептегі химия және биология (көп тілді білім беру)	6В01504	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/himiya-i-biologiya-v-osnovnoj-shkole-poliyazychnoe-obuchenie/	2026-06-11 08:40:59.707	2026-06-11 08:40:59.707	2026-06-11 08:40:59.713	1	1	kk
253	md4f3n3bs83ffv7auuxji5fq	Орыс және орыс емес мектептердегі Орыс тілі мен әдебиеті	6В01708	Орыс тілі, Орыс әдебиет	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/russkij-yazyk-i-literatura-v-shkolah-s-russkim-i-nerusskim-yazykami-obucheniya/	2026-06-11 08:41:16.199	2026-06-11 08:41:16.199	\N	1	1	kk
254	md4f3n3bs83ffv7auuxji5fq	Орыс және орыс емес мектептердегі Орыс тілі мен әдебиеті	6В01708	Орыс тілі, Орыс әдебиет	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/russkij-yazyk-i-literatura-v-shkolah-s-russkim-i-nerusskim-yazykami-obucheniya/	2026-06-11 08:41:16.199	2026-06-11 08:41:16.199	2026-06-11 08:41:16.204	1	1	kk
255	grxq4sbb85dejily4ddnzf3w	Педагогика және психология	6B01101	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pedagogika-i-psihologiya/	2026-06-11 08:41:32.539	2026-06-11 08:41:32.539	\N	1	1	kk
256	grxq4sbb85dejily4ddnzf3w	Педагогика және психология	6B01101	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pedagogika-i-psihologiya/	2026-06-11 08:41:32.539	2026-06-11 08:41:32.539	2026-06-11 08:41:32.545	1	1	kk
257	f2v41yu4p2ain11cfb1cyyxq	Бастауыш білім беру (IP)	6В01302	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya/	2026-06-11 08:41:50.795	2026-06-11 08:41:50.795	\N	1	1	kk
258	f2v41yu4p2ain11cfb1cyyxq	Бастауыш білім беру (IP)	6В01302	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya/	2026-06-11 08:41:50.795	2026-06-11 08:41:50.795	2026-06-11 08:41:50.801	1	1	kk
261	qj2jc42dr7zncgqhn9c84z05	Шет тілі: Негізгі мектептегі екі шет тілі (неміс, ағылшын)	6B01703	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-v-osnovnoj-shkole-nemeckij-anglijskij/	2026-06-11 08:42:37.31	2026-06-11 08:42:37.31	\N	1	1	kk
262	qj2jc42dr7zncgqhn9c84z05	Шет тілі: Негізгі мектептегі екі шет тілі (неміс, ағылшын)	6B01703	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-v-osnovnoj-shkole-nemeckij-anglijskij/	2026-06-11 08:42:37.31	2026-06-11 08:42:37.31	2026-06-11 08:42:37.315	1	1	kk
263	xtmx7liln8m4wgyu2eg57ouo	Теология	6В02202	Шығармашылық емтихан	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/teologiya/	2026-06-11 08:43:03.379	2026-06-11 08:43:03.379	\N	1	1	kk
264	xtmx7liln8m4wgyu2eg57ouo	Теология	6В02202	Шығармашылық емтихан	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/teologiya/	2026-06-11 08:43:03.379	2026-06-11 08:43:03.379	2026-06-11 08:43:03.385	1	1	kk
265	ze0s61rb53z30t9qqnntrbp4	Пайдалы қазбаларды байыту	6B07206	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/obogashenie-poleznyh-iskopaemyh1/	2026-06-11 08:43:23.718	2026-06-11 08:43:23.718	\N	1	1	kk
266	ze0s61rb53z30t9qqnntrbp4	Пайдалы қазбаларды байыту	6B07206	Математика, Физика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/obogashenie-poleznyh-iskopaemyh1/	2026-06-11 08:43:23.718	2026-06-11 08:43:23.718	2026-06-11 08:43:23.724	1	1	kk
267	zj6srm3xoa5d1h0cm156xh4v	Деректер ғылымы (Data Science)	6В06105	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/6v06105-data-science/	2026-06-11 08:44:12.095	2026-06-11 08:44:12.095	\N	1	1	kk
268	zj6srm3xoa5d1h0cm156xh4v	Деректер ғылымы (Data Science)	6В06105	Математика, Информатика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/6v06105-data-science/	2026-06-11 08:44:12.095	2026-06-11 08:44:12.095	2026-06-11 08:44:12.101	1	1	kk
271	p2oucuxky314hd5utrle4bzp	Қоғамдық денсаулық	6В10102	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/obshestvennoe-zdorove/	2026-06-11 08:44:49.497	2026-06-11 08:44:49.497	\N	1	1	kk
272	p2oucuxky314hd5utrle4bzp	Қоғамдық денсаулық	6В10102	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/obshestvennoe-zdorove/	2026-06-11 08:44:49.497	2026-06-11 08:44:49.497	2026-06-11 08:44:49.502	1	1	kk
281	dzuekoozccgh11ad7txwieq2	Аударма ісі (ағылшын, неміс/қытай) (Миколас Ромерис университеті, Литва)	6B02302	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-dvudiplomnaya-kokshetauskij-universitet-imshualihanova-universitet-mikolos-romirisa-litva/	2026-06-11 08:46:34.535	2026-06-11 08:46:34.535	\N	1	1	kk
282	dzuekoozccgh11ad7txwieq2	Аударма ісі (ағылшын, неміс/қытай) (Миколас Ромерис университеті, Литва)	6B02302	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-dvudiplomnaya-kokshetauskij-universitet-imshualihanova-universitet-mikolos-romirisa-litva/	2026-06-11 08:46:34.535	2026-06-11 08:46:34.535	2026-06-11 08:46:34.54	1	1	kk
289	nur94t7jeslfujrs2xxc495r	Машина жасау	6B07104	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/mashinostroenie/	2026-06-11 08:47:52.822	2026-06-11 08:47:52.822	\N	1	1	kk
290	nur94t7jeslfujrs2xxc495r	Машина жасау	6B07104	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/mashinostroenie/	2026-06-11 08:47:52.822	2026-06-11 08:47:52.822	2026-06-11 08:47:52.827	1	1	kk
259	k0qvvlyurxips2e4stdvq37a	Топырақтану және агрохимия	6B08102	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pochvovedenie-i-agrohimiya-6b08102/	2026-06-11 08:42:17.755	2026-06-11 08:42:17.755	\N	1	1	kk
260	k0qvvlyurxips2e4stdvq37a	Топырақтану және агрохимия	6B08102	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pochvovedenie-i-agrohimiya-6b08102/	2026-06-11 08:42:17.755	2026-06-11 08:42:17.755	2026-06-11 08:42:17.76	1	1	kk
269	qin146rnqq6rwynez8sl62i8	Менеджмент в отраслях	6В04103	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/menedzhment-v-otraslyah-major-minor/	2026-06-11 08:44:29.314	2026-06-11 08:44:29.314	\N	1	1	kk
270	qin146rnqq6rwynez8sl62i8	Менеджмент в отраслях	6В04103	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/menedzhment-v-otraslyah-major-minor/	2026-06-11 08:44:29.314	2026-06-11 08:44:29.314	2026-06-11 08:44:29.319	1	1	kk
273	grmnzojj1cdx5gklq24qir7v	Қазақ тілінде оқытпайтын мектептердегі қазақ тілі мен әдебиеті	6В01706	Қазақ тілі, Қазақ әдебиеті	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/kazahskij-yazyk-i-literatura-v-shkolah-s-nekazahskim-yazykom-obucheniya/	2026-06-11 08:45:07.884	2026-06-11 08:45:07.884	\N	1	1	kk
274	grmnzojj1cdx5gklq24qir7v	Қазақ тілінде оқытпайтын мектептердегі қазақ тілі мен әдебиеті	6В01706	Қазақ тілі, Қазақ әдебиеті	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/kazahskij-yazyk-i-literatura-v-shkolah-s-nekazahskim-yazykom-obucheniya/	2026-06-11 08:45:07.884	2026-06-11 08:45:07.884	2026-06-11 08:45:07.89	1	1	kk
275	d2akta7lyylhyqswxe92ce7v	Психология IP	6B01103	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/psihologiya-v-obrazovanii/	2026-06-11 08:45:28.993	2026-06-11 08:45:28.993	\N	1	1	kk
276	d2akta7lyylhyqswxe92ce7v	Психология IP	6B01103	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/psihologiya-v-obrazovanii/	2026-06-11 08:45:28.993	2026-06-11 08:45:28.993	2026-06-11 08:45:28.999	1	1	kk
277	cwtlkc6roikm45gdef971au3	Медицина	6В10104	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/6v10104-medicina-major/	2026-06-11 08:45:46.278	2026-06-11 08:45:46.278	\N	1	1	kk
278	cwtlkc6roikm45gdef971au3	Медицина	6В10104	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/6v10104-medicina-major/	2026-06-11 08:45:46.278	2026-06-11 08:45:46.278	2026-06-11 08:45:46.282	1	1	kk
279	uaff7dmry6rc5k8rxm8cc6v1	Химия (IP)	6B01534	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/himiyaip/	2026-06-11 08:46:12.969	2026-06-11 08:46:12.969	\N	1	1	kk
280	uaff7dmry6rc5k8rxm8cc6v1	Химия (IP)	6B01534	Химия, Биология	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/himiyaip/	2026-06-11 08:46:12.969	2026-06-11 08:46:12.969	2026-06-11 08:46:12.974	1	1	kk
283	iowngpturgyvf44croqni99i	Көркем білім (IP)	6B01416	Шығармашылық емтихан-сурет (графика), Шығармашылық емтихан-кескіндеме	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/hudozhestvennoe-obrazovanie-ip/	2026-06-11 08:46:51.963	2026-06-11 08:46:51.963	\N	1	1	kk
284	iowngpturgyvf44croqni99i	Көркем білім (IP)	6B01416	Шығармашылық емтихан-сурет (графика), Шығармашылық емтихан-кескіндеме	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/hudozhestvennoe-obrazovanie-ip/	2026-06-11 08:46:51.963	2026-06-11 08:46:51.963	2026-06-11 08:46:51.969	1	1	kk
285	ybhiuirfi7bssold4aqz8a3k	Еңбекке баулу және кәсіпкерлік негіздері (IP)	6B01420	Шығармашылық емтихан - сызу, Шығармашылық емтихан - сурет салу (графика)	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/trudovoe-obuchenie-i-osnovy-predprinimatelstva-ip/	2026-06-11 08:47:11.38	2026-06-11 08:47:11.38	\N	1	1	kk
286	ybhiuirfi7bssold4aqz8a3k	Еңбекке баулу және кәсіпкерлік негіздері (IP)	6B01420	Шығармашылық емтихан - сызу, Шығармашылық емтихан - сурет салу (графика)	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/trudovoe-obuchenie-i-osnovy-predprinimatelstva-ip/	2026-06-11 08:47:11.38	2026-06-11 08:47:11.38	2026-06-11 08:47:11.39	1	1	kk
287	xa37gzvm72h2ip0u7fzik6yu	Биология (IP)	6B01533	Биология, Химия	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biologiya-6b01533/	2026-06-11 08:47:34.457	2026-06-11 08:47:34.457	\N	1	1	kk
288	xa37gzvm72h2ip0u7fzik6yu	Биология (IP)	6B01533	Биология, Химия	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/biologiya-6b01533/	2026-06-11 08:47:34.457	2026-06-11 08:47:34.457	2026-06-11 08:47:34.462	1	1	kk
291	bbpmy1n2ie9sz82tk3oiu5vu	Көлік, көлік техника және технологиялары	6B07105	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/transport-transportnaya-tehnika-i-tehnologii/	2026-06-11 08:48:08.417	2026-06-11 08:48:08.417	\N	1	1	kk
292	bbpmy1n2ie9sz82tk3oiu5vu	Көлік, көлік техника және технологиялары	6B07105	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/transport-transportnaya-tehnika-i-tehnologii/	2026-06-11 08:48:08.417	2026-06-11 08:48:08.417	2026-06-11 08:48:08.423	1	1	kk
293	vmrfi20mx3gsbgegxo0abl6i	Жаһандық менеджмент («Woosong» Оңтүстік Корея)	6В04107	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/globalnyj-menedzhment/	2026-06-11 08:48:24.559	2026-06-11 08:48:24.559	\N	1	1	kk
294	vmrfi20mx3gsbgegxo0abl6i	Жаһандық менеджмент («Woosong» Оңтүстік Корея)	6В04107	Математика, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/globalnyj-menedzhment/	2026-06-11 08:48:24.559	2026-06-11 08:48:24.559	2026-06-11 08:48:24.564	1	1	kk
295	uzqe605cl140xfia1ykp8qc3	Туризм және қонақжайлылық («Woosong» Оңтүстік Корея)	6B11103	География, Шет тілі	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/turizm-i-gostepriimstvo/	2026-06-11 08:48:47.724	2026-06-11 08:48:47.724	\N	1	1	kk
296	uzqe605cl140xfia1ykp8qc3	Туризм және қонақжайлылық («Woosong» Оңтүстік Корея)	6B11103	География, Шет тілі	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/turizm-i-gostepriimstvo/	2026-06-11 08:48:47.724	2026-06-11 08:48:47.724	2026-06-11 08:48:47.731	1	1	kk
297	jp54zs3tc3axp7mdz84t43e1	Ағылшын тілі (IP)	6B01703	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/anglijskij-yazyk-ip/	2026-06-11 08:49:06.969	2026-06-11 08:49:06.969	\N	1	1	kk
298	jp54zs3tc3axp7mdz84t43e1	Ағылшын тілі (IP)	6B01703	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/anglijskij-yazyk-ip/	2026-06-11 08:49:06.969	2026-06-11 08:49:06.969	2026-06-11 08:49:06.976	1	1	kk
299	uew3q7udns8r4tby4prb912k	Шет тілдер (IP)	6В01702	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inostrannye-yazyki-ip/	2026-06-11 08:49:26.006	2026-06-11 08:49:26.006	\N	1	1	kk
300	uew3q7udns8r4tby4prb912k	Шет тілдер (IP)	6В01702	Шет тілі (ағылшын), Дүниежүзілік тарих	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/inostrannye-yazyki-ip/	2026-06-11 08:49:26.006	2026-06-11 08:49:26.006	2026-06-11 08:49:26.011	1	1	kk
301	jrpb4h2f77jgagdagnjanv7n	Журналистика	6В03202	Эссе, Сұхбат	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/zhurnalistika/	2026-06-11 08:49:41.601	2026-06-11 08:49:41.601	\N	1	1	kk
302	jrpb4h2f77jgagdagnjanv7n	Журналистика	6В03202	Эссе, Сұхбат	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/zhurnalistika/	2026-06-11 08:49:41.601	2026-06-11 08:49:41.601	2026-06-11 08:49:41.607	1	1	kk
303	eqj2r20vpoaglq7iu6xybdi1	Мектепке дейінгі тәрбиелеу және оқыту педагогикасы	6B01201	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/doshkolnoe-obuchenie-i-vospitanie/	2026-06-11 08:49:59.224	2026-06-11 08:49:59.224	\N	1	1	kk
304	eqj2r20vpoaglq7iu6xybdi1	Мектепке дейінгі тәрбиелеу және оқыту педагогикасы	6B01201	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/doshkolnoe-obuchenie-i-vospitanie/	2026-06-11 08:49:59.224	2026-06-11 08:49:59.224	2026-06-11 08:49:59.23	1	1	kk
305	wub10pahsjrza19z1yb743lt	Бастауыш оқыту педагогикасы мен әдістемесі	6B01301	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya-6b01301/	2026-06-11 08:50:28.514	2026-06-11 08:50:28.514	\N	1	1	kk
306	wub10pahsjrza19z1yb743lt	Бастауыш оқыту педагогикасы мен әдістемесі	6B01301	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya-6b01301/	2026-06-11 08:50:28.514	2026-06-11 08:50:28.514	2026-06-11 08:50:28.519	1	1	kk
307	xkhnewmsto0skjhq22wq48u4	Әлеуметтік педагогика және өзін-өзі тану , инклюзивті білім беру тьютері	6B01801	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/socialnaya-pedagogika-i-samopoznanie-tyutor-inklyuzivnogo-obrazovaniya-6b01801/	2026-06-11 08:50:46.276	2026-06-11 08:50:46.276	\N	1	1	kk
308	xkhnewmsto0skjhq22wq48u4	Әлеуметтік педагогика және өзін-өзі тану , инклюзивті білім беру тьютері	6B01801	Биология, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/socialnaya-pedagogika-i-samopoznanie-tyutor-inklyuzivnogo-obrazovaniya-6b01801/	2026-06-11 08:50:46.276	2026-06-11 08:50:46.276	2026-06-11 08:50:46.282	1	1	kk
309	yaarcgx32qlk7r8wqca9laxw	Физика	6В01511	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizikaa/	2026-06-11 08:51:31.393	2026-06-11 08:51:31.393	\N	1	1	kk
310	yaarcgx32qlk7r8wqca9laxw	Физика	6В01511	Физика, Математика	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/fizikaa/	2026-06-11 08:51:31.393	2026-06-11 08:51:31.393	2026-06-11 08:51:31.399	1	1	kk
311	k732t0prmqpye60kx7eezmoy	Тарих	6B01603	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/istoriya-2/	2026-06-11 08:51:47.456	2026-06-11 08:51:47.456	\N	1	1	kk
312	k732t0prmqpye60kx7eezmoy	Тарих	6B01603	Дүниежүзі тарихы, География	Бакалавриат	Күндізгі	https://shokan.edu.kz/kk/educational-programs/istoriya-2/	2026-06-11 08:51:47.456	2026-06-11 08:51:47.456	2026-06-11 08:51:47.462	1	1	kk
313	c20tkxo6snl4sqyqatgbfn7p	History and Religious Studies (Major)	6B01601	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/istoriya-i-religiovedenie-major/	2026-06-11 08:53:38.184	2026-06-11 08:53:38.184	\N	1	1	en
314	c20tkxo6snl4sqyqatgbfn7p	History and Religious Studies (Major)	6B01601	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/istoriya-i-religiovedenie-major/	2026-06-11 08:53:38.184	2026-06-11 08:53:38.184	2026-06-11 08:53:38.192	1	1	en
315	eswfxk723qt366ioj0gk7zlf	Banking and Financial Management	6В04106	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/bankovskoe-delo-i-finansovyj-menedzhment-major-minor/	2026-06-11 08:53:52.551	2026-06-11 08:53:52.551	\N	1	1	en
316	eswfxk723qt366ioj0gk7zlf	Banking and Financial Management	6В04106	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/bankovskoe-delo-i-finansovyj-menedzhment-major-minor/	2026-06-11 08:53:52.551	2026-06-11 08:53:52.551	2026-06-11 08:53:52.558	1	1	en
317	y7n7r4n1q1di3ml3wbv69wp1	Translation studies (English, German/Chinese)	6B02302	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-major-minor/	2026-06-11 08:54:09.842	2026-06-11 08:54:09.842	\N	1	1	en
318	y7n7r4n1q1di3ml3wbv69wp1	Translation studies (English, German/Chinese)	6B02302	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-major-minor/	2026-06-11 08:54:09.842	2026-06-11 08:54:09.842	2026-06-11 08:54:09.848	1	1	en
319	ir4b90ys7q3uyxj4nx0vm3zw	Operation and repair of motor transport	6B07103	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/ekspluataciya-i-remont-avtomobilnogo-transporta/	2026-06-11 08:54:23.891	2026-06-11 08:54:23.891	\N	1	1	en
320	ir4b90ys7q3uyxj4nx0vm3zw	Operation and repair of motor transport	6B07103	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/ekspluataciya-i-remont-avtomobilnogo-transporta/	2026-06-11 08:54:23.891	2026-06-11 08:54:23.891	2026-06-11 08:54:23.897	1	1	en
321	djno7rzuuwuigekjnfbquy48	Agricultural engineering and technology	6B08701	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/agrarnaya-tehnika-i-tehnologiya/	2026-06-11 08:54:38.447	2026-06-11 08:54:38.447	\N	1	1	en
322	djno7rzuuwuigekjnfbquy48	Agricultural engineering and technology	6B08701	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/agrarnaya-tehnika-i-tehnologiya/	2026-06-11 08:54:38.447	2026-06-11 08:54:38.447	2026-06-11 08:54:38.452	1	1	en
323	c72jzpy1rbcuyh6j8axh33vw	Agronomy	6В08103	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/agronomiya-bachelor/	2026-06-11 08:54:59.752	2026-06-11 08:54:59.752	\N	1	1	en
324	c72jzpy1rbcuyh6j8axh33vw	Agronomy	6В08103	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/agronomiya-bachelor/	2026-06-11 08:54:59.752	2026-06-11 08:54:59.752	2026-06-11 08:54:59.758	1	1	en
327	m3vmhvm5f4a28k0u0w7bluun	The technology of grain storage and processing	6B07203	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/tehnologiya-hraneniya-i-pererabotki-zerna/	2026-06-11 08:55:29.211	2026-06-11 08:55:29.211	\N	1	1	en
328	m3vmhvm5f4a28k0u0w7bluun	The technology of grain storage and processing	6B07203	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/tehnologiya-hraneniya-i-pererabotki-zerna/	2026-06-11 08:55:29.211	2026-06-11 08:55:29.211	2026-06-11 08:55:29.216	1	1	en
341	ok9caqdgfdywn0evervlmode	Mining	6B07202	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/gornoe-delo/	2026-06-11 08:57:31.383	2026-06-11 08:57:31.383	\N	1	1	en
342	ok9caqdgfdywn0evervlmode	Mining	6B07202	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/gornoe-delo/	2026-06-11 08:57:31.383	2026-06-11 08:57:31.383	2026-06-11 08:57:31.389	1	1	en
353	i5bck6bqdbs792q1ll2924oc	BIM design of buildings and structures	6B07301	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:59:28.742	2026-06-11 08:59:28.742	\N	1	1	en
354	i5bck6bqdbs792q1ll2924oc	BIM design of buildings and structures	6B07301	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:59:28.742	2026-06-11 08:59:28.742	2026-06-11 08:59:28.748	1	1	en
325	o2f9jeriuxw21ltbozwfo4bi	Information systems	6B06104	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/informacionnye-sistemy/	2026-06-11 08:55:14.518	2026-06-11 08:55:14.518	\N	1	1	en
326	o2f9jeriuxw21ltbozwfo4bi	Information systems	6B06104	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/informacionnye-sistemy/	2026-06-11 08:55:14.518	2026-06-11 08:55:14.518	2026-06-11 08:55:14.523	1	1	en
329	xw9casg2o1jrrbl820lmcz6r	Life safety and environmental protection	6B11203	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/bezopasnost-zhiznedeyatelnosti-i-zashita-okruzhayushej-sredy/	2026-06-11 08:55:44.82	2026-06-11 08:55:44.82	\N	1	1	en
330	xw9casg2o1jrrbl820lmcz6r	Life safety and environmental protection	6B11203	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/bezopasnost-zhiznedeyatelnosti-i-zashita-okruzhayushej-sredy/	2026-06-11 08:55:44.82	2026-06-11 08:55:44.82	2026-06-11 08:55:44.827	1	1	en
333	mrda7ulrwa9jcm2fvx4vl3eo	Biology	6B01514	Biology, Chemistry	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biologiya-6b01514/	2026-06-11 08:56:24.077	2026-06-11 08:56:24.077	\N	1	1	en
334	mrda7ulrwa9jcm2fvx4vl3eo	Biology	6B01514	Biology, Chemistry	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biologiya-6b01514/	2026-06-11 08:56:24.077	2026-06-11 08:56:24.077	2026-06-11 08:56:24.082	1	1	en
343	vr86vcq4y7k8sgc5fomg4tqy	Digital design of buildings and structures	6B07303	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/cifrovoe-proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:57:50	2026-06-11 08:57:50	\N	1	1	en
344	vr86vcq4y7k8sgc5fomg4tqy	Digital design of buildings and structures	6B07303	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/cifrovoe-proektirovanie-zdanij-i-sooruzhenij/	2026-06-11 08:57:50	2026-06-11 08:57:50	2026-06-11 08:57:50.006	1	1	en
345	fscktei13j9x5iu880ifykjh	Scientific history	6B02201	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/nauchnaya-istoriya/	2026-06-11 08:58:14.214	2026-06-11 08:58:14.214	\N	1	1	en
346	fscktei13j9x5iu880ifykjh	Scientific history	6B02201	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/nauchnaya-istoriya/	2026-06-11 08:58:14.214	2026-06-11 08:58:14.214	2026-06-11 08:58:14.218	1	1	en
331	h3v5jy83st0xuatlc3wrx8mn	Biology	6B05101	Biology, Chemistry	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biologiya/	2026-06-11 08:56:01.82	2026-06-11 08:56:01.82	\N	1	1	en
332	h3v5jy83st0xuatlc3wrx8mn	Biology	6B05101	Biology, Chemistry	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biologiya/	2026-06-11 08:56:01.82	2026-06-11 08:56:01.82	2026-06-11 08:56:01.826	1	1	en
347	r25lwlcct2vok8297uvaglhr	Physical education and sports	6B01403	Сreative exam	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizicheskaya-kultura-i-sport/	2026-06-11 08:58:32.212	2026-06-11 08:58:32.212	\N	1	1	en
348	r25lwlcct2vok8297uvaglhr	Physical education and sports	6B01403	Сreative exam	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizicheskaya-kultura-i-sport/	2026-06-11 08:58:32.212	2026-06-11 08:58:32.212	2026-06-11 08:58:32.218	1	1	en
335	az9r7icssjrt5pr4pipbfb43	Biotechnology by industry	6В05102	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biotehnologiya-po-otraslyam/	2026-06-11 08:56:39.298	2026-06-11 08:56:39.298	\N	1	1	en
336	az9r7icssjrt5pr4pipbfb43	Biotechnology by industry	6В05102	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biotehnologiya-po-otraslyam/	2026-06-11 08:56:39.298	2026-06-11 08:56:39.298	2026-06-11 08:56:39.304	1	1	en
339	oxd3q9tupfe4wubflk9tkwct	Geography - History	6B01502	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/geografiya-istoriya/	2026-06-11 08:57:15.916	2026-06-11 08:57:15.916	\N	1	1	en
340	oxd3q9tupfe4wubflk9tkwct	Geography - History	6B01502	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/geografiya-istoriya/	2026-06-11 08:57:15.916	2026-06-11 08:57:15.916	2026-06-11 08:57:15.922	1	1	en
349	aojxcgyu0m6cqu7bmf9521p8	Design and computer graphics	6B02102	Сreative exam - drawing, Сreative exam - picture (graphic)	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/dizajn-i-kompyuternaya-grafika/	2026-06-11 08:58:56.101	2026-06-11 08:58:56.101	\N	1	1	en
350	aojxcgyu0m6cqu7bmf9521p8	Design and computer graphics	6B02102	Сreative exam - drawing, Сreative exam - picture (graphic)	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/dizajn-i-kompyuternaya-grafika/	2026-06-11 08:58:56.101	2026-06-11 08:58:56.101	2026-06-11 08:58:56.107	1	1	en
359	vs3lza79bvg1o2fy48w85ytb	Tourism	6B11102	Geography, Foreign language	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/tourizm/	2026-06-11 09:00:15.335	2026-06-11 09:00:15.335	\N	1	1	en
360	vs3lza79bvg1o2fy48w85ytb	Tourism	6B11102	Geography, Foreign language	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/tourizm/	2026-06-11 09:00:15.335	2026-06-11 09:00:15.335	2026-06-11 09:00:15.341	1	1	en
361	g6go08oshzlp8fkpe6oqgzs9	Physics	6B05301	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizika/	2026-06-11 09:00:31.314	2026-06-11 09:00:31.314	\N	1	1	en
362	g6go08oshzlp8fkpe6oqgzs9	Physics	6B05301	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizika/	2026-06-11 09:00:31.314	2026-06-11 09:00:31.314	2026-06-11 09:00:31.32	1	1	en
337	e7mx3nauywyowshskgrzex9m	Accounting and economic analysis	6B04105	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/buhgalterskij-uchet-i-ekonomicheskij-analiz/	2026-06-11 08:56:55.881	2026-06-11 08:56:55.881	\N	1	1	en
338	e7mx3nauywyowshskgrzex9m	Accounting and economic analysis	6B04105	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/buhgalterskij-uchet-i-ekonomicheskij-analiz/	2026-06-11 08:56:55.881	2026-06-11 08:56:55.881	2026-06-11 08:56:55.887	1	1	en
351	t134tnlpn7grkzr1z5ma3f6t	Computer technology and software (security of computer systems and networks)	6B06102	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/vychislitelnaya-tehnika-i-programmnoe-obespechenie-bezopasnost-kompyuternyh-sistem-i-setej/	2026-06-11 08:59:11.635	2026-06-11 08:59:11.635	\N	1	1	en
352	t134tnlpn7grkzr1z5ma3f6t	Computer technology and software (security of computer systems and networks)	6B06102	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/vychislitelnaya-tehnika-i-programmnoe-obespechenie-bezopasnost-kompyuternyh-sistem-i-setej/	2026-06-11 08:59:11.635	2026-06-11 08:59:11.635	2026-06-11 08:59:11.64	1	1	en
355	l30rncckjvnix05xnnekes7m	Psychology	6B03101	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/psihologiya/	2026-06-11 08:59:45.244	2026-06-11 08:59:45.244	\N	1	1	en
356	l30rncckjvnix05xnnekes7m	Psychology	6B03101	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/psihologiya/	2026-06-11 08:59:45.244	2026-06-11 08:59:45.244	2026-06-11 08:59:45.252	1	1	en
357	t55zh1r5txzbn8fxe0xtbz60	Livestock production technology	6B08201	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/tehnologiya-proizvodstva-produkcii-zhivotnovodstva/	2026-06-11 08:59:59.899	2026-06-11 08:59:59.899	\N	1	1	en
358	t55zh1r5txzbn8fxe0xtbz60	Livestock production technology	6B08201	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/tehnologiya-proizvodstva-produkcii-zhivotnovodstva/	2026-06-11 08:59:59.899	2026-06-11 08:59:59.899	2026-06-11 08:59:59.903	1	1	en
363	wuio4nbegpx24pensr5yfh8b	Physics - computer science	6В01510	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizika-informatika/	2026-06-11 09:36:43.501	2026-06-11 09:36:43.501	\N	1	1	en
364	wuio4nbegpx24pensr5yfh8b	Physics - computer science	6В01510	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizika-informatika/	2026-06-11 09:36:43.501	2026-06-11 09:36:43.501	2026-06-11 09:36:43.509	1	1	en
365	bb7b03h50x0xlm1ng84f1daf	Physics (multilingual education)	6В01511	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizika-poliyazychnoe-obuchenie/	2026-06-11 09:37:04.129	2026-06-11 09:37:04.129	\N	1	1	en
366	bb7b03h50x0xlm1ng84f1daf	Physics (multilingual education)	6В01511	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizika-poliyazychnoe-obuchenie/	2026-06-11 09:37:04.129	2026-06-11 09:37:04.129	2026-06-11 09:37:04.135	1	1	en
367	tyz2izt6oha7gs70j38m76ts	Computer Science and Robotics (multilingual training)	6В01513	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/informatika-i-robototehnika-poliyazychnoe-obuchenie/	2026-06-11 09:37:19.18	2026-06-11 09:37:19.18	\N	1	1	en
368	tyz2izt6oha7gs70j38m76ts	Computer Science and Robotics (multilingual training)	6В01513	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/informatika-i-robototehnika-poliyazychnoe-obuchenie/	2026-06-11 09:37:19.18	2026-06-11 09:37:19.18	2026-06-11 09:37:19.186	1	1	en
369	ynlqww0emjkathivwtgtk2l4	Chemistry and biology	6В01507	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/himiya-biologiya-poliyazychnoe-obuchenie/	2026-06-11 09:37:35.743	2026-06-11 09:37:35.743	\N	1	1	en
370	ynlqww0emjkathivwtgtk2l4	Chemistry and biology	6В01507	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/himiya-biologiya-poliyazychnoe-obuchenie/	2026-06-11 09:37:35.743	2026-06-11 09:37:35.743	2026-06-11 09:37:35.747	1	1	en
371	jguqjc8nu15e62csiby1smn6	Foreign Language: Two Foreign Languages (English, German/Chinese)	6B01701	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-anglijskij-nemeckijkitajskij/	2026-06-11 09:37:52.15	2026-06-11 09:37:52.15	\N	1	1	en
372	jguqjc8nu15e62csiby1smn6	Foreign Language: Two Foreign Languages (English, German/Chinese)	6B01701	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-anglijskij-nemeckijkitajskij/	2026-06-11 09:37:52.15	2026-06-11 09:37:52.15	2026-06-11 09:37:52.157	1	1	en
373	iif0gj713eg86q8jkvi6tjj2	Ecology	6B05201	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/ekologiya/	2026-06-11 09:38:32.943	2026-06-11 09:38:32.943	\N	1	1	en
374	iif0gj713eg86q8jkvi6tjj2	Ecology	6B05201	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/ekologiya/	2026-06-11 09:38:32.943	2026-06-11 09:38:32.943	2026-06-11 09:38:32.95	1	1	en
375	b4dxzh1eskwg6bshwz7ikigo	Jurisprudence	6B04201	World History, Man (human) , society, law	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/yurisprudenciya/	2026-06-11 09:38:47.011	2026-06-11 09:38:47.011	\N	1	1	en
376	b4dxzh1eskwg6bshwz7ikigo	Jurisprudence	6B04201	World History, Man (human) , society, law	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/yurisprudenciya/	2026-06-11 09:38:47.011	2026-06-11 09:38:47.011	2026-06-11 09:38:47.018	1	1	en
377	d5qu28ntyu9ptt60a5s54d8v	General Medicine (Major)	6В10101 Recruitment for this educational program is not carried out	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/obshaya-medicina-major/	2026-06-11 09:39:10.648	2026-06-11 09:39:10.648	\N	1	1	en
378	d5qu28ntyu9ptt60a5s54d8v	General Medicine (Major)	6В10101 Recruitment for this educational program is not carried out	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/obshaya-medicina-major/	2026-06-11 09:39:10.648	2026-06-11 09:39:10.648	2026-06-11 09:39:10.654	1	1	en
379	g1hjgsznag47nnwj2dpzwdid	3D Modeling Engineer in Mining	6B07205	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inzhener-3d-modelirovaniya-v-gornom-dele/	2026-06-11 09:39:30.835	2026-06-11 09:39:30.835	\N	1	1	en
380	g1hjgsznag47nnwj2dpzwdid	3D Modeling Engineer in Mining	6B07205	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inzhener-3d-modelirovaniya-v-gornom-dele/	2026-06-11 09:39:30.835	2026-06-11 09:39:30.835	2026-06-11 09:39:30.842	1	1	en
381	hnvxdhl8rb98pe3hkwm7uw1s	Kazakh language and literature	6В01707	Kazakh language, Kazakh literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/aza-tilinde-oytatyn-zhne-oytpajtyn-mektepterdegi-aza-tili-men-debieti/	2026-06-11 09:39:46.975	2026-06-11 09:39:46.975	\N	1	1	en
382	hnvxdhl8rb98pe3hkwm7uw1s	Kazakh language and literature	6В01707	Kazakh language, Kazakh literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/aza-tilinde-oytatyn-zhne-oytpajtyn-mektepterdegi-aza-tili-men-debieti/	2026-06-11 09:39:46.975	2026-06-11 09:39:46.975	2026-06-11 09:39:46.981	1	1	en
383	o7vsrxu0ihzsmm1ks219rwl6	Kazakh Philology	6B02301	Kazakh language, Kazakh literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/kazahskaya-filologiya/	2026-06-11 09:40:03.765	2026-06-11 09:40:03.765	\N	1	1	en
384	o7vsrxu0ihzsmm1ks219rwl6	Kazakh Philology	6B02301	Kazakh language, Kazakh literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/kazahskaya-filologiya/	2026-06-11 09:40:03.765	2026-06-11 09:40:03.765	2026-06-11 09:40:03.772	1	1	en
387	xl6wpao052gy033d94o9iz60	Mathematics (multilingual education)	6В01506	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/matematika-poliyazychnoe-obuchenie/	2026-06-11 09:40:40.612	2026-06-11 09:40:40.612	\N	1	1	en
388	xl6wpao052gy033d94o9iz60	Mathematics (multilingual education)	6В01506	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/matematika-poliyazychnoe-obuchenie/	2026-06-11 09:40:40.612	2026-06-11 09:40:40.612	2026-06-11 09:40:40.618	1	1	en
385	z6zkjexifip0wjz8016l8san	Forest resources and forestry	6B08301	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/lesnye-resursy-i-lesovodstvo/	2026-06-11 09:40:19.995	2026-06-11 09:40:19.995	\N	1	1	en
386	z6zkjexifip0wjz8016l8san	Forest resources and forestry	6B08301	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/lesnye-resursy-i-lesovodstvo/	2026-06-11 09:40:19.995	2026-06-11 09:40:19.995	2026-06-11 09:40:20.003	1	1	en
389	modkv9wgodue6ni6rjevccmh	Mathematics - Computer Science	6В01508	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/matematika-informatika/	2026-06-11 09:41:04.58	2026-06-11 09:41:04.58	\N	1	1	en
390	modkv9wgodue6ni6rjevccmh	Mathematics - Computer Science	6В01508	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/matematika-informatika/	2026-06-11 09:41:04.58	2026-06-11 09:41:04.58	2026-06-11 09:41:04.585	1	1	en
391	f16rbpx9hkkuc53yd7skh6lm	Mathematics - Physics	6В01509	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/matematika-fizika/	2026-06-11 09:41:19.42	2026-06-11 09:41:19.42	\N	1	1	en
392	f16rbpx9hkkuc53yd7skh6lm	Mathematics - Physics	6В01509	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/matematika-fizika/	2026-06-11 09:41:19.42	2026-06-11 09:41:19.42	2026-06-11 09:41:19.425	1	1	en
393	vox98viq33fgf7gjioo0m91i	Preschool education (IP)	6B01202	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/doshkolnoe-obuchenie-i-vospitanie-major/	2026-06-11 09:41:35.914	2026-06-11 09:41:35.914	\N	1	1	en
394	vox98viq33fgf7gjioo0m91i	Preschool education (IP)	6B01202	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/doshkolnoe-obuchenie-i-vospitanie-major/	2026-06-11 09:41:35.914	2026-06-11 09:41:35.914	2026-06-11 09:41:35.92	1	1	en
395	ffvgtlv7tnxwdhpmd255pebl	The high school chemistry and biology (multilingual education)	6В01504	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/himiya-i-biologiya-v-osnovnoj-shkole-poliyazychnoe-obuchenie/	2026-06-11 09:41:50.151	2026-06-11 09:41:50.151	\N	1	1	en
396	ffvgtlv7tnxwdhpmd255pebl	The high school chemistry and biology (multilingual education)	6В01504	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/himiya-i-biologiya-v-osnovnoj-shkole-poliyazychnoe-obuchenie/	2026-06-11 09:41:50.151	2026-06-11 09:41:50.151	2026-06-11 09:41:50.157	1	1	en
397	jn22jugcgp54h0ej9tp0snuw	Russian language and literature in schools with Russian and non-Russian languages of instruction	6В01708	Russian language , Russian literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/russkij-yazyk-i-literatura-v-shkolah-s-russkim-i-nerusskim-yazykami-obucheniya/	2026-06-11 09:42:14.398	2026-06-11 09:42:14.398	\N	1	1	en
398	jn22jugcgp54h0ej9tp0snuw	Russian language and literature in schools with Russian and non-Russian languages of instruction	6В01708	Russian language , Russian literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/russkij-yazyk-i-literatura-v-shkolah-s-russkim-i-nerusskim-yazykami-obucheniya/	2026-06-11 09:42:14.398	2026-06-11 09:42:14.398	2026-06-11 09:42:14.404	1	1	en
399	sfivyl1pqu05tbv5c29dgwsd	Pedagogy and Psychology	6B01101	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pedagogika-i-psihologiya/	2026-06-11 09:42:30.238	2026-06-11 09:42:30.238	\N	1	1	en
400	sfivyl1pqu05tbv5c29dgwsd	Pedagogy and Psychology	6B01101	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pedagogika-i-psihologiya/	2026-06-11 09:42:30.238	2026-06-11 09:42:30.238	2026-06-11 09:42:30.244	1	1	en
401	xar6f6u513cm07ty18bvw1fu	Primary education (IP)	6В01302	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya/	2026-06-11 09:42:47.098	2026-06-11 09:42:47.098	\N	1	1	en
402	xar6f6u513cm07ty18bvw1fu	Primary education (IP)	6В01302	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya/	2026-06-11 09:42:47.098	2026-06-11 09:42:47.098	2026-06-11 09:42:47.108	1	1	en
403	ioa384c5ay8sn115gc45hvpd	Soil science and Agrochemistry	6B08102	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pochvovedenie-i-agrohimiya-6b08102/	2026-06-11 09:43:05.058	2026-06-11 09:43:05.058	\N	1	1	en
404	ioa384c5ay8sn115gc45hvpd	Soil science and Agrochemistry	6B08102	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pochvovedenie-i-agrohimiya-6b08102/	2026-06-11 09:43:05.058	2026-06-11 09:43:05.058	2026-06-11 09:43:05.064	1	1	en
405	f2b6grrcu86frmv5yxxd3z6y	Foreign language: two foreign languages in the basic school (German, English)	6B01703	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-v-osnovnoj-shkole-nemeckij-anglijskij/	2026-06-11 09:43:20.693	2026-06-11 09:43:20.693	\N	1	1	en
406	f2b6grrcu86frmv5yxxd3z6y	Foreign language: two foreign languages in the basic school (German, English)	6B01703	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inostrannyj-yazyk-dva-inostrannyh-yazyka-v-osnovnoj-shkole-nemeckij-anglijskij/	2026-06-11 09:43:20.693	2026-06-11 09:43:20.693	2026-06-11 09:43:20.7	1	1	en
407	gyarzcchgf9psv8dbm0oudgc	Theology	6В02202	Сreative exam	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/teologiya/	2026-06-11 09:43:38.528	2026-06-11 09:43:38.528	\N	1	1	en
408	gyarzcchgf9psv8dbm0oudgc	Theology	6В02202	Сreative exam	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/teologiya/	2026-06-11 09:43:38.528	2026-06-11 09:43:38.528	2026-06-11 09:43:38.533	1	1	en
409	io8rg89m16nqgr2rbeboo67l	Mineral enrichment	6B07206	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/obogashenie-poleznyh-iskopaemyh1/	2026-06-11 09:43:56.867	2026-06-11 09:43:56.867	\N	1	1	en
410	io8rg89m16nqgr2rbeboo67l	Mineral enrichment	6B07206	Mathemathics, Physics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/obogashenie-poleznyh-iskopaemyh1/	2026-06-11 09:43:56.867	2026-06-11 09:43:56.867	2026-06-11 09:43:56.872	1	1	en
411	ynucwf5ezklsckhhymh8u4a9	Data Science	6В06105	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/6v06105-data-science/	2026-06-11 09:44:21.676	2026-06-11 09:44:21.676	\N	1	1	en
412	ynucwf5ezklsckhhymh8u4a9	Data Science	6В06105	Mathematics, Informatics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/6v06105-data-science/	2026-06-11 09:44:21.676	2026-06-11 09:44:21.676	2026-06-11 09:44:21.682	1	1	en
413	ns0a2l8cd6ioo2wed0serh7x	Management in Industries	6В04103	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/menedzhment-v-otraslyah-major-minor/	2026-06-11 09:44:52.779	2026-06-11 09:44:52.779	\N	1	1	en
414	ns0a2l8cd6ioo2wed0serh7x	Management in Industries	6В04103	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/menedzhment-v-otraslyah-major-minor/	2026-06-11 09:44:52.779	2026-06-11 09:44:52.779	2026-06-11 09:44:52.785	1	1	en
415	qd5pthkyo331get72q3yjrl8	Public health	6В10102	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/obshestvennoe-zdorove/	2026-06-11 09:45:07.964	2026-06-11 09:45:07.964	\N	1	1	en
416	qd5pthkyo331get72q3yjrl8	Public health	6В10102	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/obshestvennoe-zdorove/	2026-06-11 09:45:07.964	2026-06-11 09:45:07.964	2026-06-11 09:45:07.97	1	1	en
419	mfe9xsbpa3o81ayrasims3fa	Psychology IP	6B01103	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/psihologiya-v-obrazovanii/	2026-06-11 09:45:40.208	2026-06-11 09:45:40.208	\N	1	1	en
420	mfe9xsbpa3o81ayrasims3fa	Psychology IP	6B01103	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/psihologiya-v-obrazovanii/	2026-06-11 09:45:40.208	2026-06-11 09:45:40.208	2026-06-11 09:45:40.214	1	1	en
435	r3g7t1qjjcbtffi93eadn82g	Objectives of the educational program	6B07105	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/transport-transportnaya-tehnika-i-tehnologii/	2026-06-11 09:48:04.695	2026-06-11 09:48:04.695	\N	1	1	en
436	r3g7t1qjjcbtffi93eadn82g	Objectives of the educational program	6B07105	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/transport-transportnaya-tehnika-i-tehnologii/	2026-06-11 09:48:04.695	2026-06-11 09:48:04.695	2026-06-11 09:48:04.701	1	1	en
439	o28r2cy1zoeysr3kjge20qeu	Tourism and Hospitality ("Woosong" South Korea)	6B11103	Geography, Foreign language	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/turizm-i-gostepriimstvo/	2026-06-11 09:48:39.145	2026-06-11 09:48:39.145	\N	1	1	en
440	o28r2cy1zoeysr3kjge20qeu	Tourism and Hospitality ("Woosong" South Korea)	6B11103	Geography, Foreign language	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/turizm-i-gostepriimstvo/	2026-06-11 09:48:39.145	2026-06-11 09:48:39.145	2026-06-11 09:48:39.149	1	1	en
443	gjn5rq38azjb8ho1hvf7kbt7	Foreign languages IP	6В01702	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inostrannye-yazyki-ip/	2026-06-11 09:49:22.327	2026-06-11 09:49:22.327	\N	1	1	en
444	gjn5rq38azjb8ho1hvf7kbt7	Foreign languages IP	6В01702	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/inostrannye-yazyki-ip/	2026-06-11 09:49:22.327	2026-06-11 09:49:22.327	2026-06-11 09:49:22.335	1	1	en
445	a20rx6our8szvltx897thxku	Journalism	6В03202	Essay, Interview	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/zhurnalistika/	2026-06-11 09:49:40.825	2026-06-11 09:49:40.825	\N	1	1	en
446	a20rx6our8szvltx897thxku	Journalism	6В03202	Essay, Interview	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/zhurnalistika/	2026-06-11 09:49:40.825	2026-06-11 09:49:40.825	2026-06-11 09:49:40.832	1	1	en
447	c2dkkaikeg09dhtautfdzwt3	Pedagogy of Preschool Education and Training	6B01201	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/doshkolnoe-obuchenie-i-vospitanie/	2026-06-11 09:49:54.902	2026-06-11 09:49:54.902	\N	1	1	en
448	c2dkkaikeg09dhtautfdzwt3	Pedagogy of Preschool Education and Training	6B01201	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/doshkolnoe-obuchenie-i-vospitanie/	2026-06-11 09:49:54.902	2026-06-11 09:49:54.902	2026-06-11 09:49:54.907	1	1	en
451	o1z15oqqa111gxqstl2fupz7	Social pedagogy and self-knowledge, tutor of inclusive education	6B01801	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/socialnaya-pedagogika-i-samopoznanie-tyutor-inklyuzivnogo-obrazovaniya-6b01801/	2026-06-11 09:50:26.604	2026-06-11 09:50:26.604	\N	1	1	en
452	o1z15oqqa111gxqstl2fupz7	Social pedagogy and self-knowledge, tutor of inclusive education	6B01801	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/socialnaya-pedagogika-i-samopoznanie-tyutor-inklyuzivnogo-obrazovaniya-6b01801/	2026-06-11 09:50:26.604	2026-06-11 09:50:26.604	2026-06-11 09:50:26.611	1	1	en
453	hsxgat00ugnir3oh1jzhkuml	Physics	6В01511	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizikaa/	2026-06-11 09:50:43.095	2026-06-11 09:50:43.095	\N	1	1	en
454	hsxgat00ugnir3oh1jzhkuml	Physics	6В01511	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/fizikaa/	2026-06-11 09:50:43.095	2026-06-11 09:50:43.095	2026-06-11 09:50:43.101	1	1	en
417	x991e3tdd7bli6kzz96cq0bf	Kazakh language and literature in schools non- kazakh language of interuction	6В01706	Kazakh language, Kazakh literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/kazahskij-yazyk-i-literatura-v-shkolah-s-nekazahskim-yazykom-obucheniya/	2026-06-11 09:45:24.604	2026-06-11 09:45:24.604	\N	1	1	en
418	x991e3tdd7bli6kzz96cq0bf	Kazakh language and literature in schools non- kazakh language of interuction	6В01706	Kazakh language, Kazakh literature	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/kazahskij-yazyk-i-literatura-v-shkolah-s-nekazahskim-yazykom-obucheniya/	2026-06-11 09:45:24.604	2026-06-11 09:45:24.604	2026-06-11 09:45:24.611	1	1	en
421	v6u2r2mz41dgfu7028usy4nw	Medicine	6В10104	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/6v10104-medicina-major/	2026-06-11 09:45:55.689	2026-06-11 09:45:55.689	\N	1	1	en
422	v6u2r2mz41dgfu7028usy4nw	Medicine	6В10104	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/6v10104-medicina-major/	2026-06-11 09:45:55.689	2026-06-11 09:45:55.689	2026-06-11 09:45:55.694	1	1	en
423	fkpybv1898rhvue5ibeuy1lp	Chemistry (IP)	6B01534	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/himiyaip/	2026-06-11 09:46:12.872	2026-06-11 09:46:12.872	\N	1	1	en
424	fkpybv1898rhvue5ibeuy1lp	Chemistry (IP)	6B01534	Chemistry, Biology	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/himiyaip/	2026-06-11 09:46:12.872	2026-06-11 09:46:12.872	2026-06-11 09:46:12.878	1	1	en
425	c862hgme7w66l3xmvmzqsk3v	Translation Studies (English, German/Chinese)(Mykolas Romeris University, Lithuania)	6B02302	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-dvudiplomnaya-kokshetauskij-universitet-imshualihanova-universitet-mikolos-romirisa-litva/	2026-06-11 09:46:32.433	2026-06-11 09:46:32.433	\N	1	1	en
426	c862hgme7w66l3xmvmzqsk3v	Translation Studies (English, German/Chinese)(Mykolas Romeris University, Lithuania)	6B02302	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/perevodcheskoe-delo-anglijskij-nemeckijkitajskij-dvudiplomnaya-kokshetauskij-universitet-imshualihanova-universitet-mikolos-romirisa-litva/	2026-06-11 09:46:32.433	2026-06-11 09:46:32.433	2026-06-11 09:46:32.439	1	1	en
427	tqda2kfkrtphsq00tpq2k2vf	Art Education (IP)	6B01416	Creative examination - drawing (graphics), Creative exam - painting	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/hudozhestvennoe-obrazovanie-ip/	2026-06-11 09:46:47.519	2026-06-11 09:46:47.519	\N	1	1	en
428	tqda2kfkrtphsq00tpq2k2vf	Art Education (IP)	6B01416	Creative examination - drawing (graphics), Creative exam - painting	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/hudozhestvennoe-obrazovanie-ip/	2026-06-11 09:46:47.519	2026-06-11 09:46:47.519	2026-06-11 09:46:47.528	1	1	en
429	c17anslhxkg0fhwpghbdg9ek	Job training and the basics of entrepreneurship	6B01420	Сreative exam - drawing, Сreative exam - picture (graphic)	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/trudovoe-obuchenie-i-osnovy-predprinimatelstva-ip/	2026-06-11 09:47:07.353	2026-06-11 09:47:07.353	\N	1	1	en
430	c17anslhxkg0fhwpghbdg9ek	Job training and the basics of entrepreneurship	6B01420	Сreative exam - drawing, Сreative exam - picture (graphic)	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/trudovoe-obuchenie-i-osnovy-predprinimatelstva-ip/	2026-06-11 09:47:07.353	2026-06-11 09:47:07.353	2026-06-11 09:47:07.358	1	1	en
431	vbly13x221fszb6ykzj9jj9p	Biology (IP)	6B01533	Biology, Chemistry	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biologiya-6b01533/	2026-06-11 09:47:31.776	2026-06-11 09:47:31.776	\N	1	1	en
432	vbly13x221fszb6ykzj9jj9p	Biology (IP)	6B01533	Biology, Chemistry	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/biologiya-6b01533/	2026-06-11 09:47:31.776	2026-06-11 09:47:31.776	2026-06-11 09:47:31.782	1	1	en
433	prhvnh2dsf0dbpns49kh9e6c	Mechanical engineering	6B07104	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/mashinostroenie/	2026-06-11 09:47:49.39	2026-06-11 09:47:49.39	\N	1	1	en
434	prhvnh2dsf0dbpns49kh9e6c	Mechanical engineering	6B07104	Physics, Mathematics	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/mashinostroenie/	2026-06-11 09:47:49.39	2026-06-11 09:47:49.39	2026-06-11 09:47:49.396	1	1	en
437	gitlvno4xjpfiqs8m6i58ubt	Global Management ("Woosong" South Korea)	6В04107	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/globalnyj-menedzhment/	2026-06-11 09:48:23.991	2026-06-11 09:48:23.991	\N	1	1	en
438	gitlvno4xjpfiqs8m6i58ubt	Global Management ("Woosong" South Korea)	6В04107	Math, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/globalnyj-menedzhment/	2026-06-11 09:48:23.991	2026-06-11 09:48:23.991	2026-06-11 09:48:23.997	1	1	en
441	a4df82v0wxtuscbw0xzt4th9	English language (IP)	6B01703	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/anglijskij-yazyk-ip/	2026-06-11 09:48:53.317	2026-06-11 09:48:53.317	\N	1	1	en
442	a4df82v0wxtuscbw0xzt4th9	English language (IP)	6B01703	Foreign language (English), The World History	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/anglijskij-yazyk-ip/	2026-06-11 09:48:53.317	2026-06-11 09:48:53.317	2026-06-11 09:48:53.325	1	1	en
449	z3ki9wsi5pslao3b1qtyanuq	Pedagogy and methods of primary education	6B01301	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya-6b01301/	2026-06-11 09:50:09.634	2026-06-11 09:50:09.634	\N	1	1	en
450	z3ki9wsi5pslao3b1qtyanuq	Pedagogy and methods of primary education	6B01301	Biology, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/pedagogika-i-metodika-nachalnogo-obucheniya-6b01301/	2026-06-11 09:50:09.634	2026-06-11 09:50:09.634	2026-06-11 09:50:09.64	1	1	en
455	wlbs6qio8sc83pm51srziuha	History (Major)	6B01603	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/istoriya-2/	2026-06-11 09:51:01.749	2026-06-11 09:51:01.749	\N	1	1	en
456	wlbs6qio8sc83pm51srziuha	History (Major)	6B01603	The World History, Geography	Undergraduate	Full-time	https://shokan.edu.kz/en/educational-programs/istoriya-2/	2026-06-11 09:51:01.749	2026-06-11 09:51:01.749	2026-06-11 09:51:01.756	1	1	en
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.questions (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, text) FROM stdin;
\.


--
-- Data for Name: questions_categories_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.questions_categories_lnk (id, question_id, category_id, category_ord) FROM stdin;
\.


--
-- Data for Name: questions_statics; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.questions_statics (id, document_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, title, heading, paragraph, placeholder) FROM stdin;
3	i6vhzl84h11q0zlqsfrbcs6s	2026-06-03 12:25:10.333	2026-06-03 12:25:10.333	\N	1	1	\N	Помощь абитуриенту	Часто задаваемые вопросы	Собрали ответы на самые популярные вопросы о поступлении, ЕНТ, грантах и студенческой жизни. Не нашли свой — напишите нам.	Поиск по вопросам...
4	i6vhzl84h11q0zlqsfrbcs6s	2026-06-03 12:25:10.333	2026-06-03 12:25:10.333	2026-06-03 12:25:10.34	1	1	\N	Помощь абитуриенту	Часто задаваемые вопросы	Собрали ответы на самые популярные вопросы о поступлении, ЕНТ, грантах и студенческой жизни. Не нашли свой — напишите нам.	Поиск по вопросам...
\.


--
-- Data for Name: reseptions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.reseptions (id, document_id, title, subtitle, year, days, consult, phone, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, asked, questions, national_exam, testing_exam) FROM stdin;
1	diolsh0jxlppvv3r5t59zuji	Information	Application deadline	2025	1 July – 25 August	 Advice on admissions	87162721112	2026-05-26 16:57:12.282	2026-05-26 16:57:12.282	\N	1	1	en	Frequently Asked Questions	Frequently Asked Questions	NA	National Assessment
2	diolsh0jxlppvv3r5t59zuji	Information	Application deadline	2025	1 July – 25 August	 Advice on admissions	87162721112	2026-05-26 16:57:12.282	2026-05-26 16:57:12.282	2026-05-26 16:57:12.293	1	1	en	Frequently Asked Questions	Frequently Asked Questions	NA	National Assessment
3	fvf4aioo5xh1nc60z7xq7j3f	Информация	Срок приёма заявлений	2025	1 июля — 25 августа	Консультации по вопросам приёма	87162721112	2026-05-29 13:27:14.448	2026-05-29 13:27:14.448	\N	1	1	ru	Часто задаваемые вопросы	Часто задаваемые вопросы	ЕНТ	Единое Национальное Тестирование
4	fvf4aioo5xh1nc60z7xq7j3f	Информация	Срок приёма заявлений	2025	1 июля — 25 августа	Консультации по вопросам приёма	87162721112	2026-05-29 13:27:14.448	2026-05-29 13:27:14.448	2026-05-29 13:27:14.454	1	1	ru	Часто задаваемые вопросы	Часто задаваемые вопросы	ЕНТ	Единое Национальное Тестирование
5	bwwotjsgdyenh225zh0bfxhq	Ақпарат	Өтінім қабылдау мерзімі	2025	1 шілде – 25 тамыз	Қабылдау жөніндегі кеңестер	87162721112	2026-05-29 13:29:26.457	2026-05-29 13:29:26.457	\N	1	1	kk	Жиі қойылатын сұрақтар	Жиі қойылатын сұрақтар	ҰБТ	Ұлттық бірыңғай тестілеу
6	bwwotjsgdyenh225zh0bfxhq	Ақпарат	Өтінім қабылдау мерзімі	2025	1 шілде – 25 тамыз	Қабылдау жөніндегі кеңестер	87162721112	2026-05-29 13:29:26.457	2026-05-29 13:29:26.457	2026-05-29 13:29:26.463	1	1	kk	Жиі қойылатын сұрақтар	Жиі қойылатын сұрақтар	ҰБТ	Ұлттық бірыңғай тестілеу
\.


--
-- Data for Name: static_articles; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.static_articles (id, document_id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: static_attributes; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.static_attributes (id, document_id, title, subtitle, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: static_infos; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.static_infos (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: static_infos_cmps; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.static_infos_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: static_programms; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.static_programms (id, document_id, title, more, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_api_tokens (id, document_id, name, description, kind, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	kx217n82uhe2zrz5jlyy4f4w	Read Only	A default API token with read-only permissions, only used for accessing resources	content-api	read-only	fd7e6c38352421eee32f58d4d4d07bf6dd583ebce068af2c8481c15950e52df8456dbda81d053db9b4eab307591d99054e0fa370342425b36f87e6f2b49a2e09	v1:ce8158a30c951dc6e9f32e7aa06794b1:c137aab5e716f2eea089009f354d3b6b52423738dcb5d59726db99ab6dd26f2cc6459a76ea4836e89ecc1f0a9e404c345e9a7909503ea4bc9b381168dbf3fc8f95ffff4b550ca2cfb9aef72d24d4a1cc3725eff8392b3d217710fded437c9b2154671134a5a0510fa3f1effdae5debbc2be12dd79401fea4082ab33c7d8e935cf4aa5df7a3fdded8b4ccedce84983b041360d077fb2dd9b2dbf03eea11a24da64ff2d850428770efc65638c52d657633ab065d516808d8adfd83f85ee7fbb6860e7287ad6d45239fec0f96ec944b1d2de733336b874a524da8d51c1159a77149cb0dd282ba6a12c2aa7ef4b8781677d243847d59cb1a841dd8e7c9370d769ad6:25ee55f7461b7693c451f0190b193dea	\N	\N	\N	2026-05-22 15:50:02.052	2026-05-22 15:50:02.052	2026-05-22 15:50:02.052	\N	\N	\N
2	mzopw10k3e07y6neu5or0vem	Full Access	A default API token with full access permissions, used for accessing or modifying resources	content-api	full-access	32a8da39ba7a03a4177efce2c35a97bc72dcef4be37e9b0ea08850f1dd02ab889b325255c74c1e0376f4bec7c47278849846dc35cd52d89e89c68605149c26a6	v1:0e38131a0a25f721d77235041d377e87:7ea4e323eddcf22995668370e1e9ae3224feabfb94cb2ff635a3c16ea6b6f8ca8760e2c32fbe7cd3f7ee569792c5464a4ad41413b320a0e845b7ca614793403176cade35fd7eb06f4e6a1b4f79f47e6adc814a9467992f862b0057a6ba7a0b64e1d2d13427fba03c172a2641102b80259a96831dcf7b79a91adb907318f11475593789b56e6ec8e7eeb3058523c21874ac47f82de0b74a46822dd0630759f4c95f9680f60af228b56343e68ba6980b9932294e9a340d0cc6da5642bde5394475a05f48a07b6c116e9c652eb2c26789735147c73e0d70adc6552b1091cdf415a52fd0a9373188d5d96cfa87fea059f30d15e22c7c9685b279669d195ae96ec6eb:67ad430f4623844b80439ad759353099	\N	\N	\N	2026-05-22 15:50:02.057	2026-05-22 15:50:02.057	2026-05-22 15:50:02.057	\N	\N	\N
\.


--
-- Data for Name: strapi_api_tokens_admin_user_owner_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_api_tokens_admin_user_owner_lnk (id, api_token_id, user_id, api_token_ord) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6}],[{"name":"focalPoint","size":12}],[{"name":"width","size":4},{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
6	plugin_content_manager_configuration_components::shared.component	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"graduate":{"edit":{"label":"graduate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"graduate","searchable":true,"sortable":true}},"educat":{"edit":{"label":"educat","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"educat","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","graduate"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"graduate","size":6},{"name":"educat","size":6}],[{"name":"code","size":6}]]},"uid":"shared.component","isComponent":true}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.item	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]]},"uid":"shared.item","isComponent":true}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::profession.profession	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"graduates":{"edit":{"label":"graduates","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"graduates","searchable":true,"sortable":true}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","code","subtitle"],"edit":[[{"name":"title","size":6},{"name":"code","size":6}],[{"name":"subtitle","size":6},{"name":"graduates","size":6}],[{"name":"form","size":6},{"name":"url","size":6}]]},"uid":"api::profession.profession"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"apiTokens":{"edit":{"label":"apiTokens","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"apiTokens","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"apiTokens","size":6}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::admission.admission":{"kind":"collectionType","collectionName":"admissions","info":{"singularName":"admission","pluralName":"admissions","displayName":" Admission"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"more":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::admission.admission","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admissions"}}},"apiName":"admission","globalId":"Admission","uid":"api::admission.admission","modelType":"contentType","__schema__":{"collectionName":"admissions","info":{"singularName":"admission","pluralName":"admissions","displayName":" Admission"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"more":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"admission","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Categories"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Categories"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"collectionType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"phone":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"address":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"room":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"schedule":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"socialMedia":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contact.contact","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contacts"}}},"apiName":"contact","globalId":"Contact","uid":"api::contact.contact","modelType":"contentType","__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"Contact"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"phone":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"address":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"room":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"schedule":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"socialMedia":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"contact","actions":{},"lifecycles":{}},"api::contacts-comission.contacts-comission":{"kind":"collectionType","collectionName":"contacts_comissions","info":{"singularName":"contacts-comission","pluralName":"contacts-comissions","displayName":"Контакты-Перечень","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"text"},"email":{"type":"text"},"locales":{"type":"text"},"dayswork":{"type":"text"},"number":{"type":"text"},"more":{"type":"string"},"doc":{"type":"text"},"med":{"type":"text"},"identifycard":{"type":"text"},"photos":{"type":"text"},"card":{"type":"string"},"certificate":{"type":"text"},"grant":{"type":"text"},"cardboard":{"type":"text"},"envelope":{"type":"text"},"sectitle":{"type":"text"},"instagram":{"type":"text"},"instaurl":{"type":"text"},"toogis":{"type":"text"},"toogisurl":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contacts-comission.contacts-comission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contacts_comissions"}}},"apiName":"contacts-comission","globalId":"ContactsComission","uid":"api::contacts-comission.contacts-comission","modelType":"contentType","__schema__":{"collectionName":"contacts_comissions","info":{"singularName":"contacts-comission","pluralName":"contacts-comissions","displayName":"Контакты-Перечень","description":""},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"text"},"email":{"type":"text"},"locales":{"type":"text"},"dayswork":{"type":"text"},"number":{"type":"text"},"more":{"type":"string"},"doc":{"type":"text"},"med":{"type":"text"},"identifycard":{"type":"text"},"photos":{"type":"text"},"card":{"type":"string"},"certificate":{"type":"text"},"grant":{"type":"text"},"cardboard":{"type":"text"},"envelope":{"type":"text"},"sectitle":{"type":"text"},"instagram":{"type":"text"},"instaurl":{"type":"text"},"toogis":{"type":"text"},"toogisurl":{"type":"text"}},"kind":"collectionType"},"modelName":"contacts-comission","actions":{},"lifecycles":{}},"api::doc.doc":{"kind":"collectionType","collectionName":"docs","info":{"singularName":"doc","pluralName":"docs","displayName":"Docs"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"text":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"url":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::doc.doc","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"docs"}}},"apiName":"doc","globalId":"Doc","uid":"api::doc.doc","modelType":"contentType","__schema__":{"collectionName":"docs","info":{"singularName":"doc","pluralName":"docs","displayName":"Docs"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"text":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"url":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"doc","actions":{},"lifecycles":{}},"api::error.error":{"kind":"collectionType","collectionName":"errors","info":{"singularName":"error","pluralName":"errors","displayName":"Errors"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"home":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"again":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::error.error","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"errors"}}},"apiName":"error","globalId":"Error","uid":"api::error.error","modelType":"contentType","__schema__":{"collectionName":"errors","info":{"singularName":"error","pluralName":"errors","displayName":"Errors"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"home":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"again":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"error","actions":{},"lifecycles":{}},"api::global.global":{"kind":"singleType","collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::global.global","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"globals"}}},"apiName":"global","globalId":"Global","uid":"api::global.global","modelType":"contentType","__schema__":{"collectionName":"globals","info":{"singularName":"global","pluralName":"globals","displayName":"Global","description":"Define global settings"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"siteName":{"type":"string","required":true},"favicon":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos"]},"siteDescription":{"type":"text","required":true}},"kind":"singleType"},"modelName":"global","actions":{},"lifecycles":{}},"api::graduate.graduate":{"kind":"collectionType","collectionName":"graduates","info":{"singularName":"graduate","pluralName":"graduates","displayName":"Graduate"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"graduates":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::graduate.graduate","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"graduates"}}},"apiName":"graduate","globalId":"Graduate","uid":"api::graduate.graduate","modelType":"contentType","__schema__":{"collectionName":"graduates","info":{"singularName":"graduate","pluralName":"graduates","displayName":"Graduate"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"graduates":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"graduate","actions":{},"lifecycles":{}},"api::head.head":{"kind":"collectionType","collectionName":"heads","info":{"singularName":"head","pluralName":"heads","displayName":"Head"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"heading":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::head.head","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"heads"}}},"apiName":"head","globalId":"Head","uid":"api::head.head","modelType":"contentType","__schema__":{"collectionName":"heads","info":{"singularName":"head","pluralName":"heads","displayName":"Head"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"heading":{"type":"string","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"head","actions":{},"lifecycles":{}},"api::image.image":{"kind":"collectionType","collectionName":"images","info":{"singularName":"image","pluralName":"images","displayName":"Image"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::image.image","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"images"}}},"apiName":"image","globalId":"Image","uid":"api::image.image","modelType":"contentType","__schema__":{"collectionName":"images","info":{"singularName":"image","pluralName":"images","displayName":"Image"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]}},"kind":"collectionType"},"modelName":"image","actions":{},"lifecycles":{}},"api::info-admission.info-admission":{"kind":"collectionType","collectionName":"info_admissions","info":{"singularName":"info-admission","pluralName":"info-admissions","displayName":"Info Admission"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"links":{"type":"component","pluginOptions":{"i18n":{"localized":true}},"component":"shared.links","repeatable":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::info-admission.info-admission","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"info_admissions"}}},"apiName":"info-admission","globalId":"InfoAdmission","uid":"api::info-admission.info-admission","modelType":"contentType","__schema__":{"collectionName":"info_admissions","info":{"singularName":"info-admission","pluralName":"info-admissions","displayName":"Info Admission"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"links":{"type":"component","pluginOptions":{"i18n":{"localized":true}},"component":"shared.links","repeatable":true}},"kind":"collectionType"},"modelName":"info-admission","actions":{},"lifecycles":{}},"api::link.link":{"kind":"collectionType","collectionName":"links","info":{"singularName":"link","pluralName":"links","displayName":"Link","description":""},"options":{"draftAndPublish":true},"attributes":{"toogis":{"type":"text"},"instagram":{"type":"text"},"youtube":{"type":"text"},"linkedin":{"type":"text"},"facebook":{"type":"text"},"tiktok":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::link.link","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"links"}}},"apiName":"link","globalId":"Link","uid":"api::link.link","modelType":"contentType","__schema__":{"collectionName":"links","info":{"singularName":"link","pluralName":"links","displayName":"Link","description":""},"options":{"draftAndPublish":true},"attributes":{"toogis":{"type":"text"},"instagram":{"type":"text"},"youtube":{"type":"text"},"linkedin":{"type":"text"},"facebook":{"type":"text"},"tiktok":{"type":"text"}},"kind":"collectionType"},"modelName":"link","actions":{},"lifecycles":{}},"api::list-document.list-document":{"kind":"collectionType","collectionName":"list_documents","info":{"singularName":"list-document","pluralName":"list-documents","displayName":"List Docs"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"items":{"type":"component","pluginOptions":{"i18n":{"localized":true}},"component":"shared.item","repeatable":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::list-document.list-document","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"list_documents"}}},"apiName":"list-document","globalId":"ListDocument","uid":"api::list-document.list-document","modelType":"contentType","__schema__":{"collectionName":"list_documents","info":{"singularName":"list-document","pluralName":"list-documents","displayName":"List Docs"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"description":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"items":{"type":"component","pluginOptions":{"i18n":{"localized":true}},"component":"shared.item","repeatable":true}},"kind":"collectionType"},"modelName":"list-document","actions":{},"lifecycles":{}},"api::news-article.news-article":{"kind":"collectionType","collectionName":"news_articles","info":{"singularName":"news-article","pluralName":"news-articles","displayName":"Новости","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text"},"published":{"type":"date"},"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"description":{"type":"text"},"subtitle":{"type":"richtext"},"descriptor":{"type":"blocks"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::news-article.news-article","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"news_articles"}}},"apiName":"news-article","globalId":"NewsArticle","uid":"api::news-article.news-article","modelType":"contentType","__schema__":{"collectionName":"news_articles","info":{"singularName":"news-article","pluralName":"news-articles","displayName":"Новости","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text"},"published":{"type":"date"},"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"description":{"type":"text"},"subtitle":{"type":"richtext"},"descriptor":{"type":"blocks"}},"kind":"collectionType"},"modelName":"news-article","actions":{},"lifecycles":{}},"api::profession.profession":{"kind":"collectionType","collectionName":"professions","info":{"singularName":"profession","pluralName":"professions","displayName":"Profession","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"code":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"graduates":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"form":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"url":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::profession.profession","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"professions"}}},"apiName":"profession","globalId":"Profession","uid":"api::profession.profession","modelType":"contentType","__schema__":{"collectionName":"professions","info":{"singularName":"profession","pluralName":"professions","displayName":"Profession","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"code":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"graduates":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"form":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"url":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"profession","actions":{},"lifecycles":{}},"api::question.question":{"kind":"collectionType","collectionName":"questions","info":{"singularName":"question","pluralName":"questions","displayName":"Questions"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"categories":{"type":"relation","relation":"oneToMany","target":"api::category.category"},"text":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::question.question","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"questions"}}},"apiName":"question","globalId":"Question","uid":"api::question.question","modelType":"contentType","__schema__":{"collectionName":"questions","info":{"singularName":"question","pluralName":"questions","displayName":"Questions"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"categories":{"type":"relation","relation":"oneToMany","target":"api::category.category"},"text":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"question","actions":{},"lifecycles":{}},"api::questions-static.questions-static":{"kind":"collectionType","collectionName":"questions_statics","info":{"singularName":"questions-static","pluralName":"questions-statics","displayName":"Questions-static"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"text"},"heading":{"type":"text"},"paragraph":{"type":"text"},"placeholder":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::questions-static.questions-static","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"questions_statics"}}},"apiName":"questions-static","globalId":"QuestionsStatic","uid":"api::questions-static.questions-static","modelType":"contentType","__schema__":{"collectionName":"questions_statics","info":{"singularName":"questions-static","pluralName":"questions-statics","displayName":"Questions-static"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"text"},"heading":{"type":"text"},"paragraph":{"type":"text"},"placeholder":{"type":"text"}},"kind":"collectionType"},"modelName":"questions-static","actions":{},"lifecycles":{}},"api::reseption.reseption":{"kind":"collectionType","collectionName":"reseptions","info":{"singularName":"reseption","pluralName":"reseptions","displayName":"Reseption"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"year":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"days":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"consult":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"phone":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"asked":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"questions":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"nationalExam":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"testingExam":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::reseption.reseption","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"reseptions"}}},"apiName":"reseption","globalId":"Reseption","uid":"api::reseption.reseption","modelType":"contentType","__schema__":{"collectionName":"reseptions","info":{"singularName":"reseption","pluralName":"reseptions","displayName":"Reseption"},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"subtitle":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"year":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"days":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"consult":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"phone":{"type":"biginteger","pluginOptions":{"i18n":{"localized":true}}},"asked":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"questions":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"nationalExam":{"type":"string","pluginOptions":{"i18n":{"localized":true}}},"testingExam":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"reseption","actions":{},"lifecycles":{}},"api::static-article.static-article":{"kind":"collectionType","collectionName":"static_articles","info":{"singularName":"static-article","pluralName":"static-articles","displayName":"StaticArticle"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"text"},"description":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::static-article.static-article","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"static_articles"}}},"apiName":"static-article","globalId":"StaticArticle","uid":"api::static-article.static-article","modelType":"contentType","__schema__":{"collectionName":"static_articles","info":{"singularName":"static-article","pluralName":"static-articles","displayName":"StaticArticle"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"text"},"description":{"type":"text"}},"kind":"collectionType"},"modelName":"static-article","actions":{},"lifecycles":{}},"api::static-attribute.static-attribute":{"kind":"collectionType","collectionName":"static_attributes","info":{"singularName":"static-attribute","pluralName":"static-attributes","displayName":"StaticAttributes"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::static-attribute.static-attribute","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"static_attributes"}}},"apiName":"static-attribute","globalId":"StaticAttribute","uid":"api::static-attribute.static-attribute","modelType":"contentType","__schema__":{"collectionName":"static_attributes","info":{"singularName":"static-attribute","pluralName":"static-attributes","displayName":"StaticAttributes"},"options":{"draftAndPublish":true},"attributes":{"title":{"type":"string"},"subtitle":{"type":"text"}},"kind":"collectionType"},"modelName":"static-attribute","actions":{},"lifecycles":{}},"api::static-info.static-info":{"kind":"collectionType","collectionName":"static_infos","info":{"singularName":"static-info","pluralName":"static-infos","displayName":"StaticInfo ","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"block":{"displayName":"title","type":"component","repeatable":false,"component":"shared.title","pluginOptions":{"i18n":{"localized":true}}},"content":{"type":"component","repeatable":false,"component":"shared.magistr","pluginOptions":{"i18n":{"localized":true}}},"item":{"displayName":"item","type":"component","repeatable":false,"component":"shared.item","pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::static-info.static-info","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"static_infos"}}},"apiName":"static-info","globalId":"StaticInfo","uid":"api::static-info.static-info","modelType":"contentType","__schema__":{"collectionName":"static_infos","info":{"singularName":"static-info","pluralName":"static-infos","displayName":"StaticInfo ","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"block":{"displayName":"title","type":"component","repeatable":false,"component":"shared.title","pluginOptions":{"i18n":{"localized":true}}},"content":{"type":"component","repeatable":false,"component":"shared.magistr","pluginOptions":{"i18n":{"localized":true}}},"item":{"displayName":"item","type":"component","repeatable":false,"component":"shared.item","pluginOptions":{"i18n":{"localized":true}}},"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"static-info","actions":{},"lifecycles":{}},"api::static-programm.static-programm":{"kind":"collectionType","collectionName":"static_programms","info":{"singularName":"static-programm","pluralName":"static-programms","displayName":"StaticProgramms","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"more":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::static-programm.static-programm","writable":false,"private":false,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"static_programms"}}},"apiName":"static-programm","globalId":"StaticProgramm","uid":"api::static-programm.static-programm","modelType":"contentType","__schema__":{"collectionName":"static_programms","info":{"singularName":"static-programm","pluralName":"static-programms","displayName":"StaticProgramms","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"type":"text","pluginOptions":{"i18n":{"localized":true}}},"more":{"type":"text","pluginOptions":{"i18n":{"localized":true}}}},"kind":"collectionType"},"modelName":"static-programm","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role","required":false},"apiToken":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"adminPermissions","target":"admin::api-token","required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role","required":false},"apiToken":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"adminPermissions","target":"admin::api-token","required":false}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"apiTokens":{"configurable":false,"private":true,"type":"relation","relation":"oneToMany","mappedBy":"adminUserOwner","target":"admin::api-token"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"apiTokens":{"configurable":false,"private":true,"type":"relation","relation":"oneToMany","mappedBy":"adminUserOwner","target":"admin::api-token"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"kind":{"type":"enumeration","enum":["content-api","admin"],"configurable":false,"required":true,"default":"content-api"},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"adminPermissions":{"type":"relation","target":"admin::permission","relation":"oneToMany","mappedBy":"apiToken","configurable":false,"required":false},"adminUserOwner":{"type":"relation","target":"admin::user","relation":"manyToOne","inversedBy":"apiTokens","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"kind":{"type":"enumeration","enum":["content-api","admin"],"configurable":false,"required":true,"default":"content-api"},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"adminPermissions":{"type":"relation","target":"admin::permission","relation":"oneToMany","mappedBy":"apiToken","configurable":false,"required":false},"adminUserOwner":{"type":"relation","target":"admin::user","relation":"manyToOne","inversedBy":"apiTokens","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::global.global	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"siteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteName","searchable":true,"sortable":true}},"favicon":{"edit":{"label":"favicon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"favicon","searchable":false,"sortable":false}},"siteDescription":{"edit":{"label":"siteDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"siteDescription","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","favicon","siteDescription"],"edit":[[{"name":"siteName","size":6},{"name":"favicon","size":6}],[{"name":"siteDescription","size":6}]]},"uid":"api::global.global"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::link.link	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"toogis":{"edit":{"label":"toogis","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"toogis","searchable":true,"sortable":true}},"instagram":{"edit":{"label":"instagram","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instagram","searchable":true,"sortable":true}},"youtube":{"edit":{"label":"youtube","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"youtube","searchable":true,"sortable":true}},"linkedin":{"edit":{"label":"linkedin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"linkedin","searchable":true,"sortable":true}},"facebook":{"edit":{"label":"facebook","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"facebook","searchable":true,"sortable":true}},"tiktok":{"edit":{"label":"tiktok","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tiktok","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","toogis","instagram","youtube"],"edit":[[{"name":"toogis","size":6},{"name":"instagram","size":6}],[{"name":"youtube","size":6},{"name":"linkedin","size":6}],[{"name":"facebook","size":6},{"name":"tiktok","size":6}]]},"uid":"api::link.link"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"apiToken":{"edit":{"label":"apiToken","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"apiToken","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6},{"name":"apiToken","size":6}]]},"uid":"admin::permission"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"kind":{"edit":{"label":"kind","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kind","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"adminPermissions":{"edit":{"label":"adminPermissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"adminPermissions","searchable":false,"sortable":false}},"adminUserOwner":{"edit":{"label":"adminUserOwner","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"adminUserOwner","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","kind"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"kind","size":6},{"name":"type","size":6}],[{"name":"accessKey","size":6},{"name":"encryptedKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"adminPermissions","size":6},{"name":"adminUserOwner","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
33	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
34	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
35	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
36	plugin_upload_metrics	{"weeklySchedule":"18 15 16 * * 5","lastWeeklyUpdate":1780658118588}	object	\N	\N
32	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
38	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
39	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
40	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
3	plugin_content_manager_configuration_components::shared.title	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}]]},"uid":"shared.title","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::shared.magistr	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}]]},"uid":"shared.magistr","isComponent":true}	object	\N	\N
37	plugin_i18n_default_locale	"kk"	string	\N	\N
43	plugin_content_manager_configuration_content_types::api::contact.contact	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"address":{"edit":{"label":"address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"address","searchable":true,"sortable":true}},"room":{"edit":{"label":"room","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"room","searchable":true,"sortable":true}},"schedule":{"edit":{"label":"schedule","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"schedule","searchable":true,"sortable":true}},"socialMedia":{"edit":{"label":"socialMedia","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialMedia","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","phone"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"phone","size":4},{"name":"address","size":6}],[{"name":"room","size":6},{"name":"schedule","size":6}],[{"name":"socialMedia","size":6}]]},"uid":"api::contact.contact"}	object	\N	\N
45	plugin_content_manager_configuration_content_types::api::reseption.reseption	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"year":{"edit":{"label":"year","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"year","searchable":true,"sortable":true}},"days":{"edit":{"label":"days","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"days","searchable":true,"sortable":true}},"consult":{"edit":{"label":"consult","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"consult","searchable":true,"sortable":true}},"phone":{"edit":{"label":"phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone","searchable":true,"sortable":true}},"asked":{"edit":{"label":"asked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"asked","searchable":true,"sortable":true}},"questions":{"edit":{"label":"questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questions","searchable":true,"sortable":true}},"nationalExam":{"edit":{"label":"nationalExam","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nationalExam","searchable":true,"sortable":true}},"testingExam":{"edit":{"label":"testingExam","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"testingExam","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","year"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"year","size":4},{"name":"days","size":6}],[{"name":"consult","size":6},{"name":"phone","size":4}],[{"name":"asked","size":6},{"name":"questions","size":6}],[{"name":"nationalExam","size":6},{"name":"testingExam","size":6}]]},"uid":"api::reseption.reseption"}	object	\N	\N
44	plugin_content_manager_configuration_content_types::api::list-document.list-document	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"items","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","createdBy"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":6}],[{"name":"items","size":12}]]},"uid":"api::list-document.list-document"}	object	\N	\N
42	plugin_content_manager_configuration_content_types::api::admission.admission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"more":{"edit":{"label":"more","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"more","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","more"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"more","size":6}]]},"uid":"api::admission.admission"}	object	\N	\N
46	plugin_content_manager_configuration_content_types::api::head.head	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","createdAt","updatedAt"],"edit":[[{"name":"heading","size":6}]]},"uid":"api::head.head"}	object	\N	\N
47	plugin_content_manager_configuration_content_types::api::doc.doc	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","createdAt","updatedAt"],"edit":[[{"name":"text","size":6},{"name":"url","size":6}]]},"uid":"api::doc.doc"}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::graduate.graduate	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"graduates","defaultSortBy":"graduates","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"graduates":{"edit":{"label":"graduates","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"graduates","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","graduates","createdAt","updatedAt"],"edit":[[{"name":"graduates","size":6}]]},"uid":"api::graduate.graduate"}	object	\N	\N
49	plugin_content_manager_configuration_content_types::api::error.error	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"home":{"edit":{"label":"home","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"home","searchable":true,"sortable":true}},"again":{"edit":{"label":"again","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"again","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","createdAt"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"home","size":6},{"name":"again","size":6}]]},"uid":"api::error.error"}	object	\N	\N
55	plugin_content_manager_configuration_content_types::api::questions-static.questions-static	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"paragraph":{"edit":{"label":"paragraph","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"paragraph","searchable":true,"sortable":true}},"placeholder":{"edit":{"label":"placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placeholder","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","title"],"edit":[[{"name":"title","size":6},{"name":"heading","size":6}],[{"name":"paragraph","size":6},{"name":"placeholder","size":6}]]},"uid":"api::questions-static.questions-static"}	object	\N	\N
57	plugin_content_manager_configuration_content_types::api::question.question	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"categories","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","categories"],"edit":[[{"name":"title","size":6},{"name":"categories","size":6}],[{"name":"text","size":6}]]},"uid":"api::question.question"}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6}]]},"uid":"api::category.category"}	object	\N	\N
60	plugin_content_manager_configuration_components::shared.links	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","text","url"],"edit":[[{"name":"text","size":6},{"name":"url","size":6}]]},"uid":"shared.links","isComponent":true}	object	\N	\N
61	plugin_content_manager_configuration_content_types::api::info-admission.info-admission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"links":{"edit":{"label":"links","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"links","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","createdAt"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"links","size":12}]]},"uid":"api::info-admission.info-admission"}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::contacts-comission.contacts-comission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"more","defaultSortBy":"more","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"locales":{"edit":{"label":"locales","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locales","searchable":true,"sortable":true}},"dayswork":{"edit":{"label":"dayswork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"dayswork","searchable":true,"sortable":true}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"more":{"edit":{"label":"more","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"more","searchable":true,"sortable":true}},"doc":{"edit":{"label":"doc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"doc","searchable":true,"sortable":true}},"med":{"edit":{"label":"med","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"med","searchable":true,"sortable":true}},"identifycard":{"edit":{"label":"identifycard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"identifycard","searchable":true,"sortable":true}},"photos":{"edit":{"label":"photos","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photos","searchable":true,"sortable":true}},"card":{"edit":{"label":"card","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"card","searchable":true,"sortable":true}},"certificate":{"edit":{"label":"certificate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"certificate","searchable":true,"sortable":true}},"grant":{"edit":{"label":"grant","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"grant","searchable":true,"sortable":true}},"cardboard":{"edit":{"label":"cardboard","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cardboard","searchable":true,"sortable":true}},"envelope":{"edit":{"label":"envelope","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"envelope","searchable":true,"sortable":true}},"sectitle":{"edit":{"label":"sectitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectitle","searchable":true,"sortable":true}},"instagram":{"edit":{"label":"instagram","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instagram","searchable":true,"sortable":true}},"instaurl":{"edit":{"label":"instaurl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"instaurl","searchable":true,"sortable":true}},"toogis":{"edit":{"label":"toogis","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"toogis","searchable":true,"sortable":true}},"toogisurl":{"edit":{"label":"toogisurl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"toogisurl","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","email","locales"],"edit":[[{"name":"title","size":6},{"name":"email","size":6}],[{"name":"locales","size":6},{"name":"dayswork","size":6}],[{"name":"number","size":6},{"name":"more","size":6}],[{"name":"doc","size":6},{"name":"med","size":6}],[{"name":"identifycard","size":6},{"name":"photos","size":6}],[{"name":"card","size":6},{"name":"certificate","size":6}],[{"name":"grant","size":6},{"name":"cardboard","size":6}],[{"name":"envelope","size":6},{"name":"sectitle","size":6}],[{"name":"instagram","size":6},{"name":"instaurl","size":6}],[{"name":"toogis","size":6},{"name":"toogisurl","size":6}]]},"uid":"api::contacts-comission.contacts-comission"}	object	\N	\N
66	plugin_content_manager_configuration_content_types::api::static-programm.static-programm	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"more":{"edit":{"label":"more","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"more","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","more","createdAt"],"edit":[[{"name":"title","size":6},{"name":"more","size":6}]]},"uid":"api::static-programm.static-programm"}	object	\N	\N
68	plugin_content_manager_configuration_content_types::api::image.image	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","createdAt","updatedAt"],"edit":[[{"name":"image","size":6}]]},"uid":"api::image.image"}	object	\N	\N
41	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
63	plugin_content_manager_configuration_content_types::api::static-attribute.static-attribute	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","createdAt"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}]]},"uid":"api::static-attribute.static-attribute"}	object	\N	\N
67	plugin_content_manager_configuration_content_types::api::static-info.static-info	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"block":{"edit":{"label":"block","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"block","searchable":false,"sortable":false}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"item":{"edit":{"label":"item","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"item","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","block","content","item"],"edit":[[{"name":"block","size":12}],[{"name":"content","size":12}],[{"name":"item","size":12}],[{"name":"title","size":6}]]},"uid":"api::static-info.static-info"}	object	\N	\N
64	plugin_content_manager_configuration_content_types::api::news-article.news-article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"published":{"edit":{"label":"published","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"published","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":false,"sortable":false}},"descriptor":{"edit":{"label":"descriptor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"descriptor","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","published","img"],"edit":[[{"name":"title","size":6},{"name":"published","size":4}],[{"name":"img","size":6},{"name":"description","size":6}],[{"name":"subtitle","size":12}],[{"name":"descriptor","size":12}]]},"uid":"api::news-article.news-article"}	object	\N	\N
65	plugin_content_manager_configuration_content_types::api::static-article.static-article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","createdAt"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}]]},"uid":"api::static-article.static-article"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
52	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admissions","indexes":[{"name":"admissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"more","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contacts","indexes":[{"name":"contacts_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"address","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"room","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schedule","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"social_media","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contacts_comissions","indexes":[{"name":"contacts_comissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contacts_comissions_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_comissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_comissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_comissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locales","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"dayswork","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"more","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"doc","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"med","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"identifycard","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"photos","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"card","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"certificate","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"grant","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cardboard","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"envelope","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sectitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instagram","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instaurl","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"toogis","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"toogisurl","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"docs","indexes":[{"name":"docs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"docs_created_by_id_fk","columns":["created_by_id"]},{"name":"docs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"docs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"docs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"errors","indexes":[{"name":"errors_documents_idx","columns":["document_id","locale","published_at"]},{"name":"errors_created_by_id_fk","columns":["created_by_id"]},{"name":"errors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"errors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"errors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"home","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"again","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"globals","indexes":[{"name":"globals_documents_idx","columns":["document_id","locale","published_at"]},{"name":"globals_created_by_id_fk","columns":["created_by_id"]},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"globals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"globals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"graduates","indexes":[{"name":"graduates_documents_idx","columns":["document_id","locale","published_at"]},{"name":"graduates_created_by_id_fk","columns":["created_by_id"]},{"name":"graduates_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"graduates_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"graduates_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"graduates","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"heads","indexes":[{"name":"heads_documents_idx","columns":["document_id","locale","published_at"]},{"name":"heads_created_by_id_fk","columns":["created_by_id"]},{"name":"heads_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"heads_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"heads_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"images","indexes":[{"name":"images_documents_idx","columns":["document_id","locale","published_at"]},{"name":"images_created_by_id_fk","columns":["created_by_id"]},{"name":"images_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"images_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"images_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"info_admissions_cmps","indexes":[{"name":"info_admissions_field_idx","columns":["field"]},{"name":"info_admissions_component_type_idx","columns":["component_type"]},{"name":"info_admissions_entity_fk","columns":["entity_id"]},{"name":"info_admissions_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"info_admissions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"info_admissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"info_admissions","indexes":[{"name":"info_admissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"info_admissions_created_by_id_fk","columns":["created_by_id"]},{"name":"info_admissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"info_admissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"info_admissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"links","indexes":[{"name":"links_documents_idx","columns":["document_id","locale","published_at"]},{"name":"links_created_by_id_fk","columns":["created_by_id"]},{"name":"links_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"links_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"links_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"toogis","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"instagram","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"youtube","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"linkedin","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"facebook","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tiktok","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"list_documents_cmps","indexes":[{"name":"list_documents_field_idx","columns":["field"]},{"name":"list_documents_component_type_idx","columns":["component_type"]},{"name":"list_documents_entity_fk","columns":["entity_id"]},{"name":"list_documents_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"list_documents_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"list_documents","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"list_documents","indexes":[{"name":"list_documents_documents_idx","columns":["document_id","locale","published_at"]},{"name":"list_documents_created_by_id_fk","columns":["created_by_id"]},{"name":"list_documents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"list_documents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"list_documents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"news_articles","indexes":[{"name":"news_articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"news_articles_created_by_id_fk","columns":["created_by_id"]},{"name":"news_articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"news_articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"news_articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"descriptor","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"professions","indexes":[{"name":"professions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"professions_created_by_id_fk","columns":["created_by_id"]},{"name":"professions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"professions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"professions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"graduates","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"questions","indexes":[{"name":"questions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"questions_created_by_id_fk","columns":["created_by_id"]},{"name":"questions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"questions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"questions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"questions_statics","indexes":[{"name":"questions_statics_documents_idx","columns":["document_id","locale","published_at"]},{"name":"questions_statics_created_by_id_fk","columns":["created_by_id"]},{"name":"questions_statics_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"questions_statics_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"questions_statics_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"heading","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"paragraph","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"placeholder","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"reseptions","indexes":[{"name":"reseptions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"reseptions_created_by_id_fk","columns":["created_by_id"]},{"name":"reseptions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"reseptions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"reseptions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"year","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"days","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"consult","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"asked","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"questions","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"national_exam","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"testing_exam","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"static_articles","indexes":[{"name":"static_articles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"static_articles_created_by_id_fk","columns":["created_by_id"]},{"name":"static_articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"static_articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"static_articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"static_attributes","indexes":[{"name":"static_attributes_documents_idx","columns":["document_id","locale","published_at"]},{"name":"static_attributes_created_by_id_fk","columns":["created_by_id"]},{"name":"static_attributes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"static_attributes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"static_attributes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"static_infos_cmps","indexes":[{"name":"static_infos_field_idx","columns":["field"]},{"name":"static_infos_component_type_idx","columns":["component_type"]},{"name":"static_infos_entity_fk","columns":["entity_id"]},{"name":"static_infos_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"static_infos_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"static_infos","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"static_infos","indexes":[{"name":"static_infos_documents_idx","columns":["document_id","locale","published_at"]},{"name":"static_infos_created_by_id_fk","columns":["created_by_id"]},{"name":"static_infos_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"static_infos_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"static_infos_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"static_programms","indexes":[{"name":"static_programms_documents_idx","columns":["document_id","locale","published_at"]},{"name":"static_programms_created_by_id_fk","columns":["created_by_id"]},{"name":"static_programms_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"static_programms_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"static_programms_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"more","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kind","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_titles","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_magistrs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_components","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"graduate","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"educat","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"questions_categories_lnk","indexes":[{"name":"questions_categories_lnk_fk","columns":["question_id"]},{"name":"questions_categories_lnk_ifk","columns":["category_id"]},{"name":"questions_categories_lnk_uq","columns":["question_id","category_id"],"type":"unique"},{"name":"questions_categories_lnk_ofk","columns":["category_ord"]}],"foreignKeys":[{"name":"questions_categories_lnk_fk","columns":["question_id"],"referencedColumns":["id"],"referencedTable":"questions","onDelete":"CASCADE"},{"name":"questions_categories_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"question_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_api_token_lnk","indexes":[{"name":"admin_permissions_api_token_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_api_token_lnk_ifk","columns":["api_token_id"]},{"name":"admin_permissions_api_token_lnk_uq","columns":["permission_id","api_token_id"],"type":"unique"},{"name":"admin_permissions_api_token_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_api_token_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_api_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens_admin_user_owner_lnk","indexes":[{"name":"strapi_api_tokens_admin_user_owner_lnk_fk","columns":["api_token_id"]},{"name":"strapi_api_tokens_admin_user_owner_lnk_ifk","columns":["user_id"]},{"name":"strapi_api_tokens_admin_user_owner_lnk_uq","columns":["api_token_id","user_id"],"type":"unique"},{"name":"strapi_api_tokens_admin_user_owner_lnk_oifk","columns":["api_token_ord"]}],"foreignKeys":[{"name":"strapi_api_tokens_admin_user_owner_lnk_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"},{"name":"strapi_api_tokens_admin_user_owner_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-06-12 08:48:51.403	0ad1cb133b4e0ece52086001b4ea7e3cfc0af08ac68aa2cb878cad794b242e5d
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-05-22 15:50:00.236
2	5.0.0-02-created-document-id	2026-05-22 15:50:00.272
3	5.0.0-03-created-locale	2026-05-22 15:50:00.306
4	5.0.0-04-created-published-at	2026-05-22 15:50:00.339
5	5.0.0-05-drop-slug-fields-index	2026-05-22 15:50:00.374
6	5.0.0-06-add-document-id-indexes	2026-05-22 15:50:00.409
7	core::5.0.0-discard-drafts	2026-05-22 15:50:00.446
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
41	afm5h99ftfmz5mes7cyc69bj	1	83b777f89ab5b215868e40a7e235958a	75842adde1570d86a510bf6340ff3b01	0858df88-3e32-4e89-be59-b77cc7670667	admin	2026-06-25 09:36:05.981	2026-07-11 09:36:05.981	rotated	refresh	2026-06-11 09:36:05.981	2026-06-11 11:25:12.419	2026-06-11 09:36:05.981	\N	\N	\N
43	w0ow374ftneh6irplye9qmsu	1	ab0255da8920f2cb8eca76f3489f10ae	\N	0858df88-3e32-4e89-be59-b77cc7670667	admin	2026-06-26 08:49:26.125	2026-07-11 09:36:05.981	active	refresh	2026-06-12 08:49:26.125	2026-06-12 08:49:26.125	2026-06-12 08:49:26.126	\N	\N	\N
42	qxpjppgia41grm4ytp8nxm7p	1	75842adde1570d86a510bf6340ff3b01	ab0255da8920f2cb8eca76f3489f10ae	0858df88-3e32-4e89-be59-b77cc7670667	admin	2026-06-25 11:25:12.412	2026-07-11 09:36:05.981	rotated	refresh	2026-06-11 11:25:12.412	2026-06-12 08:49:26.131	2026-06-11 11:25:12.413	\N	\N	\N
44	a246m6hf1dyaynzf5kuf04ze	1	7eed78fb8b3166f2a5241e5ec2e44eee	\N	247f1333-bac1-4078-9922-d3de611b22f4	admin	2026-06-12 11:00:13.323	2026-07-12 09:00:13.323	active	session	2026-06-12 09:00:13.323	2026-06-12 09:00:13.323	2026-06-12 09:00:13.324	\N	\N	\N
45	bux0ac4ss51wdv4879tr1jl0	1	9cc21cc3928d4b276232466afb7033b4	\N	00385900-9e70-4a79-8bdc-5a70cdfb52bd	admin	2026-06-12 11:04:15.494	2026-07-12 09:04:15.494	active	session	2026-06-12 09:04:15.494	2026-06-12 09:04:15.494	2026-06-12 09:04:15.495	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	spw1obnovhlhtvlt2l0rf9b7	plugin::users-permissions.auth.logout	2026-05-22 15:50:01.479	2026-05-22 15:50:01.479	2026-05-22 15:50:01.48	\N	\N	\N
2	f6qoiftmvcorr480qpd4u1gi	plugin::users-permissions.user.me	2026-05-22 15:50:01.479	2026-05-22 15:50:01.479	2026-05-22 15:50:01.48	\N	\N	\N
3	uij650rz5tdcil43xa4wisk2	plugin::users-permissions.auth.changePassword	2026-05-22 15:50:01.479	2026-05-22 15:50:01.479	2026-05-22 15:50:01.48	\N	\N	\N
4	fpsl9gdxjuj0bxj7izar5n7i	plugin::users-permissions.auth.callback	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	\N	\N	\N
5	ywtwvn0ped698cpaynu0n9yh	plugin::users-permissions.auth.connect	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	\N	\N	\N
6	w4hi3jkyilmmj68q0h34gzi6	plugin::users-permissions.auth.forgotPassword	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	\N	\N	\N
7	jg50woo7t62vb2ztxrdrbyyl	plugin::users-permissions.auth.sendEmailConfirmation	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.49	\N	\N	\N
8	iwrenpnoj8gwlag9jqdm6021	plugin::users-permissions.auth.resetPassword	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	\N	\N	\N
11	wjt255e3gg364gsdx6mm0wck	plugin::users-permissions.auth.emailConfirmation	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	\N	\N	\N
9	r7u7ctipsqcdjqnu0buiokqz	plugin::users-permissions.auth.refresh	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.49	\N	\N	\N
10	mahe3u1ty6zfkzhe96ltahfx	plugin::users-permissions.auth.register	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	2026-05-22 15:50:01.489	\N	\N	\N
12	v06sxwhb5w4138a8ce48wnha	api::admission.admission.find	2026-05-26 14:35:54.352	2026-05-26 14:35:54.352	2026-05-26 14:35:54.353	\N	\N	\N
13	u6d2mdlea32k05bfg39v1fyr	api::admission.admission.findOne	2026-05-26 14:35:54.352	2026-05-26 14:35:54.352	2026-05-26 14:35:54.353	\N	\N	\N
14	piur0wvsr8emea5ej9orjsc3	api::admission.admission.create	2026-05-26 14:35:54.352	2026-05-26 14:35:54.352	2026-05-26 14:35:54.353	\N	\N	\N
15	vguuty6neueh0g70vibxw51u	api::admission.admission.delete	2026-05-26 14:35:54.352	2026-05-26 14:35:54.352	2026-05-26 14:35:54.353	\N	\N	\N
16	mlq1ua0rbmmbu84z6m5524vr	api::admission.admission.update	2026-05-26 14:35:54.352	2026-05-26 14:35:54.352	2026-05-26 14:35:54.353	\N	\N	\N
17	o8jcffhkaj30imoc7vb0jzac	api::contact.contact.find	2026-05-26 15:28:01.511	2026-05-26 15:28:01.511	2026-05-26 15:28:01.511	\N	\N	\N
18	qy30j38ru1a0ejjbg82mbvt6	api::contact.contact.findOne	2026-05-26 15:28:01.511	2026-05-26 15:28:01.511	2026-05-26 15:28:01.512	\N	\N	\N
19	yppnntvbuq5b1b0444u5v1e2	api::contact.contact.create	2026-05-26 15:28:01.511	2026-05-26 15:28:01.511	2026-05-26 15:28:01.512	\N	\N	\N
20	vd8m6gv4jm4g7ls6x2iv9gb4	api::contact.contact.update	2026-05-26 15:28:01.511	2026-05-26 15:28:01.511	2026-05-26 15:28:01.512	\N	\N	\N
21	kf3ul5wr7jaz3bmxd9kq72xz	api::contact.contact.delete	2026-05-26 15:28:01.511	2026-05-26 15:28:01.511	2026-05-26 15:28:01.513	\N	\N	\N
22	wmfdyujyjz5o8u4q6ige8jq9	api::list-document.list-document.find	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	\N	\N	\N
23	yktle8ht9jkclk8c99fccnti	api::list-document.list-document.findOne	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	\N	\N	\N
24	t59lfw9s3c6i7qxxdmpu30hv	api::list-document.list-document.create	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	2026-05-26 15:54:05.523	\N	\N	\N
26	zbru4xxanrq17h5sz0fu0xdi	api::list-document.list-document.delete	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	2026-05-26 15:54:05.523	\N	\N	\N
25	ftvgxlhdjztqhi2dhzgzs7xm	api::list-document.list-document.update	2026-05-26 15:54:05.522	2026-05-26 15:54:05.522	2026-05-26 15:54:05.523	\N	\N	\N
27	d74gzc2r24pd9nwauz35ipgt	api::reseption.reseption.find	2026-05-26 16:57:22.079	2026-05-26 16:57:22.079	2026-05-26 16:57:22.08	\N	\N	\N
28	qkz9vny9v1in8dedo12x7e9t	api::reseption.reseption.findOne	2026-05-26 16:57:22.079	2026-05-26 16:57:22.079	2026-05-26 16:57:22.08	\N	\N	\N
30	h8o5qws21s0pgt3y3av65b75	api::reseption.reseption.update	2026-05-26 16:57:22.079	2026-05-26 16:57:22.079	2026-05-26 16:57:22.08	\N	\N	\N
29	nedekgoib1eg2j5li32ofw0y	api::reseption.reseption.create	2026-05-26 16:57:22.079	2026-05-26 16:57:22.079	2026-05-26 16:57:22.08	\N	\N	\N
31	ka1trkb6y7ad8fic8qsid5qs	api::reseption.reseption.delete	2026-05-26 16:57:22.079	2026-05-26 16:57:22.079	2026-05-26 16:57:22.081	\N	\N	\N
32	tdzg03l5v5jl6mtd4dzth7kl	api::head.head.find	2026-05-28 13:08:19.975	2026-05-28 13:08:19.975	2026-05-28 13:08:19.976	\N	\N	\N
33	elk5dz4161box964fygmlq3n	api::head.head.findOne	2026-05-28 13:08:19.975	2026-05-28 13:08:19.975	2026-05-28 13:08:19.976	\N	\N	\N
34	cycz3beu2oqiwav16hnkenfw	api::head.head.create	2026-05-28 13:08:19.975	2026-05-28 13:08:19.975	2026-05-28 13:08:19.976	\N	\N	\N
36	hfnpnuahlvvw7ry8f6lzqopj	api::head.head.delete	2026-05-28 13:08:19.975	2026-05-28 13:08:19.975	2026-05-28 13:08:19.977	\N	\N	\N
35	qlu970ptmky2xiri2dnu4u3w	api::head.head.update	2026-05-28 13:08:19.975	2026-05-28 13:08:19.975	2026-05-28 13:08:19.976	\N	\N	\N
37	gdc07pydknzp9a3ma9hm7ch9	api::doc.doc.find	2026-05-28 13:35:30.045	2026-05-28 13:35:30.045	2026-05-28 13:35:30.046	\N	\N	\N
38	gn8g5pgxp1l2elxvkrsovj0r	api::doc.doc.findOne	2026-05-28 13:35:30.045	2026-05-28 13:35:30.045	2026-05-28 13:35:30.046	\N	\N	\N
39	kg1tgsvbqhgc1czysd55rxu6	api::doc.doc.create	2026-05-28 13:35:30.045	2026-05-28 13:35:30.045	2026-05-28 13:35:30.046	\N	\N	\N
41	rlsurwtx9nl3ekn2fmarg9vy	api::doc.doc.delete	2026-05-28 13:35:30.045	2026-05-28 13:35:30.045	2026-05-28 13:35:30.047	\N	\N	\N
40	izocxa4g8k9fbnqrwjx5qmht	api::doc.doc.update	2026-05-28 13:35:30.045	2026-05-28 13:35:30.045	2026-05-28 13:35:30.047	\N	\N	\N
42	chpdvve830mk8f3sr7uk3kmc	api::graduate.graduate.find	2026-05-29 15:49:37.322	2026-05-29 15:49:37.322	2026-05-29 15:49:37.323	\N	\N	\N
43	arp887f4kenyy0hn979u0y87	api::graduate.graduate.findOne	2026-05-29 15:49:37.322	2026-05-29 15:49:37.322	2026-05-29 15:49:37.323	\N	\N	\N
44	qclo6juh17f2sqfs2ndjqakb	api::graduate.graduate.create	2026-05-29 15:49:37.322	2026-05-29 15:49:37.322	2026-05-29 15:49:37.323	\N	\N	\N
45	emw1s2kaf1gmhm4nmjy62010	api::graduate.graduate.update	2026-05-29 15:49:37.322	2026-05-29 15:49:37.322	2026-05-29 15:49:37.323	\N	\N	\N
46	yhvg9r3n8wziz9x9ckhq737o	api::graduate.graduate.delete	2026-05-29 15:49:37.322	2026-05-29 15:49:37.322	2026-05-29 15:49:37.323	\N	\N	\N
47	jeskueaqq28q0puvtqwhny7a	api::profession.profession.find	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	\N	\N	\N
48	wslym9ynbhs5excm1shjwzf3	api::profession.profession.findOne	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	\N	\N	\N
49	rm7oino7fpzh477c6q1w6lvo	api::profession.profession.create	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	\N	\N	\N
50	jpo9f9yk0a9m9hlbzbolmjt8	api::profession.profession.update	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	\N	\N	\N
51	j3i33wz1rprtnzsulo6vmde3	api::profession.profession.delete	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	2026-05-29 16:20:20.072	\N	\N	\N
52	srxtubyhgc0mwpcgwq0ix3oh	api::error.error.find	2026-06-01 15:42:33.518	2026-06-01 15:42:33.518	2026-06-01 15:42:33.519	\N	\N	\N
53	ub11ulxycewzop1n9yiom69u	api::error.error.findOne	2026-06-01 15:42:33.518	2026-06-01 15:42:33.518	2026-06-01 15:42:33.519	\N	\N	\N
54	c75dxt0xjd6t0tbfbs8j8hvd	api::error.error.create	2026-06-01 15:42:33.518	2026-06-01 15:42:33.518	2026-06-01 15:42:33.519	\N	\N	\N
55	msvag1hrvalejxscanw279lo	api::error.error.update	2026-06-01 15:42:33.518	2026-06-01 15:42:33.518	2026-06-01 15:42:33.519	\N	\N	\N
56	vi8u1ymrwx2k293iitajnhew	api::error.error.delete	2026-06-01 15:42:33.518	2026-06-01 15:42:33.518	2026-06-01 15:42:33.52	\N	\N	\N
80	zowmcen0of44s6hne0u3dtt8	api::questions-static.questions-static.find	2026-06-03 12:21:43.666	2026-06-03 12:21:43.666	2026-06-03 12:21:43.666	\N	\N	\N
81	tr7tffezxpn4i2vhfpnbhx1f	api::questions-static.questions-static.findOne	2026-06-03 12:21:43.666	2026-06-03 12:21:43.666	2026-06-03 12:21:43.667	\N	\N	\N
82	njdprvzwe0etrwl0vjdwm79y	api::questions-static.questions-static.create	2026-06-03 12:21:43.666	2026-06-03 12:21:43.666	2026-06-03 12:21:43.667	\N	\N	\N
84	g1eh5qay1x0szqw22qt1v526	api::questions-static.questions-static.delete	2026-06-03 12:21:43.666	2026-06-03 12:21:43.666	2026-06-03 12:21:43.667	\N	\N	\N
83	e2vllpgifxvurvn304013ayk	api::questions-static.questions-static.update	2026-06-03 12:21:43.666	2026-06-03 12:21:43.666	2026-06-03 12:21:43.667	\N	\N	\N
90	d2z3j4qnnzrzxubm60emx672	api::question.question.find	2026-06-03 13:49:58.162	2026-06-03 13:49:58.162	2026-06-03 13:49:58.162	\N	\N	\N
91	yb0fjky4cuxikbwqd0102ufo	api::question.question.findOne	2026-06-03 13:49:58.162	2026-06-03 13:49:58.162	2026-06-03 13:49:58.163	\N	\N	\N
92	a7mhvql5np5tt26zyp9vu3q1	api::question.question.create	2026-06-03 13:49:58.162	2026-06-03 13:49:58.162	2026-06-03 13:49:58.163	\N	\N	\N
94	ybvyegm8my6v70nbjm73e2bh	api::question.question.delete	2026-06-03 13:49:58.162	2026-06-03 13:49:58.162	2026-06-03 13:49:58.163	\N	\N	\N
93	f8eltjeflvx585aponv8c95b	api::question.question.update	2026-06-03 13:49:58.162	2026-06-03 13:49:58.162	2026-06-03 13:49:58.163	\N	\N	\N
95	labc5oof6yta24bs5mmg4shd	api::category.category.find	2026-06-03 14:05:06.813	2026-06-03 14:05:06.813	2026-06-03 14:05:06.814	\N	\N	\N
96	z97ov3qj3esv5zxf8o8nsmx0	api::category.category.findOne	2026-06-03 14:05:06.813	2026-06-03 14:05:06.813	2026-06-03 14:05:06.814	\N	\N	\N
97	obr41u6eyxh0bkkksuf40z2n	api::category.category.create	2026-06-03 14:05:06.813	2026-06-03 14:05:06.813	2026-06-03 14:05:06.814	\N	\N	\N
98	ici9oq5l1h0ha00clv12wlkn	api::category.category.update	2026-06-03 14:05:06.813	2026-06-03 14:05:06.813	2026-06-03 14:05:06.815	\N	\N	\N
99	p5o1iagw8n7rqnherlgowcdb	api::category.category.delete	2026-06-03 14:05:06.813	2026-06-03 14:05:06.813	2026-06-03 14:05:06.815	\N	\N	\N
100	ikxfzown7p63ol7kqqjv0gja	api::info-admission.info-admission.find	2026-06-10 13:19:13.741	2026-06-10 13:19:13.741	2026-06-10 13:19:13.742	\N	\N	\N
102	w4n8zihybfz08knzzw9e5qv6	api::info-admission.info-admission.create	2026-06-10 13:19:13.741	2026-06-10 13:19:13.741	2026-06-10 13:19:13.742	\N	\N	\N
101	v0aobabh2ux8y7bjfubzmnat	api::info-admission.info-admission.findOne	2026-06-10 13:19:13.741	2026-06-10 13:19:13.741	2026-06-10 13:19:13.742	\N	\N	\N
103	gkorxizqswlukp4p241ls3q9	api::info-admission.info-admission.update	2026-06-10 13:19:13.741	2026-06-10 13:19:13.741	2026-06-10 13:19:13.742	\N	\N	\N
104	tn0ej99qw2wqkrg1w70wm8j3	api::info-admission.info-admission.delete	2026-06-10 13:19:13.741	2026-06-10 13:19:13.741	2026-06-10 13:19:13.743	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	2	1	1
3	3	1	1
4	4	2	1
5	5	2	1
6	6	2	1
7	7	2	2
8	9	2	2
9	8	2	2
10	10	2	3
11	11	2	3
12	12	2	4
13	13	2	4
14	14	2	4
15	15	2	4
16	16	2	5
17	17	2	6
18	18	2	6
19	19	2	7
20	20	2	7
21	21	2	8
22	22	2	9
23	26	2	9
24	24	2	9
25	23	2	9
26	25	2	10
27	27	2	11
28	28	2	11
29	30	2	11
30	31	2	12
31	29	2	12
32	32	2	13
33	33	2	13
34	34	2	14
35	35	2	14
36	36	2	15
37	37	2	16
38	38	2	16
39	39	2	16
40	41	2	17
41	40	2	17
42	42	2	18
43	43	2	18
44	44	2	18
45	45	2	18
46	46	2	19
47	47	2	20
48	48	2	20
49	49	2	21
50	50	2	21
51	51	2	22
52	53	2	23
53	52	2	23
54	54	2	24
55	55	2	24
56	56	2	25
80	80	2	26
81	81	2	26
82	84	2	27
83	82	2	27
84	83	2	27
90	90	2	30
91	91	2	31
92	92	2	31
93	93	2	32
94	94	2	33
95	96	2	34
96	95	2	34
97	97	2	34
98	98	2	35
99	99	2	35
100	100	2	36
101	102	2	36
102	101	2	36
103	103	2	37
104	104	2	37
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	mpqrfkvvc54onret0t9tk54w	Authenticated	Default role given to authenticated user.	authenticated	2026-05-22 15:50:01.472	2026-05-22 15:50:01.472	2026-05-22 15:50:01.472	\N	\N	\N
2	hain1nwbih3cf1cbokw5amko	Public	Default role given to unauthenticated user.	public	2026-05-22 15:50:01.475	2026-06-10 13:19:13.738	2026-05-22 15:50:01.475	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: shokan
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admin_permissions_api_token_lnk_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 444, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 484, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- Name: admissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.admissions_id_seq', 20, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.categories_id_seq', 50, true);


--
-- Name: components_shared_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.components_shared_components_id_seq', 1, false);


--
-- Name: components_shared_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.components_shared_items_id_seq', 68, true);


--
-- Name: components_shared_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.components_shared_links_id_seq', 104, true);


--
-- Name: components_shared_magistrs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.components_shared_magistrs_id_seq', 1, false);


--
-- Name: components_shared_titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.components_shared_titles_id_seq', 1, false);


--
-- Name: contacts_comissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.contacts_comissions_id_seq', 1, false);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.contacts_id_seq', 7, true);


--
-- Name: docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.docs_id_seq', 7, true);


--
-- Name: errors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.errors_id_seq', 4, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.files_id_seq', 1, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 2, true);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, false);


--
-- Name: graduates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.graduates_id_seq', 23, true);


--
-- Name: heads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.heads_id_seq', 20, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 3, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.images_id_seq', 2, true);


--
-- Name: info_admissions_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.info_admissions_cmps_id_seq', 134, true);


--
-- Name: info_admissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.info_admissions_id_seq', 39, true);


--
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.links_id_seq', 1, false);


--
-- Name: list_documents_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.list_documents_cmps_id_seq', 68, true);


--
-- Name: list_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.list_documents_id_seq', 8, true);


--
-- Name: news_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.news_articles_id_seq', 1, false);


--
-- Name: professions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.professions_id_seq', 456, true);


--
-- Name: questions_categories_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.questions_categories_lnk_id_seq', 25, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.questions_id_seq', 27, true);


--
-- Name: questions_statics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.questions_statics_id_seq', 4, true);


--
-- Name: reseptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.reseptions_id_seq', 6, true);


--
-- Name: static_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.static_articles_id_seq', 1, false);


--
-- Name: static_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.static_attributes_id_seq', 1, false);


--
-- Name: static_infos_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.static_infos_cmps_id_seq', 1, false);


--
-- Name: static_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.static_infos_id_seq', 1, false);


--
-- Name: static_programms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.static_programms_id_seq', 1, false);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_api_tokens_admin_user_owner_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 68, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 52, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 7, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 45, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 104, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 104, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shokan
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_uq UNIQUE (permission_id, api_token_id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: admissions admissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: components_shared_components components_shared_components_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_components
    ADD CONSTRAINT components_shared_components_pkey PRIMARY KEY (id);


--
-- Name: components_shared_items components_shared_items_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_items
    ADD CONSTRAINT components_shared_items_pkey PRIMARY KEY (id);


--
-- Name: components_shared_links components_shared_links_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_links
    ADD CONSTRAINT components_shared_links_pkey PRIMARY KEY (id);


--
-- Name: components_shared_magistrs components_shared_magistrs_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_magistrs
    ADD CONSTRAINT components_shared_magistrs_pkey PRIMARY KEY (id);


--
-- Name: components_shared_titles components_shared_titles_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.components_shared_titles
    ADD CONSTRAINT components_shared_titles_pkey PRIMARY KEY (id);


--
-- Name: contacts_comissions contacts_comissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts_comissions
    ADD CONSTRAINT contacts_comissions_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: docs docs_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.docs
    ADD CONSTRAINT docs_pkey PRIMARY KEY (id);


--
-- Name: errors errors_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.errors
    ADD CONSTRAINT errors_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: graduates graduates_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.graduates
    ADD CONSTRAINT graduates_pkey PRIMARY KEY (id);


--
-- Name: heads heads_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.heads
    ADD CONSTRAINT heads_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: info_admissions_cmps info_admissions_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions_cmps
    ADD CONSTRAINT info_admissions_cmps_pkey PRIMARY KEY (id);


--
-- Name: info_admissions info_admissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions
    ADD CONSTRAINT info_admissions_pkey PRIMARY KEY (id);


--
-- Name: info_admissions_cmps info_admissions_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions_cmps
    ADD CONSTRAINT info_admissions_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- Name: list_documents_cmps list_documents_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents_cmps
    ADD CONSTRAINT list_documents_cmps_pkey PRIMARY KEY (id);


--
-- Name: list_documents list_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents
    ADD CONSTRAINT list_documents_pkey PRIMARY KEY (id);


--
-- Name: list_documents_cmps list_documents_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents_cmps
    ADD CONSTRAINT list_documents_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: news_articles news_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.news_articles
    ADD CONSTRAINT news_articles_pkey PRIMARY KEY (id);


--
-- Name: professions professions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_pkey PRIMARY KEY (id);


--
-- Name: questions_categories_lnk questions_categories_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_categories_lnk
    ADD CONSTRAINT questions_categories_lnk_pkey PRIMARY KEY (id);


--
-- Name: questions_categories_lnk questions_categories_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_categories_lnk
    ADD CONSTRAINT questions_categories_lnk_uq UNIQUE (question_id, category_id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: questions_statics questions_statics_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_statics
    ADD CONSTRAINT questions_statics_pkey PRIMARY KEY (id);


--
-- Name: reseptions reseptions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.reseptions
    ADD CONSTRAINT reseptions_pkey PRIMARY KEY (id);


--
-- Name: static_articles static_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_articles
    ADD CONSTRAINT static_articles_pkey PRIMARY KEY (id);


--
-- Name: static_attributes static_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_attributes
    ADD CONSTRAINT static_attributes_pkey PRIMARY KEY (id);


--
-- Name: static_infos_cmps static_infos_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos_cmps
    ADD CONSTRAINT static_infos_cmps_pkey PRIMARY KEY (id);


--
-- Name: static_infos static_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos
    ADD CONSTRAINT static_infos_pkey PRIMARY KEY (id);


--
-- Name: static_infos_cmps static_infos_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos_cmps
    ADD CONSTRAINT static_infos_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: static_programms static_programms_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_programms
    ADD CONSTRAINT static_programms_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_uq UNIQUE (api_token_id, user_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_api_token_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_api_token_lnk_fk ON public.admin_permissions_api_token_lnk USING btree (permission_id);


--
-- Name: admin_permissions_api_token_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_api_token_lnk_ifk ON public.admin_permissions_api_token_lnk USING btree (api_token_id);


--
-- Name: admin_permissions_api_token_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_api_token_lnk_oifk ON public.admin_permissions_api_token_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: admissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admissions_created_by_id_fk ON public.admissions USING btree (created_by_id);


--
-- Name: admissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admissions_documents_idx ON public.admissions USING btree (document_id, locale, published_at);


--
-- Name: admissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX admissions_updated_by_id_fk ON public.admissions USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: contacts_comissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX contacts_comissions_created_by_id_fk ON public.contacts_comissions USING btree (created_by_id);


--
-- Name: contacts_comissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX contacts_comissions_documents_idx ON public.contacts_comissions USING btree (document_id, locale, published_at);


--
-- Name: contacts_comissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX contacts_comissions_updated_by_id_fk ON public.contacts_comissions USING btree (updated_by_id);


--
-- Name: contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);


--
-- Name: contacts_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX contacts_documents_idx ON public.contacts USING btree (document_id, locale, published_at);


--
-- Name: contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);


--
-- Name: docs_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX docs_created_by_id_fk ON public.docs USING btree (created_by_id);


--
-- Name: docs_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX docs_documents_idx ON public.docs USING btree (document_id, locale, published_at);


--
-- Name: docs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX docs_updated_by_id_fk ON public.docs USING btree (updated_by_id);


--
-- Name: errors_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX errors_created_by_id_fk ON public.errors USING btree (created_by_id);


--
-- Name: errors_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX errors_documents_idx ON public.errors USING btree (document_id, locale, published_at);


--
-- Name: errors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX errors_updated_by_id_fk ON public.errors USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: globals_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);


--
-- Name: globals_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX globals_documents_idx ON public.globals USING btree (document_id, locale, published_at);


--
-- Name: globals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);


--
-- Name: graduates_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX graduates_created_by_id_fk ON public.graduates USING btree (created_by_id);


--
-- Name: graduates_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX graduates_documents_idx ON public.graduates USING btree (document_id, locale, published_at);


--
-- Name: graduates_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX graduates_updated_by_id_fk ON public.graduates USING btree (updated_by_id);


--
-- Name: heads_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX heads_created_by_id_fk ON public.heads USING btree (created_by_id);


--
-- Name: heads_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX heads_documents_idx ON public.heads USING btree (document_id, locale, published_at);


--
-- Name: heads_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX heads_updated_by_id_fk ON public.heads USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: images_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX images_created_by_id_fk ON public.images USING btree (created_by_id);


--
-- Name: images_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX images_documents_idx ON public.images USING btree (document_id, locale, published_at);


--
-- Name: images_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX images_updated_by_id_fk ON public.images USING btree (updated_by_id);


--
-- Name: info_admissions_component_type_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX info_admissions_component_type_idx ON public.info_admissions_cmps USING btree (component_type);


--
-- Name: info_admissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX info_admissions_created_by_id_fk ON public.info_admissions USING btree (created_by_id);


--
-- Name: info_admissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX info_admissions_documents_idx ON public.info_admissions USING btree (document_id, locale, published_at);


--
-- Name: info_admissions_entity_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX info_admissions_entity_fk ON public.info_admissions_cmps USING btree (entity_id);


--
-- Name: info_admissions_field_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX info_admissions_field_idx ON public.info_admissions_cmps USING btree (field);


--
-- Name: info_admissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX info_admissions_updated_by_id_fk ON public.info_admissions USING btree (updated_by_id);


--
-- Name: links_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX links_created_by_id_fk ON public.links USING btree (created_by_id);


--
-- Name: links_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX links_documents_idx ON public.links USING btree (document_id, locale, published_at);


--
-- Name: links_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX links_updated_by_id_fk ON public.links USING btree (updated_by_id);


--
-- Name: list_documents_component_type_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX list_documents_component_type_idx ON public.list_documents_cmps USING btree (component_type);


--
-- Name: list_documents_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX list_documents_created_by_id_fk ON public.list_documents USING btree (created_by_id);


--
-- Name: list_documents_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX list_documents_documents_idx ON public.list_documents USING btree (document_id, locale, published_at);


--
-- Name: list_documents_entity_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX list_documents_entity_fk ON public.list_documents_cmps USING btree (entity_id);


--
-- Name: list_documents_field_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX list_documents_field_idx ON public.list_documents_cmps USING btree (field);


--
-- Name: list_documents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX list_documents_updated_by_id_fk ON public.list_documents USING btree (updated_by_id);


--
-- Name: news_articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX news_articles_created_by_id_fk ON public.news_articles USING btree (created_by_id);


--
-- Name: news_articles_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX news_articles_documents_idx ON public.news_articles USING btree (document_id, locale, published_at);


--
-- Name: news_articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX news_articles_updated_by_id_fk ON public.news_articles USING btree (updated_by_id);


--
-- Name: professions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX professions_created_by_id_fk ON public.professions USING btree (created_by_id);


--
-- Name: professions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX professions_documents_idx ON public.professions USING btree (document_id, locale, published_at);


--
-- Name: professions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX professions_updated_by_id_fk ON public.professions USING btree (updated_by_id);


--
-- Name: questions_categories_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_categories_lnk_fk ON public.questions_categories_lnk USING btree (question_id);


--
-- Name: questions_categories_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_categories_lnk_ifk ON public.questions_categories_lnk USING btree (category_id);


--
-- Name: questions_categories_lnk_ofk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_categories_lnk_ofk ON public.questions_categories_lnk USING btree (category_ord);


--
-- Name: questions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_created_by_id_fk ON public.questions USING btree (created_by_id);


--
-- Name: questions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_documents_idx ON public.questions USING btree (document_id, locale, published_at);


--
-- Name: questions_statics_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_statics_created_by_id_fk ON public.questions_statics USING btree (created_by_id);


--
-- Name: questions_statics_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_statics_documents_idx ON public.questions_statics USING btree (document_id, locale, published_at);


--
-- Name: questions_statics_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_statics_updated_by_id_fk ON public.questions_statics USING btree (updated_by_id);


--
-- Name: questions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX questions_updated_by_id_fk ON public.questions USING btree (updated_by_id);


--
-- Name: reseptions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX reseptions_created_by_id_fk ON public.reseptions USING btree (created_by_id);


--
-- Name: reseptions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX reseptions_documents_idx ON public.reseptions USING btree (document_id, locale, published_at);


--
-- Name: reseptions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX reseptions_updated_by_id_fk ON public.reseptions USING btree (updated_by_id);


--
-- Name: static_articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_articles_created_by_id_fk ON public.static_articles USING btree (created_by_id);


--
-- Name: static_articles_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_articles_documents_idx ON public.static_articles USING btree (document_id, locale, published_at);


--
-- Name: static_articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_articles_updated_by_id_fk ON public.static_articles USING btree (updated_by_id);


--
-- Name: static_attributes_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_attributes_created_by_id_fk ON public.static_attributes USING btree (created_by_id);


--
-- Name: static_attributes_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_attributes_documents_idx ON public.static_attributes USING btree (document_id, locale, published_at);


--
-- Name: static_attributes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_attributes_updated_by_id_fk ON public.static_attributes USING btree (updated_by_id);


--
-- Name: static_infos_component_type_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_infos_component_type_idx ON public.static_infos_cmps USING btree (component_type);


--
-- Name: static_infos_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_infos_created_by_id_fk ON public.static_infos USING btree (created_by_id);


--
-- Name: static_infos_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_infos_documents_idx ON public.static_infos USING btree (document_id, locale, published_at);


--
-- Name: static_infos_entity_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_infos_entity_fk ON public.static_infos_cmps USING btree (entity_id);


--
-- Name: static_infos_field_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_infos_field_idx ON public.static_infos_cmps USING btree (field);


--
-- Name: static_infos_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_infos_updated_by_id_fk ON public.static_infos USING btree (updated_by_id);


--
-- Name: static_programms_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_programms_created_by_id_fk ON public.static_programms USING btree (created_by_id);


--
-- Name: static_programms_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_programms_documents_idx ON public.static_programms USING btree (document_id, locale, published_at);


--
-- Name: static_programms_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX static_programms_updated_by_id_fk ON public.static_programms USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_fk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (api_token_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_ifk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (user_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_oifk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (api_token_ord);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: shokan
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admissions admissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admissions admissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts_comissions contacts_comissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts_comissions
    ADD CONSTRAINT contacts_comissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts_comissions contacts_comissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts_comissions
    ADD CONSTRAINT contacts_comissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: docs docs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.docs
    ADD CONSTRAINT docs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: docs docs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.docs
    ADD CONSTRAINT docs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: errors errors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.errors
    ADD CONSTRAINT errors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: errors errors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.errors
    ADD CONSTRAINT errors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals globals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: globals globals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: graduates graduates_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.graduates
    ADD CONSTRAINT graduates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: graduates graduates_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.graduates
    ADD CONSTRAINT graduates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: heads heads_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.heads
    ADD CONSTRAINT heads_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: heads heads_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.heads
    ADD CONSTRAINT heads_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: images images_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: images images_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: info_admissions info_admissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions
    ADD CONSTRAINT info_admissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: info_admissions_cmps info_admissions_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions_cmps
    ADD CONSTRAINT info_admissions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.info_admissions(id) ON DELETE CASCADE;


--
-- Name: info_admissions info_admissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.info_admissions
    ADD CONSTRAINT info_admissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: links links_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: links links_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: list_documents list_documents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents
    ADD CONSTRAINT list_documents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: list_documents_cmps list_documents_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents_cmps
    ADD CONSTRAINT list_documents_entity_fk FOREIGN KEY (entity_id) REFERENCES public.list_documents(id) ON DELETE CASCADE;


--
-- Name: list_documents list_documents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.list_documents
    ADD CONSTRAINT list_documents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: news_articles news_articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.news_articles
    ADD CONSTRAINT news_articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: news_articles news_articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.news_articles
    ADD CONSTRAINT news_articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: professions professions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: professions professions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.professions
    ADD CONSTRAINT professions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: questions_categories_lnk questions_categories_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_categories_lnk
    ADD CONSTRAINT questions_categories_lnk_fk FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;


--
-- Name: questions_categories_lnk questions_categories_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_categories_lnk
    ADD CONSTRAINT questions_categories_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: questions questions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: questions_statics questions_statics_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_statics
    ADD CONSTRAINT questions_statics_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: questions_statics questions_statics_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions_statics
    ADD CONSTRAINT questions_statics_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: questions questions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reseptions reseptions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.reseptions
    ADD CONSTRAINT reseptions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: reseptions reseptions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.reseptions
    ADD CONSTRAINT reseptions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_articles static_articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_articles
    ADD CONSTRAINT static_articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_articles static_articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_articles
    ADD CONSTRAINT static_articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_attributes static_attributes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_attributes
    ADD CONSTRAINT static_attributes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_attributes static_attributes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_attributes
    ADD CONSTRAINT static_attributes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_infos static_infos_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos
    ADD CONSTRAINT static_infos_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_infos_cmps static_infos_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos_cmps
    ADD CONSTRAINT static_infos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.static_infos(id) ON DELETE CASCADE;


--
-- Name: static_infos static_infos_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_infos
    ADD CONSTRAINT static_infos_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_programms static_programms_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_programms
    ADD CONSTRAINT static_programms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: static_programms static_programms_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.static_programms
    ADD CONSTRAINT static_programms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: shokan
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict jrVYdBUZfgGGok5PpIgc34mokZ5lat2RgkxxdNQkLxh3MXBZ1tYCbnyJ6tzQJwG

