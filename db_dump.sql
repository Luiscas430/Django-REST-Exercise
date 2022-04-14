Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO luis_dominguez;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO luis_dominguez;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO luis_dominguez;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO luis_dominguez;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO luis_dominguez;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO luis_dominguez;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO luis_dominguez;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO luis_dominguez;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO luis_dominguez;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO luis_dominguez;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO luis_dominguez;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO luis_dominguez;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO luis_dominguez;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO luis_dominguez;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO luis_dominguez;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO luis_dominguez;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO luis_dominguez;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO luis_dominguez;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_bookspublishers; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.books_bookspublishers (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    publisher_id bigint NOT NULL
);


ALTER TABLE public.books_bookspublishers OWNER TO luis_dominguez;

--
-- Name: books_bookspublishers_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.books_bookspublishers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookspublishers_id_seq OWNER TO luis_dominguez;

--
-- Name: books_bookspublishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.books_bookspublishers_id_seq OWNED BY public.books_bookspublishers.id;


--
-- Name: books_publisher; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.books_publisher (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    headquarters character varying(256) NOT NULL,
    foundation_year smallint NOT NULL
);


ALTER TABLE public.books_publisher OWNER TO luis_dominguez;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.books_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_publisher_id_seq OWNER TO luis_dominguez;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.books_publisher_id_seq OWNED BY public.books_publisher.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO luis_dominguez;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO luis_dominguez;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO luis_dominguez;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO luis_dominguez;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO luis_dominguez;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO luis_dominguez;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO luis_dominguez;

--
-- Name: magazines_editor; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.magazines_editor (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.magazines_editor OWNER TO luis_dominguez;

--
-- Name: magazines_editor_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.magazines_editor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magazines_editor_id_seq OWNER TO luis_dominguez;

--
-- Name: magazines_editor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.magazines_editor_id_seq OWNED BY public.magazines_editor.id;


--
-- Name: magazines_magazine; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.magazines_magazine (
    id bigint NOT NULL,
    pages smallint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    edition smallint,
    magazine_name character varying(64),
    title character varying(128)
);


ALTER TABLE public.magazines_magazine OWNER TO luis_dominguez;

--
-- Name: magazines_magazine_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.magazines_magazine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magazines_magazine_id_seq OWNER TO luis_dominguez;

--
-- Name: magazines_magazine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.magazines_magazine_id_seq OWNED BY public.magazines_magazine.id;


--
-- Name: magazines_magazineseditors; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.magazines_magazineseditors (
    id bigint NOT NULL,
    editor_id bigint NOT NULL,
    magazine_id bigint NOT NULL
);


ALTER TABLE public.magazines_magazineseditors OWNER TO luis_dominguez;

--
-- Name: magazines_magazineseditors_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.magazines_magazineseditors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.magazines_magazineseditors_id_seq OWNER TO luis_dominguez;

--
-- Name: magazines_magazineseditors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.magazines_magazineseditors_id_seq OWNED BY public.magazines_magazineseditors.id;


--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO luis_dominguez;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO luis_dominguez;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: luis_dominguez
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO luis_dominguez;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_dominguez
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO luis_dominguez;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_dominguez
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_bookspublishers id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_bookspublishers ALTER COLUMN id SET DEFAULT nextval('public.books_bookspublishers_id_seq'::regclass);


--
-- Name: books_publisher id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_publisher ALTER COLUMN id SET DEFAULT nextval('public.books_publisher_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: magazines_editor id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_editor ALTER COLUMN id SET DEFAULT nextval('public.magazines_editor_id_seq'::regclass);


--
-- Name: magazines_magazine id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_magazine ALTER COLUMN id SET DEFAULT nextval('public.magazines_magazine_id_seq'::regclass);


--
-- Name: magazines_magazineseditors id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_magazineseditors ALTER COLUMN id SET DEFAULT nextval('public.magazines_magazineseditors_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add publisher	10	add_publisher
38	Can change publisher	10	change_publisher
39	Can delete publisher	10	delete_publisher
40	Can view publisher	10	view_publisher
41	Can add books publishers	11	add_bookspublishers
42	Can change books publishers	11	change_bookspublishers
43	Can delete books publishers	11	delete_bookspublishers
44	Can view books publishers	11	view_bookspublishers
45	Can add editor	12	add_editor
46	Can change editor	12	change_editor
47	Can delete editor	12	delete_editor
48	Can view editor	12	view_editor
49	Can add magazine	13	add_magazine
50	Can change magazine	13	change_magazine
51	Can delete magazine	13	delete_magazine
52	Can view magazine	13	view_magazine
53	Can add magazines editors	14	add_magazineseditors
54	Can change magazines editors	14	change_magazineseditors
55	Can delete magazines editors	14	delete_magazineseditors
56	Can view magazines editors	14	view_magazineseditors
57	Can add blacklisted token	15	add_blacklistedtoken
58	Can change blacklisted token	15	change_blacklistedtoken
59	Can delete blacklisted token	15	delete_blacklistedtoken
60	Can view blacklisted token	15	view_blacklistedtoken
61	Can add outstanding token	16	add_outstandingtoken
62	Can change outstanding token	16	change_outstandingtoken
63	Can delete outstanding token	16	delete_outstandingtoken
64	Can view outstanding token	16	view_outstandingtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$hiauP4VAnlraElqV14Ot7q$LT/lt3qnsBI1/DxXC/hONoLTQ6yeZ24Itcx0ydAnKhQ=	\N	f	test3			test3@test3.com	f	t	2022-04-12 21:05:59.226567+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_bookspublishers; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.books_bookspublishers (id, book_id, publisher_id) FROM stdin;
\.


--
-- Data for Name: books_publisher; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.books_publisher (id, name, headquarters, foundation_year) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	publisher
11	books	bookspublishers
12	magazines	editor
13	magazines	magazine
14	magazines	magazineseditors
15	token_blacklist	blacklistedtoken
16	token_blacklist	outstandingtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:37:03.947504+00
2	auth	0001_initial	2022-04-12 20:37:04.064059+00
3	admin	0001_initial	2022-04-12 20:37:04.086797+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:37:04.094033+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:37:04.101521+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:37:04.113161+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:37:04.119568+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:37:04.125818+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:37:04.132385+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:37:04.140724+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:37:04.142533+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:37:04.149493+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:37:04.165643+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:37:04.172809+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:37:04.180951+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:37:04.187423+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:37:04.194111+00
18	books	0001_initial	2022-04-12 20:37:04.220742+00
19	books	0002_publisher_bookspublishers_book_publishers	2022-04-12 20:37:04.246346+00
20	books	0003_alter_author_name	2022-04-12 20:37:04.253322+00
21	magazines	0001_initial	2022-04-12 20:37:04.281591+00
22	magazines	0002_remove_magazine_genre_magazine_edition	2022-04-12 20:37:04.288806+00
23	magazines	0003_remove_magazine_name_remove_magazine_price_and_more	2022-04-12 20:37:04.299492+00
24	sessions	0001_initial	2022-04-12 20:37:04.3149+00
25	token_blacklist	0001_initial	2022-04-12 20:37:04.348631+00
26	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:37:04.35593+00
27	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:37:04.368317+00
28	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:37:04.381106+00
29	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:37:04.388085+00
30	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:37:04.395373+00
31	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:37:04.415411+00
32	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:37:04.48817+00
33	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:37:04.506346+00
34	token_blacklist	0011_linearizes_history	2022-04-12 20:37:04.50877+00
35	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:37:04.517245+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: magazines_editor; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.magazines_editor (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: magazines_magazine; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.magazines_magazine (id, pages, created_at, updated_at, edition, magazine_name, title) FROM stdin;
\.


--
-- Data for Name: magazines_magazineseditors; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.magazines_magazineseditors (id, editor_id, magazine_id) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:37:26.58596+00	2
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: luis_dominguez
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Mzk2OCwiaWF0IjoxNjQ5Nzk3NTY4LCJqdGkiOiJmNWEwNzIzM2Y5NTQ0OWEwOTQ5Y2FlY2RmYzgzMWI3ZSIsInVzZXJfaWQiOjF9.1IVbmebb5qq9r_DrkTg-H8RpOXGqb04qdkU0-4zoIa0	2022-04-12 21:06:08.490876+00	2022-04-13 21:06:08+00	1	f5a07233f95449a0949caecdfc831b7e
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTc2MiwiaWF0IjoxNjQ5Nzk5MzYyLCJqdGkiOiIyNGQwZTY4MTE2ODE0YmUyODkxNzM1NmY4MWIyNmQ3NyIsInVzZXJfaWQiOjF9.N1abzk77v8FlD0w2cPYs7fY1yefekDpRB0QThaY5Ngc	2022-04-12 21:36:02.005726+00	2022-04-13 21:36:02+00	1	24d0e68116814be28917356f81b26d77
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_bookspublishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.books_bookspublishers_id_seq', 1, false);


--
-- Name: books_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.books_publisher_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: magazines_editor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.magazines_editor_id_seq', 1, false);


--
-- Name: magazines_magazine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.magazines_magazine_id_seq', 1, false);


--
-- Name: magazines_magazineseditors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.magazines_magazineseditors_id_seq', 1, false);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_dominguez
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_bookspublishers books_bookspublishers_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_bookspublishers
    ADD CONSTRAINT books_bookspublishers_pkey PRIMARY KEY (id);


--
-- Name: books_publisher books_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: magazines_editor magazines_editor_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_editor
    ADD CONSTRAINT magazines_editor_pkey PRIMARY KEY (id);


--
-- Name: magazines_magazine magazines_magazine_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_magazine
    ADD CONSTRAINT magazines_magazine_pkey PRIMARY KEY (id);


--
-- Name: magazines_magazineseditors magazines_magazineseditors_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_magazineseditors
    ADD CONSTRAINT magazines_magazineseditors_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_bookspublishers_book_id_01ef5361; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX books_bookspublishers_book_id_01ef5361 ON public.books_bookspublishers USING btree (book_id);


--
-- Name: books_bookspublishers_publisher_id_db0ab3a7; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX books_bookspublishers_publisher_id_db0ab3a7 ON public.books_bookspublishers USING btree (publisher_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: magazines_magazineseditors_editor_id_5323e126; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX magazines_magazineseditors_editor_id_5323e126 ON public.magazines_magazineseditors USING btree (editor_id);


--
-- Name: magazines_magazineseditors_magazine_id_181e8f1f; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX magazines_magazineseditors_magazine_id_181e8f1f ON public.magazines_magazineseditors USING btree (magazine_id);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: luis_dominguez
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookspublishers books_bookspublisher_publisher_id_db0ab3a7_fk_books_pub; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_bookspublishers
    ADD CONSTRAINT books_bookspublisher_publisher_id_db0ab3a7_fk_books_pub FOREIGN KEY (publisher_id) REFERENCES public.books_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookspublishers books_bookspublishers_book_id_01ef5361_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.books_bookspublishers
    ADD CONSTRAINT books_bookspublishers_book_id_01ef5361_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: magazines_magazineseditors magazines_magazinese_editor_id_5323e126_fk_magazines; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_magazineseditors
    ADD CONSTRAINT magazines_magazinese_editor_id_5323e126_fk_magazines FOREIGN KEY (editor_id) REFERENCES public.magazines_editor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: magazines_magazineseditors magazines_magazinese_magazine_id_181e8f1f_fk_magazines; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.magazines_magazineseditors
    ADD CONSTRAINT magazines_magazinese_magazine_id_181e8f1f_fk_magazines FOREIGN KEY (magazine_id) REFERENCES public.magazines_magazine(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: luis_dominguez
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

