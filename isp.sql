--
-- BACKUP
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookings (
    id integer NOT NULL,
    checkin character varying(255),
    checkout character varying(255),
    room integer,
    people integer,
    price integer,
    users_permissions_user integer,
    email character varying(255),
    phone character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255),
    name character varying(255)
);


ALTER TABLE public.bookings OWNER TO postgres;

--
-- Name: bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bookings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookings_id_seq OWNER TO postgres;

--
-- Name: bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;


--
-- Name: carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carts (
    id integer NOT NULL,
    users_permissions_user integer,
    "productId" integer,
    variation jsonb,
    qty integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.carts OWNER TO postgres;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carts_id_seq OWNER TO postgres;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: components_array_addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_array_addresses (
    id integer NOT NULL,
    line1 character varying(255),
    city character varying(255),
    postcode character varying(255)
);


ALTER TABLE public.components_array_addresses OWNER TO postgres;

--
-- Name: components_array_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_array_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_array_addresses_id_seq OWNER TO postgres;

--
-- Name: components_array_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_array_addresses_id_seq OWNED BY public.components_array_addresses.id;


--
-- Name: components_array_contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_array_contacts (
    id integer NOT NULL,
    name character varying(255),
    address text,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.components_array_contacts OWNER TO postgres;

--
-- Name: components_array_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_array_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_array_contacts_id_seq OWNER TO postgres;

--
-- Name: components_array_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_array_contacts_id_seq OWNED BY public.components_array_contacts.id;


--
-- Name: components_array_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_array_items (
    id integer NOT NULL
);


ALTER TABLE public.components_array_items OWNER TO postgres;

--
-- Name: components_array_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_array_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_array_items_id_seq OWNER TO postgres;

--
-- Name: components_array_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_array_items_id_seq OWNED BY public.components_array_items.id;


--
-- Name: components_array_prices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_array_prices (
    id integer NOT NULL,
    variation character varying(255),
    price bigint
);


ALTER TABLE public.components_array_prices OWNER TO postgres;

--
-- Name: components_array_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_array_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_array_prices_id_seq OWNER TO postgres;

--
-- Name: components_array_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_array_prices_id_seq OWNED BY public.components_array_prices.id;


--
-- Name: components_array_rekenings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_array_rekenings (
    id integer NOT NULL,
    name character varying(255),
    rek character varying(255)
);


ALTER TABLE public.components_array_rekenings OWNER TO postgres;

--
-- Name: components_array_rekenings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_array_rekenings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_array_rekenings_id_seq OWNER TO postgres;

--
-- Name: components_array_rekenings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_array_rekenings_id_seq OWNED BY public.components_array_rekenings.id;


--
-- Name: components_array_tessses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_array_tessses (
    id integer NOT NULL
);


ALTER TABLE public.components_array_tessses OWNER TO postgres;

--
-- Name: components_array_tessses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_array_tessses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_array_tessses_id_seq OWNER TO postgres;

--
-- Name: components_array_tessses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_array_tessses_id_seq OWNED BY public.components_array_tessses.id;


--
-- Name: components_facility_arrays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_facility_arrays (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.components_facility_arrays OWNER TO postgres;

--
-- Name: components_facility_arrays_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_facility_arrays_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_facility_arrays_id_seq OWNER TO postgres;

--
-- Name: components_facility_arrays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_facility_arrays_id_seq OWNED BY public.components_facility_arrays.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO postgres;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO postgres;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objects (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    address text NOT NULL,
    youtube character varying(255),
    users_permissions_user integer,
    type character varying(255) NOT NULL,
    slug character varying(255),
    facility jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.objects OWNER TO postgres;

--
-- Name: objects_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objects_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    object_id integer NOT NULL
);


ALTER TABLE public.objects_components OWNER TO postgres;

--
-- Name: objects_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objects_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objects_components_id_seq OWNER TO postgres;

--
-- Name: objects_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objects_components_id_seq OWNED BY public.objects_components.id;


--
-- Name: objects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objects_id_seq OWNER TO postgres;

--
-- Name: objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objects_id_seq OWNED BY public.objects.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    items jsonb NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    resi character varying(255),
    ongkir integer,
    status character varying(255),
    name character varying(255),
    phone character varying(255),
    fee integer,
    users_permissions_user integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.orders_components OWNER TO postgres;

--
-- Name: orders_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_components_id_seq OWNER TO postgres;

--
-- Name: orders_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_components_id_seq OWNED BY public.orders_components.id;


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.packages (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    object integer,
    harga jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    price jsonb,
    content text
);


ALTER TABLE public.packages OWNER TO postgres;

--
-- Name: packages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.packages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.packages_id_seq OWNER TO postgres;

--
-- Name: packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.packages_id_seq OWNED BY public.packages.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    fee integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- Name: payments_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    payment_id integer NOT NULL
);


ALTER TABLE public.payments_components OWNER TO postgres;

--
-- Name: payments_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_components_id_seq OWNER TO postgres;

--
-- Name: payments_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_components_id_seq OWNED BY public.payments_components.id;


--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_id_seq OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    object integer,
    visible boolean,
    category character varying(255),
    prices jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address text,
    phone character varying(255),
    users_permissions_user integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.profiles OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    object integer,
    available date,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    name character varying(255) NOT NULL,
    address text,
    phone character varying(255),
    profile integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    booking integer
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- Name: users-permissions_user_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user_components" (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    "users-permissions_user_id" integer NOT NULL
);


ALTER TABLE public."users-permissions_user_components" OWNER TO postgres;

--
-- Name: users-permissions_user_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_components_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_components_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_components_id_seq" OWNED BY public."users-permissions_user_components".id;


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: visitors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visitors (
    id integer NOT NULL,
    people integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.visitors OWNER TO postgres;

--
-- Name: visitors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visitors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitors_id_seq OWNER TO postgres;

--
-- Name: visitors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitors_id_seq OWNED BY public.visitors.id;


--
-- Name: bookings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: components_array_addresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_addresses ALTER COLUMN id SET DEFAULT nextval('public.components_array_addresses_id_seq'::regclass);


--
-- Name: components_array_contacts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_contacts ALTER COLUMN id SET DEFAULT nextval('public.components_array_contacts_id_seq'::regclass);


--
-- Name: components_array_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_items ALTER COLUMN id SET DEFAULT nextval('public.components_array_items_id_seq'::regclass);


--
-- Name: components_array_prices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_prices ALTER COLUMN id SET DEFAULT nextval('public.components_array_prices_id_seq'::regclass);


--
-- Name: components_array_rekenings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_rekenings ALTER COLUMN id SET DEFAULT nextval('public.components_array_rekenings_id_seq'::regclass);


--
-- Name: components_array_tessses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_tessses ALTER COLUMN id SET DEFAULT nextval('public.components_array_tessses_id_seq'::regclass);


--
-- Name: components_facility_arrays id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facility_arrays ALTER COLUMN id SET DEFAULT nextval('public.components_facility_arrays_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects ALTER COLUMN id SET DEFAULT nextval('public.objects_id_seq'::regclass);


--
-- Name: objects_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects_components ALTER COLUMN id SET DEFAULT nextval('public.objects_components_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: orders_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_components ALTER COLUMN id SET DEFAULT nextval('public.orders_components_id_seq'::regclass);


--
-- Name: packages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages ALTER COLUMN id SET DEFAULT nextval('public.packages_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: payments_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_components ALTER COLUMN id SET DEFAULT nextval('public.payments_components_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Name: users-permissions_user_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user_components" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_components_id_seq"'::regclass);


--
-- Name: visitors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitors ALTER COLUMN id SET DEFAULT nextval('public.visitors_id_seq'::regclass);


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookings (id, checkin, checkout, room, people, price, users_permissions_user, email, phone, created_by, updated_by, created_at, updated_at, status, name) FROM stdin;
5	2021-12-22	2021-12-23	1	\N	200000	5	umkm@pokdarwisgombengsari.com	012345678910	\N	\N	2021-12-21 10:54:50.453+01	2021-12-21 10:55:58.953+01	success	Faruk Alfiyan
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carts (id, users_permissions_user, "productId", variation, qty, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: components_array_addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_array_addresses (id, line1, city, postcode) FROM stdin;
3	Banyuwangi	Banyuwangi	68414
5			
10			
11	Dusun Kampunganyar RT 02 RW 05, Gumuk, Licin, Banyuwangi, East Java, Indonesia	Banyuwangi	68454
15	Lingkungan Kacangan Asri Gombengsari	Banyuwangi	68455
16			
23	Perum Villa Brawijaya A7 (Depan Polres)	Banyuwangi	68417
24	Perum Villa Brawijaya A7 (Depan Polres)	Banyuwangi	68417
25	banyuwangi	banyuwangi	68414
28	Bondowoso	Bondowoso	
30	Lingk. Lerek RT.03 RW.01 Kel. Gombengsari Kec. Kalipuro	Banyuwangi	68455
35	Banyuwangi	Banyuwangi	68414
36	Banyuwangi	Banyuwangi	68414
37	Banyuwangi	Banyuwangi	68414
39	Banyuwangi	Banyuwangi	68414
34	Banyuwangi	Banyuwangi	68414
40	\N		
41	Jl banyuwangi	Banyuwangi	68413
\.


--
-- Data for Name: components_array_contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_array_contacts (id, name, address, email, phone) FROM stdin;
1	-		tes@admin.com	-
2	-		admin@admin.com	-
3	-		admin@admin.com	-
4	Suwandi	Lingkungan Gombeng RT.02 RW.03 Kel. Gombengsari Kec. Kalipuro Kab. Banyuwangi	suwandi'scoffee@gmail.com	085257790583
5	-		admin@admin.com	-
6	Ega Bruryantoro Putra	Lingkungan Lerek RT. 02 RW.02 Kel. Gombengsari Kec. Kalipuro Kab. Banyuwangi 68455	kopitore86@gmail.com	082233123960
7	Busana	Lingkungan Suko RT.01 RW.01 Kel. Gombengsari Kec. Kalipuro Kab. Banyuwangi 68455	estohcoffee@gmail.com	085257790583
8	Abdurrahman	Lingkungan Kacangan Asri	rohman1234@gmail.com	085257790583
9	Haryono		admin@rumahdigitalgombengsari.com	-
10	sony	Bbb	sony@gmail.com	082142188321
\.


--
-- Data for Name: components_array_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_array_items (id) FROM stdin;
\.


--
-- Data for Name: components_array_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_array_prices (id, variation, price) FROM stdin;
\.


--
-- Data for Name: components_array_rekenings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_array_rekenings (id, name, rek) FROM stdin;
25	YULIANA	792501009384535
26		
27		
28		
\.


--
-- Data for Name: components_array_tessses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_array_tessses (id) FROM stdin;
\.


--
-- Data for Name: components_facility_arrays; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_facility_arrays (id, name) FROM stdin;
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
10	model_def_application::profile.profile	{"uid":"application::profile.profile","collectionName":"profiles","kind":"collectionType","info":{"name":"Profile","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"address":{"type":"text"},"phone":{"type":"string"},"picture":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"users_permissions_user":{"via":"profile","plugin":"users-permissions","model":"user"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
4	model_def_array.items	{"uid":"array.items","collectionName":"components_array_items","info":{"name":"Items","icon":"shopping-cart"},"options":{"timestamps":false},"attributes":{}}	object	\N	\N
11	model_def_application::visitor.visitor	{"uid":"application::visitor.visitor","collectionName":"visitors","kind":"collectionType","info":{"name":"visitor"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"people":{"type":"integer","default":1,"min":1},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
5	model_def_array.price	{"uid":"array.price","collectionName":"components_array_prices","info":{"name":"Price","icon":"money-bill-wave"},"options":{"timestamps":false},"attributes":{"variation":{"type":"string","required":true,"unique":true},"price":{"type":"biginteger","required":true}}}	object	\N	\N
12	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
52	model_def_array.tesss	{"uid":"array.tesss","collectionName":"components_array_tessses","info":{"name":"tesss","icon":"align-left"},"options":{"timestamps":false},"attributes":{}}	object	\N	\N
53	model_def_application::cart.cart	{"uid":"application::cart.cart","collectionName":"carts","kind":"collectionType","info":{"name":"Cart","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"users_permissions_user":{"plugin":"users-permissions","model":"user","via":"carts"},"productId":{"type":"integer"},"variation":{"type":"json"},"qty":{"type":"integer"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
8	model_def_application::package.package	{"uid":"application::package.package","collectionName":"packages","kind":"collectionType","info":{"name":"Package","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"description":{"type":"text"},"object":{"via":"packages","model":"object"},"price":{"type":"json"},"content":{"type":"richtext"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
2	model_def_array.array	{"uid":"array.array","collectionName":"components_facility_arrays","info":{"name":"Facility","icon":"universal-access","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string","required":true}}}	object	\N	\N
3	model_def_array.contact	{"uid":"array.contact","collectionName":"components_array_contacts","info":{"name":"Contact","icon":"address-card"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"address":{"type":"text"},"email":{"type":"email"},"phone":{"type":"string"}}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::application::visitor.visitor	{"uid":"application::visitor.visitor","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"people":{"edit":{"label":"People","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"People","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","people","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"people","size":4}]]}}	object		
54	plugin_content_manager_configuration_components::array.tesss	{"uid":"array.tesss","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[],"editRelations":[]},"isComponent":true}	object		
16	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
21	plugin_upload_settings	{"sizeOptimization":false,"responsiveDimensions":true,"autoOrientation":false}	object	development	
22	plugin_documentation_config	{"restrictedAccess":false}	object		
23	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
55	plugin_content_manager_configuration_content_types::application::cart.cart	{"uid":"application::cart.cart","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":true,"sortable":true}},"productId":{"edit":{"label":"ProductId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ProductId","searchable":true,"sortable":true}},"variation":{"edit":{"label":"Variation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Variation","searchable":false,"sortable":false}},"qty":{"edit":{"label":"Qty","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Qty","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","users_permissions_user","productId","qty"],"editRelations":["users_permissions_user"],"edit":[[{"name":"productId","size":4}],[{"name":"variation","size":12}],[{"name":"qty","size":4}]]}}	object		
28	plugin_i18n_default_locale	"en"	string		
29	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
25	plugin_content_manager_configuration_components::array.array	{"uid":"array.array","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}}},"layouts":{"list":["id","name"],"edit":[[{"name":"name","size":6}]],"editRelations":[]},"isComponent":true}	object		
27	plugin_content_manager_configuration_components::array.items	{"uid":"array.items","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[],"editRelations":[]},"isComponent":true}	object		
19	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
30	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
41	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
56	model_def_array.rekening	{"uid":"array.rekening","collectionName":"components_array_rekenings","info":{"name":"rekening","icon":"credit-card"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"rek":{"type":"string"}}}	object	\N	\N
32	plugin_content_manager_configuration_content_types::application::profile.profile	{"uid":"application::profile.profile","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":true,"sortable":true}},"phone":{"edit":{"label":"Phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Phone","searchable":true,"sortable":true}},"picture":{"edit":{"label":"Picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Picture","searchable":false,"sortable":false}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","address","phone"],"editRelations":["users_permissions_user"],"edit":[[{"name":"name","size":6},{"name":"address","size":6}],[{"name":"phone","size":6},{"name":"picture","size":6}]]}}	object		
58	plugin_content_manager_configuration_components::array.rekening	{"uid":"array.rekening","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"rek":{"edit":{"label":"Rek","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Rek","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","rek"],"edit":[[{"name":"name","size":6},{"name":"rek","size":6}]],"editRelations":[]},"isComponent":true}	object		
33	plugin_content_manager_configuration_content_types::application::product.product	{"uid":"application::product.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}},"featured_image":{"edit":{"label":"Featured_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Featured_image","searchable":false,"sortable":false}},"object":{"edit":{"label":"Object","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Object","searchable":true,"sortable":true}},"visible":{"edit":{"label":"Visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Visible","searchable":true,"sortable":true}},"category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Category","searchable":true,"sortable":true}},"prices":{"edit":{"label":"Prices","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Prices","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","images"],"editRelations":["object"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"images","size":6},{"name":"featured_image","size":6}],[{"name":"visible","size":4},{"name":"category","size":6}],[{"name":"prices","size":12}]]}}	object		
43	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
59	plugin_content_manager_configuration_content_types::application::booking.booking	{"uid":"application::booking.booking","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"phone","defaultSortBy":"phone","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"room":{"edit":{"label":"Room","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Room","searchable":true,"sortable":true}},"people":{"edit":{"label":"People","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"People","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"Phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Phone","searchable":true,"sortable":true}},"checkin":{"edit":{"label":"Checkin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Checkin","searchable":true,"sortable":true}},"checkout":{"edit":{"label":"Checkout","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Checkout","searchable":true,"sortable":true}},"konfirmasi":{"edit":{"label":"Konfirmasi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Konfirmasi","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","checkin","checkout","room"],"edit":[[{"name":"people","size":4}],[{"name":"price","size":4},{"name":"email","size":6}],[{"name":"phone","size":6},{"name":"checkin","size":6}],[{"name":"checkout","size":6},{"name":"konfirmasi","size":6}],[{"name":"status","size":6},{"name":"name","size":6}]],"editRelations":["room","users_permissions_user"]}}	object		
45	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
42	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
34	plugin_content_manager_configuration_content_types::application::package.package	{"uid":"application::package.package","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"object":{"edit":{"label":"Object","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Object","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":false,"sortable":false}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","object"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"price","size":12}],[{"name":"content","size":12}]],"editRelations":["object"]}}	object		
35	plugin_content_manager_configuration_content_types::application::order.order	{"uid":"application::order.order","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"items":{"edit":{"label":"Items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Items","searchable":false,"sortable":false}},"resi":{"edit":{"label":"Resi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Resi","searchable":true,"sortable":true}},"ongkir":{"edit":{"label":"Ongkir","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ongkir","searchable":true,"sortable":true}},"konfirmasi":{"edit":{"label":"Konfirmasi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Konfirmasi","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":true,"sortable":true}},"address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"phone":{"edit":{"label":"Phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Phone","searchable":true,"sortable":true}},"fee":{"edit":{"label":"Fee","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fee","searchable":true,"sortable":true}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at","resi"],"edit":[[{"name":"items","size":12}],[{"name":"resi","size":6},{"name":"ongkir","size":4}],[{"name":"konfirmasi","size":6},{"name":"status","size":6}],[{"name":"address","size":12}],[{"name":"name","size":6},{"name":"phone","size":6}],[{"name":"fee","size":4}]],"editRelations":["users_permissions_user"]}}	object		
57	model_def_application::booking.booking	{"uid":"application::booking.booking","collectionName":"bookings","kind":"collectionType","info":{"name":"Booking","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"room":{"model":"room","via":"bookings"},"people":{"type":"integer"},"price":{"type":"integer"},"users_permissions_user":{"plugin":"users-permissions","model":"user","via":"bookings"},"email":{"type":"email"},"phone":{"type":"string"},"checkin":{"type":"string"},"checkout":{"type":"string"},"konfirmasi":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"status":{"type":"enumeration","enum":["unpaid","waiting","paid","success","canceled"],"default":"unpaid"},"name":{"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
37	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
38	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"phone":{"edit":{"label":"Phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Phone","searchable":true,"sortable":true}},"picture":{"edit":{"label":"Picture","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Picture","searchable":false,"sortable":false}},"objects":{"edit":{"label":"Objects","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Objects","searchable":false,"sortable":false}},"profile":{"edit":{"label":"Profile","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Profile","searchable":true,"sortable":true}},"address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":false,"sortable":false}},"carts":{"edit":{"label":"Carts","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Carts","searchable":false,"sortable":false}},"orders":{"edit":{"label":"Orders","description":"","placeholder":"","visible":true,"editable":true,"mainField":"resi"},"list":{"label":"Orders","searchable":false,"sortable":false}},"bookings":{"edit":{"label":"Bookings","description":"","placeholder":"","visible":true,"editable":true,"mainField":"phone"},"list":{"label":"Bookings","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"name","size":6}],[{"name":"phone","size":6}],[{"name":"picture","size":6}],[{"name":"address","size":12}]],"editRelations":["role","objects","profile","carts","orders","bookings"]}}	object		
36	plugin_content_manager_configuration_content_types::application::object.object	{"uid":"application::object.object","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":true,"sortable":true}},"youtube":{"edit":{"label":"Youtube","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Youtube","searchable":true,"sortable":true}},"contact":{"edit":{"label":"Contact","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Contact","searchable":false,"sortable":false}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":true,"sortable":true}},"featured_image":{"edit":{"label":"Featured_image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Featured_image","searchable":false,"sortable":false}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}},"slideshow":{"edit":{"label":"Slideshow","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slideshow","searchable":false,"sortable":false}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"facility":{"edit":{"label":"Facility","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Facility","searchable":false,"sortable":false}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"products":{"edit":{"label":"Products","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Products","searchable":false,"sortable":false}},"packages":{"edit":{"label":"Packages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Packages","searchable":false,"sortable":false}},"rooms":{"edit":{"label":"Rooms","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Rooms","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","address"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"address","size":6},{"name":"youtube","size":6}],[{"name":"contact","size":12}],[{"name":"featured_image","size":6},{"name":"images","size":6}],[{"name":"slideshow","size":6},{"name":"type","size":6}],[{"name":"slug","size":6}],[{"name":"facility","size":12}],[{"name":"logo","size":6}]],"editRelations":["users_permissions_user","products","packages","rooms"]}}	object		
7	model_def_application::order.order	{"uid":"application::order.order","collectionName":"orders","kind":"collectionType","info":{"name":"Order","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"items":{"type":"json","required":true},"resi":{"type":"string"},"ongkir":{"type":"integer"},"konfirmasi":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"status":{"type":"enumeration","enum":["paid","unpaid","waiting","success","sent","canceled"],"default":"unpaid"},"address":{"type":"component","repeatable":false,"component":"array.address"},"name":{"type":"string"},"phone":{"type":"string"},"fee":{"type":"integer","default":0},"users_permissions_user":{"plugin":"users-permissions","model":"user","via":"orders"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
39	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
44	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
20	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"name":{"type":"string","required":true},"phone":{"type":"string"},"picture":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"objects":{"via":"users_permissions_user","collection":"object","isVirtual":true},"profile":{"via":"users_permissions_user","model":"profile"},"address":{"type":"component","repeatable":false,"component":"array.address"},"carts":{"via":"users_permissions_user","collection":"cart","isVirtual":true},"orders":{"via":"users_permissions_user","collection":"order","isVirtual":true},"bookings":{"via":"users_permissions_user","collection":"booking","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
40	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
26	plugin_content_manager_configuration_components::array.price	{"uid":"array.price","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"variation","defaultSortBy":"variation","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"variation":{"edit":{"label":"Variation","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Variation","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}}},"layouts":{"list":["id","variation","price"],"edit":[[{"name":"variation","size":6},{"name":"price","size":4}]],"editRelations":[]},"isComponent":true}	object		
13	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
14	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
17	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
24	plugin_content_manager_configuration_components::array.contact	{"uid":"array.contact","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"phone":{"edit":{"label":"Phone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Phone","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","address","email"],"edit":[[{"name":"name","size":6},{"name":"address","size":6}],[{"name":"email","size":6},{"name":"phone","size":6}]],"editRelations":[]},"isComponent":true}	object		
47	model_def_application::payment.payment	{"uid":"application::payment.payment","collectionName":"payments","kind":"singleType","info":{"name":"Payment","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"fee":{"type":"integer"},"qr":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"BRI":{"type":"component","repeatable":false,"component":"array.rekening"},"MANDIRI":{"type":"component","repeatable":false,"component":"array.rekening"},"BCA":{"type":"component","repeatable":false,"component":"array.rekening"},"BNI":{"type":"component","repeatable":false,"component":"array.rekening"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
9	model_def_application::product.product	{"uid":"application::product.product","collectionName":"products","kind":"collectionType","info":{"name":"Product","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"description":{"type":"text"},"images":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"featured_image":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":true,"pluginOptions":{}},"object":{"via":"products","model":"object"},"visible":{"type":"boolean","default":true},"category":{"type":"string"},"prices":{"type":"json"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
6	model_def_application::object.object	{"uid":"application::object.object","collectionName":"objects","kind":"collectionType","info":{"name":"Object","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"description":{"type":"text","required":false},"address":{"type":"text","required":true},"youtube":{"type":"string"},"contact":{"type":"component","repeatable":false,"component":"array.contact"},"users_permissions_user":{"via":"objects","plugin":"users-permissions","model":"user"},"featured_image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"images":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"slideshow":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"type":{"type":"string","required":true},"slug":{"type":"uid","targetField":"name"},"facility":{"type":"json"},"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"products":{"via":"object","collection":"product","isVirtual":true},"packages":{"via":"object","collection":"package","isVirtual":true},"rooms":{"via":"object","collection":"room","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
18	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
50	plugin_content_manager_configuration_content_types::application::payment.payment	{"uid":"application::payment.payment","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"fee":{"edit":{"label":"Fee","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fee","searchable":true,"sortable":true}},"qr":{"edit":{"label":"Qr","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Qr","searchable":false,"sortable":false}},"BRI":{"edit":{"label":"BRI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BRI","searchable":false,"sortable":false}},"MANDIRI":{"edit":{"label":"MANDIRI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MANDIRI","searchable":false,"sortable":false}},"BCA":{"edit":{"label":"BCA","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BCA","searchable":false,"sortable":false}},"BNI":{"edit":{"label":"BNI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BNI","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","fee","qr","created_at"],"edit":[[{"name":"fee","size":4},{"name":"qr","size":6}],[{"name":"BRI","size":12}],[{"name":"MANDIRI","size":12}],[{"name":"BCA","size":12}],[{"name":"BNI","size":12}]],"editRelations":[]}}	object		
49	plugin_content_manager_configuration_components::array.address	{"uid":"array.address","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"line1","defaultSortBy":"line1","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"line1":{"edit":{"label":"Line1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Line1","searchable":true,"sortable":true}},"city":{"edit":{"label":"City","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"City","searchable":true,"sortable":true}},"postcode":{"edit":{"label":"Postcode","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Postcode","searchable":true,"sortable":true}}},"layouts":{"list":["id","line1","city","postcode"],"edit":[[{"name":"line1","size":6},{"name":"city","size":6}],[{"name":"postcode","size":6}]],"editRelations":[]},"isComponent":true}	object		
46	model_def_array.address	{"uid":"array.address","collectionName":"components_array_addresses","info":{"name":"address","icon":"address-book"},"options":{"timestamps":false},"attributes":{"line1":{"type":"string"},"city":{"type":"string"},"postcode":{"type":"string"}}}	object	\N	\N
48	model_def_application::room.room	{"uid":"application::room.room","collectionName":"rooms","kind":"collectionType","info":{"name":"Room","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"price":{"type":"integer","required":true},"gallery":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"object":{"model":"object","via":"rooms"},"available":{"type":"date"},"bookings":{"via":"room","collection":"booking","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
51	plugin_content_manager_configuration_content_types::application::room.room	{"uid":"application::room.room","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"gallery":{"edit":{"label":"Gallery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gallery","searchable":false,"sortable":false}},"object":{"edit":{"label":"Object","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Object","searchable":true,"sortable":true}},"available":{"edit":{"label":"Available","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Available","searchable":true,"sortable":true}},"bookings":{"edit":{"label":"Bookings","description":"","placeholder":"","visible":true,"editable":true,"mainField":"phone"},"list":{"label":"Bookings","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","price","gallery"],"edit":[[{"name":"name","size":6},{"name":"price","size":4}],[{"name":"gallery","size":6},{"name":"available","size":4}]],"editRelations":["object","bookings"]}}	object		
15	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2021-11-25 04:34:17.597+01	2021-11-25 04:34:17.597+01
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objects (id, name, description, address, youtube, users_permissions_user, type, slug, facility, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Puncak Asmoro	Puncak Asmoro merupakan tempat wisata yang berada di wilayah perbukitan, sehingga pengunjung bisa melihat pemandangan 3 gunung yang mengelilingi Banyuwangi serta selat Bali. Puncak Asmoro ini terletak di Kacangan Asri, Gombeng, Gombengsari, Kalipuro, Kabupaten Banyuwangi.	Kacangan Asri, Gombeng, Gombengsari, Kec. Kalipuro, Kabupaten Banyuwangi, Jawa Timur 68455	https://youtube.com/embed/17MjE9ogXps	\N	Wisata Alam	puncak-asmoro	["Spot Foto"]	\N	\N	2021-11-26 03:38:28.971+01	2021-12-07 19:51:28.029+01
6	Tore Kopi	Kopi Tore adalah usaha yang didirikan Bapak Ega Bruryantoro sejak Desember 2016. Nama Tore diambil dari bahasa Madura yang artinya 'Silahkan', maksud dari nama tersebut yaitu untuk mempersilahkan pengunjung untuk menikmati kopi pada usaha tersebut. Awalnya, usaha ini dibuat untuk tempat istirahat bagi para tamu yang berkunjung di tempat wisata daerah tersebut, namun seiring berjalannya waktu mulai dibuka kedai kopi yang kemudian menjual beberapa jenis bubuk kopi dan beberapa produk lainny	Lingkungan Lerek RT. 02 RW.02 Kel. Gombengsari Kec. Kalipuro Kab. Banyuwangi 68455	https://youtube.com/embed/PJilRZuFlU0	8	UMKM	tore-kopi	\N	\N	\N	2021-11-26 07:48:31.658+01	2021-12-07 21:27:48.019+01
4	Suwandi Coffee	Kopi suwandi merupakan UMKM yang dipimpin oleh Bapak Mohammad Suwandi. UMKM ini memulai produksinya sejak tahun 2006 sebagai supplier kopi Surabaya grup dan memulai self-branding dalam kelompok asosiasi pada tahun 2009. Produk greenbean yang di produksi UMKM ini biasa dijual dengan packing minimum 80kg. Sedangkan Kopi roasting dijual dengan kemasan minimal 1kg dan kopi bubuk di jual dengan kemasan 200-500gr. Dalam setahun, UMKM Suwandi dapat mengirim lebih dari 8 ton kopi, dengan sekali pengiriman yang dapat mencapai jumlah 3 ton.	Lingkungan Gombeng RT.02 RW.03 Kel. Gombengsari Kec. Kalipuro Kab. Banyuwangi	https://youtube.com/embed/HVrKJtWP2wk	\N	UMKM	suwandi-coffee	\N	\N	\N	2021-11-26 04:15:19.947+01	2021-12-07 21:28:32.847+01
7	Estoh Kopi	Estoh kopi merupakan salah satu UMKM yang bergelut di dunia kopi. Diawali dari pengalaman bapak Busana sebagai pemilik usaha yang sedari kecil terbiasa hidup di lingkungan perkebunan kopi. Usaha ini didirikan sejak tahun 2014. Produk yang dihasilkan berupa Greenbean, Kopi Roastin dan Bubuk Kopi dengan salah satu produk unik yaitu Kopi Rempah.	Lingkungan Suko RT.01 RW.01 Kel. Gombengsari Kec. Kalipuro Kab. Banyuwangi 68455		\N	UMKM	estoh-kopi	\N	\N	\N	2021-11-26 09:08:42.008+01	2021-12-07 21:28:54.046+01
5	Peno Homestay	Homestay bergaya modern di kawasan Gombengsari. Kamar tersedia dengan sarapan yang disediakan. Rumah Peno terletak di Gombengsari. Fasilitas lainnya termasuk kamar mandi dalam, ruang tamu, TV, dengan pemandangan sungai dan perkebunan kopi.	Jl. Samarinda, Gombeng, Gombengsari, Kec. Kalipuro, Kabupaten Banyuwangi, Jawa Timur 68455	https://youtube.com/embed/_ilT3LN0t6o	\N	Penginapan	peno-homestay	["Parkir Gratis", "Resepsionis 24 jam", "Lemari es", "Ruang makan", "Wi-Fi gratis", "Televisi", "Dapur Kecil"]	\N	\N	2021-11-26 07:31:05.754+01	2021-12-07 19:44:36.395+01
3	Air Terjun Goa Pengantin	Air Terjun Goa Pengantin, merupakan salah satu objek wisata yang dapat ditemukan di desa Gombengsari. Keunikan objek wisata ini dapat dilihat dari Goa yang terletak dibalik kedua air terjun tersebut.\nAir Terjun Goa Pengantin memiliki kesan damai dan menenangkan, sehingga akan sangat cocok dikunjungi saat sedang merasa bosan atau gundah.	Suko, Gombengsari, Kalipuro, Kabupaten Banyuwangi	https://youtube.com/embed/17MjE9ogXps	6	Wisata Alam	air-terjun-goa-pengantin	["Spot Foto"]	\N	\N	2021-11-26 03:52:53.528+01	2021-12-07 19:54:15.631+01
2	Sumber Manis	Sumber manis adalah salah satu wisata yang terletak pada daerah Gombengsari. Konsep yang diterapkan pada objek wisata ini berupa Camping Ground dengan dikelilingi hutan rindang dan berbagai keindahan alam yang diolah sedemikian rupa oleh warga sekitar sehingga menimbulkan kesan menarik dan menyenangkan.\nWisata ini cocok didatangi sebagai tempat kemah, piknik keluarga atau sekedar berjalan-jalan santai sembari menikmati keindahan alam dan udara segar.	Gombeng, Gombengsari, Kec. Kalipuro, Kabupaten Banyuwangi, Jawa Timur 68455	https://youtube.com/embed/17MjE9ogXps	\N	Wisata Alam	sumber-manis	["Spot Foto"]	\N	\N	2021-11-26 03:44:24.528+01	2021-12-07 20:21:49.872+01
8	Kopi Gombengsari	Warung Soffy merupakan usaha yang didirikan oleh Bapak Abdurrahman sejak tahun 2021. Selain memproduksi makanan Khas Gombengsari adajuda produk oleh-oleh seperti kopi, keripik, Bagiak, dll. Menu utama pada usaha ini adalah Rujak Soto, Nasi Tempong, dan Nasi Sabreng (Nasi Singkong) yang merupakan makanan tradisional yang biasa menjadi konsumsi umum leluhur daerah tersebut. Salah satu menu unik dalam usaha ini adalah Degan Goreng dan Kucur Kopi. Degan goreng merupakan Makanan yang terbuat dari olahan daging kelapa yang notabene dinikmati sebagai minuman. Sedangkan Kucur Kopi memiliki keunikan dari sisi cita rasa yang berbeda dibandingkan kucur produksi tempat lain dengan menambahkan rasa kopi pada adonannya.	Lingkungan Kacangan Asri-Gombengsari	https://youtube.com/embed/nkDDwnyJ20E	10	UMKM	kopi-gombengsari	\N	\N	\N	2021-12-07 08:31:51.288+01	2021-12-07 21:23:10.979+01
10	Aaaa	Sony	Bbb		19	Travel	aaaa	\N	\N	\N	2021-12-21 04:35:50.401+01	2021-12-21 04:35:50.423+01
9	Kopi Lego	Kopi Lego merupakan produk kopi yang di produksi di daerah lerek gombengsari, menjual\nproduk kopi berupa greenbean, roasting dan bubuk.\nKopi Lego dikelola oleh Bapak Haryono atau akrab disebut pak HO. Selain produk kopi, beliau\njuga mem produksi susu kambing yang kemudian akan diolah untuk menjadi bahan\ncampuran minuman kopi, yaitu Kopsu Kambing.	Gombengsari, Kec. Kalipuro, Kabupaten Banyuwangi, Jawa Timur 68455	https://youtube.com/embed/PUzwX2TJ62g	17	UMKM	kopi-lego	\N	\N	\N	2021-12-07 21:35:58.387+01	2021-12-21 04:55:26.421+01
\.


--
-- Data for Name: objects_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objects_components (id, field, "order", component_type, component_id, object_id) FROM stdin;
1	contact	1	components_array_contacts	1	1
2	contact	1	components_array_contacts	2	2
3	contact	1	components_array_contacts	3	3
4	contact	1	components_array_contacts	4	4
5	contact	1	components_array_contacts	5	5
6	contact	1	components_array_contacts	6	6
7	contact	1	components_array_contacts	7	7
8	contact	1	components_array_contacts	8	8
9	contact	1	components_array_contacts	9	9
10	contact	1	components_array_contacts	10	10
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, items, created_by, updated_by, created_at, updated_at, resi, ongkir, status, name, phone, fee, users_permissions_user) FROM stdin;
22	[{"qty": 1, "product": {"id": 10, "name": "Kopi Lanang", "images": [{"id": 154, "ext": ".JPG", "url": "/uploads/IMG_3624_b0495cc720.JPG", "hash": "IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "IMG_3624.JPG", "size": 7333.45, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3624_b0495cc720.JPG", "hash": "large_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "large_IMG_3624.JPG", "path": null, "size": 73.82, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3624_b0495cc720.JPG", "hash": "small_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "small_IMG_3624.JPG", "path": null, "size": 39.17, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3624_b0495cc720.JPG", "hash": "medium_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "medium_IMG_3624.JPG", "path": null, "size": 53.71, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3624_b0495cc720.JPG", "hash": "thumbnail_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "thumbnail_IMG_3624.JPG", "path": null, "size": 28.18, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:39:34.035Z", "previewUrl": null, "updated_at": "2021-12-07T22:39:34.035Z", "alternativeText": null, "provider_metadata": null}, {"id": 155, "ext": ".JPG", "url": "/uploads/IMG_3625_c80fdb1a9c.JPG", "hash": "IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "IMG_3625.JPG", "size": 6836.28, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3625_c80fdb1a9c.JPG", "hash": "large_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "large_IMG_3625.JPG", "path": null, "size": 69.29, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3625_c80fdb1a9c.JPG", "hash": "small_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "small_IMG_3625.JPG", "path": null, "size": 38.64, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3625_c80fdb1a9c.JPG", "hash": "medium_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "medium_IMG_3625.JPG", "path": null, "size": 52.02, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3625_c80fdb1a9c.JPG", "hash": "thumbnail_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "thumbnail_IMG_3625.JPG", "path": null, "size": 28.25, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:39:34.046Z", "previewUrl": null, "updated_at": "2021-12-07T22:39:34.046Z", "alternativeText": null, "provider_metadata": null}, {"id": 157, "ext": ".JPG", "url": "/uploads/IMG_3623_3dc4b165bc.JPG", "hash": "IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "IMG_3623.JPG", "size": 7453.09, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3623_3dc4b165bc.JPG", "hash": "large_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "large_IMG_3623.JPG", "path": null, "size": 81.69, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3623_3dc4b165bc.JPG", "hash": "small_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "small_IMG_3623.JPG", "path": null, "size": 41.59, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3623_3dc4b165bc.JPG", "hash": "medium_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "medium_IMG_3623.JPG", "path": null, "size": 58.47, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3623_3dc4b165bc.JPG", "hash": "thumbnail_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "thumbnail_IMG_3623.JPG", "path": null, "size": 29.01, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:39:34.166Z", "previewUrl": null, "updated_at": "2021-12-07T22:39:34.166Z", "alternativeText": null, "provider_metadata": null}, {"id": 163, "ext": ".JPG", "url": "/uploads/200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "200gr 40rb lanang.JPG", "size": 9129.42, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "large_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "large_200gr 40rb lanang.JPG", "path": null, "size": 97.8, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "small_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "small_200gr 40rb lanang.JPG", "path": null, "size": 47.98, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "medium_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "medium_200gr 40rb lanang.JPG", "path": null, "size": 69.28, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "thumbnail_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "thumbnail_200gr 40rb lanang.JPG", "path": null, "size": 31.82, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:42:09.176Z", "previewUrl": null, "updated_at": "2021-12-07T22:42:09.176Z", "alternativeText": null, "provider_metadata": null}, {"id": 164, "ext": ".JPG", "url": "/uploads/IMG_3629_f063bc9868.JPG", "hash": "IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "IMG_3629.JPG", "size": 9183.5, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3629_f063bc9868.JPG", "hash": "large_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "large_IMG_3629.JPG", "path": null, "size": 93.94, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3629_f063bc9868.JPG", "hash": "small_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "small_IMG_3629.JPG", "path": null, "size": 46.39, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3629_f063bc9868.JPG", "hash": "medium_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "medium_IMG_3629.JPG", "path": null, "size": 66.55, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3629_f063bc9868.JPG", "hash": "thumbnail_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "thumbnail_IMG_3629.JPG", "path": null, "size": 31.25, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:42:09.180Z", "previewUrl": null, "updated_at": "2021-12-07T22:42:09.180Z", "alternativeText": null, "provider_metadata": null}, {"id": 165, "ext": ".JPG", "url": "/uploads/IMG_3628_4a582755b4.JPG", "hash": "IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "IMG_3628.JPG", "size": 8854.11, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3628_4a582755b4.JPG", "hash": "large_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "large_IMG_3628.JPG", "path": null, "size": 87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3628_4a582755b4.JPG", "hash": "small_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "small_IMG_3628.JPG", "path": null, "size": 44.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3628_4a582755b4.JPG", "hash": "medium_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "medium_IMG_3628.JPG", "path": null, "size": 62.76, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3628_4a582755b4.JPG", "hash": "thumbnail_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "thumbnail_IMG_3628.JPG", "path": null, "size": 30.83, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:42:09.325Z", "previewUrl": null, "updated_at": "2021-12-07T22:42:09.325Z", "alternativeText": null, "provider_metadata": null}, {"id": 169, "ext": ".JPG", "url": "/uploads/500_gr_75rb_lanang_14d6672460.JPG", "hash": "500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "500 gr 75rb lanang.JPG", "size": 7860.89, "width": 6000, "height": 3368, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_500_gr_75rb_lanang_14d6672460.JPG", "hash": "large_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "large_500 gr 75rb lanang.JPG", "path": null, "size": 108.51, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_500_gr_75rb_lanang_14d6672460.JPG", "hash": "small_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "small_500 gr 75rb lanang.JPG", "path": null, "size": 52.15, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_500_gr_75rb_lanang_14d6672460.JPG", "hash": "medium_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "medium_500 gr 75rb lanang.JPG", "path": null, "size": 76.96, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_500_gr_75rb_lanang_14d6672460.JPG", "hash": "thumbnail_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "thumbnail_500 gr 75rb lanang.JPG", "path": null, "size": 33.06, "width": 245, "height": 138}}, "provider": "local", "created_at": "2021-12-07T22:45:54.791Z", "previewUrl": null, "updated_at": "2021-12-07T22:45:54.791Z", "alternativeText": null, "provider_metadata": null}, {"id": 170, "ext": ".JPG", "url": "/uploads/IMG_3612_e3104cd553.JPG", "hash": "IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "IMG_3612.JPG", "size": 9220.14, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3612_e3104cd553.JPG", "hash": "large_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "large_IMG_3612.JPG", "path": null, "size": 129.68, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3612_e3104cd553.JPG", "hash": "small_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "small_IMG_3612.JPG", "path": null, "size": 59.56, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3612_e3104cd553.JPG", "hash": "medium_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "medium_IMG_3612.JPG", "path": null, "size": 90.5, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3612_e3104cd553.JPG", "hash": "thumbnail_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "thumbnail_IMG_3612.JPG", "path": null, "size": 35.37, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:45:54.816Z", "previewUrl": null, "updated_at": "2021-12-07T22:45:54.816Z", "alternativeText": null, "provider_metadata": null}, {"id": 171, "ext": ".JPG", "url": "/uploads/IMG_3613_2943e17994.JPG", "hash": "IMG_3613_2943e17994", "mime": "image/jpeg", "name": "IMG_3613.JPG", "size": 9098.45, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3613_2943e17994.JPG", "hash": "large_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "large_IMG_3613.JPG", "path": null, "size": 121.4, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3613_2943e17994.JPG", "hash": "small_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "small_IMG_3613.JPG", "path": null, "size": 56.87, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3613_2943e17994.JPG", "hash": "medium_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "medium_IMG_3613.JPG", "path": null, "size": 85.03, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3613_2943e17994.JPG", "hash": "thumbnail_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "thumbnail_IMG_3613.JPG", "path": null, "size": 34.58, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:45:54.910Z", "previewUrl": null, "updated_at": "2021-12-07T22:45:54.910Z", "alternativeText": null, "provider_metadata": null}], "object": {"id": 8, "logo": {"id": 135, "ext": ".jpeg", "url": "/uploads/logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "logo umkm gombengsari.jpeg", "size": 311.28, "width": 1496, "height": 1372, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "large_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "large_logo umkm gombengsari.jpeg", "path": null, "size": 190.32, "width": 1000, "height": 917}, "small": {"ext": ".jpeg", "url": "/uploads/small_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "small_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "small_logo umkm gombengsari.jpeg", "path": null, "size": 58.29, "width": 500, "height": 459}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "medium_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "medium_logo umkm gombengsari.jpeg", "path": null, "size": 117.51, "width": 750, "height": 688}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "thumbnail_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "thumbnail_logo umkm gombengsari.jpeg", "path": null, "size": 9.24, "width": 170, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:31:51.491Z", "previewUrl": null, "updated_at": "2021-12-07T07:31:51.491Z", "alternativeText": null, "provider_metadata": null}, "name": "Kopi Gombengsari", "slug": "kopi-gombengsari", "type": "UMKM", "images": [{"id": 142, "ext": ".JPG", "url": "/uploads/IMG_3366_0b7808cee6.JPG", "hash": "IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "IMG_3366.JPG", "size": 8831.64, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3366_0b7808cee6.JPG", "hash": "large_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "large_IMG_3366.JPG", "path": null, "size": 136.79, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3366_0b7808cee6.JPG", "hash": "small_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "small_IMG_3366.JPG", "path": null, "size": 62.78, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3366_0b7808cee6.JPG", "hash": "medium_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "medium_IMG_3366.JPG", "path": null, "size": 95.49, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3366_0b7808cee6.JPG", "hash": "thumbnail_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "thumbnail_IMG_3366.JPG", "path": null, "size": 36.67, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.180Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.180Z", "alternativeText": null, "provider_metadata": null}, {"id": 141, "ext": ".JPG", "url": "/uploads/IMG_3368_39cc4a7231.JPG", "hash": "IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "IMG_3368.JPG", "size": 7817.27, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3368_39cc4a7231.JPG", "hash": "large_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "large_IMG_3368.JPG", "path": null, "size": 94.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3368_39cc4a7231.JPG", "hash": "small_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "small_IMG_3368.JPG", "path": null, "size": 52.19, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3368_39cc4a7231.JPG", "hash": "medium_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "medium_IMG_3368.JPG", "path": null, "size": 71.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3368_39cc4a7231.JPG", "hash": "thumbnail_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "thumbnail_IMG_3368.JPG", "path": null, "size": 35.07, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.158Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.158Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}, {"id": 144, "ext": ".JPG", "url": "/uploads/IMG_3369_a290155a71.JPG", "hash": "IMG_3369_a290155a71", "mime": "image/jpeg", "name": "IMG_3369.JPG", "size": 7810.87, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3369_a290155a71.JPG", "hash": "large_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "large_IMG_3369.JPG", "path": null, "size": 93.11, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3369_a290155a71.JPG", "hash": "small_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "small_IMG_3369.JPG", "path": null, "size": 50.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3369_a290155a71.JPG", "hash": "medium_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "medium_IMG_3369.JPG", "path": null, "size": 69.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3369_a290155a71.JPG", "hash": "thumbnail_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "thumbnail_IMG_3369.JPG", "path": null, "size": 33.81, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.267Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.267Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}], "address": "Lingkungan Kacangan Asri-Gombengsari", "contact": {"id": 8, "name": "Abdurrahman", "email": "rohman1234@gmail.com", "phone": "085257790583", "address": "Lingkungan Kacangan Asri"}, "youtube": "https://youtube.com/embed/nkDDwnyJ20E", "facility": null, "slideshow": [{"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}], "created_at": "2021-12-07T07:31:51.288Z", "updated_at": "2021-12-07T20:23:10.979Z", "description": "Warung Soffy merupakan usaha yang didirikan oleh Bapak Abdurrahman sejak tahun 2021. Selain memproduksi makanan Khas Gombengsari adajuda produk oleh-oleh seperti kopi, keripik, Bagiak, dll. Menu utama pada usaha ini adalah Rujak Soto, Nasi Tempong, dan Nasi Sabreng (Nasi Singkong) yang merupakan makanan tradisional yang biasa menjadi konsumsi umum leluhur daerah tersebut. Salah satu menu unik dalam usaha ini adalah Degan Goreng dan Kucur Kopi. Degan goreng merupakan Makanan yang terbuat dari olahan daging kelapa yang notabene dinikmati sebagai minuman. Sedangkan Kucur Kopi memiliki keunikan dari sisi cita rasa yang berbeda dibandingkan kucur produksi tempat lain dengan menambahkan rasa kopi pada adonannya.", "featured_image": null, "users_permissions_user": 10}, "prices": [{"fee": 2000, "price": 20000, "variation": "100g"}, {"fee": 2000, "price": 40000, "variation": "200g"}, {"fee": 2500, "price": 75000, "variation": "500g"}], "visible": true, "category": "Perkebunan", "created_at": "2021-12-07T22:39:31.990Z", "updated_at": "2021-12-07T22:45:54.198Z", "description": "", "featured_image": {"id": 156, "ext": ".JPG", "url": "/uploads/100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "100 gr 20rb lanang.JPG", "size": 7329.62, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "large_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "large_100 gr 20rb lanang.JPG", "path": null, "size": 80.62, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "small_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "small_100 gr 20rb lanang.JPG", "path": null, "size": 41.93, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "medium_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "medium_100 gr 20rb lanang.JPG", "path": null, "size": 58.32, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "thumbnail_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "thumbnail_100 gr 20rb lanang.JPG", "path": null, "size": 29.22, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:39:34.051Z", "previewUrl": null, "updated_at": "2021-12-07T22:39:34.051Z", "alternativeText": null, "provider_metadata": null}}, "variation": {"fee": 2000, "price": 20000, "variation": "100g"}, "users_permissions_user": 5}]	\N	\N	2021-12-17 10:59:20.226+01	2021-12-17 11:07:37.408+01	\N	6000	canceled	Faruk Alfiyan	012345678910	5000	5
14	[{"qty": 2, "product": {"id": 11, "name": "Kopi Original", "images": [{"id": 159, "ext": ".JPG", "url": "/uploads/IMG_3617_9f52fc8388.JPG", "hash": "IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "IMG_3617.JPG", "size": 7451.93, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3617_9f52fc8388.JPG", "hash": "large_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "large_IMG_3617.JPG", "path": null, "size": 90.7, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3617_9f52fc8388.JPG", "hash": "small_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "small_IMG_3617.JPG", "path": null, "size": 44.25, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3617_9f52fc8388.JPG", "hash": "medium_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "medium_IMG_3617.JPG", "path": null, "size": 64.08, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3617_9f52fc8388.JPG", "hash": "thumbnail_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "thumbnail_IMG_3617.JPG", "path": null, "size": 30.07, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:41:01.461Z", "previewUrl": null, "updated_at": "2021-12-07T22:41:01.461Z", "alternativeText": null, "provider_metadata": null}, {"id": 158, "ext": ".JPG", "url": "/uploads/IMG_3619_1a33b5eef0.JPG", "hash": "IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "IMG_3619.JPG", "size": 7504.37, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3619_1a33b5eef0.JPG", "hash": "large_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "large_IMG_3619.JPG", "path": null, "size": 99.95, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3619_1a33b5eef0.JPG", "hash": "small_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "small_IMG_3619.JPG", "path": null, "size": 45.81, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3619_1a33b5eef0.JPG", "hash": "medium_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "medium_IMG_3619.JPG", "path": null, "size": 69.01, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3619_1a33b5eef0.JPG", "hash": "thumbnail_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "thumbnail_IMG_3619.JPG", "path": null, "size": 30.02, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:41:01.461Z", "previewUrl": null, "updated_at": "2021-12-07T22:41:01.461Z", "alternativeText": null, "provider_metadata": null}, {"id": 162, "ext": ".JPG", "url": "/uploads/IMG_3618_cd7e223d53.JPG", "hash": "IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "IMG_3618.JPG", "size": 7765.05, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3618_cd7e223d53.JPG", "hash": "large_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "large_IMG_3618.JPG", "path": null, "size": 91, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3618_cd7e223d53.JPG", "hash": "small_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "small_IMG_3618.JPG", "path": null, "size": 43.71, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3618_cd7e223d53.JPG", "hash": "medium_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "medium_IMG_3618.JPG", "path": null, "size": 63.68, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3618_cd7e223d53.JPG", "hash": "thumbnail_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "thumbnail_IMG_3618.JPG", "path": null, "size": 29.69, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:41:01.548Z", "previewUrl": null, "updated_at": "2021-12-07T22:41:01.548Z", "alternativeText": null, "provider_metadata": null}, {"id": 166, "ext": ".JPG", "url": "/uploads/200gr_35rb_ori_5a53be36ee.JPG", "hash": "200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "200gr 35rb ori.JPG", "size": 8355.22, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_200gr_35rb_ori_5a53be36ee.JPG", "hash": "large_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "large_200gr 35rb ori.JPG", "path": null, "size": 80.69, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_200gr_35rb_ori_5a53be36ee.JPG", "hash": "small_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "small_200gr 35rb ori.JPG", "path": null, "size": 43.11, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_200gr_35rb_ori_5a53be36ee.JPG", "hash": "medium_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "medium_200gr 35rb ori.JPG", "path": null, "size": 59.66, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_200gr_35rb_ori_5a53be36ee.JPG", "hash": "thumbnail_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "thumbnail_200gr 35rb ori.JPG", "path": null, "size": 30.12, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:43:16.113Z", "previewUrl": null, "updated_at": "2021-12-07T22:43:16.113Z", "alternativeText": null, "provider_metadata": null}, {"id": 167, "ext": ".JPG", "url": "/uploads/IMG_3631_311f75c578.JPG", "hash": "IMG_3631_311f75c578", "mime": "image/jpeg", "name": "IMG_3631.JPG", "size": 8362.66, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3631_311f75c578.JPG", "hash": "large_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "large_IMG_3631.JPG", "path": null, "size": 81.24, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3631_311f75c578.JPG", "hash": "small_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "small_IMG_3631.JPG", "path": null, "size": 43.29, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3631_311f75c578.JPG", "hash": "medium_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "medium_IMG_3631.JPG", "path": null, "size": 59.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3631_311f75c578.JPG", "hash": "thumbnail_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "thumbnail_IMG_3631.JPG", "path": null, "size": 30.23, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:43:16.263Z", "previewUrl": null, "updated_at": "2021-12-07T22:43:16.263Z", "alternativeText": null, "provider_metadata": null}, {"id": 172, "ext": ".JPG", "url": "/uploads/500gr_50_rb_original_c167aa0d7f.JPG", "hash": "500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "500gr 50 rb original.JPG", "size": 8831.03, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "large_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "large_500gr 50 rb original.JPG", "path": null, "size": 114.68, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "small_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "small_500gr 50 rb original.JPG", "path": null, "size": 54.79, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "medium_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "medium_500gr 50 rb original.JPG", "path": null, "size": 81.21, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "thumbnail_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "thumbnail_500gr 50 rb original.JPG", "path": null, "size": 33.92, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:47:16.970Z", "previewUrl": null, "updated_at": "2021-12-07T22:47:16.970Z", "alternativeText": null, "provider_metadata": null}, {"id": 173, "ext": ".JPG", "url": "/uploads/IMG_3615_fad6710f12.JPG", "hash": "IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "IMG_3615.JPG", "size": 8626.55, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3615_fad6710f12.JPG", "hash": "large_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "large_IMG_3615.JPG", "path": null, "size": 112.12, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3615_fad6710f12.JPG", "hash": "small_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "small_IMG_3615.JPG", "path": null, "size": 54.6, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3615_fad6710f12.JPG", "hash": "medium_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "medium_IMG_3615.JPG", "path": null, "size": 79.92, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3615_fad6710f12.JPG", "hash": "thumbnail_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "thumbnail_IMG_3615.JPG", "path": null, "size": 34.06, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:47:17.102Z", "previewUrl": null, "updated_at": "2021-12-07T22:47:17.102Z", "alternativeText": null, "provider_metadata": null}], "object": {"id": 8, "logo": {"id": 135, "ext": ".jpeg", "url": "/uploads/logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "logo umkm gombengsari.jpeg", "size": 311.28, "width": 1496, "height": 1372, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "large_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "large_logo umkm gombengsari.jpeg", "path": null, "size": 190.32, "width": 1000, "height": 917}, "small": {"ext": ".jpeg", "url": "/uploads/small_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "small_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "small_logo umkm gombengsari.jpeg", "path": null, "size": 58.29, "width": 500, "height": 459}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "medium_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "medium_logo umkm gombengsari.jpeg", "path": null, "size": 117.51, "width": 750, "height": 688}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "thumbnail_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "thumbnail_logo umkm gombengsari.jpeg", "path": null, "size": 9.24, "width": 170, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:31:51.491Z", "previewUrl": null, "updated_at": "2021-12-07T07:31:51.491Z", "alternativeText": null, "provider_metadata": null}, "name": "Kopi Gombengsari", "slug": "kopi-gombengsari", "type": "UMKM", "images": [{"id": 142, "ext": ".JPG", "url": "/uploads/IMG_3366_0b7808cee6.JPG", "hash": "IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "IMG_3366.JPG", "size": 8831.64, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3366_0b7808cee6.JPG", "hash": "large_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "large_IMG_3366.JPG", "path": null, "size": 136.79, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3366_0b7808cee6.JPG", "hash": "small_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "small_IMG_3366.JPG", "path": null, "size": 62.78, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3366_0b7808cee6.JPG", "hash": "medium_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "medium_IMG_3366.JPG", "path": null, "size": 95.49, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3366_0b7808cee6.JPG", "hash": "thumbnail_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "thumbnail_IMG_3366.JPG", "path": null, "size": 36.67, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.180Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.180Z", "alternativeText": null, "provider_metadata": null}, {"id": 141, "ext": ".JPG", "url": "/uploads/IMG_3368_39cc4a7231.JPG", "hash": "IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "IMG_3368.JPG", "size": 7817.27, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3368_39cc4a7231.JPG", "hash": "large_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "large_IMG_3368.JPG", "path": null, "size": 94.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3368_39cc4a7231.JPG", "hash": "small_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "small_IMG_3368.JPG", "path": null, "size": 52.19, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3368_39cc4a7231.JPG", "hash": "medium_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "medium_IMG_3368.JPG", "path": null, "size": 71.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3368_39cc4a7231.JPG", "hash": "thumbnail_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "thumbnail_IMG_3368.JPG", "path": null, "size": 35.07, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.158Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.158Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}, {"id": 144, "ext": ".JPG", "url": "/uploads/IMG_3369_a290155a71.JPG", "hash": "IMG_3369_a290155a71", "mime": "image/jpeg", "name": "IMG_3369.JPG", "size": 7810.87, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3369_a290155a71.JPG", "hash": "large_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "large_IMG_3369.JPG", "path": null, "size": 93.11, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3369_a290155a71.JPG", "hash": "small_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "small_IMG_3369.JPG", "path": null, "size": 50.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3369_a290155a71.JPG", "hash": "medium_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "medium_IMG_3369.JPG", "path": null, "size": 69.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3369_a290155a71.JPG", "hash": "thumbnail_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "thumbnail_IMG_3369.JPG", "path": null, "size": 33.81, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.267Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.267Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}], "address": "Lingkungan Kacangan Asri-Gombengsari", "contact": {"id": 8, "name": "Abdurrahman", "email": "rohman1234@gmail.com", "phone": "085257790583", "address": "Lingkungan Kacangan Asri"}, "youtube": "https://youtube.com/embed/nkDDwnyJ20E", "facility": null, "slideshow": [{"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}], "created_at": "2021-12-07T07:31:51.288Z", "updated_at": "2021-12-07T20:23:10.979Z", "description": "Warung Soffy merupakan usaha yang didirikan oleh Bapak Abdurrahman sejak tahun 2021. Selain memproduksi makanan Khas Gombengsari adajuda produk oleh-oleh seperti kopi, keripik, Bagiak, dll. Menu utama pada usaha ini adalah Rujak Soto, Nasi Tempong, dan Nasi Sabreng (Nasi Singkong) yang merupakan makanan tradisional yang biasa menjadi konsumsi umum leluhur daerah tersebut. Salah satu menu unik dalam usaha ini adalah Degan Goreng dan Kucur Kopi. Degan goreng merupakan Makanan yang terbuat dari olahan daging kelapa yang notabene dinikmati sebagai minuman. Sedangkan Kucur Kopi memiliki keunikan dari sisi cita rasa yang berbeda dibandingkan kucur produksi tempat lain dengan menambahkan rasa kopi pada adonannya.", "featured_image": null, "users_permissions_user": 10}, "prices": [{"fee": 2000, "price": 17500, "variation": "100g"}, {"fee": 2000, "price": 35000, "variation": "200g"}, {"fee": 2500, "price": 50000, "variation": "500g"}], "visible": true, "category": "Perkebunan", "created_at": "2021-12-07T22:41:00.239Z", "updated_at": "2021-12-07T22:47:16.529Z", "description": "", "featured_image": {"id": 160, "ext": ".JPG", "url": "/uploads/100gr_17_500_original_8b8166c2c4.JPG", "hash": "100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "100gr 17.500 original.JPG", "size": 8457.26, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_100gr_17_500_original_8b8166c2c4.JPG", "hash": "large_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "large_100gr 17.500 original.JPG", "path": null, "size": 77.55, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_100gr_17_500_original_8b8166c2c4.JPG", "hash": "small_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "small_100gr 17.500 original.JPG", "path": null, "size": 39.72, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_100gr_17_500_original_8b8166c2c4.JPG", "hash": "medium_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "medium_100gr 17.500 original.JPG", "path": null, "size": 55.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_100gr_17_500_original_8b8166c2c4.JPG", "hash": "thumbnail_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "thumbnail_100gr 17.500 original.JPG", "path": null, "size": 28.2, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:41:01.458Z", "previewUrl": null, "updated_at": "2021-12-07T22:41:01.458Z", "alternativeText": null, "provider_metadata": null}}, "variation": {"fee": 2000, "price": 17500, "variation": "100g"}, "users_permissions_user": 12}]	\N	\N	2021-12-08 08:27:39.321+01	2021-12-10 04:34:30.306+01	0	6000	sent	Safii	085230821527	5000	12
19	[{"qty": 1, "product": {"id": 12, "name": "Kopi Excelsa", "images": [], "object": {"id": 8, "logo": {"id": 135, "ext": ".jpeg", "url": "/uploads/logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "logo umkm gombengsari.jpeg", "size": 311.28, "width": 1496, "height": 1372, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "large_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "large_logo umkm gombengsari.jpeg", "path": null, "size": 190.32, "width": 1000, "height": 917}, "small": {"ext": ".jpeg", "url": "/uploads/small_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "small_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "small_logo umkm gombengsari.jpeg", "path": null, "size": 58.29, "width": 500, "height": 459}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "medium_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "medium_logo umkm gombengsari.jpeg", "path": null, "size": 117.51, "width": 750, "height": 688}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "thumbnail_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "thumbnail_logo umkm gombengsari.jpeg", "path": null, "size": 9.24, "width": 170, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:31:51.491Z", "previewUrl": null, "updated_at": "2021-12-07T07:31:51.491Z", "alternativeText": null, "provider_metadata": null}, "name": "Kopi Gombengsari", "slug": "kopi-gombengsari", "type": "UMKM", "images": [{"id": 142, "ext": ".JPG", "url": "/uploads/IMG_3366_0b7808cee6.JPG", "hash": "IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "IMG_3366.JPG", "size": 8831.64, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3366_0b7808cee6.JPG", "hash": "large_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "large_IMG_3366.JPG", "path": null, "size": 136.79, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3366_0b7808cee6.JPG", "hash": "small_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "small_IMG_3366.JPG", "path": null, "size": 62.78, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3366_0b7808cee6.JPG", "hash": "medium_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "medium_IMG_3366.JPG", "path": null, "size": 95.49, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3366_0b7808cee6.JPG", "hash": "thumbnail_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "thumbnail_IMG_3366.JPG", "path": null, "size": 36.67, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.180Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.180Z", "alternativeText": null, "provider_metadata": null}, {"id": 141, "ext": ".JPG", "url": "/uploads/IMG_3368_39cc4a7231.JPG", "hash": "IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "IMG_3368.JPG", "size": 7817.27, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3368_39cc4a7231.JPG", "hash": "large_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "large_IMG_3368.JPG", "path": null, "size": 94.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3368_39cc4a7231.JPG", "hash": "small_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "small_IMG_3368.JPG", "path": null, "size": 52.19, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3368_39cc4a7231.JPG", "hash": "medium_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "medium_IMG_3368.JPG", "path": null, "size": 71.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3368_39cc4a7231.JPG", "hash": "thumbnail_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "thumbnail_IMG_3368.JPG", "path": null, "size": 35.07, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.158Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.158Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}, {"id": 144, "ext": ".JPG", "url": "/uploads/IMG_3369_a290155a71.JPG", "hash": "IMG_3369_a290155a71", "mime": "image/jpeg", "name": "IMG_3369.JPG", "size": 7810.87, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3369_a290155a71.JPG", "hash": "large_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "large_IMG_3369.JPG", "path": null, "size": 93.11, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3369_a290155a71.JPG", "hash": "small_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "small_IMG_3369.JPG", "path": null, "size": 50.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3369_a290155a71.JPG", "hash": "medium_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "medium_IMG_3369.JPG", "path": null, "size": 69.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3369_a290155a71.JPG", "hash": "thumbnail_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "thumbnail_IMG_3369.JPG", "path": null, "size": 33.81, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.267Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.267Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}], "address": "Lingkungan Kacangan Asri-Gombengsari", "contact": {"id": 8, "name": "Abdurrahman", "email": "rohman1234@gmail.com", "phone": "085257790583", "address": "Lingkungan Kacangan Asri"}, "youtube": "https://youtube.com/embed/nkDDwnyJ20E", "facility": null, "slideshow": [{"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}], "created_at": "2021-12-07T07:31:51.288Z", "updated_at": "2021-12-07T20:23:10.979Z", "description": "Warung Soffy merupakan usaha yang didirikan oleh Bapak Abdurrahman sejak tahun 2021. Selain memproduksi makanan Khas Gombengsari adajuda produk oleh-oleh seperti kopi, keripik, Bagiak, dll. Menu utama pada usaha ini adalah Rujak Soto, Nasi Tempong, dan Nasi Sabreng (Nasi Singkong) yang merupakan makanan tradisional yang biasa menjadi konsumsi umum leluhur daerah tersebut. Salah satu menu unik dalam usaha ini adalah Degan Goreng dan Kucur Kopi. Degan goreng merupakan Makanan yang terbuat dari olahan daging kelapa yang notabene dinikmati sebagai minuman. Sedangkan Kucur Kopi memiliki keunikan dari sisi cita rasa yang berbeda dibandingkan kucur produksi tempat lain dengan menambahkan rasa kopi pada adonannya.", "featured_image": null, "users_permissions_user": 10}, "prices": [{"fee": 2000, "price": 40000, "variation": "200g"}], "visible": true, "category": "Perkebunan", "created_at": "2021-12-07T22:45:00.619Z", "updated_at": "2021-12-16T10:24:09.233Z", "description": "", "featured_image": {"id": 168, "ext": ".JPG", "url": "/uploads/200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "200gr excelsa 40rb.JPG", "size": 8602.5, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "large_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "large_200gr excelsa 40rb.JPG", "path": null, "size": 95.2, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "small_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "small_200gr excelsa 40rb.JPG", "path": null, "size": 46.22, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "medium_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "medium_200gr excelsa 40rb.JPG", "path": null, "size": 66.9, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "thumbnail_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "thumbnail_200gr excelsa 40rb.JPG", "path": null, "size": 31.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T22:45:00.998Z", "previewUrl": null, "updated_at": "2021-12-07T22:45:00.998Z", "alternativeText": null, "provider_metadata": null}}, "variation": {"fee": 2000, "price": 40000, "variation": "200g"}, "users_permissions_user": 5}]	\N	\N	2021-12-17 03:27:56.586+01	2021-12-17 03:38:55.619+01	\N	6000	canceled	Faruk Alfiyan	012345678910	5000	5
21	[{"qty": 1, "product": {"id": 9, "name": "Kopi Lanang Gombeng Sari", "images": [], "object": {"id": 8, "logo": {"id": 135, "ext": ".jpeg", "url": "/uploads/logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "logo umkm gombengsari.jpeg", "size": 311.28, "width": 1496, "height": 1372, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "large_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "large_logo umkm gombengsari.jpeg", "path": null, "size": 190.32, "width": 1000, "height": 917}, "small": {"ext": ".jpeg", "url": "/uploads/small_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "small_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "small_logo umkm gombengsari.jpeg", "path": null, "size": 58.29, "width": 500, "height": 459}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "medium_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "medium_logo umkm gombengsari.jpeg", "path": null, "size": 117.51, "width": 750, "height": 688}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "thumbnail_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "thumbnail_logo umkm gombengsari.jpeg", "path": null, "size": 9.24, "width": 170, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:31:51.491Z", "previewUrl": null, "updated_at": "2021-12-07T07:31:51.491Z", "alternativeText": null, "provider_metadata": null}, "name": "Kopi Gombengsari", "slug": "kopi-gombengsari", "type": "UMKM", "images": [{"id": 142, "ext": ".JPG", "url": "/uploads/IMG_3366_0b7808cee6.JPG", "hash": "IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "IMG_3366.JPG", "size": 8831.64, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3366_0b7808cee6.JPG", "hash": "large_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "large_IMG_3366.JPG", "path": null, "size": 136.79, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3366_0b7808cee6.JPG", "hash": "small_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "small_IMG_3366.JPG", "path": null, "size": 62.78, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3366_0b7808cee6.JPG", "hash": "medium_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "medium_IMG_3366.JPG", "path": null, "size": 95.49, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3366_0b7808cee6.JPG", "hash": "thumbnail_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "thumbnail_IMG_3366.JPG", "path": null, "size": 36.67, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.180Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.180Z", "alternativeText": null, "provider_metadata": null}, {"id": 141, "ext": ".JPG", "url": "/uploads/IMG_3368_39cc4a7231.JPG", "hash": "IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "IMG_3368.JPG", "size": 7817.27, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3368_39cc4a7231.JPG", "hash": "large_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "large_IMG_3368.JPG", "path": null, "size": 94.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3368_39cc4a7231.JPG", "hash": "small_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "small_IMG_3368.JPG", "path": null, "size": 52.19, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3368_39cc4a7231.JPG", "hash": "medium_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "medium_IMG_3368.JPG", "path": null, "size": 71.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3368_39cc4a7231.JPG", "hash": "thumbnail_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "thumbnail_IMG_3368.JPG", "path": null, "size": 35.07, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.158Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.158Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}, {"id": 144, "ext": ".JPG", "url": "/uploads/IMG_3369_a290155a71.JPG", "hash": "IMG_3369_a290155a71", "mime": "image/jpeg", "name": "IMG_3369.JPG", "size": 7810.87, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3369_a290155a71.JPG", "hash": "large_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "large_IMG_3369.JPG", "path": null, "size": 93.11, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3369_a290155a71.JPG", "hash": "small_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "small_IMG_3369.JPG", "path": null, "size": 50.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3369_a290155a71.JPG", "hash": "medium_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "medium_IMG_3369.JPG", "path": null, "size": 69.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3369_a290155a71.JPG", "hash": "thumbnail_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "thumbnail_IMG_3369.JPG", "path": null, "size": 33.81, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.267Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.267Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}], "address": "Lingkungan Kacangan Asri-Gombengsari", "contact": {"id": 8, "name": "Abdurrahman", "email": "rohman1234@gmail.com", "phone": "085257790583", "address": "Lingkungan Kacangan Asri"}, "youtube": "https://youtube.com/embed/nkDDwnyJ20E", "facility": null, "slideshow": [{"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}], "created_at": "2021-12-07T07:31:51.288Z", "updated_at": "2021-12-07T20:23:10.979Z", "description": "Warung Soffy merupakan usaha yang didirikan oleh Bapak Abdurrahman sejak tahun 2021. Selain memproduksi makanan Khas Gombengsari adajuda produk oleh-oleh seperti kopi, keripik, Bagiak, dll. Menu utama pada usaha ini adalah Rujak Soto, Nasi Tempong, dan Nasi Sabreng (Nasi Singkong) yang merupakan makanan tradisional yang biasa menjadi konsumsi umum leluhur daerah tersebut. Salah satu menu unik dalam usaha ini adalah Degan Goreng dan Kucur Kopi. Degan goreng merupakan Makanan yang terbuat dari olahan daging kelapa yang notabene dinikmati sebagai minuman. Sedangkan Kucur Kopi memiliki keunikan dari sisi cita rasa yang berbeda dibandingkan kucur produksi tempat lain dengan menambahkan rasa kopi pada adonannya.", "featured_image": null, "users_permissions_user": 10}, "prices": [{"fee": 2000, "price": 40000, "variation": "200gr"}], "visible": true, "category": "Perkebunan", "created_at": "2021-12-07T07:51:57.548Z", "updated_at": "2021-12-07T07:53:50.804Z", "description": "", "featured_image": {"id": 136, "ext": ".jpeg", "url": "/uploads/kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "kopi lanang gombengsari.jpeg", "size": 111.22, "width": 867, "height": 1156, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "large_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "large_kopi lanang gombengsari.jpeg", "path": null, "size": 101.88, "width": 750, "height": 1000}, "small": {"ext": ".jpeg", "url": "/uploads/small_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "small_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "small_kopi lanang gombengsari.jpeg", "path": null, "size": 35.08, "width": 375, "height": 500}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "medium_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "medium_kopi lanang gombengsari.jpeg", "path": null, "size": 66.71, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "thumbnail_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "thumbnail_kopi lanang gombengsari.jpeg", "path": null, "size": 5.9, "width": 117, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:51:57.668Z", "previewUrl": null, "updated_at": "2021-12-07T07:51:57.668Z", "alternativeText": null, "provider_metadata": null}}, "variation": {"fee": 2000, "price": 40000, "variation": "200gr"}, "users_permissions_user": 5}]	\N	\N	2021-12-17 04:51:46.187+01	2021-12-17 08:20:53.807+01	\N	6000	canceled	Faruk Alfiyan	012345678910	5000	5
20	[{"qty": 1, "product": {"id": 9, "name": "Kopi Lanang Gombeng Sari", "images": [], "object": {"id": 8, "logo": {"id": 135, "ext": ".jpeg", "url": "/uploads/logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "logo umkm gombengsari.jpeg", "size": 311.28, "width": 1496, "height": 1372, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "large_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "large_logo umkm gombengsari.jpeg", "path": null, "size": 190.32, "width": 1000, "height": 917}, "small": {"ext": ".jpeg", "url": "/uploads/small_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "small_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "small_logo umkm gombengsari.jpeg", "path": null, "size": 58.29, "width": 500, "height": 459}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "medium_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "medium_logo umkm gombengsari.jpeg", "path": null, "size": 117.51, "width": 750, "height": 688}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "thumbnail_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "thumbnail_logo umkm gombengsari.jpeg", "path": null, "size": 9.24, "width": 170, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:31:51.491Z", "previewUrl": null, "updated_at": "2021-12-07T07:31:51.491Z", "alternativeText": null, "provider_metadata": null}, "name": "Kopi Gombengsari", "slug": "kopi-gombengsari", "type": "UMKM", "images": [{"id": 142, "ext": ".JPG", "url": "/uploads/IMG_3366_0b7808cee6.JPG", "hash": "IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "IMG_3366.JPG", "size": 8831.64, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3366_0b7808cee6.JPG", "hash": "large_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "large_IMG_3366.JPG", "path": null, "size": 136.79, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3366_0b7808cee6.JPG", "hash": "small_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "small_IMG_3366.JPG", "path": null, "size": 62.78, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3366_0b7808cee6.JPG", "hash": "medium_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "medium_IMG_3366.JPG", "path": null, "size": 95.49, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3366_0b7808cee6.JPG", "hash": "thumbnail_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "thumbnail_IMG_3366.JPG", "path": null, "size": 36.67, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.180Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.180Z", "alternativeText": null, "provider_metadata": null}, {"id": 141, "ext": ".JPG", "url": "/uploads/IMG_3368_39cc4a7231.JPG", "hash": "IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "IMG_3368.JPG", "size": 7817.27, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3368_39cc4a7231.JPG", "hash": "large_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "large_IMG_3368.JPG", "path": null, "size": 94.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3368_39cc4a7231.JPG", "hash": "small_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "small_IMG_3368.JPG", "path": null, "size": 52.19, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3368_39cc4a7231.JPG", "hash": "medium_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "medium_IMG_3368.JPG", "path": null, "size": 71.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3368_39cc4a7231.JPG", "hash": "thumbnail_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "thumbnail_IMG_3368.JPG", "path": null, "size": 35.07, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.158Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.158Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}, {"id": 144, "ext": ".JPG", "url": "/uploads/IMG_3369_a290155a71.JPG", "hash": "IMG_3369_a290155a71", "mime": "image/jpeg", "name": "IMG_3369.JPG", "size": 7810.87, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3369_a290155a71.JPG", "hash": "large_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "large_IMG_3369.JPG", "path": null, "size": 93.11, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3369_a290155a71.JPG", "hash": "small_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "small_IMG_3369.JPG", "path": null, "size": 50.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3369_a290155a71.JPG", "hash": "medium_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "medium_IMG_3369.JPG", "path": null, "size": 69.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3369_a290155a71.JPG", "hash": "thumbnail_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "thumbnail_IMG_3369.JPG", "path": null, "size": 33.81, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.267Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.267Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}], "address": "Lingkungan Kacangan Asri-Gombengsari", "contact": {"id": 8, "name": "Abdurrahman", "email": "rohman1234@gmail.com", "phone": "085257790583", "address": "Lingkungan Kacangan Asri"}, "youtube": "https://youtube.com/embed/nkDDwnyJ20E", "facility": null, "slideshow": [{"id": 146, "ext": ".JPG", "url": "/uploads/IMG_3469_3e7064df19.JPG", "hash": "IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "IMG_3469.JPG", "size": 11220.46, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.448Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.448Z", "alternativeText": null, "provider_metadata": null}, {"id": 145, "ext": ".JPG", "url": "/uploads/IMG_3465_d7e506a12a.JPG", "hash": "IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "IMG_3465.JPG", "size": 10732.68, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.301Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.301Z", "alternativeText": null, "provider_metadata": null}, {"id": 143, "ext": ".JPG", "url": "/uploads/IMG_3464_686e529b87.JPG", "hash": "IMG_3464_686e529b87", "mime": "image/jpeg", "name": "IMG_3464.JPG", "size": 10312.72, "width": 6000, "height": 4000, "caption": null, "formats": {"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}, "provider": "local", "created_at": "2021-12-07T20:26:08.216Z", "previewUrl": null, "updated_at": "2021-12-07T20:26:08.216Z", "alternativeText": null, "provider_metadata": null}], "created_at": "2021-12-07T07:31:51.288Z", "updated_at": "2021-12-07T20:23:10.979Z", "description": "Warung Soffy merupakan usaha yang didirikan oleh Bapak Abdurrahman sejak tahun 2021. Selain memproduksi makanan Khas Gombengsari adajuda produk oleh-oleh seperti kopi, keripik, Bagiak, dll. Menu utama pada usaha ini adalah Rujak Soto, Nasi Tempong, dan Nasi Sabreng (Nasi Singkong) yang merupakan makanan tradisional yang biasa menjadi konsumsi umum leluhur daerah tersebut. Salah satu menu unik dalam usaha ini adalah Degan Goreng dan Kucur Kopi. Degan goreng merupakan Makanan yang terbuat dari olahan daging kelapa yang notabene dinikmati sebagai minuman. Sedangkan Kucur Kopi memiliki keunikan dari sisi cita rasa yang berbeda dibandingkan kucur produksi tempat lain dengan menambahkan rasa kopi pada adonannya.", "featured_image": null, "users_permissions_user": 10}, "prices": [{"fee": 2000, "price": 40000, "variation": "200gr"}], "visible": true, "category": "Perkebunan", "created_at": "2021-12-07T07:51:57.548Z", "updated_at": "2021-12-07T07:53:50.804Z", "description": "", "featured_image": {"id": 136, "ext": ".jpeg", "url": "/uploads/kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "kopi lanang gombengsari.jpeg", "size": 111.22, "width": 867, "height": 1156, "caption": null, "formats": {"large": {"ext": ".jpeg", "url": "/uploads/large_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "large_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "large_kopi lanang gombengsari.jpeg", "path": null, "size": 101.88, "width": 750, "height": 1000}, "small": {"ext": ".jpeg", "url": "/uploads/small_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "small_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "small_kopi lanang gombengsari.jpeg", "path": null, "size": 35.08, "width": 375, "height": 500}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "medium_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "medium_kopi lanang gombengsari.jpeg", "path": null, "size": 66.71, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "thumbnail_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "thumbnail_kopi lanang gombengsari.jpeg", "path": null, "size": 5.9, "width": 117, "height": 156}}, "provider": "local", "created_at": "2021-12-07T07:51:57.668Z", "previewUrl": null, "updated_at": "2021-12-07T07:51:57.668Z", "alternativeText": null, "provider_metadata": null}}, "variation": {"fee": 2000, "price": 40000, "variation": "200gr"}, "users_permissions_user": 5}]	\N	\N	2021-12-17 04:51:46.122+01	2021-12-17 08:21:27.711+01	\N	6000	canceled	Faruk Alfiyan	012345678910	5000	5
\.


--
-- Data for Name: orders_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_components (id, field, "order", component_type, component_id, order_id) FROM stdin;
14	address	1	components_array_addresses	24	14
19	address	1	components_array_addresses	35	19
20	address	1	components_array_addresses	36	20
21	address	1	components_array_addresses	37	21
22	address	1	components_array_addresses	39	22
\.


--
-- Data for Name: packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.packages (id, name, description, object, harga, created_by, updated_by, created_at, updated_at, price, content) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, fee, created_by, updated_by, created_at, updated_at) FROM stdin;
1	5000	\N	\N	2021-11-26 09:50:44.639+01	2021-12-07 00:56:49.071+01
\.


--
-- Data for Name: payments_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments_components (id, field, "order", component_type, component_id, payment_id) FROM stdin;
25	BRI	1	components_array_rekenings	25	1
26	MANDIRI	1	components_array_rekenings	26	1
27	BCA	1	components_array_rekenings	27	1
28	BNI	1	components_array_rekenings	28	1
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, description, object, visible, category, prices, created_by, updated_by, created_at, updated_at) FROM stdin;
11	Kopi Original		8	t	Perkebunan	[{"fee": 2000, "price": 17500, "variation": "100g"}, {"fee": 2000, "price": 35000, "variation": "200g"}, {"fee": 2500, "price": 50000, "variation": "500g"}]	\N	\N	2021-12-07 23:41:00.239+01	2021-12-07 23:47:16.529+01
5	Kopi Excelsa Premium		6	f	Perkebunan	[{"fee": 0, "price": 0, "variation": "175g"}]	\N	\N	2021-11-26 07:55:15.417+01	2021-12-16 08:46:50.407+01
4	Kopi Arabica		6	f	Perkebunan	[{"fee": 0, "price": 0, "variation": "200g"}]	\N	\N	2021-11-26 07:52:03.759+01	2021-12-16 08:46:52.14+01
3	Kopi Arabika Luwak	asds	4	f	Perkebunan	[{"fee": 0, "price": 0, "variation": "500g"}]	\N	\N	2021-11-26 04:47:33.173+01	2021-12-16 08:46:53.618+01
12	Kopi Excelsa		8	t	Perkebunan	[{"fee": 2000, "price": 40000, "variation": "200g"}]	\N	\N	2021-12-07 23:45:00.619+01	2021-12-16 11:24:09.233+01
9	Kopi Lanang Gombeng Sari		8	t	Perkebunan	[{"fee": 2000, "price": 40000, "variation": "200gr"}]	\N	\N	2021-12-07 08:51:57.548+01	2021-12-07 08:53:50.804+01
10	Kopi Lanang		8	t	Perkebunan	[{"fee": 2000, "price": 20000, "variation": "100g"}, {"fee": 2000, "price": 40000, "variation": "200g"}, {"fee": 2500, "price": 75000, "variation": "500g"}]	\N	\N	2021-12-07 23:39:31.99+01	2021-12-07 23:45:54.198+01
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profiles (id, name, address, phone, users_permissions_user, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, name, price, object, available, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Double	200000	5	\N	\N	\N	2021-11-26 07:33:22.512+01	2021-11-26 07:33:22.518+01
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Mohamad	Hidayat	\N	moharifhidayat7@gmail.com	$2a$10$l3.n3VYvsmmakWN8ayQzNOpb37YQVFWDl3ZOBqEmqWWkmUNa4MLKq	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::content-manager.explorer.create	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages"]}	[]	2	2021-11-25 04:34:19.374+01	2021-11-25 04:34:19.393+01
3	plugins::content-manager.explorer.create	application::order.order	{"fields": ["items"]}	[]	2	2021-11-25 04:34:19.374+01	2021-11-25 04:34:19.394+01
2	plugins::content-manager.explorer.create	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	[]	2	2021-11-25 04:34:19.374+01	2021-11-25 04:34:19.394+01
4	plugins::content-manager.explorer.create	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	[]	2	2021-11-25 04:34:19.375+01	2021-11-25 04:34:19.394+01
6	plugins::content-manager.explorer.create	application::visitor.visitor	{"fields": ["people"]}	[]	2	2021-11-25 04:34:19.375+01	2021-11-25 04:34:19.394+01
7	plugins::content-manager.explorer.read	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages"]}	[]	2	2021-11-25 04:34:19.375+01	2021-11-25 04:34:19.394+01
10	plugins::content-manager.explorer.read	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	[]	2	2021-11-25 04:34:19.382+01	2021-11-25 04:34:19.398+01
8	plugins::content-manager.explorer.read	application::order.order	{"fields": ["items"]}	[]	2	2021-11-25 04:34:19.375+01	2021-11-25 04:34:19.398+01
186	plugins::content-manager.explorer.create	application::package.package	{"fields": ["name", "description", "object", "price", "content"]}	[]	1	2021-11-25 21:36:17.674+01	2021-11-25 21:36:17.698+01
11	plugins::content-manager.explorer.read	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	[]	2	2021-11-25 04:34:19.419+01	2021-11-25 04:34:19.436+01
12	plugins::content-manager.explorer.read	application::visitor.visitor	{"fields": ["people"]}	[]	2	2021-11-25 04:34:19.419+01	2021-11-25 04:34:19.44+01
13	plugins::content-manager.explorer.update	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages"]}	[]	2	2021-11-25 04:34:19.424+01	2021-11-25 04:34:19.443+01
14	plugins::content-manager.explorer.update	application::order.order	{"fields": ["items"]}	[]	2	2021-11-25 04:34:19.424+01	2021-11-25 04:34:19.443+01
330	plugins::content-manager.explorer.create	application::cart.cart	{"fields": ["users_permissions_user", "productId", "variation", "qty"]}	[]	1	2021-11-26 16:43:13.476+01	2021-11-26 16:43:13.495+01
16	plugins::content-manager.explorer.update	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	[]	2	2021-11-25 04:34:19.424+01	2021-11-25 04:34:19.443+01
872	plugins::content-manager.explorer.delete	application::cart.cart	{}	[]	1	2021-12-28 02:56:54.666+01	2021-12-28 02:56:54.692+01
5	plugins::content-manager.explorer.create	application::package.package	{"fields": ["name", "description", "object"]}	[]	2	2021-11-25 04:34:19.374+01	2021-11-25 21:36:17.98+01
9	plugins::content-manager.explorer.read	application::package.package	{"fields": ["name", "description", "object"]}	[]	2	2021-11-25 04:34:19.375+01	2021-11-25 21:36:17.983+01
15	plugins::content-manager.explorer.update	application::package.package	{"fields": ["name", "description", "object"]}	[]	2	2021-11-25 04:34:19.424+01	2021-11-25 21:36:17.983+01
504	plugins::content-manager.explorer.read	application::booking.booking	{"fields": ["room", "people", "price", "users_permissions_user", "email", "phone", "checkin", "checkout", "konfirmasi", "status", "name"]}	[]	1	2021-12-07 22:06:08.133+01	2021-12-07 22:06:08.153+01
17	plugins::content-manager.explorer.update	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	[]	2	2021-11-25 04:34:19.424+01	2021-11-25 04:34:19.444+01
25	plugins::upload.read	\N	{}	[]	2	2021-11-25 04:34:19.474+01	2021-11-25 04:34:19.49+01
34	plugins::content-manager.explorer.create	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.522+01	2021-11-25 04:34:19.539+01
42	plugins::content-manager.explorer.update	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.566+01	2021-11-25 04:34:19.583+01
51	plugins::content-manager.explorer.delete	application::product.product	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.62+01	2021-11-25 04:34:19.64+01
64	plugins::content-manager.explorer.create	application::visitor.visitor	{"fields": ["people"]}	[]	1	2021-11-25 04:34:19.744+01	2021-11-25 04:34:19.773+01
332	plugins::content-manager.explorer.read	application::cart.cart	{"fields": ["users_permissions_user", "productId", "variation", "qty"]}	[]	1	2021-11-26 16:43:13.477+01	2021-11-26 16:43:13.496+01
91	plugins::documentation.settings.regenerate	\N	{}	[]	1	2021-11-25 04:34:19.915+01	2021-11-25 04:34:19.932+01
100	plugins::i18n.locale.update	\N	{}	[]	1	2021-11-25 04:34:19.967+01	2021-11-25 04:34:19.986+01
109	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-11-25 04:34:20.025+01	2021-11-25 04:34:20.044+01
119	admin::webhooks.read	\N	{}	[]	1	2021-11-25 04:34:20.083+01	2021-11-25 04:34:20.101+01
505	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "name", "phone", "picture", "objects", "profile", "address.line1", "address.city", "address.postcode", "carts", "orders", "bookings"]}	[]	1	2021-12-07 22:06:08.133+01	2021-12-07 22:06:08.153+01
873	plugins::content-manager.explorer.delete	application::object.object	{}	[]	1	2021-12-28 02:56:54.666+01	2021-12-28 02:56:54.692+01
368	plugins::content-manager.explorer.create	application::payment.payment	{"fields": ["fee", "qr", "BRI.name", "BRI.rek", "MANDIRI.name", "MANDIRI.rek", "BCA.name", "BCA.rek", "BNI.name", "BNI.rek"]}	[]	1	2021-12-04 21:57:54.48+01	2021-12-04 21:57:54.503+01
18	plugins::content-manager.explorer.update	application::visitor.visitor	{"fields": ["people"]}	[]	2	2021-11-25 04:34:19.424+01	2021-11-25 04:34:19.444+01
28	plugins::upload.assets.download	\N	{}	[]	2	2021-11-25 04:34:19.475+01	2021-11-25 04:34:19.493+01
30	plugins::content-manager.explorer.create	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.521+01	2021-11-25 04:34:19.539+01
40	plugins::content-manager.explorer.read	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.566+01	2021-11-25 04:34:19.582+01
50	plugins::content-manager.explorer.delete	application::package.package	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.62+01	2021-11-25 04:34:19.64+01
78	plugins::content-manager.explorer.update	application::visitor.visitor	{"fields": ["people"]}	[]	1	2021-11-25 04:34:19.82+01	2021-11-25 04:34:19.843+01
88	plugins::email.settings.read	\N	{}	[]	1	2021-11-25 04:34:19.882+01	2021-11-25 04:34:19.908+01
98	plugins::i18n.locale.create	\N	{}	[]	1	2021-11-25 04:34:19.946+01	2021-11-25 04:34:19.964+01
108	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-11-25 04:34:20.001+01	2021-11-25 04:34:20.025+01
118	admin::webhooks.create	\N	{}	[]	1	2021-11-25 04:34:20.058+01	2021-11-25 04:34:20.079+01
128	admin::roles.update	\N	{}	[]	1	2021-11-25 04:34:20.113+01	2021-11-25 04:34:20.129+01
334	plugins::content-manager.explorer.update	application::cart.cart	{"fields": ["users_permissions_user", "productId", "variation", "qty"]}	[]	1	2021-11-26 16:43:13.477+01	2021-11-26 16:43:13.496+01
188	plugins::content-manager.explorer.create	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages", "rooms"]}	[]	1	2021-11-25 21:36:17.674+01	2021-11-25 21:36:17.698+01
367	plugins::content-manager.explorer.create	application::order.order	{"fields": ["items", "resi", "ongkir", "konfirmasi", "status", "address.line1", "address.city", "address.postcode", "name", "phone", "fee", "users_permissions_user"]}	[]	1	2021-12-04 21:57:54.48+01	2021-12-04 21:57:54.503+01
379	plugins::content-manager.explorer.update	application::room.room	{"fields": ["name", "price", "gallery", "object", "available", "bookings"]}	[]	1	2021-12-04 21:57:54.534+01	2021-12-04 21:57:54.55+01
506	plugins::content-manager.explorer.create	application::booking.booking	{"fields": ["room", "people", "price", "users_permissions_user", "email", "phone", "checkin", "checkout", "konfirmasi", "status", "name"]}	[]	1	2021-12-07 22:06:08.134+01	2021-12-07 22:06:08.153+01
874	plugins::content-manager.explorer.delete	application::order.order	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.693+01
19	plugins::content-manager.explorer.delete	application::object.object	{}	[]	2	2021-11-25 04:34:19.425+01	2021-11-25 04:34:19.444+01
39	plugins::content-manager.explorer.read	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.529+01	2021-11-25 04:34:19.544+01
48	plugins::content-manager.explorer.delete	application::object.object	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.572+01	2021-11-25 04:34:19.588+01
57	plugins::upload.assets.download	\N	{}	[]	3	2021-11-25 04:34:19.63+01	2021-11-25 04:34:19.652+01
69	plugins::content-manager.explorer.read	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	[]	1	2021-11-25 04:34:19.806+01	2021-11-25 04:34:19.826+01
94	plugins::upload.assets.update	\N	{}	[]	1	2021-11-25 04:34:19.919+01	2021-11-25 04:34:19.936+01
102	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-11-25 04:34:19.967+01	2021-11-25 04:34:19.986+01
110	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-11-25 04:34:20.026+01	2021-11-25 04:34:20.044+01
125	admin::users.delete	\N	{}	[]	1	2021-11-25 04:34:20.085+01	2021-11-25 04:34:20.106+01
507	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "name", "phone", "picture", "objects", "profile", "address.line1", "address.city", "address.postcode", "carts", "orders", "bookings"]}	[]	1	2021-12-07 22:06:08.134+01	2021-12-07 22:06:08.153+01
369	plugins::content-manager.explorer.create	application::room.room	{"fields": ["name", "price", "gallery", "object", "available", "bookings"]}	[]	1	2021-12-04 21:57:54.48+01	2021-12-04 21:57:54.503+01
378	plugins::content-manager.explorer.update	application::payment.payment	{"fields": ["fee", "qr", "BRI.name", "BRI.rek", "MANDIRI.name", "MANDIRI.rek", "BCA.name", "BCA.rek", "BNI.name", "BNI.rek"]}	[]	1	2021-12-04 21:57:54.534+01	2021-12-04 21:57:54.55+01
875	plugins::content-manager.explorer.delete	application::package.package	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.693+01
20	plugins::content-manager.explorer.delete	application::order.order	{}	[]	2	2021-11-25 04:34:19.431+01	2021-11-25 04:34:19.447+01
29	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-11-25 04:34:19.479+01	2021-11-25 04:34:19.493+01
43	plugins::content-manager.explorer.update	application::order.order	{"fields": ["items"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.566+01	2021-11-25 04:34:19.583+01
53	plugins::content-manager.explorer.delete	application::visitor.visitor	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.62+01	2021-11-25 04:34:19.647+01
71	plugins::content-manager.explorer.read	application::visitor.visitor	{"fields": ["people"]}	[]	1	2021-11-25 04:34:19.806+01	2021-11-25 04:34:19.826+01
90	plugins::documentation.settings.update	\N	{}	[]	1	2021-11-25 04:34:19.915+01	2021-11-25 04:34:19.931+01
104	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-11-25 04:34:19.968+01	2021-11-25 04:34:19.992+01
117	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-11-25 04:34:20.035+01	2021-11-25 04:34:20.058+01
126	admin::roles.create	\N	{}	[]	1	2021-11-25 04:34:20.089+01	2021-11-25 04:34:20.106+01
876	plugins::content-manager.explorer.delete	application::payment.payment	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.693+01
32	plugins::content-manager.explorer.create	application::package.package	{"fields": ["name", "description", "object"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.521+01	2021-11-25 21:36:17.986+01
21	plugins::content-manager.explorer.delete	application::package.package	{}	[]	2	2021-11-25 04:34:19.471+01	2021-11-25 04:34:19.49+01
33	plugins::content-manager.explorer.create	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.521+01	2021-11-25 04:34:19.539+01
45	plugins::content-manager.explorer.update	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.566+01	2021-11-25 04:34:19.588+01
58	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-11-25 04:34:19.631+01	2021-11-25 04:34:19.652+01
70	plugins::content-manager.explorer.read	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	[]	1	2021-11-25 04:34:19.806+01	2021-11-25 04:34:19.825+01
89	plugins::documentation.read	\N	{}	[]	1	2021-11-25 04:34:19.915+01	2021-11-25 04:34:19.931+01
99	plugins::i18n.locale.read	\N	{}	[]	1	2021-11-25 04:34:19.965+01	2021-11-25 04:34:19.986+01
112	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-11-25 04:34:20.03+01	2021-11-25 04:34:20.05+01
124	admin::users.update	\N	{}	[]	1	2021-11-25 04:34:20.085+01	2021-11-25 04:34:20.101+01
377	plugins::content-manager.explorer.update	application::order.order	{"fields": ["items", "resi", "ongkir", "konfirmasi", "status", "address.line1", "address.city", "address.postcode", "name", "phone", "fee", "users_permissions_user"]}	[]	1	2021-12-04 21:57:54.533+01	2021-12-04 21:57:54.55+01
877	plugins::content-manager.explorer.delete	application::product.product	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.693+01
200	plugins::content-manager.explorer.update	application::package.package	{"fields": ["name", "description", "object", "price", "content"]}	[]	1	2021-11-25 21:36:17.738+01	2021-11-25 21:36:17.768+01
22	plugins::content-manager.explorer.delete	application::product.product	{}	[]	2	2021-11-25 04:34:19.474+01	2021-11-25 04:34:19.489+01
49	plugins::content-manager.explorer.delete	application::order.order	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.579+01	2021-11-25 04:34:19.605+01
372	plugins::content-manager.explorer.read	application::order.order	{"fields": ["items", "resi", "ongkir", "konfirmasi", "status", "address.line1", "address.city", "address.postcode", "name", "phone", "fee", "users_permissions_user"]}	[]	1	2021-12-04 21:57:54.481+01	2021-12-04 21:57:54.503+01
77	plugins::content-manager.explorer.update	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	[]	1	2021-11-25 04:34:19.816+01	2021-11-25 04:34:19.839+01
87	plugins::content-type-builder.read	\N	{}	[]	1	2021-11-25 04:34:19.873+01	2021-11-25 04:34:19.892+01
97	plugins::upload.settings.read	\N	{}	[]	1	2021-11-25 04:34:19.923+01	2021-11-25 04:34:19.942+01
106	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-11-25 04:34:19.973+01	2021-11-25 04:34:19.992+01
113	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-11-25 04:34:20.03+01	2021-11-25 04:34:20.051+01
120	admin::webhooks.update	\N	{}	[]	1	2021-11-25 04:34:20.085+01	2021-11-25 04:34:20.101+01
129	admin::roles.delete	\N	{}	[]	1	2021-11-25 04:34:20.129+01	2021-11-25 04:34:20.133+01
192	plugins::content-manager.explorer.read	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages", "rooms"]}	[]	1	2021-11-25 21:36:17.675+01	2021-11-25 21:36:17.699+01
198	plugins::content-manager.explorer.update	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages", "rooms"]}	[]	1	2021-11-25 21:36:17.737+01	2021-11-25 21:36:17.761+01
38	plugins::content-manager.explorer.read	application::package.package	{"fields": ["name", "description", "object"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.522+01	2021-11-25 21:36:17.986+01
878	plugins::content-manager.explorer.delete	application::profile.profile	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.693+01
23	plugins::content-manager.explorer.delete	application::profile.profile	{}	[]	2	2021-11-25 04:34:19.474+01	2021-11-25 04:34:19.489+01
37	plugins::content-manager.explorer.read	application::order.order	{"fields": ["items"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.522+01	2021-11-25 04:34:19.54+01
46	plugins::content-manager.explorer.update	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.572+01	2021-11-25 04:34:19.587+01
55	plugins::upload.assets.create	\N	{}	[]	3	2021-11-25 04:34:19.624+01	2021-11-25 04:34:19.646+01
373	plugins::content-manager.explorer.read	application::payment.payment	{"fields": ["fee", "qr", "BRI.name", "BRI.rek", "MANDIRI.name", "MANDIRI.rek", "BCA.name", "BCA.rek", "BNI.name", "BNI.rek"]}	[]	1	2021-12-04 21:57:54.481+01	2021-12-04 21:57:54.504+01
95	plugins::upload.assets.download	\N	{}	[]	1	2021-11-25 04:34:19.919+01	2021-11-25 04:34:19.936+01
107	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-11-25 04:34:19.973+01	2021-11-25 04:34:19.992+01
116	admin::marketplace.plugins.install	\N	{}	[]	1	2021-11-25 04:34:20.03+01	2021-11-25 04:34:20.051+01
121	admin::webhooks.delete	\N	{}	[]	1	2021-11-25 04:34:20.085+01	2021-11-25 04:34:20.101+01
879	plugins::content-manager.explorer.delete	application::room.room	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.693+01
24	plugins::content-manager.explorer.delete	application::visitor.visitor	{}	[]	2	2021-11-25 04:34:19.474+01	2021-11-25 04:34:19.49+01
36	plugins::content-manager.explorer.read	application::object.object	{"fields": ["name", "description", "address", "youtube", "contact.name", "contact.address", "contact.email", "contact.phone", "users_permissions_user", "featured_image", "images", "slideshow", "type", "slug", "facility", "logo", "products", "packages"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.522+01	2021-11-25 04:34:19.54+01
47	plugins::content-manager.explorer.update	application::visitor.visitor	{"fields": ["people"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.572+01	2021-11-25 04:34:19.588+01
56	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.624+01	2021-11-25 04:34:19.647+01
63	plugins::content-manager.explorer.create	application::profile.profile	{"fields": ["name", "address", "phone", "picture", "users_permissions_user"]}	[]	1	2021-11-25 04:34:19.744+01	2021-11-25 04:34:19.772+01
374	plugins::content-manager.explorer.read	application::room.room	{"fields": ["name", "price", "gallery", "object", "available", "bookings"]}	[]	1	2021-12-04 21:57:54.481+01	2021-12-04 21:57:54.504+01
93	plugins::upload.assets.create	\N	{}	[]	1	2021-11-25 04:34:19.919+01	2021-11-25 04:34:19.936+01
101	plugins::i18n.locale.delete	\N	{}	[]	1	2021-11-25 04:34:19.967+01	2021-11-25 04:34:19.986+01
111	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-11-25 04:34:20.026+01	2021-11-25 04:34:20.052+01
127	admin::roles.read	\N	{}	[]	1	2021-11-25 04:34:20.089+01	2021-11-25 04:34:20.106+01
194	plugins::content-manager.explorer.read	application::package.package	{"fields": ["name", "description", "object", "price", "content"]}	[]	1	2021-11-25 21:36:17.675+01	2021-11-25 21:36:17.699+01
880	plugins::content-manager.explorer.delete	application::visitor.visitor	{}	[]	1	2021-12-28 02:56:54.667+01	2021-12-28 02:56:54.699+01
26	plugins::upload.assets.create	\N	{}	[]	2	2021-11-25 04:34:19.475+01	2021-11-25 04:34:19.49+01
35	plugins::content-manager.explorer.create	application::visitor.visitor	{"fields": ["people"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.522+01	2021-11-25 04:34:19.54+01
54	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.624+01	2021-11-25 04:34:19.646+01
62	plugins::content-manager.explorer.create	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	[]	1	2021-11-25 04:34:19.744+01	2021-11-25 04:34:19.772+01
96	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-11-25 04:34:19.919+01	2021-11-25 04:34:19.937+01
105	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-11-25 04:34:19.973+01	2021-11-25 04:34:19.992+01
114	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-11-25 04:34:20.03+01	2021-11-25 04:34:20.051+01
123	admin::users.read	\N	{}	[]	1	2021-11-25 04:34:20.085+01	2021-11-25 04:34:20.101+01
502	plugins::content-manager.explorer.update	application::booking.booking	{"fields": ["room", "people", "price", "users_permissions_user", "email", "phone", "checkin", "checkout", "konfirmasi", "status", "name"]}	[]	1	2021-12-07 22:06:08.133+01	2021-12-07 22:06:08.152+01
44	plugins::content-manager.explorer.update	application::package.package	{"fields": ["name", "description", "object"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.566+01	2021-11-25 21:36:17.985+01
27	plugins::upload.assets.update	\N	{}	[]	2	2021-11-25 04:34:19.475+01	2021-11-25 04:34:19.49+01
31	plugins::content-manager.explorer.create	application::order.order	{"fields": ["items"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.521+01	2021-11-25 04:34:19.539+01
41	plugins::content-manager.explorer.read	application::visitor.visitor	{"fields": ["people"]}	["admin::is-creator"]	3	2021-11-25 04:34:19.566+01	2021-11-25 04:34:19.582+01
52	plugins::content-manager.explorer.delete	application::profile.profile	{}	["admin::is-creator"]	3	2021-11-25 04:34:19.62+01	2021-11-25 04:34:19.641+01
76	plugins::content-manager.explorer.update	application::product.product	{"fields": ["name", "description", "images", "featured_image", "object", "visible", "category", "prices"]}	[]	1	2021-11-25 04:34:19.812+01	2021-11-25 04:34:19.833+01
503	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "name", "phone", "picture", "objects", "profile", "address.line1", "address.city", "address.postcode", "carts", "orders", "bookings"]}	[]	1	2021-12-07 22:06:08.133+01	2021-12-07 22:06:08.152+01
92	plugins::upload.read	\N	{}	[]	1	2021-11-25 04:34:19.918+01	2021-11-25 04:34:19.936+01
103	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-11-25 04:34:19.968+01	2021-11-25 04:34:19.986+01
115	admin::marketplace.read	\N	{}	[]	1	2021-11-25 04:34:20.03+01	2021-11-25 04:34:20.051+01
122	admin::users.create	\N	{}	[]	1	2021-11-25 04:34:20.085+01	2021-11-25 04:34:20.101+01
871	plugins::content-manager.explorer.delete	application::booking.booking	{}	[]	1	2021-12-28 02:56:54.666+01	2021-12-28 02:56:54.692+01
881	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2021-12-28 02:56:54.726+01	2021-12-28 02:56:54.729+01
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-11-25 04:34:19.329+01	2021-11-25 04:34:19.329+01
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-11-25 04:34:19.341+01	2021-11-25 04:34:19.341+01
3	Author	strapi-author	Authors can manage the content they have created.	2021-11-25 04:34:19.352+01	2021-11-25 04:34:19.352+01
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
1	WhatsApp Image 2021-11-04 at 9.18.54 AM.jpeg	\N	\N	720	405	{"small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2021_11_04_at_9_18_54_AM_6656d71194.jpeg", "hash": "small_Whats_App_Image_2021_11_04_at_9_18_54_AM_6656d71194", "mime": "image/jpeg", "name": "small_WhatsApp Image 2021-11-04 at 9.18.54 AM.jpeg", "path": null, "size": 23.48, "width": 500, "height": 281}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2021_11_04_at_9_18_54_AM_6656d71194.jpeg", "hash": "thumbnail_Whats_App_Image_2021_11_04_at_9_18_54_AM_6656d71194", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2021-11-04 at 9.18.54 AM.jpeg", "path": null, "size": 7.02, "width": 245, "height": 138}}	Whats_App_Image_2021_11_04_at_9_18_54_AM_6656d71194	.jpeg	image/jpeg	28.26	/uploads/Whats_App_Image_2021_11_04_at_9_18_54_AM_6656d71194.jpeg	\N	local	\N	\N	\N	2021-11-26 03:38:29.339+01	2021-11-26 03:38:29.339+01
2	WhatsApp Image 2021-11-04 at 9.18.47 AM.jpeg	\N	\N	405	405	{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2021_11_04_at_9_18_47_AM_014fe2a6f2.jpeg", "hash": "thumbnail_Whats_App_Image_2021_11_04_at_9_18_47_AM_014fe2a6f2", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2021-11-04 at 9.18.47 AM.jpeg", "path": null, "size": 5.85, "width": 156, "height": 156}}	Whats_App_Image_2021_11_04_at_9_18_47_AM_014fe2a6f2	.jpeg	image/jpeg	30.20	/uploads/Whats_App_Image_2021_11_04_at_9_18_47_AM_014fe2a6f2.jpeg	\N	local	\N	\N	\N	2021-11-26 03:38:30.065+01	2021-11-26 03:38:30.065+01
3	WhatsApp Image 2021-11-04 at 9.18.53 AM.jpeg	\N	\N	720	405	{"small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2021_11_04_at_9_18_53_AM_5578f98da9.jpeg", "hash": "small_Whats_App_Image_2021_11_04_at_9_18_53_AM_5578f98da9", "mime": "image/jpeg", "name": "small_WhatsApp Image 2021-11-04 at 9.18.53 AM.jpeg", "path": null, "size": 17.39, "width": 500, "height": 281}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2021_11_04_at_9_18_53_AM_5578f98da9.jpeg", "hash": "thumbnail_Whats_App_Image_2021_11_04_at_9_18_53_AM_5578f98da9", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2021-11-04 at 9.18.53 AM.jpeg", "path": null, "size": 6.04, "width": 245, "height": 138}}	Whats_App_Image_2021_11_04_at_9_18_53_AM_5578f98da9	.jpeg	image/jpeg	19.27	/uploads/Whats_App_Image_2021_11_04_at_9_18_53_AM_5578f98da9.jpeg	\N	local	\N	\N	\N	2021-11-26 03:38:30.103+01	2021-11-26 03:38:30.103+01
4	WhatsApp Image 2021-11-04 at 9.18.46 AM.jpeg	\N	\N	405	405	{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2021_11_04_at_9_18_46_AM_714a328c56.jpeg", "hash": "thumbnail_Whats_App_Image_2021_11_04_at_9_18_46_AM_714a328c56", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2021-11-04 at 9.18.46 AM.jpeg", "path": null, "size": 4.96, "width": 156, "height": 156}}	Whats_App_Image_2021_11_04_at_9_18_46_AM_714a328c56	.jpeg	image/jpeg	19.37	/uploads/Whats_App_Image_2021_11_04_at_9_18_46_AM_714a328c56.jpeg	\N	local	\N	\N	\N	2021-11-26 03:38:30.13+01	2021-11-26 03:38:30.13+01
5	Screenshot (219).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_219_dd916322d8.png", "hash": "large_Screenshot_219_dd916322d8", "mime": "image/png", "name": "large_Screenshot (219).png", "path": null, "size": 1185.08, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_219_dd916322d8.png", "hash": "small_Screenshot_219_dd916322d8", "mime": "image/png", "name": "small_Screenshot (219).png", "path": null, "size": 318.45, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_219_dd916322d8.png", "hash": "medium_Screenshot_219_dd916322d8", "mime": "image/png", "name": "medium_Screenshot (219).png", "path": null, "size": 687.31, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_219_dd916322d8.png", "hash": "thumbnail_Screenshot_219_dd916322d8", "mime": "image/png", "name": "thumbnail_Screenshot (219).png", "path": null, "size": 84.43, "width": 245, "height": 138}}	Screenshot_219_dd916322d8	.png	image/png	1577.13	/uploads/Screenshot_219_dd916322d8.png	\N	local	\N	\N	\N	2021-11-26 03:38:30.394+01	2021-11-26 03:38:30.394+01
6	Screenshot (217).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_217_4aedc0d16a.png", "hash": "large_Screenshot_217_4aedc0d16a", "mime": "image/png", "name": "large_Screenshot (217).png", "path": null, "size": 1235.36, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_217_4aedc0d16a.png", "hash": "small_Screenshot_217_4aedc0d16a", "mime": "image/png", "name": "small_Screenshot (217).png", "path": null, "size": 324.46, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_217_4aedc0d16a.png", "hash": "medium_Screenshot_217_4aedc0d16a", "mime": "image/png", "name": "medium_Screenshot (217).png", "path": null, "size": 709.69, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_217_4aedc0d16a.png", "hash": "thumbnail_Screenshot_217_4aedc0d16a", "mime": "image/png", "name": "thumbnail_Screenshot (217).png", "path": null, "size": 83.51, "width": 245, "height": 138}}	Screenshot_217_4aedc0d16a	.png	image/png	1703.08	/uploads/Screenshot_217_4aedc0d16a.png	\N	local	\N	\N	\N	2021-11-26 03:38:30.396+01	2021-11-26 03:38:30.396+01
7	Screenshot (216).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_216_d842e63073.png", "hash": "large_Screenshot_216_d842e63073", "mime": "image/png", "name": "large_Screenshot (216).png", "path": null, "size": 1138.58, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_216_d842e63073.png", "hash": "small_Screenshot_216_d842e63073", "mime": "image/png", "name": "small_Screenshot (216).png", "path": null, "size": 310.55, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_216_d842e63073.png", "hash": "medium_Screenshot_216_d842e63073", "mime": "image/png", "name": "medium_Screenshot (216).png", "path": null, "size": 666.1, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_216_d842e63073.png", "hash": "thumbnail_Screenshot_216_d842e63073", "mime": "image/png", "name": "thumbnail_Screenshot (216).png", "path": null, "size": 80.79, "width": 245, "height": 138}}	Screenshot_216_d842e63073	.png	image/png	1513.96	/uploads/Screenshot_216_d842e63073.png	\N	local	\N	\N	\N	2021-11-26 03:38:30.398+01	2021-11-26 03:38:30.398+01
73	4258c998-f290-432a-b8ba-1265e270b829-1622445314977-2aa8ad0879592bc97227a80eaa22fc4f.jpg	\N	\N	910	512	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_4258c998_f290_432a_b8ba_1265e270b829_1622445314977_2aa8ad0879592bc97227a80eaa22fc4f_9dd3614dc3.jpg", "hash": "thumbnail_4258c998_f290_432a_b8ba_1265e270b829_1622445314977_2aa8ad0879592bc97227a80eaa22fc4f_9dd3614dc3", "mime": "image/jpeg", "name": "thumbnail_4258c998-f290-432a-b8ba-1265e270b829-1622445314977-2aa8ad0879592bc97227a80eaa22fc4f.jpg", "path": null, "size": 14.89, "width": 245, "height": 138}}	4258c998_f290_432a_b8ba_1265e270b829_1622445314977_2aa8ad0879592bc97227a80eaa22fc4f_9dd3614dc3	.jpg	image/jpeg	152.93	/uploads/4258c998_f290_432a_b8ba_1265e270b829_1622445314977_2aa8ad0879592bc97227a80eaa22fc4f_9dd3614dc3.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:05.916+01	2021-11-26 07:31:05.916+01
8	Screenshot (218).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_218_e61497b104.png", "hash": "large_Screenshot_218_e61497b104", "mime": "image/png", "name": "large_Screenshot (218).png", "path": null, "size": 981, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_218_e61497b104.png", "hash": "small_Screenshot_218_e61497b104", "mime": "image/png", "name": "small_Screenshot (218).png", "path": null, "size": 276.17, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_218_e61497b104.png", "hash": "medium_Screenshot_218_e61497b104", "mime": "image/png", "name": "medium_Screenshot (218).png", "path": null, "size": 579.77, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_218_e61497b104.png", "hash": "thumbnail_Screenshot_218_e61497b104", "mime": "image/png", "name": "thumbnail_Screenshot (218).png", "path": null, "size": 76.52, "width": 245, "height": 138}}	Screenshot_218_e61497b104	.png	image/png	1268.84	/uploads/Screenshot_218_e61497b104.png	\N	local	\N	\N	\N	2021-11-26 03:38:30.434+01	2021-11-26 03:38:30.434+01
9	Screenshot (228).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_228_deff1ab238.png", "hash": "large_Screenshot_228_deff1ab238", "mime": "image/png", "name": "large_Screenshot (228).png", "path": null, "size": 1224.01, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_228_deff1ab238.png", "hash": "small_Screenshot_228_deff1ab238", "mime": "image/png", "name": "small_Screenshot (228).png", "path": null, "size": 321.96, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_228_deff1ab238.png", "hash": "medium_Screenshot_228_deff1ab238", "mime": "image/png", "name": "medium_Screenshot (228).png", "path": null, "size": 706.87, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_228_deff1ab238.png", "hash": "thumbnail_Screenshot_228_deff1ab238", "mime": "image/png", "name": "thumbnail_Screenshot (228).png", "path": null, "size": 80.38, "width": 245, "height": 138}}	Screenshot_228_deff1ab238	.png	image/png	1631.13	/uploads/Screenshot_228_deff1ab238.png	\N	local	\N	\N	\N	2021-11-26 03:38:30.439+01	2021-11-26 03:38:30.439+01
10	Screenshot (227).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_227_ad52937daa.png", "hash": "large_Screenshot_227_ad52937daa", "mime": "image/png", "name": "large_Screenshot (227).png", "path": null, "size": 1256.51, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_227_ad52937daa.png", "hash": "small_Screenshot_227_ad52937daa", "mime": "image/png", "name": "small_Screenshot (227).png", "path": null, "size": 328.4, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_227_ad52937daa.png", "hash": "medium_Screenshot_227_ad52937daa", "mime": "image/png", "name": "medium_Screenshot (227).png", "path": null, "size": 722.98, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_227_ad52937daa.png", "hash": "thumbnail_Screenshot_227_ad52937daa", "mime": "image/png", "name": "thumbnail_Screenshot (227).png", "path": null, "size": 82.47, "width": 245, "height": 138}}	Screenshot_227_ad52937daa	.png	image/png	1702.69	/uploads/Screenshot_227_ad52937daa.png	\N	local	\N	\N	\N	2021-11-26 03:38:30.565+01	2021-11-26 03:38:30.565+01
11	Screenshot (210).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_210_3d0f28611b.png", "hash": "large_Screenshot_210_3d0f28611b", "mime": "image/png", "name": "large_Screenshot (210).png", "path": null, "size": 1719.83, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_210_3d0f28611b.png", "hash": "small_Screenshot_210_3d0f28611b", "mime": "image/png", "name": "small_Screenshot (210).png", "path": null, "size": 429.96, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_210_3d0f28611b.png", "hash": "medium_Screenshot_210_3d0f28611b", "mime": "image/png", "name": "medium_Screenshot (210).png", "path": null, "size": 970.43, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_210_3d0f28611b.png", "hash": "thumbnail_Screenshot_210_3d0f28611b", "mime": "image/png", "name": "thumbnail_Screenshot (210).png", "path": null, "size": 103.22, "width": 245, "height": 138}}	Screenshot_210_3d0f28611b	.png	image/png	2335.31	/uploads/Screenshot_210_3d0f28611b.png	\N	local	\N	\N	\N	2021-11-26 03:44:26.061+01	2021-11-26 03:44:26.061+01
12	Screenshot (213).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_213_00653285c7.png", "hash": "large_Screenshot_213_00653285c7", "mime": "image/png", "name": "large_Screenshot (213).png", "path": null, "size": 1603.46, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_213_00653285c7.png", "hash": "small_Screenshot_213_00653285c7", "mime": "image/png", "name": "small_Screenshot (213).png", "path": null, "size": 400.64, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_213_00653285c7.png", "hash": "medium_Screenshot_213_00653285c7", "mime": "image/png", "name": "medium_Screenshot (213).png", "path": null, "size": 905.07, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_213_00653285c7.png", "hash": "thumbnail_Screenshot_213_00653285c7", "mime": "image/png", "name": "thumbnail_Screenshot (213).png", "path": null, "size": 96.38, "width": 245, "height": 138}}	Screenshot_213_00653285c7	.png	image/png	2148.98	/uploads/Screenshot_213_00653285c7.png	\N	local	\N	\N	\N	2021-11-26 03:44:26.075+01	2021-11-26 03:44:26.075+01
13	Screenshot (212).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_212_020ce58972.png", "hash": "large_Screenshot_212_020ce58972", "mime": "image/png", "name": "large_Screenshot (212).png", "path": null, "size": 1708.5, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_212_020ce58972.png", "hash": "small_Screenshot_212_020ce58972", "mime": "image/png", "name": "small_Screenshot (212).png", "path": null, "size": 427.44, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_212_020ce58972.png", "hash": "medium_Screenshot_212_020ce58972", "mime": "image/png", "name": "medium_Screenshot (212).png", "path": null, "size": 963.34, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_212_020ce58972.png", "hash": "thumbnail_Screenshot_212_020ce58972", "mime": "image/png", "name": "thumbnail_Screenshot (212).png", "path": null, "size": 103.09, "width": 245, "height": 138}}	Screenshot_212_020ce58972	.png	image/png	2441.74	/uploads/Screenshot_212_020ce58972.png	\N	local	\N	\N	\N	2021-11-26 03:44:26.098+01	2021-11-26 03:44:26.098+01
14	Screenshot (211).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_211_ba24874a7d.png", "hash": "large_Screenshot_211_ba24874a7d", "mime": "image/png", "name": "large_Screenshot (211).png", "path": null, "size": 1626.43, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_211_ba24874a7d.png", "hash": "small_Screenshot_211_ba24874a7d", "mime": "image/png", "name": "small_Screenshot (211).png", "path": null, "size": 409.61, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_211_ba24874a7d.png", "hash": "medium_Screenshot_211_ba24874a7d", "mime": "image/png", "name": "medium_Screenshot (211).png", "path": null, "size": 921.25, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_211_ba24874a7d.png", "hash": "thumbnail_Screenshot_211_ba24874a7d", "mime": "image/png", "name": "thumbnail_Screenshot (211).png", "path": null, "size": 99, "width": 245, "height": 138}}	Screenshot_211_ba24874a7d	.png	image/png	2136.44	/uploads/Screenshot_211_ba24874a7d.png	\N	local	\N	\N	\N	2021-11-26 03:44:26.098+01	2021-11-26 03:44:26.098+01
16	Screenshot (215).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_215_95f4a6d087.png", "hash": "large_Screenshot_215_95f4a6d087", "mime": "image/png", "name": "large_Screenshot (215).png", "path": null, "size": 1722.32, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_215_95f4a6d087.png", "hash": "small_Screenshot_215_95f4a6d087", "mime": "image/png", "name": "small_Screenshot (215).png", "path": null, "size": 434.34, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_215_95f4a6d087.png", "hash": "medium_Screenshot_215_95f4a6d087", "mime": "image/png", "name": "medium_Screenshot (215).png", "path": null, "size": 974.67, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_215_95f4a6d087.png", "hash": "thumbnail_Screenshot_215_95f4a6d087", "mime": "image/png", "name": "thumbnail_Screenshot (215).png", "path": null, "size": 104.91, "width": 245, "height": 138}}	Screenshot_215_95f4a6d087	.png	image/png	2310.11	/uploads/Screenshot_215_95f4a6d087.png	\N	local	\N	\N	\N	2021-11-26 03:44:26.231+01	2021-11-26 03:44:26.231+01
42	IMG_4040.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4040_6243017d3c.JPG", "hash": "large_IMG_4040_6243017d3c", "mime": "image/jpeg", "name": "large_IMG_4040.JPG", "path": null, "size": 65.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4040_6243017d3c.JPG", "hash": "small_IMG_4040_6243017d3c", "mime": "image/jpeg", "name": "small_IMG_4040.JPG", "path": null, "size": 21.61, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4040_6243017d3c.JPG", "hash": "medium_IMG_4040_6243017d3c", "mime": "image/jpeg", "name": "medium_IMG_4040.JPG", "path": null, "size": 40.88, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4040_6243017d3c.JPG", "hash": "thumbnail_IMG_4040_6243017d3c", "mime": "image/jpeg", "name": "thumbnail_IMG_4040.JPG", "path": null, "size": 6.56, "width": 234, "height": 156}}	IMG_4040_6243017d3c	.JPG	image/jpeg	1276.12	/uploads/IMG_4040_6243017d3c.JPG	\N	local	\N	\N	\N	2021-11-26 04:29:18.873+01	2021-11-26 04:29:18.873+01
44	IMG_4038.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4038_49239628f5.JPG", "hash": "large_IMG_4038_49239628f5", "mime": "image/jpeg", "name": "large_IMG_4038.JPG", "path": null, "size": 68.93, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4038_49239628f5.JPG", "hash": "small_IMG_4038_49239628f5", "mime": "image/jpeg", "name": "small_IMG_4038.JPG", "path": null, "size": 21.5, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4038_49239628f5.JPG", "hash": "medium_IMG_4038_49239628f5", "mime": "image/jpeg", "name": "medium_IMG_4038.JPG", "path": null, "size": 41.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4038_49239628f5.JPG", "hash": "thumbnail_IMG_4038_49239628f5", "mime": "image/jpeg", "name": "thumbnail_IMG_4038.JPG", "path": null, "size": 6.5, "width": 234, "height": 156}}	IMG_4038_49239628f5	.JPG	image/jpeg	1585.43	/uploads/IMG_4038_49239628f5.JPG	\N	local	\N	\N	\N	2021-11-26 04:29:19.284+01	2021-11-26 04:29:19.284+01
74	IMG_20211005_125615.jpg	\N	\N	4000	1840	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_125615_2b1d4d0f24.jpg", "hash": "thumbnail_IMG_20211005_125615_2b1d4d0f24", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_125615.jpg", "path": null, "size": 21.45, "width": 245, "height": 113}}	IMG_20211005_125615_2b1d4d0f24	.jpg	image/jpeg	2595.91	/uploads/IMG_20211005_125615_2b1d4d0f24.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.187+01	2021-11-26 07:31:06.187+01
97	IMG_20210920_112902.jpg	\N	\N	4000	3000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20210920_112902_deb0f6c968.jpg", "hash": "thumbnail_IMG_20210920_112902_deb0f6c968", "mime": "image/jpeg", "name": "thumbnail_IMG_20210920_112902.jpg", "path": null, "size": 33.02, "width": 208, "height": 156}}	IMG_20210920_112902_deb0f6c968	.jpg	image/jpeg	6465.11	/uploads/IMG_20210920_112902_deb0f6c968.jpg	\N	local	\N	\N	\N	2021-11-26 07:48:32.421+01	2021-11-26 07:48:32.421+01
125	IMG_4107.JPG	\N	\N	6000	3368	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4107_dfcef72b70.JPG", "hash": "large_IMG_4107_dfcef72b70", "mime": "image/jpeg", "name": "large_IMG_4107.JPG", "path": null, "size": 130.35, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4107_dfcef72b70.JPG", "hash": "small_IMG_4107_dfcef72b70", "mime": "image/jpeg", "name": "small_IMG_4107.JPG", "path": null, "size": 59.57, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4107_dfcef72b70.JPG", "hash": "medium_IMG_4107_dfcef72b70", "mime": "image/jpeg", "name": "medium_IMG_4107.JPG", "path": null, "size": 90.87, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4107_dfcef72b70.JPG", "hash": "thumbnail_IMG_4107_dfcef72b70", "mime": "image/jpeg", "name": "thumbnail_IMG_4107.JPG", "path": null, "size": 35.58, "width": 245, "height": 138}}	IMG_4107_dfcef72b70	.JPG	image/jpeg	6372.22	/uploads/IMG_4107_dfcef72b70.JPG	\N	local	\N	\N	\N	2021-11-26 09:08:42.919+01	2021-11-26 09:08:42.919+01
143	IMG_3464.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3464_686e529b87.JPG", "hash": "large_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "large_IMG_3464.JPG", "path": null, "size": 169.87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3464_686e529b87.JPG", "hash": "small_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "small_IMG_3464.JPG", "path": null, "size": 69.75, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3464_686e529b87.JPG", "hash": "medium_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "medium_IMG_3464.JPG", "path": null, "size": 113.29, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3464_686e529b87.JPG", "hash": "thumbnail_IMG_3464_686e529b87", "mime": "image/jpeg", "name": "thumbnail_IMG_3464.JPG", "path": null, "size": 37.51, "width": 234, "height": 156}}	IMG_3464_686e529b87	.JPG	image/jpeg	10312.72	/uploads/IMG_3464_686e529b87.JPG	\N	local	\N	\N	\N	2021-12-07 21:26:08.216+01	2021-12-07 21:26:08.216+01
17	Screenshot (221).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_221_ed19682d28.png", "hash": "large_Screenshot_221_ed19682d28", "mime": "image/png", "name": "large_Screenshot (221).png", "path": null, "size": 1574.53, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_221_ed19682d28.png", "hash": "small_Screenshot_221_ed19682d28", "mime": "image/png", "name": "small_Screenshot (221).png", "path": null, "size": 406.48, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_221_ed19682d28.png", "hash": "medium_Screenshot_221_ed19682d28", "mime": "image/png", "name": "medium_Screenshot (221).png", "path": null, "size": 900.26, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_221_ed19682d28.png", "hash": "thumbnail_Screenshot_221_ed19682d28", "mime": "image/png", "name": "thumbnail_Screenshot (221).png", "path": null, "size": 100.33, "width": 245, "height": 138}}	Screenshot_221_ed19682d28	.png	image/png	2011.98	/uploads/Screenshot_221_ed19682d28.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.202+01	2021-11-26 03:52:55.202+01
43	IMG_4034.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4034_d6a78c80f5.JPG", "hash": "large_IMG_4034_d6a78c80f5", "mime": "image/jpeg", "name": "large_IMG_4034.JPG", "path": null, "size": 53.16, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4034_d6a78c80f5.JPG", "hash": "small_IMG_4034_d6a78c80f5", "mime": "image/jpeg", "name": "small_IMG_4034.JPG", "path": null, "size": 16.24, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4034_d6a78c80f5.JPG", "hash": "medium_IMG_4034_d6a78c80f5", "mime": "image/jpeg", "name": "medium_IMG_4034.JPG", "path": null, "size": 32.11, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4034_d6a78c80f5.JPG", "hash": "thumbnail_IMG_4034_d6a78c80f5", "mime": "image/jpeg", "name": "thumbnail_IMG_4034.JPG", "path": null, "size": 5.04, "width": 234, "height": 156}}	IMG_4034_d6a78c80f5	.JPG	image/jpeg	1267.58	/uploads/IMG_4034_d6a78c80f5.JPG	\N	local	\N	\N	\N	2021-11-26 04:29:18.876+01	2021-11-26 04:29:18.876+01
75	IMG_20211005_125555.jpg	\N	\N	4000	1840	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_125555_84f3099380.jpg", "hash": "thumbnail_IMG_20211005_125555_84f3099380", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_125555.jpg", "path": null, "size": 16.44, "width": 245, "height": 113}}	IMG_20211005_125555_84f3099380	.jpg	image/jpeg	2798.44	/uploads/IMG_20211005_125555_84f3099380.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.187+01	2021-11-26 07:31:06.187+01
83	IMG_20211005_130412.jpg	\N	\N	4000	3000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_130412_e9ed324565.jpg", "hash": "thumbnail_IMG_20211005_130412_e9ed324565", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_130412.jpg", "path": null, "size": 48.88, "width": 208, "height": 156}}	IMG_20211005_130412_e9ed324565	.jpg	image/jpeg	7658.60	/uploads/IMG_20211005_130412_e9ed324565.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.289+01	2021-11-26 07:31:06.289+01
98	IMG_3114.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3114_b0113af450.JPG", "hash": "thumbnail_IMG_3114_b0113af450", "mime": "image/jpeg", "name": "thumbnail_IMG_3114.JPG", "path": null, "size": 40.18, "width": 234, "height": 156}}	IMG_3114_b0113af450	.JPG	image/jpeg	11129.85	/uploads/IMG_3114_b0113af450.JPG	\N	local	\N	\N	\N	2021-11-26 07:48:32.421+01	2021-11-26 07:48:32.421+01
126	IMG_4103.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4103_5c69a78105.JPG", "hash": "large_IMG_4103_5c69a78105", "mime": "image/jpeg", "name": "large_IMG_4103.JPG", "path": null, "size": 139.82, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4103_5c69a78105.JPG", "hash": "small_IMG_4103_5c69a78105", "mime": "image/jpeg", "name": "small_IMG_4103.JPG", "path": null, "size": 64.5, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4103_5c69a78105.JPG", "hash": "medium_IMG_4103_5c69a78105", "mime": "image/jpeg", "name": "medium_IMG_4103.JPG", "path": null, "size": 97.98, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4103_5c69a78105.JPG", "hash": "thumbnail_IMG_4103_5c69a78105", "mime": "image/jpeg", "name": "thumbnail_IMG_4103.JPG", "path": null, "size": 37.28, "width": 234, "height": 156}}	IMG_4103_5c69a78105	.JPG	image/jpeg	6940.09	/uploads/IMG_4103_5c69a78105.JPG	\N	local	\N	\N	\N	2021-11-26 09:08:42.941+01	2021-11-26 09:08:42.941+01
144	IMG_3369.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3369_a290155a71.JPG", "hash": "large_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "large_IMG_3369.JPG", "path": null, "size": 93.11, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3369_a290155a71.JPG", "hash": "small_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "small_IMG_3369.JPG", "path": null, "size": 50.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3369_a290155a71.JPG", "hash": "medium_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "medium_IMG_3369.JPG", "path": null, "size": 69.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3369_a290155a71.JPG", "hash": "thumbnail_IMG_3369_a290155a71", "mime": "image/jpeg", "name": "thumbnail_IMG_3369.JPG", "path": null, "size": 33.81, "width": 234, "height": 156}}	IMG_3369_a290155a71	.JPG	image/jpeg	7810.87	/uploads/IMG_3369_a290155a71.JPG	\N	local	\N	\N	\N	2021-12-07 21:26:08.267+01	2021-12-07 21:26:08.267+01
160	100gr 17.500 original.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_100gr_17_500_original_8b8166c2c4.JPG", "hash": "large_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "large_100gr 17.500 original.JPG", "path": null, "size": 77.55, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_100gr_17_500_original_8b8166c2c4.JPG", "hash": "small_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "small_100gr 17.500 original.JPG", "path": null, "size": 39.72, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_100gr_17_500_original_8b8166c2c4.JPG", "hash": "medium_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "medium_100gr 17.500 original.JPG", "path": null, "size": 55.62, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_100gr_17_500_original_8b8166c2c4.JPG", "hash": "thumbnail_100gr_17_500_original_8b8166c2c4", "mime": "image/jpeg", "name": "thumbnail_100gr 17.500 original.JPG", "path": null, "size": 28.2, "width": 234, "height": 156}}	100gr_17_500_original_8b8166c2c4	.JPG	image/jpeg	8457.26	/uploads/100gr_17_500_original_8b8166c2c4.JPG	\N	local	\N	\N	\N	2021-12-07 23:41:01.458+01	2021-12-07 23:41:01.458+01
18	Screenshot (224).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_224_8d5de876d8.png", "hash": "large_Screenshot_224_8d5de876d8", "mime": "image/png", "name": "large_Screenshot (224).png", "path": null, "size": 1483.19, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_224_8d5de876d8.png", "hash": "small_Screenshot_224_8d5de876d8", "mime": "image/png", "name": "small_Screenshot (224).png", "path": null, "size": 387.39, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_224_8d5de876d8.png", "hash": "medium_Screenshot_224_8d5de876d8", "mime": "image/png", "name": "medium_Screenshot (224).png", "path": null, "size": 852.18, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_224_8d5de876d8.png", "hash": "thumbnail_Screenshot_224_8d5de876d8", "mime": "image/png", "name": "thumbnail_Screenshot (224).png", "path": null, "size": 96.76, "width": 245, "height": 138}}	Screenshot_224_8d5de876d8	.png	image/png	1920.37	/uploads/Screenshot_224_8d5de876d8.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.237+01	2021-11-26 03:52:55.237+01
45	IMG_4039.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4039_7d203eb7cf.JPG", "hash": "large_IMG_4039_7d203eb7cf", "mime": "image/jpeg", "name": "large_IMG_4039.JPG", "path": null, "size": 77.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4039_7d203eb7cf.JPG", "hash": "small_IMG_4039_7d203eb7cf", "mime": "image/jpeg", "name": "small_IMG_4039.JPG", "path": null, "size": 24.92, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4039_7d203eb7cf.JPG", "hash": "medium_IMG_4039_7d203eb7cf", "mime": "image/jpeg", "name": "medium_IMG_4039.JPG", "path": null, "size": 47.35, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4039_7d203eb7cf.JPG", "hash": "thumbnail_IMG_4039_7d203eb7cf", "mime": "image/jpeg", "name": "thumbnail_IMG_4039.JPG", "path": null, "size": 7.59, "width": 234, "height": 156}}	IMG_4039_7d203eb7cf	.JPG	image/jpeg	1323.70	/uploads/IMG_4039_7d203eb7cf.JPG	\N	local	\N	\N	\N	2021-11-26 04:29:19.375+01	2021-11-26 04:29:19.375+01
76	IMG_4002.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4002_db78969a66.JPG", "hash": "thumbnail_IMG_4002_db78969a66", "mime": "image/jpeg", "name": "thumbnail_IMG_4002.JPG", "path": null, "size": 43.62, "width": 234, "height": 156}}	IMG_4002_db78969a66	.JPG	image/jpeg	10104.61	/uploads/IMG_4002_db78969a66.JPG	\N	local	\N	\N	\N	2021-11-26 07:31:06.188+01	2021-11-26 07:31:06.188+01
99	IMG_20210920_113122.jpg	\N	\N	4000	3000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20210920_113122_7f99aba48f.jpg", "hash": "thumbnail_IMG_20210920_113122_7f99aba48f", "mime": "image/jpeg", "name": "thumbnail_IMG_20210920_113122.jpg", "path": null, "size": 42.55, "width": 208, "height": 156}}	IMG_20210920_113122_7f99aba48f	.jpg	image/jpeg	6784.18	/uploads/IMG_20210920_113122_7f99aba48f.jpg	\N	local	\N	\N	\N	2021-11-26 07:48:32.439+01	2021-11-26 07:48:32.439+01
127	LEUJTD3.jpg	\N	\N	7817	7818	{"large": {"ext": ".jpg", "url": "/uploads/large_LEUJTD_3_c9abfcc9c6.jpg", "hash": "large_LEUJTD_3_c9abfcc9c6", "mime": "image/jpeg", "name": "large_LEUJTD3.jpg", "path": null, "size": 49.65, "width": 1000, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_LEUJTD_3_c9abfcc9c6.jpg", "hash": "small_LEUJTD_3_c9abfcc9c6", "mime": "image/jpeg", "name": "small_LEUJTD3.jpg", "path": null, "size": 28.81, "width": 500, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_LEUJTD_3_c9abfcc9c6.jpg", "hash": "medium_LEUJTD_3_c9abfcc9c6", "mime": "image/jpeg", "name": "medium_LEUJTD3.jpg", "path": null, "size": 39.03, "width": 750, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_LEUJTD_3_c9abfcc9c6.jpg", "hash": "thumbnail_LEUJTD_3_c9abfcc9c6", "mime": "image/jpeg", "name": "thumbnail_LEUJTD3.jpg", "path": null, "size": 16.97, "width": 156, "height": 156}}	LEUJTD_3_c9abfcc9c6	.jpg	image/jpeg	1744.72	/uploads/LEUJTD_3_c9abfcc9c6.jpg	\N	local	\N	\N	\N	2021-11-26 09:08:42.941+01	2021-11-26 09:08:42.941+01
145	IMG_3465.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3465_d7e506a12a.JPG", "hash": "large_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "large_IMG_3465.JPG", "path": null, "size": 181.25, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3465_d7e506a12a.JPG", "hash": "small_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "small_IMG_3465.JPG", "path": null, "size": 71.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3465_d7e506a12a.JPG", "hash": "medium_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "medium_IMG_3465.JPG", "path": null, "size": 118.52, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3465_d7e506a12a.JPG", "hash": "thumbnail_IMG_3465_d7e506a12a", "mime": "image/jpeg", "name": "thumbnail_IMG_3465.JPG", "path": null, "size": 38.41, "width": 234, "height": 156}}	IMG_3465_d7e506a12a	.JPG	image/jpeg	10732.68	/uploads/IMG_3465_d7e506a12a.JPG	\N	local	\N	\N	\N	2021-12-07 21:26:08.301+01	2021-12-07 21:26:08.301+01
159	IMG_3617.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3617_9f52fc8388.JPG", "hash": "large_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "large_IMG_3617.JPG", "path": null, "size": 90.7, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3617_9f52fc8388.JPG", "hash": "small_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "small_IMG_3617.JPG", "path": null, "size": 44.25, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3617_9f52fc8388.JPG", "hash": "medium_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "medium_IMG_3617.JPG", "path": null, "size": 64.08, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3617_9f52fc8388.JPG", "hash": "thumbnail_IMG_3617_9f52fc8388", "mime": "image/jpeg", "name": "thumbnail_IMG_3617.JPG", "path": null, "size": 30.07, "width": 234, "height": 156}}	IMG_3617_9f52fc8388	.JPG	image/jpeg	7451.93	/uploads/IMG_3617_9f52fc8388.JPG	\N	local	\N	\N	\N	2021-12-07 23:41:01.461+01	2021-12-07 23:41:01.461+01
19	Screenshot (220).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_220_bfde96044b.png", "hash": "large_Screenshot_220_bfde96044b", "mime": "image/png", "name": "large_Screenshot (220).png", "path": null, "size": 1685.12, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_220_bfde96044b.png", "hash": "small_Screenshot_220_bfde96044b", "mime": "image/png", "name": "small_Screenshot (220).png", "path": null, "size": 428.67, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_220_bfde96044b.png", "hash": "medium_Screenshot_220_bfde96044b", "mime": "image/png", "name": "medium_Screenshot (220).png", "path": null, "size": 957.34, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_220_bfde96044b.png", "hash": "thumbnail_Screenshot_220_bfde96044b", "mime": "image/png", "name": "thumbnail_Screenshot (220).png", "path": null, "size": 104.58, "width": 245, "height": 138}}	Screenshot_220_bfde96044b	.png	image/png	2240.17	/uploads/Screenshot_220_bfde96044b.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.243+01	2021-11-26 03:52:55.243+01
46	IMG_4043.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4043_d9dfb560a2.JPG", "hash": "large_IMG_4043_d9dfb560a2", "mime": "image/jpeg", "name": "large_IMG_4043.JPG", "path": null, "size": 57, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4043_d9dfb560a2.JPG", "hash": "small_IMG_4043_d9dfb560a2", "mime": "image/jpeg", "name": "small_IMG_4043.JPG", "path": null, "size": 18.36, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4043_d9dfb560a2.JPG", "hash": "medium_IMG_4043_d9dfb560a2", "mime": "image/jpeg", "name": "medium_IMG_4043.JPG", "path": null, "size": 34.77, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4043_d9dfb560a2.JPG", "hash": "thumbnail_IMG_4043_d9dfb560a2", "mime": "image/jpeg", "name": "thumbnail_IMG_4043.JPG", "path": null, "size": 5.77, "width": 234, "height": 156}}	IMG_4043_d9dfb560a2	.JPG	image/jpeg	1234.34	/uploads/IMG_4043_d9dfb560a2.JPG	\N	local	\N	\N	\N	2021-11-26 04:44:01.815+01	2021-11-26 04:44:01.815+01
77	IMG_20211005_125949.jpg	\N	\N	4000	1840	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_125949_0000bea708.jpg", "hash": "thumbnail_IMG_20211005_125949_0000bea708", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_125949.jpg", "path": null, "size": 25.07, "width": 245, "height": 113}}	IMG_20211005_125949_0000bea708	.jpg	image/jpeg	3743.85	/uploads/IMG_20211005_125949_0000bea708.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.197+01	2021-11-26 07:31:06.197+01
102	IMG_3191.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3191_861c866bba.JPG", "hash": "thumbnail_IMG_3191_861c866bba", "mime": "image/jpeg", "name": "thumbnail_IMG_3191.JPG", "path": null, "size": 32.01, "width": 234, "height": 156}}	IMG_3191_861c866bba	.JPG	image/jpeg	10314.54	/uploads/IMG_3191_861c866bba.JPG	\N	local	\N	\N	\N	2021-11-26 07:52:04.102+01	2021-11-26 07:52:04.102+01
105	IMG_3194.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3194_f3c28dffec.JPG", "hash": "thumbnail_IMG_3194_f3c28dffec", "mime": "image/jpeg", "name": "thumbnail_IMG_3194.JPG", "path": null, "size": 29.42, "width": 234, "height": 156}}	IMG_3194_f3c28dffec	.JPG	image/jpeg	8978.04	/uploads/IMG_3194_f3c28dffec.JPG	\N	local	\N	\N	\N	2021-11-26 07:52:04.159+01	2021-11-26 07:52:04.159+01
128	Screenshot (206).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_206_5d796a40e8.png", "hash": "large_Screenshot_206_5d796a40e8", "mime": "image/png", "name": "large_Screenshot (206).png", "path": null, "size": 1645.47, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_206_5d796a40e8.png", "hash": "small_Screenshot_206_5d796a40e8", "mime": "image/png", "name": "small_Screenshot (206).png", "path": null, "size": 430.5, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_206_5d796a40e8.png", "hash": "medium_Screenshot_206_5d796a40e8", "mime": "image/png", "name": "medium_Screenshot (206).png", "path": null, "size": 947.98, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_206_5d796a40e8.png", "hash": "thumbnail_Screenshot_206_5d796a40e8", "mime": "image/png", "name": "thumbnail_Screenshot (206).png", "path": null, "size": 106.47, "width": 245, "height": 138}}	Screenshot_206_5d796a40e8	.png	image/png	2023.79	/uploads/Screenshot_206_5d796a40e8.png	\N	local	\N	\N	\N	2021-11-26 09:08:42.96+01	2021-11-26 09:08:42.96+01
129	Screenshot (207).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_207_37a383b470.png", "hash": "large_Screenshot_207_37a383b470", "mime": "image/png", "name": "large_Screenshot (207).png", "path": null, "size": 1608.89, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_207_37a383b470.png", "hash": "small_Screenshot_207_37a383b470", "mime": "image/png", "name": "small_Screenshot (207).png", "path": null, "size": 423.09, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_207_37a383b470.png", "hash": "medium_Screenshot_207_37a383b470", "mime": "image/png", "name": "medium_Screenshot (207).png", "path": null, "size": 928.26, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_207_37a383b470.png", "hash": "thumbnail_Screenshot_207_37a383b470", "mime": "image/png", "name": "thumbnail_Screenshot (207).png", "path": null, "size": 105.38, "width": 245, "height": 138}}	Screenshot_207_37a383b470	.png	image/png	1950.77	/uploads/Screenshot_207_37a383b470.png	\N	local	\N	\N	\N	2021-11-26 09:08:43.018+01	2021-11-26 09:08:43.018+01
146	IMG_3469.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3469_3e7064df19.JPG", "hash": "large_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "large_IMG_3469.JPG", "path": null, "size": 198.32, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3469_3e7064df19.JPG", "hash": "small_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "small_IMG_3469.JPG", "path": null, "size": 77.44, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3469_3e7064df19.JPG", "hash": "medium_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "medium_IMG_3469.JPG", "path": null, "size": 128.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3469_3e7064df19.JPG", "hash": "thumbnail_IMG_3469_3e7064df19", "mime": "image/jpeg", "name": "thumbnail_IMG_3469.JPG", "path": null, "size": 40.14, "width": 234, "height": 156}}	IMG_3469_3e7064df19	.JPG	image/jpeg	11220.46	/uploads/IMG_3469_3e7064df19.JPG	\N	local	\N	\N	\N	2021-12-07 21:26:08.448+01	2021-12-07 21:26:08.448+01
20	Screenshot (223).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_223_49a26f0981.png", "hash": "large_Screenshot_223_49a26f0981", "mime": "image/png", "name": "large_Screenshot (223).png", "path": null, "size": 1687.75, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_223_49a26f0981.png", "hash": "small_Screenshot_223_49a26f0981", "mime": "image/png", "name": "small_Screenshot (223).png", "path": null, "size": 426.42, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_223_49a26f0981.png", "hash": "medium_Screenshot_223_49a26f0981", "mime": "image/png", "name": "medium_Screenshot (223).png", "path": null, "size": 956.22, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_223_49a26f0981.png", "hash": "thumbnail_Screenshot_223_49a26f0981", "mime": "image/png", "name": "thumbnail_Screenshot (223).png", "path": null, "size": 103.22, "width": 245, "height": 138}}	Screenshot_223_49a26f0981	.png	image/png	2260.57	/uploads/Screenshot_223_49a26f0981.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.256+01	2021-11-26 03:52:55.256+01
47	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_4ee184cb98.JPG", "hash": "large_IMG_4037_4ee184cb98", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_4ee184cb98.JPG", "hash": "small_IMG_4037_4ee184cb98", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_4ee184cb98.JPG", "hash": "medium_IMG_4037_4ee184cb98", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_4ee184cb98.JPG", "hash": "thumbnail_IMG_4037_4ee184cb98", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_4ee184cb98	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_4ee184cb98.JPG	\N	local	\N	\N	\N	2021-11-26 04:45:42.694+01	2021-11-26 04:45:42.694+01
49	IMG_4040.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4040_0298eac23d.JPG", "hash": "large_IMG_4040_0298eac23d", "mime": "image/jpeg", "name": "large_IMG_4040.JPG", "path": null, "size": 65.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4040_0298eac23d.JPG", "hash": "small_IMG_4040_0298eac23d", "mime": "image/jpeg", "name": "small_IMG_4040.JPG", "path": null, "size": 21.61, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4040_0298eac23d.JPG", "hash": "medium_IMG_4040_0298eac23d", "mime": "image/jpeg", "name": "medium_IMG_4040.JPG", "path": null, "size": 40.88, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4040_0298eac23d.JPG", "hash": "thumbnail_IMG_4040_0298eac23d", "mime": "image/jpeg", "name": "thumbnail_IMG_4040.JPG", "path": null, "size": 6.56, "width": 234, "height": 156}}	IMG_4040_0298eac23d	.JPG	image/jpeg	1276.12	/uploads/IMG_4040_0298eac23d.JPG	\N	local	\N	\N	\N	2021-11-26 04:45:42.747+01	2021-11-26 04:45:42.747+01
50	IMG_4038.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4038_25a29700de.JPG", "hash": "large_IMG_4038_25a29700de", "mime": "image/jpeg", "name": "large_IMG_4038.JPG", "path": null, "size": 68.93, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4038_25a29700de.JPG", "hash": "small_IMG_4038_25a29700de", "mime": "image/jpeg", "name": "small_IMG_4038.JPG", "path": null, "size": 21.5, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4038_25a29700de.JPG", "hash": "medium_IMG_4038_25a29700de", "mime": "image/jpeg", "name": "medium_IMG_4038.JPG", "path": null, "size": 41.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4038_25a29700de.JPG", "hash": "thumbnail_IMG_4038_25a29700de", "mime": "image/jpeg", "name": "thumbnail_IMG_4038.JPG", "path": null, "size": 6.5, "width": 234, "height": 156}}	IMG_4038_25a29700de	.JPG	image/jpeg	1585.43	/uploads/IMG_4038_25a29700de.JPG	\N	local	\N	\N	\N	2021-11-26 04:45:42.836+01	2021-11-26 04:45:42.836+01
78	IMG_20211005_125947.jpg	\N	\N	4000	1840	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_125947_deda36e0a2.jpg", "hash": "thumbnail_IMG_20211005_125947_deda36e0a2", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_125947.jpg", "path": null, "size": 25.9, "width": 245, "height": 113}}	IMG_20211005_125947_deda36e0a2	.jpg	image/jpeg	3968.37	/uploads/IMG_20211005_125947_deda36e0a2.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.197+01	2021-11-26 07:31:06.197+01
103	IMG_3192.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3192_339d670c09.JPG", "hash": "thumbnail_IMG_3192_339d670c09", "mime": "image/jpeg", "name": "thumbnail_IMG_3192.JPG", "path": null, "size": 29.59, "width": 234, "height": 156}}	IMG_3192_339d670c09	.JPG	image/jpeg	10181.65	/uploads/IMG_3192_339d670c09.JPG	\N	local	\N	\N	\N	2021-11-26 07:52:04.124+01	2021-11-26 07:52:04.124+01
130	IMG_4099.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4099_25c931d4e6.JPG", "hash": "large_IMG_4099_25c931d4e6", "mime": "image/jpeg", "name": "large_IMG_4099.JPG", "path": null, "size": 89.17, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4099_25c931d4e6.JPG", "hash": "small_IMG_4099_25c931d4e6", "mime": "image/jpeg", "name": "small_IMG_4099.JPG", "path": null, "size": 45.69, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4099_25c931d4e6.JPG", "hash": "medium_IMG_4099_25c931d4e6", "mime": "image/jpeg", "name": "medium_IMG_4099.JPG", "path": null, "size": 64.61, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4099_25c931d4e6.JPG", "hash": "thumbnail_IMG_4099_25c931d4e6", "mime": "image/jpeg", "name": "thumbnail_IMG_4099.JPG", "path": null, "size": 31.08, "width": 234, "height": 156}}	IMG_4099_25c931d4e6	.JPG	image/jpeg	6388.54	/uploads/IMG_4099_25c931d4e6.JPG	\N	local	\N	\N	\N	2021-11-26 09:47:26.599+01	2021-11-26 09:47:26.599+01
21	Screenshot (225).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_225_5d421951bf.png", "hash": "large_Screenshot_225_5d421951bf", "mime": "image/png", "name": "large_Screenshot (225).png", "path": null, "size": 1562.03, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_225_5d421951bf.png", "hash": "small_Screenshot_225_5d421951bf", "mime": "image/png", "name": "small_Screenshot (225).png", "path": null, "size": 404.17, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_225_5d421951bf.png", "hash": "medium_Screenshot_225_5d421951bf", "mime": "image/png", "name": "medium_Screenshot (225).png", "path": null, "size": 894.4, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_225_5d421951bf.png", "hash": "thumbnail_Screenshot_225_5d421951bf", "mime": "image/png", "name": "thumbnail_Screenshot (225).png", "path": null, "size": 100.01, "width": 245, "height": 138}}	Screenshot_225_5d421951bf	.png	image/png	1998.31	/uploads/Screenshot_225_5d421951bf.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.306+01	2021-11-26 03:52:55.306+01
23	Screenshot (226).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_226_e62242f69e.png", "hash": "large_Screenshot_226_e62242f69e", "mime": "image/png", "name": "large_Screenshot (226).png", "path": null, "size": 1692.51, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_226_e62242f69e.png", "hash": "small_Screenshot_226_e62242f69e", "mime": "image/png", "name": "small_Screenshot (226).png", "path": null, "size": 427.92, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_226_e62242f69e.png", "hash": "medium_Screenshot_226_e62242f69e", "mime": "image/png", "name": "medium_Screenshot (226).png", "path": null, "size": 959.75, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_226_e62242f69e.png", "hash": "thumbnail_Screenshot_226_e62242f69e", "mime": "image/png", "name": "thumbnail_Screenshot (226).png", "path": null, "size": 103.47, "width": 245, "height": 138}}	Screenshot_226_e62242f69e	.png	image/png	2229.81	/uploads/Screenshot_226_e62242f69e.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.363+01	2021-11-26 03:52:55.363+01
48	IMG_4039.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4039_9fb9a4679b.JPG", "hash": "large_IMG_4039_9fb9a4679b", "mime": "image/jpeg", "name": "large_IMG_4039.JPG", "path": null, "size": 77.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4039_9fb9a4679b.JPG", "hash": "small_IMG_4039_9fb9a4679b", "mime": "image/jpeg", "name": "small_IMG_4039.JPG", "path": null, "size": 24.92, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4039_9fb9a4679b.JPG", "hash": "medium_IMG_4039_9fb9a4679b", "mime": "image/jpeg", "name": "medium_IMG_4039.JPG", "path": null, "size": 47.35, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4039_9fb9a4679b.JPG", "hash": "thumbnail_IMG_4039_9fb9a4679b", "mime": "image/jpeg", "name": "thumbnail_IMG_4039.JPG", "path": null, "size": 7.59, "width": 234, "height": 156}}	IMG_4039_9fb9a4679b	.JPG	image/jpeg	1323.70	/uploads/IMG_4039_9fb9a4679b.JPG	\N	local	\N	\N	\N	2021-11-26 04:45:42.723+01	2021-11-26 04:45:42.723+01
79	IMG_4003.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4003_a5672921d0.JPG", "hash": "thumbnail_IMG_4003_a5672921d0", "mime": "image/jpeg", "name": "thumbnail_IMG_4003.JPG", "path": null, "size": 41.38, "width": 234, "height": 156}}	IMG_4003_a5672921d0	.JPG	image/jpeg	9725.54	/uploads/IMG_4003_a5672921d0.JPG	\N	local	\N	\N	\N	2021-11-26 07:31:06.214+01	2021-11-26 07:31:06.214+01
104	IMG_3193.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3193_cd0c8cd3e7.JPG", "hash": "thumbnail_IMG_3193_cd0c8cd3e7", "mime": "image/jpeg", "name": "thumbnail_IMG_3193.JPG", "path": null, "size": 30.55, "width": 234, "height": 156}}	IMG_3193_cd0c8cd3e7	.JPG	image/jpeg	10206.98	/uploads/IMG_3193_cd0c8cd3e7.JPG	\N	local	\N	\N	\N	2021-11-26 07:52:04.15+01	2021-11-26 07:52:04.15+01
131	qrcode_rumahdigitalgombengsari.com.png	\N	\N	450	450	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_qrcode_rumahdigitalgombengsari_com_7c544af250.png", "hash": "thumbnail_qrcode_rumahdigitalgombengsari_com_7c544af250", "mime": "image/png", "name": "thumbnail_qrcode_rumahdigitalgombengsari.com.png", "path": null, "size": 15.66, "width": 156, "height": 156}}	qrcode_rumahdigitalgombengsari_com_7c544af250	.png	image/png	6.55	/uploads/qrcode_rumahdigitalgombengsari_com_7c544af250.png	\N	local	\N	\N	\N	2021-11-26 09:50:44.693+01	2021-11-26 09:50:44.693+01
147	IMG_3240.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3240_78fd2d5b58.JPG", "hash": "large_IMG_3240_78fd2d5b58", "mime": "image/jpeg", "name": "large_IMG_3240.JPG", "path": null, "size": 134.82, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3240_78fd2d5b58.JPG", "hash": "small_IMG_3240_78fd2d5b58", "mime": "image/jpeg", "name": "small_IMG_3240.JPG", "path": null, "size": 57.88, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3240_78fd2d5b58.JPG", "hash": "medium_IMG_3240_78fd2d5b58", "mime": "image/jpeg", "name": "medium_IMG_3240.JPG", "path": null, "size": 90.42, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3240_78fd2d5b58.JPG", "hash": "thumbnail_IMG_3240_78fd2d5b58", "mime": "image/jpeg", "name": "thumbnail_IMG_3240.JPG", "path": null, "size": 34.4, "width": 234, "height": 156}}	IMG_3240_78fd2d5b58	.JPG	image/jpeg	10414.10	/uploads/IMG_3240_78fd2d5b58.JPG	\N	local	\N	\N	\N	2021-12-07 21:35:59.492+01	2021-12-07 21:35:59.492+01
163	200gr 40rb lanang.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "large_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "large_200gr 40rb lanang.JPG", "path": null, "size": 97.8, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "small_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "small_200gr 40rb lanang.JPG", "path": null, "size": 47.98, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "medium_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "medium_200gr 40rb lanang.JPG", "path": null, "size": 69.28, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_200gr_40rb_lanang_e3e18ffe86.JPG", "hash": "thumbnail_200gr_40rb_lanang_e3e18ffe86", "mime": "image/jpeg", "name": "thumbnail_200gr 40rb lanang.JPG", "path": null, "size": 31.82, "width": 234, "height": 156}}	200gr_40rb_lanang_e3e18ffe86	.JPG	image/jpeg	9129.42	/uploads/200gr_40rb_lanang_e3e18ffe86.JPG	\N	local	\N	\N	\N	2021-12-07 23:42:09.176+01	2021-12-07 23:42:09.176+01
22	Screenshot (222).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_222_0e101f2146.png", "hash": "large_Screenshot_222_0e101f2146", "mime": "image/png", "name": "large_Screenshot (222).png", "path": null, "size": 1651.51, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_222_0e101f2146.png", "hash": "small_Screenshot_222_0e101f2146", "mime": "image/png", "name": "small_Screenshot (222).png", "path": null, "size": 420.33, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_222_0e101f2146.png", "hash": "medium_Screenshot_222_0e101f2146", "mime": "image/png", "name": "medium_Screenshot (222).png", "path": null, "size": 938.45, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_222_0e101f2146.png", "hash": "thumbnail_Screenshot_222_0e101f2146", "mime": "image/png", "name": "thumbnail_Screenshot (222).png", "path": null, "size": 102.41, "width": 245, "height": 138}}	Screenshot_222_0e101f2146	.png	image/png	2146.95	/uploads/Screenshot_222_0e101f2146.png	\N	local	\N	\N	\N	2021-11-26 03:52:55.307+01	2021-11-26 03:52:55.307+01
51	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_2524ad9d35.JPG", "hash": "large_IMG_4037_2524ad9d35", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_2524ad9d35.JPG", "hash": "small_IMG_4037_2524ad9d35", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_2524ad9d35.JPG", "hash": "medium_IMG_4037_2524ad9d35", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_2524ad9d35.JPG", "hash": "thumbnail_IMG_4037_2524ad9d35", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_2524ad9d35	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_2524ad9d35.JPG	\N	local	\N	\N	\N	2021-11-26 04:47:34.232+01	2021-11-26 04:47:34.232+01
80	IMG_20211005_125959.jpg	\N	\N	4000	1840	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_125959_15143c42cf.jpg", "hash": "thumbnail_IMG_20211005_125959_15143c42cf", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_125959.jpg", "path": null, "size": 30.31, "width": 245, "height": 113}}	IMG_20211005_125959_15143c42cf	.jpg	image/jpeg	4700.91	/uploads/IMG_20211005_125959_15143c42cf.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.216+01	2021-11-26 07:31:06.216+01
106	IMG_3187.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3187_1e5876e546.JPG", "hash": "thumbnail_IMG_3187_1e5876e546", "mime": "image/jpeg", "name": "thumbnail_IMG_3187.JPG", "path": null, "size": 31.44, "width": 234, "height": 156}}	IMG_3187_1e5876e546	.JPG	image/jpeg	8841.84	/uploads/IMG_3187_1e5876e546.JPG	\N	local	\N	\N	\N	2021-11-26 07:55:15.661+01	2021-11-26 07:55:15.661+01
107	IMG_3184.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3184_0476b8f512.JPG", "hash": "thumbnail_IMG_3184_0476b8f512", "mime": "image/jpeg", "name": "thumbnail_IMG_3184.JPG", "path": null, "size": 31.02, "width": 234, "height": 156}}	IMG_3184_0476b8f512	.JPG	image/jpeg	9174.34	/uploads/IMG_3184_0476b8f512.JPG	\N	local	\N	\N	\N	2021-11-26 07:55:15.717+01	2021-11-26 07:55:15.717+01
132	Chrysanthemum.jpg	\N	\N	1024	768	{"large": {"ext": ".jpg", "url": "/uploads/large_Chrysanthemum_7ec7bed627.jpg", "hash": "large_Chrysanthemum_7ec7bed627", "mime": "image/jpeg", "name": "large_Chrysanthemum.jpg", "path": null, "size": 145.13, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_Chrysanthemum_7ec7bed627.jpg", "hash": "small_Chrysanthemum_7ec7bed627", "mime": "image/jpeg", "name": "small_Chrysanthemum.jpg", "path": null, "size": 55.99, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Chrysanthemum_7ec7bed627.jpg", "hash": "medium_Chrysanthemum_7ec7bed627", "mime": "image/jpeg", "name": "medium_Chrysanthemum.jpg", "path": null, "size": 97.72, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Chrysanthemum_7ec7bed627.jpg", "hash": "thumbnail_Chrysanthemum_7ec7bed627", "mime": "image/jpeg", "name": "thumbnail_Chrysanthemum.jpg", "path": null, "size": 23.62, "width": 208, "height": 156}}	Chrysanthemum_7ec7bed627	.jpg	image/jpeg	879.39	/uploads/Chrysanthemum_7ec7bed627.jpg	\N	local	\N	\N	\N	2021-11-27 06:53:55.51+01	2021-11-27 06:53:55.51+01
148	IMG_3241.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3241_ca7990d4a5.JPG", "hash": "large_IMG_3241_ca7990d4a5", "mime": "image/jpeg", "name": "large_IMG_3241.JPG", "path": null, "size": 132.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3241_ca7990d4a5.JPG", "hash": "small_IMG_3241_ca7990d4a5", "mime": "image/jpeg", "name": "small_IMG_3241.JPG", "path": null, "size": 60.18, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3241_ca7990d4a5.JPG", "hash": "medium_IMG_3241_ca7990d4a5", "mime": "image/jpeg", "name": "medium_IMG_3241.JPG", "path": null, "size": 91.68, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3241_ca7990d4a5.JPG", "hash": "thumbnail_IMG_3241_ca7990d4a5", "mime": "image/jpeg", "name": "thumbnail_IMG_3241.JPG", "path": null, "size": 35.75, "width": 234, "height": 156}}	IMG_3241_ca7990d4a5	.JPG	image/jpeg	10898.32	/uploads/IMG_3241_ca7990d4a5.JPG	\N	local	\N	\N	\N	2021-12-07 21:35:59.499+01	2021-12-07 21:35:59.499+01
164	IMG_3629.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3629_f063bc9868.JPG", "hash": "large_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "large_IMG_3629.JPG", "path": null, "size": 93.94, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3629_f063bc9868.JPG", "hash": "small_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "small_IMG_3629.JPG", "path": null, "size": 46.39, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3629_f063bc9868.JPG", "hash": "medium_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "medium_IMG_3629.JPG", "path": null, "size": 66.55, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3629_f063bc9868.JPG", "hash": "thumbnail_IMG_3629_f063bc9868", "mime": "image/jpeg", "name": "thumbnail_IMG_3629.JPG", "path": null, "size": 31.25, "width": 234, "height": 156}}	IMG_3629_f063bc9868	.JPG	image/jpeg	9183.50	/uploads/IMG_3629_f063bc9868.JPG	\N	local	\N	\N	\N	2021-12-07 23:42:09.18+01	2021-12-07 23:42:09.18+01
24	QNSJJDNs.png	\N	\N	1545	961	{"large": {"ext": ".png", "url": "/uploads/large_QNSJJD_Ns_5572e4f6fb.png", "hash": "large_QNSJJD_Ns_5572e4f6fb", "mime": "image/png", "name": "large_QNSJJDNs.png", "path": null, "size": 113.01, "width": 1000, "height": 622}, "small": {"ext": ".png", "url": "/uploads/small_QNSJJD_Ns_5572e4f6fb.png", "hash": "small_QNSJJD_Ns_5572e4f6fb", "mime": "image/png", "name": "small_QNSJJDNs.png", "path": null, "size": 42.74, "width": 500, "height": 311}, "medium": {"ext": ".png", "url": "/uploads/medium_QNSJJD_Ns_5572e4f6fb.png", "hash": "medium_QNSJJD_Ns_5572e4f6fb", "mime": "image/png", "name": "medium_QNSJJDNs.png", "path": null, "size": 74.62, "width": 750, "height": 467}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_QNSJJD_Ns_5572e4f6fb.png", "hash": "thumbnail_QNSJJD_Ns_5572e4f6fb", "mime": "image/png", "name": "thumbnail_QNSJJDNs.png", "path": null, "size": 16.3, "width": 245, "height": 152}}	QNSJJD_Ns_5572e4f6fb	.png	image/png	135.15	/uploads/QNSJJD_Ns_5572e4f6fb.png	\N	local	\N	\N	\N	2021-11-26 04:15:21.852+01	2021-11-26 04:15:21.852+01
30	IMG_4063.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4063_0ac30f22d7.JPG", "hash": "large_IMG_4063_0ac30f22d7", "mime": "image/jpeg", "name": "large_IMG_4063.JPG", "path": null, "size": 155.96, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4063_0ac30f22d7.JPG", "hash": "small_IMG_4063_0ac30f22d7", "mime": "image/jpeg", "name": "small_IMG_4063.JPG", "path": null, "size": 51.82, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4063_0ac30f22d7.JPG", "hash": "medium_IMG_4063_0ac30f22d7", "mime": "image/jpeg", "name": "medium_IMG_4063.JPG", "path": null, "size": 98.57, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4063_0ac30f22d7.JPG", "hash": "thumbnail_IMG_4063_0ac30f22d7", "mime": "image/jpeg", "name": "thumbnail_IMG_4063.JPG", "path": null, "size": 14.86, "width": 234, "height": 156}}	IMG_4063_0ac30f22d7	.JPG	image/jpeg	2518.54	/uploads/IMG_4063_0ac30f22d7.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.154+01	2021-11-26 04:15:23.154+01
52	IMG_4040.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4040_429448d23d.JPG", "hash": "large_IMG_4040_429448d23d", "mime": "image/jpeg", "name": "large_IMG_4040.JPG", "path": null, "size": 65.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4040_429448d23d.JPG", "hash": "small_IMG_4040_429448d23d", "mime": "image/jpeg", "name": "small_IMG_4040.JPG", "path": null, "size": 21.61, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4040_429448d23d.JPG", "hash": "medium_IMG_4040_429448d23d", "mime": "image/jpeg", "name": "medium_IMG_4040.JPG", "path": null, "size": 40.88, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4040_429448d23d.JPG", "hash": "thumbnail_IMG_4040_429448d23d", "mime": "image/jpeg", "name": "thumbnail_IMG_4040.JPG", "path": null, "size": 6.56, "width": 234, "height": 156}}	IMG_4040_429448d23d	.JPG	image/jpeg	1276.12	/uploads/IMG_4040_429448d23d.JPG	\N	local	\N	\N	\N	2021-11-26 04:47:34.232+01	2021-11-26 04:47:34.232+01
53	IMG_4039.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4039_3f7a326c28.JPG", "hash": "large_IMG_4039_3f7a326c28", "mime": "image/jpeg", "name": "large_IMG_4039.JPG", "path": null, "size": 77.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4039_3f7a326c28.JPG", "hash": "small_IMG_4039_3f7a326c28", "mime": "image/jpeg", "name": "small_IMG_4039.JPG", "path": null, "size": 24.92, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4039_3f7a326c28.JPG", "hash": "medium_IMG_4039_3f7a326c28", "mime": "image/jpeg", "name": "medium_IMG_4039.JPG", "path": null, "size": 47.35, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4039_3f7a326c28.JPG", "hash": "thumbnail_IMG_4039_3f7a326c28", "mime": "image/jpeg", "name": "thumbnail_IMG_4039.JPG", "path": null, "size": 7.59, "width": 234, "height": 156}}	IMG_4039_3f7a326c28	.JPG	image/jpeg	1323.70	/uploads/IMG_4039_3f7a326c28.JPG	\N	local	\N	\N	\N	2021-11-26 04:47:34.292+01	2021-11-26 04:47:34.292+01
54	IMG_4038.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4038_a8b16ae078.JPG", "hash": "large_IMG_4038_a8b16ae078", "mime": "image/jpeg", "name": "large_IMG_4038.JPG", "path": null, "size": 68.93, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4038_a8b16ae078.JPG", "hash": "small_IMG_4038_a8b16ae078", "mime": "image/jpeg", "name": "small_IMG_4038.JPG", "path": null, "size": 21.5, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4038_a8b16ae078.JPG", "hash": "medium_IMG_4038_a8b16ae078", "mime": "image/jpeg", "name": "medium_IMG_4038.JPG", "path": null, "size": 41.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4038_a8b16ae078.JPG", "hash": "thumbnail_IMG_4038_a8b16ae078", "mime": "image/jpeg", "name": "thumbnail_IMG_4038.JPG", "path": null, "size": 6.5, "width": 234, "height": 156}}	IMG_4038_a8b16ae078	.JPG	image/jpeg	1585.43	/uploads/IMG_4038_a8b16ae078.JPG	\N	local	\N	\N	\N	2021-11-26 04:47:34.406+01	2021-11-26 04:47:34.406+01
81	IMG_4001.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4001_816bc0b521.JPG", "hash": "thumbnail_IMG_4001_816bc0b521", "mime": "image/jpeg", "name": "thumbnail_IMG_4001.JPG", "path": null, "size": 40.3, "width": 234, "height": 156}}	IMG_4001_816bc0b521	.JPG	image/jpeg	7710.67	/uploads/IMG_4001_816bc0b521.JPG	\N	local	\N	\N	\N	2021-11-26 07:31:06.244+01	2021-11-26 07:31:06.244+01
108	IMG_3185.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3185_c3e4b282aa.JPG", "hash": "thumbnail_IMG_3185_c3e4b282aa", "mime": "image/jpeg", "name": "thumbnail_IMG_3185.JPG", "path": null, "size": 29.71, "width": 234, "height": 156}}	IMG_3185_c3e4b282aa	.JPG	image/jpeg	6756.33	/uploads/IMG_3185_c3e4b282aa.JPG	\N	local	\N	\N	\N	2021-11-26 07:55:15.735+01	2021-11-26 07:55:15.735+01
149	IMG_3281.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3281_f89c999680.JPG", "hash": "large_IMG_3281_f89c999680", "mime": "image/jpeg", "name": "large_IMG_3281.JPG", "path": null, "size": 112.3, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3281_f89c999680.JPG", "hash": "small_IMG_3281_f89c999680", "mime": "image/jpeg", "name": "small_IMG_3281.JPG", "path": null, "size": 52.48, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3281_f89c999680.JPG", "hash": "medium_IMG_3281_f89c999680", "mime": "image/jpeg", "name": "medium_IMG_3281.JPG", "path": null, "size": 78.65, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3281_f89c999680.JPG", "hash": "thumbnail_IMG_3281_f89c999680", "mime": "image/jpeg", "name": "thumbnail_IMG_3281.JPG", "path": null, "size": 32.72, "width": 234, "height": 156}}	IMG_3281_f89c999680	.JPG	image/jpeg	7480.84	/uploads/IMG_3281_f89c999680.JPG	\N	local	\N	\N	\N	2021-12-07 21:35:59.499+01	2021-12-07 21:35:59.499+01
25	IMG_4072.JPG	\N	\N	6000	3368	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4072_89bf945d94.JPG", "hash": "large_IMG_4072_89bf945d94", "mime": "image/jpeg", "name": "large_IMG_4072.JPG", "path": null, "size": 183.44, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4072_89bf945d94.JPG", "hash": "small_IMG_4072_89bf945d94", "mime": "image/jpeg", "name": "small_IMG_4072.JPG", "path": null, "size": 50.83, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4072_89bf945d94.JPG", "hash": "medium_IMG_4072_89bf945d94", "mime": "image/jpeg", "name": "medium_IMG_4072.JPG", "path": null, "size": 106.25, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4072_89bf945d94.JPG", "hash": "thumbnail_IMG_4072_89bf945d94", "mime": "image/jpeg", "name": "thumbnail_IMG_4072.JPG", "path": null, "size": 13.46, "width": 245, "height": 138}}	IMG_4072_89bf945d94	.JPG	image/jpeg	3273.03	/uploads/IMG_4072_89bf945d94.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.14+01	2021-11-26 04:15:23.14+01
55	IMG_4039.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4039_3c8c1ca973.JPG", "hash": "large_IMG_4039_3c8c1ca973", "mime": "image/jpeg", "name": "large_IMG_4039.JPG", "path": null, "size": 77.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4039_3c8c1ca973.JPG", "hash": "small_IMG_4039_3c8c1ca973", "mime": "image/jpeg", "name": "small_IMG_4039.JPG", "path": null, "size": 24.92, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4039_3c8c1ca973.JPG", "hash": "medium_IMG_4039_3c8c1ca973", "mime": "image/jpeg", "name": "medium_IMG_4039.JPG", "path": null, "size": 47.35, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4039_3c8c1ca973.JPG", "hash": "thumbnail_IMG_4039_3c8c1ca973", "mime": "image/jpeg", "name": "thumbnail_IMG_4039.JPG", "path": null, "size": 7.59, "width": 234, "height": 156}}	IMG_4039_3c8c1ca973	.JPG	image/jpeg	1323.70	/uploads/IMG_4039_3c8c1ca973.JPG	\N	local	\N	\N	\N	2021-11-26 04:48:10.324+01	2021-11-26 04:48:10.324+01
82	IMG_20211005_125956.jpg	\N	\N	4000	1840	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211005_125956_a0b107f290.jpg", "hash": "thumbnail_IMG_20211005_125956_a0b107f290", "mime": "image/jpeg", "name": "thumbnail_IMG_20211005_125956.jpg", "path": null, "size": 34.3, "width": 245, "height": 113}}	IMG_20211005_125956_a0b107f290	.jpg	image/jpeg	5013.54	/uploads/IMG_20211005_125956_a0b107f290.jpg	\N	local	\N	\N	\N	2021-11-26 07:31:06.249+01	2021-11-26 07:31:06.249+01
109	IMG_3183.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3183_a159f9e79c.JPG", "hash": "thumbnail_IMG_3183_a159f9e79c", "mime": "image/jpeg", "name": "thumbnail_IMG_3183.JPG", "path": null, "size": 30.7, "width": 234, "height": 156}}	IMG_3183_a159f9e79c	.JPG	image/jpeg	9230.63	/uploads/IMG_3183_a159f9e79c.JPG	\N	local	\N	\N	\N	2021-11-26 07:55:15.739+01	2021-11-26 07:55:15.739+01
133	16386607113345916919947527968363.jpg	\N	\N	2992	4000	{"large": {"ext": ".jpg", "url": "/uploads/large_16386607113345916919947527968363_88305487ad.jpg", "hash": "large_16386607113345916919947527968363_88305487ad", "mime": "image/jpeg", "name": "large_16386607113345916919947527968363.jpg", "path": null, "size": 173.19, "width": 748, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_16386607113345916919947527968363_88305487ad.jpg", "hash": "small_16386607113345916919947527968363_88305487ad", "mime": "image/jpeg", "name": "small_16386607113345916919947527968363.jpg", "path": null, "size": 79.97, "width": 374, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_16386607113345916919947527968363_88305487ad.jpg", "hash": "medium_16386607113345916919947527968363_88305487ad", "mime": "image/jpeg", "name": "medium_16386607113345916919947527968363.jpg", "path": null, "size": 114.85, "width": 561, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_16386607113345916919947527968363_88305487ad.jpg", "hash": "thumbnail_16386607113345916919947527968363_88305487ad", "mime": "image/jpeg", "name": "thumbnail_16386607113345916919947527968363.jpg", "path": null, "size": 54.98, "width": 117, "height": 156}}	16386607113345916919947527968363_88305487ad	.jpg	image/jpeg	5623.94	/uploads/16386607113345916919947527968363_88305487ad.jpg	\N	local	\N	\N	\N	2021-12-05 00:32:24.561+01	2021-12-05 00:32:24.561+01
150	IMG_3251.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3251_87b7fd2f57.JPG", "hash": "large_IMG_3251_87b7fd2f57", "mime": "image/jpeg", "name": "large_IMG_3251.JPG", "path": null, "size": 125.48, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3251_87b7fd2f57.JPG", "hash": "small_IMG_3251_87b7fd2f57", "mime": "image/jpeg", "name": "small_IMG_3251.JPG", "path": null, "size": 56.97, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3251_87b7fd2f57.JPG", "hash": "medium_IMG_3251_87b7fd2f57", "mime": "image/jpeg", "name": "medium_IMG_3251.JPG", "path": null, "size": 86.95, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3251_87b7fd2f57.JPG", "hash": "thumbnail_IMG_3251_87b7fd2f57", "mime": "image/jpeg", "name": "thumbnail_IMG_3251.JPG", "path": null, "size": 34.22, "width": 234, "height": 156}}	IMG_3251_87b7fd2f57	.JPG	image/jpeg	9631.17	/uploads/IMG_3251_87b7fd2f57.JPG	\N	local	\N	\N	\N	2021-12-07 21:35:59.533+01	2021-12-07 21:35:59.533+01
151	IMG_3240.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3240_c245665dc7.JPG", "hash": "large_IMG_3240_c245665dc7", "mime": "image/jpeg", "name": "large_IMG_3240.JPG", "path": null, "size": 134.82, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3240_c245665dc7.JPG", "hash": "small_IMG_3240_c245665dc7", "mime": "image/jpeg", "name": "small_IMG_3240.JPG", "path": null, "size": 57.88, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3240_c245665dc7.JPG", "hash": "medium_IMG_3240_c245665dc7", "mime": "image/jpeg", "name": "medium_IMG_3240.JPG", "path": null, "size": 90.42, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3240_c245665dc7.JPG", "hash": "thumbnail_IMG_3240_c245665dc7", "mime": "image/jpeg", "name": "thumbnail_IMG_3240.JPG", "path": null, "size": 34.4, "width": 234, "height": 156}}	IMG_3240_c245665dc7	.JPG	image/jpeg	10414.10	/uploads/IMG_3240_c245665dc7.JPG	\N	local	\N	\N	\N	2021-12-07 21:35:59.675+01	2021-12-07 21:35:59.675+01
26	IMG_4053.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4053_3743c4dc03.JPG", "hash": "large_IMG_4053_3743c4dc03", "mime": "image/jpeg", "name": "large_IMG_4053.JPG", "path": null, "size": 77.78, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4053_3743c4dc03.JPG", "hash": "small_IMG_4053_3743c4dc03", "mime": "image/jpeg", "name": "small_IMG_4053.JPG", "path": null, "size": 27.54, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4053_3743c4dc03.JPG", "hash": "medium_IMG_4053_3743c4dc03", "mime": "image/jpeg", "name": "medium_IMG_4053.JPG", "path": null, "size": 50.32, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4053_3743c4dc03.JPG", "hash": "thumbnail_IMG_4053_3743c4dc03", "mime": "image/jpeg", "name": "thumbnail_IMG_4053.JPG", "path": null, "size": 8.73, "width": 234, "height": 156}}	IMG_4053_3743c4dc03	.JPG	image/jpeg	1263.71	/uploads/IMG_4053_3743c4dc03.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.152+01	2021-11-26 04:15:23.152+01
35	IMG_4052.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4052_3abaa65fc5.JPG", "hash": "large_IMG_4052_3abaa65fc5", "mime": "image/jpeg", "name": "large_IMG_4052.JPG", "path": null, "size": 117.9, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4052_3abaa65fc5.JPG", "hash": "small_IMG_4052_3abaa65fc5", "mime": "image/jpeg", "name": "small_IMG_4052.JPG", "path": null, "size": 34.15, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4052_3abaa65fc5.JPG", "hash": "medium_IMG_4052_3abaa65fc5", "mime": "image/jpeg", "name": "medium_IMG_4052.JPG", "path": null, "size": 69.25, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4052_3abaa65fc5.JPG", "hash": "thumbnail_IMG_4052_3abaa65fc5", "mime": "image/jpeg", "name": "thumbnail_IMG_4052.JPG", "path": null, "size": 9.62, "width": 234, "height": 156}}	IMG_4052_3abaa65fc5	.JPG	image/jpeg	2300.15	/uploads/IMG_4052_3abaa65fc5.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.312+01	2021-11-26 04:15:23.312+01
56	IMG_4034.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4034_223f64f119.JPG", "hash": "large_IMG_4034_223f64f119", "mime": "image/jpeg", "name": "large_IMG_4034.JPG", "path": null, "size": 53.16, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4034_223f64f119.JPG", "hash": "small_IMG_4034_223f64f119", "mime": "image/jpeg", "name": "small_IMG_4034.JPG", "path": null, "size": 16.24, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4034_223f64f119.JPG", "hash": "medium_IMG_4034_223f64f119", "mime": "image/jpeg", "name": "medium_IMG_4034.JPG", "path": null, "size": 32.11, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4034_223f64f119.JPG", "hash": "thumbnail_IMG_4034_223f64f119", "mime": "image/jpeg", "name": "thumbnail_IMG_4034.JPG", "path": null, "size": 5.04, "width": 234, "height": 156}}	IMG_4034_223f64f119	.JPG	image/jpeg	1267.58	/uploads/IMG_4034_223f64f119.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.001+01	2021-11-26 04:50:28.001+01
63	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_69e2206254.JPG", "hash": "large_IMG_4037_69e2206254", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_69e2206254.JPG", "hash": "small_IMG_4037_69e2206254", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_69e2206254.JPG", "hash": "medium_IMG_4037_69e2206254", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_69e2206254.JPG", "hash": "thumbnail_IMG_4037_69e2206254", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_69e2206254	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_69e2206254.JPG	\N	local	\N	\N	\N	2021-11-26 04:51:00.801+01	2021-11-26 04:51:00.801+01
84	IMG_3994.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3994_19075318c3.JPG", "hash": "thumbnail_IMG_3994_19075318c3", "mime": "image/jpeg", "name": "thumbnail_IMG_3994.JPG", "path": null, "size": 31.27, "width": 234, "height": 156}}	IMG_3994_19075318c3	.JPG	image/jpeg	5546.13	/uploads/IMG_3994_19075318c3.JPG	\N	local	\N	\N	\N	2021-11-26 07:33:22.679+01	2021-11-26 07:33:22.679+01
87	IMG_3996.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3996_0df0094ddf.JPG", "hash": "thumbnail_IMG_3996_0df0094ddf", "mime": "image/jpeg", "name": "thumbnail_IMG_3996.JPG", "path": null, "size": 31.58, "width": 234, "height": 156}}	IMG_3996_0df0094ddf	.JPG	image/jpeg	5572.09	/uploads/IMG_3996_0df0094ddf.JPG	\N	local	\N	\N	\N	2021-11-26 07:33:22.726+01	2021-11-26 07:33:22.726+01
110	IMG_3173.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3173_211159a996.JPG", "hash": "thumbnail_IMG_3173_211159a996", "mime": "image/jpeg", "name": "thumbnail_IMG_3173.JPG", "path": null, "size": 33.7, "width": 234, "height": 156}}	IMG_3173_211159a996	.JPG	image/jpeg	9909.64	/uploads/IMG_3173_211159a996.JPG	\N	local	\N	\N	\N	2021-11-26 07:56:21.957+01	2021-11-26 07:56:21.957+01
113	IMG_3138.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3138_e6309202a4.JPG", "hash": "thumbnail_IMG_3138_e6309202a4", "mime": "image/jpeg", "name": "thumbnail_IMG_3138.JPG", "path": null, "size": 33.29, "width": 234, "height": 156}}	IMG_3138_e6309202a4	.JPG	image/jpeg	10566.52	/uploads/IMG_3138_e6309202a4.JPG	\N	local	\N	\N	\N	2021-11-26 07:56:22.035+01	2021-11-26 07:56:22.035+01
134	16386609612453712589113578602406.jpg	\N	\N	3072	4096	{"large": {"ext": ".jpg", "url": "/uploads/large_16386609612453712589113578602406_3b3f102068.jpg", "hash": "large_16386609612453712589113578602406_3b3f102068", "mime": "image/jpeg", "name": "large_16386609612453712589113578602406.jpg", "path": null, "size": 132.67, "width": 750, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_16386609612453712589113578602406_3b3f102068.jpg", "hash": "small_16386609612453712589113578602406_3b3f102068", "mime": "image/jpeg", "name": "small_16386609612453712589113578602406.jpg", "path": null, "size": 73.07, "width": 375, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_16386609612453712589113578602406_3b3f102068.jpg", "hash": "medium_16386609612453712589113578602406_3b3f102068", "mime": "image/jpeg", "name": "medium_16386609612453712589113578602406.jpg", "path": null, "size": 98.7, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_16386609612453712589113578602406_3b3f102068.jpg", "hash": "thumbnail_16386609612453712589113578602406_3b3f102068", "mime": "image/jpeg", "name": "thumbnail_16386609612453712589113578602406.jpg", "path": null, "size": 54.47, "width": 117, "height": 156}}	16386609612453712589113578602406_3b3f102068	.jpg	image/jpeg	4205.80	/uploads/16386609612453712589113578602406_3b3f102068.jpg	\N	local	\N	\N	\N	2021-12-05 00:42:47.202+01	2021-12-05 00:42:47.202+01
27	IMG_4074.JPG	\N	\N	6000	3368	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4074_14d88a5521.JPG", "hash": "large_IMG_4074_14d88a5521", "mime": "image/jpeg", "name": "large_IMG_4074.JPG", "path": null, "size": 172.61, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4074_14d88a5521.JPG", "hash": "small_IMG_4074_14d88a5521", "mime": "image/jpeg", "name": "small_IMG_4074.JPG", "path": null, "size": 50.66, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4074_14d88a5521.JPG", "hash": "medium_IMG_4074_14d88a5521", "mime": "image/jpeg", "name": "medium_IMG_4074.JPG", "path": null, "size": 103.01, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4074_14d88a5521.JPG", "hash": "thumbnail_IMG_4074_14d88a5521", "mime": "image/jpeg", "name": "thumbnail_IMG_4074.JPG", "path": null, "size": 13.36, "width": 245, "height": 138}}	IMG_4074_14d88a5521	.JPG	image/jpeg	2663.05	/uploads/IMG_4074_14d88a5521.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.152+01	2021-11-26 04:15:23.152+01
57	IMG_4038.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4038_3382a44c1d.JPG", "hash": "large_IMG_4038_3382a44c1d", "mime": "image/jpeg", "name": "large_IMG_4038.JPG", "path": null, "size": 68.93, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4038_3382a44c1d.JPG", "hash": "small_IMG_4038_3382a44c1d", "mime": "image/jpeg", "name": "small_IMG_4038.JPG", "path": null, "size": 21.5, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4038_3382a44c1d.JPG", "hash": "medium_IMG_4038_3382a44c1d", "mime": "image/jpeg", "name": "medium_IMG_4038.JPG", "path": null, "size": 41.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4038_3382a44c1d.JPG", "hash": "thumbnail_IMG_4038_3382a44c1d", "mime": "image/jpeg", "name": "thumbnail_IMG_4038.JPG", "path": null, "size": 6.5, "width": 234, "height": 156}}	IMG_4038_3382a44c1d	.JPG	image/jpeg	1585.43	/uploads/IMG_4038_3382a44c1d.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.004+01	2021-11-26 04:50:28.004+01
85	IMG_3995.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3995_3a578397f9.JPG", "hash": "thumbnail_IMG_3995_3a578397f9", "mime": "image/jpeg", "name": "thumbnail_IMG_3995.JPG", "path": null, "size": 31.42, "width": 234, "height": 156}}	IMG_3995_3a578397f9	.JPG	image/jpeg	5888.13	/uploads/IMG_3995_3a578397f9.JPG	\N	local	\N	\N	\N	2021-11-26 07:33:22.697+01	2021-11-26 07:33:22.697+01
111	IMG_3139.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3139_2532c42734.JPG", "hash": "thumbnail_IMG_3139_2532c42734", "mime": "image/jpeg", "name": "thumbnail_IMG_3139.JPG", "path": null, "size": 31.48, "width": 234, "height": 156}}	IMG_3139_2532c42734	.JPG	image/jpeg	10383.99	/uploads/IMG_3139_2532c42734.JPG	\N	local	\N	\N	\N	2021-11-26 07:56:21.979+01	2021-11-26 07:56:21.979+01
112	IMG_3142.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3142_0924d79efa.JPG", "hash": "thumbnail_IMG_3142_0924d79efa", "mime": "image/jpeg", "name": "thumbnail_IMG_3142.JPG", "path": null, "size": 33.01, "width": 234, "height": 156}}	IMG_3142_0924d79efa	.JPG	image/jpeg	10755.73	/uploads/IMG_3142_0924d79efa.JPG	\N	local	\N	\N	\N	2021-11-26 07:56:22.021+01	2021-11-26 07:56:22.021+01
135	logo umkm gombengsari.jpeg	\N	\N	1496	1372	{"large": {"ext": ".jpeg", "url": "/uploads/large_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "large_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "large_logo umkm gombengsari.jpeg", "path": null, "size": 190.32, "width": 1000, "height": 917}, "small": {"ext": ".jpeg", "url": "/uploads/small_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "small_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "small_logo umkm gombengsari.jpeg", "path": null, "size": 58.29, "width": 500, "height": 459}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "medium_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "medium_logo umkm gombengsari.jpeg", "path": null, "size": 117.51, "width": 750, "height": 688}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_logo_umkm_gombengsari_9fa2b5fc4c.jpeg", "hash": "thumbnail_logo_umkm_gombengsari_9fa2b5fc4c", "mime": "image/jpeg", "name": "thumbnail_logo umkm gombengsari.jpeg", "path": null, "size": 9.24, "width": 170, "height": 156}}	logo_umkm_gombengsari_9fa2b5fc4c	.jpeg	image/jpeg	311.28	/uploads/logo_umkm_gombengsari_9fa2b5fc4c.jpeg	\N	local	\N	\N	\N	2021-12-07 08:31:51.491+01	2021-12-07 08:31:51.491+01
152	IMG_3241.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3241_b6d5d61656.JPG", "hash": "large_IMG_3241_b6d5d61656", "mime": "image/jpeg", "name": "large_IMG_3241.JPG", "path": null, "size": 132.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3241_b6d5d61656.JPG", "hash": "small_IMG_3241_b6d5d61656", "mime": "image/jpeg", "name": "small_IMG_3241.JPG", "path": null, "size": 60.18, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3241_b6d5d61656.JPG", "hash": "medium_IMG_3241_b6d5d61656", "mime": "image/jpeg", "name": "medium_IMG_3241.JPG", "path": null, "size": 91.68, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3241_b6d5d61656.JPG", "hash": "thumbnail_IMG_3241_b6d5d61656", "mime": "image/jpeg", "name": "thumbnail_IMG_3241.JPG", "path": null, "size": 35.75, "width": 234, "height": 156}}	IMG_3241_b6d5d61656	.JPG	image/jpeg	10898.32	/uploads/IMG_3241_b6d5d61656.JPG	\N	local	\N	\N	\N	2021-12-07 22:13:05.276+01	2021-12-07 22:13:05.276+01
165	IMG_3628.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3628_4a582755b4.JPG", "hash": "large_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "large_IMG_3628.JPG", "path": null, "size": 87, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3628_4a582755b4.JPG", "hash": "small_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "small_IMG_3628.JPG", "path": null, "size": 44.9, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3628_4a582755b4.JPG", "hash": "medium_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "medium_IMG_3628.JPG", "path": null, "size": 62.76, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3628_4a582755b4.JPG", "hash": "thumbnail_IMG_3628_4a582755b4", "mime": "image/jpeg", "name": "thumbnail_IMG_3628.JPG", "path": null, "size": 30.83, "width": 234, "height": 156}}	IMG_3628_4a582755b4	.JPG	image/jpeg	8854.11	/uploads/IMG_3628_4a582755b4.JPG	\N	local	\N	\N	\N	2021-12-07 23:42:09.325+01	2021-12-07 23:42:09.325+01
28	IMG_4062.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4062_218dc932f7.JPG", "hash": "large_IMG_4062_218dc932f7", "mime": "image/jpeg", "name": "large_IMG_4062.JPG", "path": null, "size": 130.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4062_218dc932f7.JPG", "hash": "small_IMG_4062_218dc932f7", "mime": "image/jpeg", "name": "small_IMG_4062.JPG", "path": null, "size": 44.72, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4062_218dc932f7.JPG", "hash": "medium_IMG_4062_218dc932f7", "mime": "image/jpeg", "name": "medium_IMG_4062.JPG", "path": null, "size": 83.11, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4062_218dc932f7.JPG", "hash": "thumbnail_IMG_4062_218dc932f7", "mime": "image/jpeg", "name": "thumbnail_IMG_4062.JPG", "path": null, "size": 13.25, "width": 234, "height": 156}}	IMG_4062_218dc932f7	.JPG	image/jpeg	2405.54	/uploads/IMG_4062_218dc932f7.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.153+01	2021-11-26 04:15:23.153+01
58	IMG_4042.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4042_1229ff4cb4.JPG", "hash": "large_IMG_4042_1229ff4cb4", "mime": "image/jpeg", "name": "large_IMG_4042.JPG", "path": null, "size": 56.54, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4042_1229ff4cb4.JPG", "hash": "small_IMG_4042_1229ff4cb4", "mime": "image/jpeg", "name": "small_IMG_4042.JPG", "path": null, "size": 19.62, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4042_1229ff4cb4.JPG", "hash": "medium_IMG_4042_1229ff4cb4", "mime": "image/jpeg", "name": "medium_IMG_4042.JPG", "path": null, "size": 35.91, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4042_1229ff4cb4.JPG", "hash": "thumbnail_IMG_4042_1229ff4cb4", "mime": "image/jpeg", "name": "thumbnail_IMG_4042.JPG", "path": null, "size": 6.43, "width": 234, "height": 156}}	IMG_4042_1229ff4cb4	.JPG	image/jpeg	1024.32	/uploads/IMG_4042_1229ff4cb4.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.004+01	2021-11-26 04:50:28.004+01
86	IMG_3998.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3998_d441df5f90.JPG", "hash": "thumbnail_IMG_3998_d441df5f90", "mime": "image/jpeg", "name": "thumbnail_IMG_3998.JPG", "path": null, "size": 31.58, "width": 234, "height": 156}}	IMG_3998_d441df5f90	.JPG	image/jpeg	5917.21	/uploads/IMG_3998_d441df5f90.JPG	\N	local	\N	\N	\N	2021-11-26 07:33:22.719+01	2021-11-26 07:33:22.719+01
114	IMG_3192.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3192_e0b2cc065b.JPG", "hash": "thumbnail_IMG_3192_e0b2cc065b", "mime": "image/jpeg", "name": "thumbnail_IMG_3192.JPG", "path": null, "size": 6.1, "width": 234, "height": 156}}	IMG_3192_e0b2cc065b	.JPG	image/jpeg	2612.81	/uploads/IMG_3192_e0b2cc065b.JPG	\N	local	\N	\N	\N	2021-11-26 08:27:13.471+01	2021-11-26 08:27:13.471+01
136	kopi lanang gombengsari.jpeg	\N	\N	867	1156	{"large": {"ext": ".jpeg", "url": "/uploads/large_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "large_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "large_kopi lanang gombengsari.jpeg", "path": null, "size": 101.88, "width": 750, "height": 1000}, "small": {"ext": ".jpeg", "url": "/uploads/small_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "small_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "small_kopi lanang gombengsari.jpeg", "path": null, "size": 35.08, "width": 375, "height": 500}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "medium_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "medium_kopi lanang gombengsari.jpeg", "path": null, "size": 66.71, "width": 563, "height": 750}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_kopi_lanang_gombengsari_b152d88320.jpeg", "hash": "thumbnail_kopi_lanang_gombengsari_b152d88320", "mime": "image/jpeg", "name": "thumbnail_kopi lanang gombengsari.jpeg", "path": null, "size": 5.9, "width": 117, "height": 156}}	kopi_lanang_gombengsari_b152d88320	.jpeg	image/jpeg	111.22	/uploads/kopi_lanang_gombengsari_b152d88320.jpeg	\N	local	\N	\N	\N	2021-12-07 08:51:57.668+01	2021-12-07 08:51:57.668+01
154	IMG_3624.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3624_b0495cc720.JPG", "hash": "large_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "large_IMG_3624.JPG", "path": null, "size": 73.82, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3624_b0495cc720.JPG", "hash": "small_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "small_IMG_3624.JPG", "path": null, "size": 39.17, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3624_b0495cc720.JPG", "hash": "medium_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "medium_IMG_3624.JPG", "path": null, "size": 53.71, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3624_b0495cc720.JPG", "hash": "thumbnail_IMG_3624_b0495cc720", "mime": "image/jpeg", "name": "thumbnail_IMG_3624.JPG", "path": null, "size": 28.18, "width": 234, "height": 156}}	IMG_3624_b0495cc720	.JPG	image/jpeg	7333.45	/uploads/IMG_3624_b0495cc720.JPG	\N	local	\N	\N	\N	2021-12-07 23:39:34.035+01	2021-12-07 23:39:34.035+01
153	IMG_3626.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3626_899db83b5d.JPG", "hash": "large_IMG_3626_899db83b5d", "mime": "image/jpeg", "name": "large_IMG_3626.JPG", "path": null, "size": 74.28, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3626_899db83b5d.JPG", "hash": "small_IMG_3626_899db83b5d", "mime": "image/jpeg", "name": "small_IMG_3626.JPG", "path": null, "size": 39.62, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3626_899db83b5d.JPG", "hash": "medium_IMG_3626_899db83b5d", "mime": "image/jpeg", "name": "medium_IMG_3626.JPG", "path": null, "size": 54.36, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3626_899db83b5d.JPG", "hash": "thumbnail_IMG_3626_899db83b5d", "mime": "image/jpeg", "name": "thumbnail_IMG_3626.JPG", "path": null, "size": 28.32, "width": 234, "height": 156}}	IMG_3626_899db83b5d	.JPG	image/jpeg	7103.22	/uploads/IMG_3626_899db83b5d.JPG	\N	local	\N	\N	\N	2021-12-07 23:39:34.035+01	2021-12-07 23:39:34.035+01
29	IMG_4070.JPG	\N	\N	6000	3368	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4070_10c764f7ef.JPG", "hash": "large_IMG_4070_10c764f7ef", "mime": "image/jpeg", "name": "large_IMG_4070.JPG", "path": null, "size": 88.32, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4070_10c764f7ef.JPG", "hash": "small_IMG_4070_10c764f7ef", "mime": "image/jpeg", "name": "small_IMG_4070.JPG", "path": null, "size": 30.04, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4070_10c764f7ef.JPG", "hash": "medium_IMG_4070_10c764f7ef", "mime": "image/jpeg", "name": "medium_IMG_4070.JPG", "path": null, "size": 55.61, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4070_10c764f7ef.JPG", "hash": "thumbnail_IMG_4070_10c764f7ef", "mime": "image/jpeg", "name": "thumbnail_IMG_4070.JPG", "path": null, "size": 9.78, "width": 245, "height": 138}}	IMG_4070_10c764f7ef	.JPG	image/jpeg	1893.37	/uploads/IMG_4070_10c764f7ef.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.153+01	2021-11-26 04:15:23.153+01
59	IMG_4040.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4040_625fd48a77.JPG", "hash": "large_IMG_4040_625fd48a77", "mime": "image/jpeg", "name": "large_IMG_4040.JPG", "path": null, "size": 65.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4040_625fd48a77.JPG", "hash": "small_IMG_4040_625fd48a77", "mime": "image/jpeg", "name": "small_IMG_4040.JPG", "path": null, "size": 21.61, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4040_625fd48a77.JPG", "hash": "medium_IMG_4040_625fd48a77", "mime": "image/jpeg", "name": "medium_IMG_4040.JPG", "path": null, "size": 40.88, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4040_625fd48a77.JPG", "hash": "thumbnail_IMG_4040_625fd48a77", "mime": "image/jpeg", "name": "thumbnail_IMG_4040.JPG", "path": null, "size": 6.56, "width": 234, "height": 156}}	IMG_4040_625fd48a77	.JPG	image/jpeg	1276.12	/uploads/IMG_4040_625fd48a77.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.009+01	2021-11-26 04:50:28.009+01
88	IMG_3997.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3997_941c41177b.JPG", "hash": "thumbnail_IMG_3997_941c41177b", "mime": "image/jpeg", "name": "thumbnail_IMG_3997.JPG", "path": null, "size": 28.96, "width": 234, "height": 156}}	IMG_3997_941c41177b	.JPG	image/jpeg	5255.67	/uploads/IMG_3997_941c41177b.JPG	\N	local	\N	\N	\N	2021-11-26 07:34:09.045+01	2021-11-26 07:34:09.045+01
115	IMG_3139.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3139_634feb1ff8.JPG", "hash": "large_IMG_3139_634feb1ff8", "mime": "image/jpeg", "name": "large_IMG_3139.JPG", "path": null, "size": 102.66, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3139_634feb1ff8.JPG", "hash": "small_IMG_3139_634feb1ff8", "mime": "image/jpeg", "name": "small_IMG_3139.JPG", "path": null, "size": 48.65, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3139_634feb1ff8.JPG", "hash": "medium_IMG_3139_634feb1ff8", "mime": "image/jpeg", "name": "medium_IMG_3139.JPG", "path": null, "size": 71.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3139_634feb1ff8.JPG", "hash": "thumbnail_IMG_3139_634feb1ff8", "mime": "image/jpeg", "name": "thumbnail_IMG_3139.JPG", "path": null, "size": 31.48, "width": 234, "height": 156}}	IMG_3139_634feb1ff8	.JPG	image/jpeg	10383.99	/uploads/IMG_3139_634feb1ff8.JPG	\N	local	\N	\N	\N	2021-11-26 08:28:26.957+01	2021-11-26 08:28:26.957+01
137	IMG_20211116_104503.jpg	\N	\N	4160	3120	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_20211116_104503_6d522c7127.jpg", "hash": "large_IMG_20211116_104503_6d522c7127", "mime": "image/jpeg", "name": "large_IMG_20211116_104503.jpg", "path": null, "size": 115.58, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_20211116_104503_6d522c7127.jpg", "hash": "small_IMG_20211116_104503_6d522c7127", "mime": "image/jpeg", "name": "small_IMG_20211116_104503.jpg", "path": null, "size": 36.28, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_20211116_104503_6d522c7127.jpg", "hash": "medium_IMG_20211116_104503_6d522c7127", "mime": "image/jpeg", "name": "medium_IMG_20211116_104503.jpg", "path": null, "size": 65.96, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211116_104503_6d522c7127.jpg", "hash": "thumbnail_IMG_20211116_104503_6d522c7127", "mime": "image/jpeg", "name": "thumbnail_IMG_20211116_104503.jpg", "path": null, "size": 15.98, "width": 208, "height": 156}}	IMG_20211116_104503_6d522c7127	.jpg	image/jpeg	3587.25	/uploads/IMG_20211116_104503_6d522c7127.jpg	\N	local	\N	\N	\N	2021-12-07 09:44:09.229+01	2021-12-07 09:44:09.229+01
155	IMG_3625.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3625_c80fdb1a9c.JPG", "hash": "large_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "large_IMG_3625.JPG", "path": null, "size": 69.29, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3625_c80fdb1a9c.JPG", "hash": "small_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "small_IMG_3625.JPG", "path": null, "size": 38.64, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3625_c80fdb1a9c.JPG", "hash": "medium_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "medium_IMG_3625.JPG", "path": null, "size": 52.02, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3625_c80fdb1a9c.JPG", "hash": "thumbnail_IMG_3625_c80fdb1a9c", "mime": "image/jpeg", "name": "thumbnail_IMG_3625.JPG", "path": null, "size": 28.25, "width": 234, "height": 156}}	IMG_3625_c80fdb1a9c	.JPG	image/jpeg	6836.28	/uploads/IMG_3625_c80fdb1a9c.JPG	\N	local	\N	\N	\N	2021-12-07 23:39:34.046+01	2021-12-07 23:39:34.046+01
166	200gr 35rb ori.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_200gr_35rb_ori_5a53be36ee.JPG", "hash": "large_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "large_200gr 35rb ori.JPG", "path": null, "size": 80.69, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_200gr_35rb_ori_5a53be36ee.JPG", "hash": "small_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "small_200gr 35rb ori.JPG", "path": null, "size": 43.11, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_200gr_35rb_ori_5a53be36ee.JPG", "hash": "medium_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "medium_200gr 35rb ori.JPG", "path": null, "size": 59.66, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_200gr_35rb_ori_5a53be36ee.JPG", "hash": "thumbnail_200gr_35rb_ori_5a53be36ee", "mime": "image/jpeg", "name": "thumbnail_200gr 35rb ori.JPG", "path": null, "size": 30.12, "width": 234, "height": 156}}	200gr_35rb_ori_5a53be36ee	.JPG	image/jpeg	8355.22	/uploads/200gr_35rb_ori_5a53be36ee.JPG	\N	local	\N	\N	\N	2021-12-07 23:43:16.113+01	2021-12-07 23:43:16.113+01
31	IMG_4073.JPG	\N	\N	6000	3368	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4073_5cb59c1059.JPG", "hash": "large_IMG_4073_5cb59c1059", "mime": "image/jpeg", "name": "large_IMG_4073.JPG", "path": null, "size": 138.02, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4073_5cb59c1059.JPG", "hash": "small_IMG_4073_5cb59c1059", "mime": "image/jpeg", "name": "small_IMG_4073.JPG", "path": null, "size": 40.79, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4073_5cb59c1059.JPG", "hash": "medium_IMG_4073_5cb59c1059", "mime": "image/jpeg", "name": "medium_IMG_4073.JPG", "path": null, "size": 82.2, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4073_5cb59c1059.JPG", "hash": "thumbnail_IMG_4073_5cb59c1059", "mime": "image/jpeg", "name": "thumbnail_IMG_4073.JPG", "path": null, "size": 11.63, "width": 245, "height": 138}}	IMG_4073_5cb59c1059	.JPG	image/jpeg	2252.87	/uploads/IMG_4073_5cb59c1059.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.199+01	2021-11-26 04:15:23.199+01
60	IMG_4043.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4043_f432dba7e9.JPG", "hash": "large_IMG_4043_f432dba7e9", "mime": "image/jpeg", "name": "large_IMG_4043.JPG", "path": null, "size": 57, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4043_f432dba7e9.JPG", "hash": "small_IMG_4043_f432dba7e9", "mime": "image/jpeg", "name": "small_IMG_4043.JPG", "path": null, "size": 18.36, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4043_f432dba7e9.JPG", "hash": "medium_IMG_4043_f432dba7e9", "mime": "image/jpeg", "name": "medium_IMG_4043.JPG", "path": null, "size": 34.77, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4043_f432dba7e9.JPG", "hash": "thumbnail_IMG_4043_f432dba7e9", "mime": "image/jpeg", "name": "thumbnail_IMG_4043.JPG", "path": null, "size": 5.77, "width": 234, "height": 156}}	IMG_4043_f432dba7e9	.JPG	image/jpeg	1234.34	/uploads/IMG_4043_f432dba7e9.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.033+01	2021-11-26 04:50:28.033+01
64	IMG_4038.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4038_1dad8750b8.JPG", "hash": "large_IMG_4038_1dad8750b8", "mime": "image/jpeg", "name": "large_IMG_4038.JPG", "path": null, "size": 68.93, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4038_1dad8750b8.JPG", "hash": "small_IMG_4038_1dad8750b8", "mime": "image/jpeg", "name": "small_IMG_4038.JPG", "path": null, "size": 21.5, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4038_1dad8750b8.JPG", "hash": "medium_IMG_4038_1dad8750b8", "mime": "image/jpeg", "name": "medium_IMG_4038.JPG", "path": null, "size": 41.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4038_1dad8750b8.JPG", "hash": "thumbnail_IMG_4038_1dad8750b8", "mime": "image/jpeg", "name": "thumbnail_IMG_4038.JPG", "path": null, "size": 6.5, "width": 234, "height": 156}}	IMG_4038_1dad8750b8	.JPG	image/jpeg	1585.43	/uploads/IMG_4038_1dad8750b8.JPG	\N	local	\N	\N	\N	2021-11-26 04:51:45.686+01	2021-11-26 04:51:45.686+01
89	POBKZ0E.png	\N	\N	1101	1101	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_POBKZ_0_E_07d9f167d5.png", "hash": "thumbnail_POBKZ_0_E_07d9f167d5", "mime": "image/png", "name": "thumbnail_POBKZ0E.png", "path": null, "size": 38.15, "width": 156, "height": 156}}	POBKZ_0_E_07d9f167d5	.png	image/png	871.22	/uploads/POBKZ_0_E_07d9f167d5.png	\N	local	\N	\N	\N	2021-11-26 07:48:32.196+01	2021-11-26 07:48:32.196+01
91	IMG_3110.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3110_1baf02bc6b.JPG", "hash": "thumbnail_IMG_3110_1baf02bc6b", "mime": "image/jpeg", "name": "thumbnail_IMG_3110.JPG", "path": null, "size": 32.73, "width": 234, "height": 156}}	IMG_3110_1baf02bc6b	.JPG	image/jpeg	9630.39	/uploads/IMG_3110_1baf02bc6b.JPG	\N	local	\N	\N	\N	2021-11-26 07:48:32.366+01	2021-11-26 07:48:32.366+01
116	IMG_3142.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3142_748e0d7b35.JPG", "hash": "large_IMG_3142_748e0d7b35", "mime": "image/jpeg", "name": "large_IMG_3142.JPG", "path": null, "size": 113.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3142_748e0d7b35.JPG", "hash": "small_IMG_3142_748e0d7b35", "mime": "image/jpeg", "name": "small_IMG_3142.JPG", "path": null, "size": 52.67, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3142_748e0d7b35.JPG", "hash": "medium_IMG_3142_748e0d7b35", "mime": "image/jpeg", "name": "medium_IMG_3142.JPG", "path": null, "size": 78.57, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3142_748e0d7b35.JPG", "hash": "thumbnail_IMG_3142_748e0d7b35", "mime": "image/jpeg", "name": "thumbnail_IMG_3142.JPG", "path": null, "size": 33.01, "width": 234, "height": 156}}	IMG_3142_748e0d7b35	.JPG	image/jpeg	10755.73	/uploads/IMG_3142_748e0d7b35.JPG	\N	local	\N	\N	\N	2021-11-26 08:28:26.964+01	2021-11-26 08:28:26.964+01
117	IMG_3138.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3138_e4b02a33c9.JPG", "hash": "large_IMG_3138_e4b02a33c9", "mime": "image/jpeg", "name": "large_IMG_3138.JPG", "path": null, "size": 114.39, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3138_e4b02a33c9.JPG", "hash": "small_IMG_3138_e4b02a33c9", "mime": "image/jpeg", "name": "small_IMG_3138.JPG", "path": null, "size": 53.4, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3138_e4b02a33c9.JPG", "hash": "medium_IMG_3138_e4b02a33c9", "mime": "image/jpeg", "name": "medium_IMG_3138.JPG", "path": null, "size": 79.37, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3138_e4b02a33c9.JPG", "hash": "thumbnail_IMG_3138_e4b02a33c9", "mime": "image/jpeg", "name": "thumbnail_IMG_3138.JPG", "path": null, "size": 33.29, "width": 234, "height": 156}}	IMG_3138_e4b02a33c9	.JPG	image/jpeg	10566.52	/uploads/IMG_3138_e4b02a33c9.JPG	\N	local	\N	\N	\N	2021-11-26 08:28:27.093+01	2021-11-26 08:28:27.093+01
167	IMG_3631.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3631_311f75c578.JPG", "hash": "large_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "large_IMG_3631.JPG", "path": null, "size": 81.24, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3631_311f75c578.JPG", "hash": "small_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "small_IMG_3631.JPG", "path": null, "size": 43.29, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3631_311f75c578.JPG", "hash": "medium_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "medium_IMG_3631.JPG", "path": null, "size": 59.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3631_311f75c578.JPG", "hash": "thumbnail_IMG_3631_311f75c578", "mime": "image/jpeg", "name": "thumbnail_IMG_3631.JPG", "path": null, "size": 30.23, "width": 234, "height": 156}}	IMG_3631_311f75c578	.JPG	image/jpeg	8362.66	/uploads/IMG_3631_311f75c578.JPG	\N	local	\N	\N	\N	2021-12-07 23:43:16.263+01	2021-12-07 23:43:16.263+01
32	IMG_4060.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4060_6d103eeb7f.JPG", "hash": "large_IMG_4060_6d103eeb7f", "mime": "image/jpeg", "name": "large_IMG_4060.JPG", "path": null, "size": 113.75, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4060_6d103eeb7f.JPG", "hash": "small_IMG_4060_6d103eeb7f", "mime": "image/jpeg", "name": "small_IMG_4060.JPG", "path": null, "size": 32.98, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4060_6d103eeb7f.JPG", "hash": "medium_IMG_4060_6d103eeb7f", "mime": "image/jpeg", "name": "medium_IMG_4060.JPG", "path": null, "size": 67.56, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4060_6d103eeb7f.JPG", "hash": "thumbnail_IMG_4060_6d103eeb7f", "mime": "image/jpeg", "name": "thumbnail_IMG_4060.JPG", "path": null, "size": 8.7, "width": 234, "height": 156}}	IMG_4060_6d103eeb7f	.JPG	image/jpeg	2250.62	/uploads/IMG_4060_6d103eeb7f.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.2+01	2021-11-26 04:15:23.2+01
61	IMG_4044.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4044_9c06ee0082.JPG", "hash": "large_IMG_4044_9c06ee0082", "mime": "image/jpeg", "name": "large_IMG_4044.JPG", "path": null, "size": 56.27, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4044_9c06ee0082.JPG", "hash": "small_IMG_4044_9c06ee0082", "mime": "image/jpeg", "name": "small_IMG_4044.JPG", "path": null, "size": 18.28, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4044_9c06ee0082.JPG", "hash": "medium_IMG_4044_9c06ee0082", "mime": "image/jpeg", "name": "medium_IMG_4044.JPG", "path": null, "size": 34.4, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4044_9c06ee0082.JPG", "hash": "thumbnail_IMG_4044_9c06ee0082", "mime": "image/jpeg", "name": "thumbnail_IMG_4044.JPG", "path": null, "size": 5.8, "width": 234, "height": 156}}	IMG_4044_9c06ee0082	.JPG	image/jpeg	1256.27	/uploads/IMG_4044_9c06ee0082.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.033+01	2021-11-26 04:50:28.033+01
62	IMG_4039.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4039_766de5cedc.JPG", "hash": "large_IMG_4039_766de5cedc", "mime": "image/jpeg", "name": "large_IMG_4039.JPG", "path": null, "size": 77.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4039_766de5cedc.JPG", "hash": "small_IMG_4039_766de5cedc", "mime": "image/jpeg", "name": "small_IMG_4039.JPG", "path": null, "size": 24.92, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4039_766de5cedc.JPG", "hash": "medium_IMG_4039_766de5cedc", "mime": "image/jpeg", "name": "medium_IMG_4039.JPG", "path": null, "size": 47.35, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4039_766de5cedc.JPG", "hash": "thumbnail_IMG_4039_766de5cedc", "mime": "image/jpeg", "name": "thumbnail_IMG_4039.JPG", "path": null, "size": 7.59, "width": 234, "height": 156}}	IMG_4039_766de5cedc	.JPG	image/jpeg	1323.70	/uploads/IMG_4039_766de5cedc.JPG	\N	local	\N	\N	\N	2021-11-26 04:50:28.092+01	2021-11-26 04:50:28.092+01
90	IMG_3107.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3107_efc51797ba.JPG", "hash": "thumbnail_IMG_3107_efc51797ba", "mime": "image/jpeg", "name": "thumbnail_IMG_3107.JPG", "path": null, "size": 34.81, "width": 234, "height": 156}}	IMG_3107_efc51797ba	.JPG	image/jpeg	10079.25	/uploads/IMG_3107_efc51797ba.JPG	\N	local	\N	\N	\N	2021-11-26 07:48:32.353+01	2021-11-26 07:48:32.353+01
100	IMG_20210920_113131.jpg	\N	\N	4000	3000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20210920_113131_71c83f783c.jpg", "hash": "thumbnail_IMG_20210920_113131_71c83f783c", "mime": "image/jpeg", "name": "thumbnail_IMG_20210920_113131.jpg", "path": null, "size": 43.92, "width": 208, "height": 156}}	IMG_20210920_113131_71c83f783c	.jpg	image/jpeg	6004.02	/uploads/IMG_20210920_113131_71c83f783c.jpg	\N	local	\N	\N	\N	2021-11-26 07:48:32.48+01	2021-11-26 07:48:32.48+01
118	IMG_3187.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3187_316d0d2746.JPG", "hash": "large_IMG_3187_316d0d2746", "mime": "image/jpeg", "name": "large_IMG_3187.JPG", "path": null, "size": 98.6, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3187_316d0d2746.JPG", "hash": "small_IMG_3187_316d0d2746", "mime": "image/jpeg", "name": "small_IMG_3187.JPG", "path": null, "size": 48.62, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3187_316d0d2746.JPG", "hash": "medium_IMG_3187_316d0d2746", "mime": "image/jpeg", "name": "medium_IMG_3187.JPG", "path": null, "size": 70.2, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3187_316d0d2746.JPG", "hash": "thumbnail_IMG_3187_316d0d2746", "mime": "image/jpeg", "name": "thumbnail_IMG_3187.JPG", "path": null, "size": 31.44, "width": 234, "height": 156}}	IMG_3187_316d0d2746	.JPG	image/jpeg	8841.84	/uploads/IMG_3187_316d0d2746.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.47+01	2021-11-26 08:50:50.47+01
124	IMG_3142.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3142_8aaf452af6.JPG", "hash": "large_IMG_3142_8aaf452af6", "mime": "image/jpeg", "name": "large_IMG_3142.JPG", "path": null, "size": 113.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3142_8aaf452af6.JPG", "hash": "small_IMG_3142_8aaf452af6", "mime": "image/jpeg", "name": "small_IMG_3142.JPG", "path": null, "size": 52.67, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3142_8aaf452af6.JPG", "hash": "medium_IMG_3142_8aaf452af6", "mime": "image/jpeg", "name": "medium_IMG_3142.JPG", "path": null, "size": 78.57, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3142_8aaf452af6.JPG", "hash": "thumbnail_IMG_3142_8aaf452af6", "mime": "image/jpeg", "name": "thumbnail_IMG_3142.JPG", "path": null, "size": 33.01, "width": 234, "height": 156}}	IMG_3142_8aaf452af6	.JPG	image/jpeg	10755.73	/uploads/IMG_3142_8aaf452af6.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.645+01	2021-11-26 08:50:50.645+01
170	IMG_3612.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3612_e3104cd553.JPG", "hash": "large_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "large_IMG_3612.JPG", "path": null, "size": 129.68, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3612_e3104cd553.JPG", "hash": "small_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "small_IMG_3612.JPG", "path": null, "size": 59.56, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3612_e3104cd553.JPG", "hash": "medium_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "medium_IMG_3612.JPG", "path": null, "size": 90.5, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3612_e3104cd553.JPG", "hash": "thumbnail_IMG_3612_e3104cd553", "mime": "image/jpeg", "name": "thumbnail_IMG_3612.JPG", "path": null, "size": 35.37, "width": 234, "height": 156}}	IMG_3612_e3104cd553	.JPG	image/jpeg	9220.14	/uploads/IMG_3612_e3104cd553.JPG	\N	local	\N	\N	\N	2021-12-07 23:45:54.816+01	2021-12-07 23:45:54.816+01
33	IMG_4061.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4061_84bc1aeb33.JPG", "hash": "large_IMG_4061_84bc1aeb33", "mime": "image/jpeg", "name": "large_IMG_4061.JPG", "path": null, "size": 134.85, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4061_84bc1aeb33.JPG", "hash": "small_IMG_4061_84bc1aeb33", "mime": "image/jpeg", "name": "small_IMG_4061.JPG", "path": null, "size": 39.43, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4061_84bc1aeb33.JPG", "hash": "medium_IMG_4061_84bc1aeb33", "mime": "image/jpeg", "name": "medium_IMG_4061.JPG", "path": null, "size": 80.54, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4061_84bc1aeb33.JPG", "hash": "thumbnail_IMG_4061_84bc1aeb33", "mime": "image/jpeg", "name": "thumbnail_IMG_4061.JPG", "path": null, "size": 10.3, "width": 234, "height": 156}}	IMG_4061_84bc1aeb33	.JPG	image/jpeg	2759.16	/uploads/IMG_4061_84bc1aeb33.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.207+01	2021-11-26 04:15:23.207+01
36	IMG_4051.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4051_afe457634a.JPG", "hash": "large_IMG_4051_afe457634a", "mime": "image/jpeg", "name": "large_IMG_4051.JPG", "path": null, "size": 110.26, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4051_afe457634a.JPG", "hash": "small_IMG_4051_afe457634a", "mime": "image/jpeg", "name": "small_IMG_4051.JPG", "path": null, "size": 31.88, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4051_afe457634a.JPG", "hash": "medium_IMG_4051_afe457634a", "mime": "image/jpeg", "name": "medium_IMG_4051.JPG", "path": null, "size": 64.9, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4051_afe457634a.JPG", "hash": "thumbnail_IMG_4051_afe457634a", "mime": "image/jpeg", "name": "thumbnail_IMG_4051.JPG", "path": null, "size": 8.69, "width": 234, "height": 156}}	IMG_4051_afe457634a	.JPG	image/jpeg	2186.25	/uploads/IMG_4051_afe457634a.JPG	\N	local	\N	\N	\N	2021-11-26 04:15:23.329+01	2021-11-26 04:15:23.329+01
65	IMG_4034.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4034_ca1d282a12.JPG", "hash": "large_IMG_4034_ca1d282a12", "mime": "image/jpeg", "name": "large_IMG_4034.JPG", "path": null, "size": 53.16, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4034_ca1d282a12.JPG", "hash": "small_IMG_4034_ca1d282a12", "mime": "image/jpeg", "name": "small_IMG_4034.JPG", "path": null, "size": 16.24, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4034_ca1d282a12.JPG", "hash": "medium_IMG_4034_ca1d282a12", "mime": "image/jpeg", "name": "medium_IMG_4034.JPG", "path": null, "size": 32.11, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4034_ca1d282a12.JPG", "hash": "thumbnail_IMG_4034_ca1d282a12", "mime": "image/jpeg", "name": "thumbnail_IMG_4034.JPG", "path": null, "size": 5.04, "width": 234, "height": 156}}	IMG_4034_ca1d282a12	.JPG	image/jpeg	1267.58	/uploads/IMG_4034_ca1d282a12.JPG	\N	local	\N	\N	\N	2021-11-26 05:00:46.039+01	2021-11-26 05:00:46.039+01
92	IMG_3065.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3065_fdc525f147.JPG", "hash": "thumbnail_IMG_3065_fdc525f147", "mime": "image/jpeg", "name": "thumbnail_IMG_3065.JPG", "path": null, "size": 35.15, "width": 234, "height": 156}}	IMG_3065_fdc525f147	.JPG	image/jpeg	9681.36	/uploads/IMG_3065_fdc525f147.JPG	\N	local	\N	\N	\N	2021-11-26 07:48:32.367+01	2021-11-26 07:48:32.367+01
119	IMG_3138.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3138_9858d7ccb8.JPG", "hash": "large_IMG_3138_9858d7ccb8", "mime": "image/jpeg", "name": "large_IMG_3138.JPG", "path": null, "size": 114.39, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3138_9858d7ccb8.JPG", "hash": "small_IMG_3138_9858d7ccb8", "mime": "image/jpeg", "name": "small_IMG_3138.JPG", "path": null, "size": 53.4, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3138_9858d7ccb8.JPG", "hash": "medium_IMG_3138_9858d7ccb8", "mime": "image/jpeg", "name": "medium_IMG_3138.JPG", "path": null, "size": 79.37, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3138_9858d7ccb8.JPG", "hash": "thumbnail_IMG_3138_9858d7ccb8", "mime": "image/jpeg", "name": "thumbnail_IMG_3138.JPG", "path": null, "size": 33.29, "width": 234, "height": 156}}	IMG_3138_9858d7ccb8	.JPG	image/jpeg	10566.52	/uploads/IMG_3138_9858d7ccb8.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.481+01	2021-11-26 08:50:50.481+01
138	Screenshot from 2021-12-04 21-05-35.png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_from_2021_12_04_21_05_35_738ba2d94e.png", "hash": "large_Screenshot_from_2021_12_04_21_05_35_738ba2d94e", "mime": "image/png", "name": "large_Screenshot from 2021-12-04 21-05-35.png", "path": null, "size": 135.01, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_from_2021_12_04_21_05_35_738ba2d94e.png", "hash": "small_Screenshot_from_2021_12_04_21_05_35_738ba2d94e", "mime": "image/png", "name": "small_Screenshot from 2021-12-04 21-05-35.png", "path": null, "size": 48.69, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_from_2021_12_04_21_05_35_738ba2d94e.png", "hash": "medium_Screenshot_from_2021_12_04_21_05_35_738ba2d94e", "mime": "image/png", "name": "medium_Screenshot from 2021-12-04 21-05-35.png", "path": null, "size": 87.64, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_from_2021_12_04_21_05_35_738ba2d94e.png", "hash": "thumbnail_Screenshot_from_2021_12_04_21_05_35_738ba2d94e", "mime": "image/png", "name": "thumbnail_Screenshot from 2021-12-04 21-05-35.png", "path": null, "size": 18.1, "width": 245, "height": 138}}	Screenshot_from_2021_12_04_21_05_35_738ba2d94e	.png	image/png	117.65	/uploads/Screenshot_from_2021_12_04_21_05_35_738ba2d94e.png	\N	local	\N	\N	\N	2021-12-07 09:55:23.745+01	2021-12-07 09:55:23.745+01
156	100 gr 20rb lanang.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "large_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "large_100 gr 20rb lanang.JPG", "path": null, "size": 80.62, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "small_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "small_100 gr 20rb lanang.JPG", "path": null, "size": 41.93, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "medium_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "medium_100 gr 20rb lanang.JPG", "path": null, "size": 58.32, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_100_gr_20rb_lanang_d0cb169bff.JPG", "hash": "thumbnail_100_gr_20rb_lanang_d0cb169bff", "mime": "image/jpeg", "name": "thumbnail_100 gr 20rb lanang.JPG", "path": null, "size": 29.22, "width": 234, "height": 156}}	100_gr_20rb_lanang_d0cb169bff	.JPG	image/jpeg	7329.62	/uploads/100_gr_20rb_lanang_d0cb169bff.JPG	\N	local	\N	\N	\N	2021-12-07 23:39:34.051+01	2021-12-07 23:39:34.051+01
34	Screenshot (205).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_205_ac4f51ac9a.png", "hash": "large_Screenshot_205_ac4f51ac9a", "mime": "image/png", "name": "large_Screenshot (205).png", "path": null, "size": 1391.1, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_205_ac4f51ac9a.png", "hash": "small_Screenshot_205_ac4f51ac9a", "mime": "image/png", "name": "small_Screenshot (205).png", "path": null, "size": 390.72, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_205_ac4f51ac9a.png", "hash": "medium_Screenshot_205_ac4f51ac9a", "mime": "image/png", "name": "medium_Screenshot (205).png", "path": null, "size": 827.73, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_205_ac4f51ac9a.png", "hash": "thumbnail_Screenshot_205_ac4f51ac9a", "mime": "image/png", "name": "thumbnail_Screenshot (205).png", "path": null, "size": 102.04, "width": 245, "height": 138}}	Screenshot_205_ac4f51ac9a	.png	image/png	1587.06	/uploads/Screenshot_205_ac4f51ac9a.png	\N	local	\N	\N	\N	2021-11-26 04:15:23.251+01	2021-11-26 04:15:23.251+01
66	IMG_4035.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4035_642392ee6b.JPG", "hash": "large_IMG_4035_642392ee6b", "mime": "image/jpeg", "name": "large_IMG_4035.JPG", "path": null, "size": 56.3, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4035_642392ee6b.JPG", "hash": "small_IMG_4035_642392ee6b", "mime": "image/jpeg", "name": "small_IMG_4035.JPG", "path": null, "size": 18.37, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4035_642392ee6b.JPG", "hash": "medium_IMG_4035_642392ee6b", "mime": "image/jpeg", "name": "medium_IMG_4035.JPG", "path": null, "size": 34.64, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4035_642392ee6b.JPG", "hash": "thumbnail_IMG_4035_642392ee6b", "mime": "image/jpeg", "name": "thumbnail_IMG_4035.JPG", "path": null, "size": 5.9, "width": 234, "height": 156}}	IMG_4035_642392ee6b	.JPG	image/jpeg	1238.79	/uploads/IMG_4035_642392ee6b.JPG	\N	local	\N	\N	\N	2021-11-26 05:00:46.052+01	2021-11-26 05:00:46.052+01
93	IMG_20210920_113059.jpg	\N	\N	3000	4000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20210920_113059_0e7724cfb9.jpg", "hash": "thumbnail_IMG_20210920_113059_0e7724cfb9", "mime": "image/jpeg", "name": "thumbnail_IMG_20210920_113059.jpg", "path": null, "size": 34.97, "width": 117, "height": 156}}	IMG_20210920_113059_0e7724cfb9	.jpg	image/jpeg	5662.71	/uploads/IMG_20210920_113059_0e7724cfb9.jpg	\N	local	\N	\N	\N	2021-11-26 07:48:32.386+01	2021-11-26 07:48:32.386+01
120	IMG_3139.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3139_fa80702ae3.JPG", "hash": "large_IMG_3139_fa80702ae3", "mime": "image/jpeg", "name": "large_IMG_3139.JPG", "path": null, "size": 102.66, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3139_fa80702ae3.JPG", "hash": "small_IMG_3139_fa80702ae3", "mime": "image/jpeg", "name": "small_IMG_3139.JPG", "path": null, "size": 48.65, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3139_fa80702ae3.JPG", "hash": "medium_IMG_3139_fa80702ae3", "mime": "image/jpeg", "name": "medium_IMG_3139.JPG", "path": null, "size": 71.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3139_fa80702ae3.JPG", "hash": "thumbnail_IMG_3139_fa80702ae3", "mime": "image/jpeg", "name": "thumbnail_IMG_3139.JPG", "path": null, "size": 31.48, "width": 234, "height": 156}}	IMG_3139_fa80702ae3	.JPG	image/jpeg	10383.99	/uploads/IMG_3139_fa80702ae3.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.485+01	2021-11-26 08:50:50.485+01
139	16388673052141729099582104603954.jpg	\N	\N	2992	4000	{"large": {"ext": ".jpg", "url": "/uploads/large_16388673052141729099582104603954_193b11615a.jpg", "hash": "large_16388673052141729099582104603954_193b11615a", "mime": "image/jpeg", "name": "large_16388673052141729099582104603954.jpg", "path": null, "size": 155.44, "width": 748, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_16388673052141729099582104603954_193b11615a.jpg", "hash": "small_16388673052141729099582104603954_193b11615a", "mime": "image/jpeg", "name": "small_16388673052141729099582104603954.jpg", "path": null, "size": 82.7, "width": 374, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_16388673052141729099582104603954_193b11615a.jpg", "hash": "medium_16388673052141729099582104603954_193b11615a", "mime": "image/jpeg", "name": "medium_16388673052141729099582104603954.jpg", "path": null, "size": 114.61, "width": 561, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_16388673052141729099582104603954_193b11615a.jpg", "hash": "thumbnail_16388673052141729099582104603954_193b11615a", "mime": "image/jpeg", "name": "thumbnail_16388673052141729099582104603954.jpg", "path": null, "size": 55.7, "width": 117, "height": 156}}	16388673052141729099582104603954_193b11615a	.jpg	image/jpeg	4842.07	/uploads/16388673052141729099582104603954_193b11615a.jpg	\N	local	\N	\N	\N	2021-12-07 09:55:29.293+01	2021-12-07 09:55:29.293+01
157	IMG_3623.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3623_3dc4b165bc.JPG", "hash": "large_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "large_IMG_3623.JPG", "path": null, "size": 81.69, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3623_3dc4b165bc.JPG", "hash": "small_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "small_IMG_3623.JPG", "path": null, "size": 41.59, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3623_3dc4b165bc.JPG", "hash": "medium_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "medium_IMG_3623.JPG", "path": null, "size": 58.47, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3623_3dc4b165bc.JPG", "hash": "thumbnail_IMG_3623_3dc4b165bc", "mime": "image/jpeg", "name": "thumbnail_IMG_3623.JPG", "path": null, "size": 29.01, "width": 234, "height": 156}}	IMG_3623_3dc4b165bc	.JPG	image/jpeg	7453.09	/uploads/IMG_3623_3dc4b165bc.JPG	\N	local	\N	\N	\N	2021-12-07 23:39:34.166+01	2021-12-07 23:39:34.166+01
171	IMG_3613.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3613_2943e17994.JPG", "hash": "large_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "large_IMG_3613.JPG", "path": null, "size": 121.4, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3613_2943e17994.JPG", "hash": "small_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "small_IMG_3613.JPG", "path": null, "size": 56.87, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3613_2943e17994.JPG", "hash": "medium_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "medium_IMG_3613.JPG", "path": null, "size": 85.03, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3613_2943e17994.JPG", "hash": "thumbnail_IMG_3613_2943e17994", "mime": "image/jpeg", "name": "thumbnail_IMG_3613.JPG", "path": null, "size": 34.58, "width": 234, "height": 156}}	IMG_3613_2943e17994	.JPG	image/jpeg	9098.45	/uploads/IMG_3613_2943e17994.JPG	\N	local	\N	\N	\N	2021-12-07 23:45:54.91+01	2021-12-07 23:45:54.91+01
37	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_98a3410bae.JPG", "hash": "large_IMG_4037_98a3410bae", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_98a3410bae.JPG", "hash": "small_IMG_4037_98a3410bae", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_98a3410bae.JPG", "hash": "medium_IMG_4037_98a3410bae", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_98a3410bae.JPG", "hash": "thumbnail_IMG_4037_98a3410bae", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_98a3410bae	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_98a3410bae.JPG	\N	local	\N	\N	\N	2021-11-26 04:22:11.902+01	2021-11-26 04:22:11.902+01
67	IMG_4036.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4036_43ae8dbb24.JPG", "hash": "large_IMG_4036_43ae8dbb24", "mime": "image/jpeg", "name": "large_IMG_4036.JPG", "path": null, "size": 69.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4036_43ae8dbb24.JPG", "hash": "small_IMG_4036_43ae8dbb24", "mime": "image/jpeg", "name": "small_IMG_4036.JPG", "path": null, "size": 21.69, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4036_43ae8dbb24.JPG", "hash": "medium_IMG_4036_43ae8dbb24", "mime": "image/jpeg", "name": "medium_IMG_4036.JPG", "path": null, "size": 42.17, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4036_43ae8dbb24.JPG", "hash": "thumbnail_IMG_4036_43ae8dbb24", "mime": "image/jpeg", "name": "thumbnail_IMG_4036.JPG", "path": null, "size": 6.38, "width": 234, "height": 156}}	IMG_4036_43ae8dbb24	.JPG	image/jpeg	1540.94	/uploads/IMG_4036_43ae8dbb24.JPG	\N	local	\N	\N	\N	2021-11-26 05:00:46.055+01	2021-11-26 05:00:46.055+01
68	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_add975c765.JPG", "hash": "large_IMG_4037_add975c765", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_add975c765.JPG", "hash": "small_IMG_4037_add975c765", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_add975c765.JPG", "hash": "medium_IMG_4037_add975c765", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_add975c765.JPG", "hash": "thumbnail_IMG_4037_add975c765", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_add975c765	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_add975c765.JPG	\N	local	\N	\N	\N	2021-11-26 05:00:46.102+01	2021-11-26 05:00:46.102+01
94	IMG_3090.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3090_8fe9fe6c33.JPG", "hash": "thumbnail_IMG_3090_8fe9fe6c33", "mime": "image/jpeg", "name": "thumbnail_IMG_3090.JPG", "path": null, "size": 35.7, "width": 234, "height": 156}}	IMG_3090_8fe9fe6c33	.JPG	image/jpeg	10504.02	/uploads/IMG_3090_8fe9fe6c33.JPG	\N	local	\N	\N	\N	2021-11-26 07:48:32.386+01	2021-11-26 07:48:32.386+01
101	IMG_20210920_112949.jpg	\N	\N	4000	3000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20210920_112949_4e42f3ef8d.jpg", "hash": "thumbnail_IMG_20210920_112949_4e42f3ef8d", "mime": "image/jpeg", "name": "thumbnail_IMG_20210920_112949.jpg", "path": null, "size": 35.06, "width": 208, "height": 156}}	IMG_20210920_112949_4e42f3ef8d	.jpg	image/jpeg	6981.61	/uploads/IMG_20210920_112949_4e42f3ef8d.jpg	\N	local	\N	\N	\N	2021-11-26 07:48:32.511+01	2021-11-26 07:48:32.511+01
121	IMG_3185.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3185_56ae07509f.JPG", "hash": "large_IMG_3185_56ae07509f", "mime": "image/jpeg", "name": "large_IMG_3185.JPG", "path": null, "size": 80.51, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3185_56ae07509f.JPG", "hash": "small_IMG_3185_56ae07509f", "mime": "image/jpeg", "name": "small_IMG_3185.JPG", "path": null, "size": 43.34, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3185_56ae07509f.JPG", "hash": "medium_IMG_3185_56ae07509f", "mime": "image/jpeg", "name": "medium_IMG_3185.JPG", "path": null, "size": 60.1, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3185_56ae07509f.JPG", "hash": "thumbnail_IMG_3185_56ae07509f", "mime": "image/jpeg", "name": "thumbnail_IMG_3185.JPG", "path": null, "size": 29.71, "width": 234, "height": 156}}	IMG_3185_56ae07509f	.JPG	image/jpeg	6756.33	/uploads/IMG_3185_56ae07509f.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.536+01	2021-11-26 08:50:50.536+01
140	QRISQ.jpeg	\N	\N	655	657	{"small": {"ext": ".jpeg", "url": "/uploads/small_QRISQ_b686ae1680.jpeg", "hash": "small_QRISQ_b686ae1680", "mime": "image/jpeg", "name": "small_QRISQ.jpeg", "path": null, "size": 127.62, "width": 498, "height": 500}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_QRISQ_b686ae1680.jpeg", "hash": "thumbnail_QRISQ_b686ae1680", "mime": "image/jpeg", "name": "thumbnail_QRISQ.jpeg", "path": null, "size": 59.56, "width": 156, "height": 156}}	QRISQ_b686ae1680	.jpeg	image/jpeg	182.56	/uploads/QRISQ_b686ae1680.jpeg	\N	local	\N	\N	\N	2021-12-07 20:34:51.272+01	2021-12-07 20:34:51.272+01
158	IMG_3619.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3619_1a33b5eef0.JPG", "hash": "large_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "large_IMG_3619.JPG", "path": null, "size": 99.95, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3619_1a33b5eef0.JPG", "hash": "small_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "small_IMG_3619.JPG", "path": null, "size": 45.81, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3619_1a33b5eef0.JPG", "hash": "medium_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "medium_IMG_3619.JPG", "path": null, "size": 69.01, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3619_1a33b5eef0.JPG", "hash": "thumbnail_IMG_3619_1a33b5eef0", "mime": "image/jpeg", "name": "thumbnail_IMG_3619.JPG", "path": null, "size": 30.02, "width": 234, "height": 156}}	IMG_3619_1a33b5eef0	.JPG	image/jpeg	7504.37	/uploads/IMG_3619_1a33b5eef0.JPG	\N	local	\N	\N	\N	2021-12-07 23:41:01.461+01	2021-12-07 23:41:01.461+01
38	IMG_4036.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4036_e7fa65413c.JPG", "hash": "large_IMG_4036_e7fa65413c", "mime": "image/jpeg", "name": "large_IMG_4036.JPG", "path": null, "size": 69.88, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4036_e7fa65413c.JPG", "hash": "small_IMG_4036_e7fa65413c", "mime": "image/jpeg", "name": "small_IMG_4036.JPG", "path": null, "size": 21.69, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4036_e7fa65413c.JPG", "hash": "medium_IMG_4036_e7fa65413c", "mime": "image/jpeg", "name": "medium_IMG_4036.JPG", "path": null, "size": 42.17, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4036_e7fa65413c.JPG", "hash": "thumbnail_IMG_4036_e7fa65413c", "mime": "image/jpeg", "name": "thumbnail_IMG_4036.JPG", "path": null, "size": 6.38, "width": 234, "height": 156}}	IMG_4036_e7fa65413c	.JPG	image/jpeg	1540.94	/uploads/IMG_4036_e7fa65413c.JPG	\N	local	\N	\N	\N	2021-11-26 04:22:14.258+01	2021-11-26 04:22:14.258+01
39	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_e10da9ad3b.JPG", "hash": "large_IMG_4037_e10da9ad3b", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_e10da9ad3b.JPG", "hash": "small_IMG_4037_e10da9ad3b", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_e10da9ad3b.JPG", "hash": "medium_IMG_4037_e10da9ad3b", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_e10da9ad3b.JPG", "hash": "thumbnail_IMG_4037_e10da9ad3b", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_e10da9ad3b	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_e10da9ad3b.JPG	\N	local	\N	\N	\N	2021-11-26 04:22:14.364+01	2021-11-26 04:22:14.364+01
40	IMG_4039.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4039_c941966f9e.JPG", "hash": "large_IMG_4039_c941966f9e", "mime": "image/jpeg", "name": "large_IMG_4039.JPG", "path": null, "size": 77.09, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4039_c941966f9e.JPG", "hash": "small_IMG_4039_c941966f9e", "mime": "image/jpeg", "name": "small_IMG_4039.JPG", "path": null, "size": 24.92, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4039_c941966f9e.JPG", "hash": "medium_IMG_4039_c941966f9e", "mime": "image/jpeg", "name": "medium_IMG_4039.JPG", "path": null, "size": 47.35, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4039_c941966f9e.JPG", "hash": "thumbnail_IMG_4039_c941966f9e", "mime": "image/jpeg", "name": "thumbnail_IMG_4039.JPG", "path": null, "size": 7.59, "width": 234, "height": 156}}	IMG_4039_c941966f9e	.JPG	image/jpeg	1323.70	/uploads/IMG_4039_c941966f9e.JPG	\N	local	\N	\N	\N	2021-11-26 04:22:14.421+01	2021-11-26 04:22:14.421+01
69	IMG_4038.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4038_4d3cfce30d.JPG", "hash": "thumbnail_IMG_4038_4d3cfce30d", "mime": "image/jpeg", "name": "thumbnail_IMG_4038.JPG", "path": null, "size": 30.25, "width": 234, "height": 156}}	IMG_4038_4d3cfce30d	.JPG	image/jpeg	6871.94	/uploads/IMG_4038_4d3cfce30d.JPG	\N	local	\N	\N	\N	2021-11-26 05:02:03.618+01	2021-11-26 05:02:03.618+01
71	IMG_4034.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4034_340304b946.JPG", "hash": "thumbnail_IMG_4034_340304b946", "mime": "image/jpeg", "name": "thumbnail_IMG_4034.JPG", "path": null, "size": 28.03, "width": 234, "height": 156}}	IMG_4034_340304b946	.JPG	image/jpeg	6196.12	/uploads/IMG_4034_340304b946.JPG	\N	local	\N	\N	\N	2021-11-26 05:02:03.663+01	2021-11-26 05:02:03.663+01
95	IMG_3074.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3074_4682c3c72e.JPG", "hash": "thumbnail_IMG_3074_4682c3c72e", "mime": "image/jpeg", "name": "thumbnail_IMG_3074.JPG", "path": null, "size": 40.74, "width": 234, "height": 156}}	IMG_3074_4682c3c72e	.JPG	image/jpeg	9745.71	/uploads/IMG_3074_4682c3c72e.JPG	\N	local	\N	\N	\N	2021-11-26 07:48:32.407+01	2021-11-26 07:48:32.407+01
122	IMG_3184.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3184_210cab8ccb.JPG", "hash": "large_IMG_3184_210cab8ccb", "mime": "image/jpeg", "name": "large_IMG_3184.JPG", "path": null, "size": 93.42, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3184_210cab8ccb.JPG", "hash": "small_IMG_3184_210cab8ccb", "mime": "image/jpeg", "name": "small_IMG_3184.JPG", "path": null, "size": 47.35, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3184_210cab8ccb.JPG", "hash": "medium_IMG_3184_210cab8ccb", "mime": "image/jpeg", "name": "medium_IMG_3184.JPG", "path": null, "size": 67.34, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3184_210cab8ccb.JPG", "hash": "thumbnail_IMG_3184_210cab8ccb", "mime": "image/jpeg", "name": "thumbnail_IMG_3184.JPG", "path": null, "size": 31.02, "width": 234, "height": 156}}	IMG_3184_210cab8ccb	.JPG	image/jpeg	9174.34	/uploads/IMG_3184_210cab8ccb.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.536+01	2021-11-26 08:50:50.536+01
141	IMG_3368.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3368_39cc4a7231.JPG", "hash": "large_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "large_IMG_3368.JPG", "path": null, "size": 94.98, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3368_39cc4a7231.JPG", "hash": "small_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "small_IMG_3368.JPG", "path": null, "size": 52.19, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3368_39cc4a7231.JPG", "hash": "medium_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "medium_IMG_3368.JPG", "path": null, "size": 71.85, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3368_39cc4a7231.JPG", "hash": "thumbnail_IMG_3368_39cc4a7231", "mime": "image/jpeg", "name": "thumbnail_IMG_3368.JPG", "path": null, "size": 35.07, "width": 234, "height": 156}}	IMG_3368_39cc4a7231	.JPG	image/jpeg	7817.27	/uploads/IMG_3368_39cc4a7231.JPG	\N	local	\N	\N	\N	2021-12-07 21:26:08.158+01	2021-12-07 21:26:08.158+01
41	IMG_4037.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_4037_3a671e59f7.JPG", "hash": "large_IMG_4037_3a671e59f7", "mime": "image/jpeg", "name": "large_IMG_4037.JPG", "path": null, "size": 79.81, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_4037_3a671e59f7.JPG", "hash": "small_IMG_4037_3a671e59f7", "mime": "image/jpeg", "name": "small_IMG_4037.JPG", "path": null, "size": 25.06, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_4037_3a671e59f7.JPG", "hash": "medium_IMG_4037_3a671e59f7", "mime": "image/jpeg", "name": "medium_IMG_4037.JPG", "path": null, "size": 48.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4037_3a671e59f7.JPG", "hash": "thumbnail_IMG_4037_3a671e59f7", "mime": "image/jpeg", "name": "thumbnail_IMG_4037.JPG", "path": null, "size": 7.2, "width": 234, "height": 156}}	IMG_4037_3a671e59f7	.JPG	image/jpeg	1506.48	/uploads/IMG_4037_3a671e59f7.JPG	\N	local	\N	\N	\N	2021-11-26 04:29:17.601+01	2021-11-26 04:29:17.601+01
70	IMG_4035.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4035_32e2edf357.JPG", "hash": "thumbnail_IMG_4035_32e2edf357", "mime": "image/jpeg", "name": "thumbnail_IMG_4035.JPG", "path": null, "size": 29.33, "width": 234, "height": 156}}	IMG_4035_32e2edf357	.JPG	image/jpeg	6101.25	/uploads/IMG_4035_32e2edf357.JPG	\N	local	\N	\N	\N	2021-11-26 05:02:03.629+01	2021-11-26 05:02:03.629+01
72	IMG_4036.JPG	\N	\N	6000	4000	{"thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_4036_aa29c2aadb.JPG", "hash": "thumbnail_IMG_4036_aa29c2aadb", "mime": "image/jpeg", "name": "thumbnail_IMG_4036.JPG", "path": null, "size": 30, "width": 234, "height": 156}}	IMG_4036_aa29c2aadb	.JPG	image/jpeg	6864.40	/uploads/IMG_4036_aa29c2aadb.JPG	\N	local	\N	\N	\N	2021-11-26 05:02:03.665+01	2021-11-26 05:02:03.665+01
96	IMG_20210920_113050.jpg	\N	\N	3000	4000	{"thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20210920_113050_946f019dd6.jpg", "hash": "thumbnail_IMG_20210920_113050_946f019dd6", "mime": "image/jpeg", "name": "thumbnail_IMG_20210920_113050.jpg", "path": null, "size": 36.63, "width": 117, "height": 156}}	IMG_20210920_113050_946f019dd6	.jpg	image/jpeg	6204.70	/uploads/IMG_20210920_113050_946f019dd6.jpg	\N	local	\N	\N	\N	2021-11-26 07:48:32.408+01	2021-11-26 07:48:32.408+01
123	IMG_3183.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3183_94acfb979c.JPG", "hash": "large_IMG_3183_94acfb979c", "mime": "image/jpeg", "name": "large_IMG_3183.JPG", "path": null, "size": 95.94, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3183_94acfb979c.JPG", "hash": "small_IMG_3183_94acfb979c", "mime": "image/jpeg", "name": "small_IMG_3183.JPG", "path": null, "size": 47.15, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3183_94acfb979c.JPG", "hash": "medium_IMG_3183_94acfb979c", "mime": "image/jpeg", "name": "medium_IMG_3183.JPG", "path": null, "size": 68.44, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3183_94acfb979c.JPG", "hash": "thumbnail_IMG_3183_94acfb979c", "mime": "image/jpeg", "name": "thumbnail_IMG_3183.JPG", "path": null, "size": 30.7, "width": 234, "height": 156}}	IMG_3183_94acfb979c	.JPG	image/jpeg	9230.63	/uploads/IMG_3183_94acfb979c.JPG	\N	local	\N	\N	\N	2021-11-26 08:50:50.606+01	2021-11-26 08:50:50.606+01
142	IMG_3366.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3366_0b7808cee6.JPG", "hash": "large_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "large_IMG_3366.JPG", "path": null, "size": 136.79, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3366_0b7808cee6.JPG", "hash": "small_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "small_IMG_3366.JPG", "path": null, "size": 62.78, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3366_0b7808cee6.JPG", "hash": "medium_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "medium_IMG_3366.JPG", "path": null, "size": 95.49, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3366_0b7808cee6.JPG", "hash": "thumbnail_IMG_3366_0b7808cee6", "mime": "image/jpeg", "name": "thumbnail_IMG_3366.JPG", "path": null, "size": 36.67, "width": 234, "height": 156}}	IMG_3366_0b7808cee6	.JPG	image/jpeg	8831.64	/uploads/IMG_3366_0b7808cee6.JPG	\N	local	\N	\N	\N	2021-12-07 21:26:08.18+01	2021-12-07 21:26:08.18+01
161	IMG_3620.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3620_4dfe5dee5b.JPG", "hash": "large_IMG_3620_4dfe5dee5b", "mime": "image/jpeg", "name": "large_IMG_3620.JPG", "path": null, "size": 87.41, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3620_4dfe5dee5b.JPG", "hash": "small_IMG_3620_4dfe5dee5b", "mime": "image/jpeg", "name": "small_IMG_3620.JPG", "path": null, "size": 43.02, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3620_4dfe5dee5b.JPG", "hash": "medium_IMG_3620_4dfe5dee5b", "mime": "image/jpeg", "name": "medium_IMG_3620.JPG", "path": null, "size": 61.71, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3620_4dfe5dee5b.JPG", "hash": "thumbnail_IMG_3620_4dfe5dee5b", "mime": "image/jpeg", "name": "thumbnail_IMG_3620.JPG", "path": null, "size": 29.71, "width": 234, "height": 156}}	IMG_3620_4dfe5dee5b	.JPG	image/jpeg	7874.51	/uploads/IMG_3620_4dfe5dee5b.JPG	\N	local	\N	\N	\N	2021-12-07 23:41:01.462+01	2021-12-07 23:41:01.462+01
162	IMG_3618.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3618_cd7e223d53.JPG", "hash": "large_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "large_IMG_3618.JPG", "path": null, "size": 91, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3618_cd7e223d53.JPG", "hash": "small_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "small_IMG_3618.JPG", "path": null, "size": 43.71, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3618_cd7e223d53.JPG", "hash": "medium_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "medium_IMG_3618.JPG", "path": null, "size": 63.68, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3618_cd7e223d53.JPG", "hash": "thumbnail_IMG_3618_cd7e223d53", "mime": "image/jpeg", "name": "thumbnail_IMG_3618.JPG", "path": null, "size": 29.69, "width": 234, "height": 156}}	IMG_3618_cd7e223d53	.JPG	image/jpeg	7765.05	/uploads/IMG_3618_cd7e223d53.JPG	\N	local	\N	\N	\N	2021-12-07 23:41:01.548+01	2021-12-07 23:41:01.548+01
15	Screenshot (214).png	\N	\N	1366	768	{"large": {"ext": ".png", "url": "/uploads/large_Screenshot_214_8d7dacc048.png", "hash": "large_Screenshot_214_8d7dacc048", "mime": "image/png", "name": "large_Screenshot (214).png", "path": null, "size": 1628.21, "width": 1000, "height": 562}, "small": {"ext": ".png", "url": "/uploads/small_Screenshot_214_8d7dacc048.png", "hash": "small_Screenshot_214_8d7dacc048", "mime": "image/png", "name": "small_Screenshot (214).png", "path": null, "size": 412.07, "width": 500, "height": 281}, "medium": {"ext": ".png", "url": "/uploads/medium_Screenshot_214_8d7dacc048.png", "hash": "medium_Screenshot_214_8d7dacc048", "mime": "image/png", "name": "medium_Screenshot (214).png", "path": null, "size": 923.66, "width": 750, "height": 422}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_214_8d7dacc048.png", "hash": "thumbnail_Screenshot_214_8d7dacc048", "mime": "image/png", "name": "thumbnail_Screenshot (214).png", "path": null, "size": 99.53, "width": 245, "height": 138}}	Screenshot_214_8d7dacc048	.png	image/png	2094.72	/uploads/Screenshot_214_8d7dacc048.png	\N	local	\N	\N	\N	2021-11-26 03:44:26.098+01	2021-11-26 03:44:26.098+01
168	200gr excelsa 40rb.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "large_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "large_200gr excelsa 40rb.JPG", "path": null, "size": 95.2, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "small_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "small_200gr excelsa 40rb.JPG", "path": null, "size": 46.22, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "medium_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "medium_200gr excelsa 40rb.JPG", "path": null, "size": 66.9, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_200gr_excelsa_40rb_ee24eac47a.JPG", "hash": "thumbnail_200gr_excelsa_40rb_ee24eac47a", "mime": "image/jpeg", "name": "thumbnail_200gr excelsa 40rb.JPG", "path": null, "size": 31.14, "width": 234, "height": 156}}	200gr_excelsa_40rb_ee24eac47a	.JPG	image/jpeg	8602.50	/uploads/200gr_excelsa_40rb_ee24eac47a.JPG	\N	local	\N	\N	\N	2021-12-07 23:45:00.998+01	2021-12-07 23:45:00.998+01
169	500 gr 75rb lanang.JPG	\N	\N	6000	3368	{"large": {"ext": ".JPG", "url": "/uploads/large_500_gr_75rb_lanang_14d6672460.JPG", "hash": "large_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "large_500 gr 75rb lanang.JPG", "path": null, "size": 108.51, "width": 1000, "height": 561}, "small": {"ext": ".JPG", "url": "/uploads/small_500_gr_75rb_lanang_14d6672460.JPG", "hash": "small_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "small_500 gr 75rb lanang.JPG", "path": null, "size": 52.15, "width": 500, "height": 281}, "medium": {"ext": ".JPG", "url": "/uploads/medium_500_gr_75rb_lanang_14d6672460.JPG", "hash": "medium_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "medium_500 gr 75rb lanang.JPG", "path": null, "size": 76.96, "width": 750, "height": 421}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_500_gr_75rb_lanang_14d6672460.JPG", "hash": "thumbnail_500_gr_75rb_lanang_14d6672460", "mime": "image/jpeg", "name": "thumbnail_500 gr 75rb lanang.JPG", "path": null, "size": 33.06, "width": 245, "height": 138}}	500_gr_75rb_lanang_14d6672460	.JPG	image/jpeg	7860.89	/uploads/500_gr_75rb_lanang_14d6672460.JPG	\N	local	\N	\N	\N	2021-12-07 23:45:54.791+01	2021-12-07 23:45:54.791+01
172	500gr 50 rb original.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "large_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "large_500gr 50 rb original.JPG", "path": null, "size": 114.68, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "small_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "small_500gr 50 rb original.JPG", "path": null, "size": 54.79, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "medium_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "medium_500gr 50 rb original.JPG", "path": null, "size": 81.21, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_500gr_50_rb_original_c167aa0d7f.JPG", "hash": "thumbnail_500gr_50_rb_original_c167aa0d7f", "mime": "image/jpeg", "name": "thumbnail_500gr 50 rb original.JPG", "path": null, "size": 33.92, "width": 234, "height": 156}}	500gr_50_rb_original_c167aa0d7f	.JPG	image/jpeg	8831.03	/uploads/500gr_50_rb_original_c167aa0d7f.JPG	\N	local	\N	\N	\N	2021-12-07 23:47:16.97+01	2021-12-07 23:47:16.97+01
173	IMG_3615.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_IMG_3615_fad6710f12.JPG", "hash": "large_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "large_IMG_3615.JPG", "path": null, "size": 112.12, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_IMG_3615_fad6710f12.JPG", "hash": "small_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "small_IMG_3615.JPG", "path": null, "size": 54.6, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_IMG_3615_fad6710f12.JPG", "hash": "medium_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "medium_IMG_3615.JPG", "path": null, "size": 79.92, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_IMG_3615_fad6710f12.JPG", "hash": "thumbnail_IMG_3615_fad6710f12", "mime": "image/jpeg", "name": "thumbnail_IMG_3615.JPG", "path": null, "size": 34.06, "width": 234, "height": 156}}	IMG_3615_fad6710f12	.JPG	image/jpeg	8626.55	/uploads/IMG_3615_fad6710f12.JPG	\N	local	\N	\N	\N	2021-12-07 23:47:17.102+01	2021-12-07 23:47:17.102+01
174	100 gr 20rb lanang.JPG	\N	\N	6000	4000	{"large": {"ext": ".JPG", "url": "/uploads/large_100_gr_20rb_lanang_0f91933a8a.JPG", "hash": "large_100_gr_20rb_lanang_0f91933a8a", "mime": "image/jpeg", "name": "large_100 gr 20rb lanang.JPG", "path": null, "size": 80.62, "width": 1000, "height": 667}, "small": {"ext": ".JPG", "url": "/uploads/small_100_gr_20rb_lanang_0f91933a8a.JPG", "hash": "small_100_gr_20rb_lanang_0f91933a8a", "mime": "image/jpeg", "name": "small_100 gr 20rb lanang.JPG", "path": null, "size": 41.93, "width": 500, "height": 333}, "medium": {"ext": ".JPG", "url": "/uploads/medium_100_gr_20rb_lanang_0f91933a8a.JPG", "hash": "medium_100_gr_20rb_lanang_0f91933a8a", "mime": "image/jpeg", "name": "medium_100 gr 20rb lanang.JPG", "path": null, "size": 58.32, "width": 750, "height": 500}, "thumbnail": {"ext": ".JPG", "url": "/uploads/thumbnail_100_gr_20rb_lanang_0f91933a8a.JPG", "hash": "thumbnail_100_gr_20rb_lanang_0f91933a8a", "mime": "image/jpeg", "name": "thumbnail_100 gr 20rb lanang.JPG", "path": null, "size": 29.22, "width": 234, "height": 156}}	100_gr_20rb_lanang_0f91933a8a	.JPG	image/jpeg	7329.62	/uploads/100_gr_20rb_lanang_0f91933a8a.JPG	\N	local	\N	\N	\N	2021-12-07 23:55:25.149+01	2021-12-07 23:55:25.149+01
175	Koala.jpg	\N	\N	1024	768	{"large": {"ext": ".jpg", "url": "/uploads/large_Koala_502d0ac50e.jpg", "hash": "large_Koala_502d0ac50e", "mime": "image/jpeg", "name": "large_Koala.jpg", "path": null, "size": 169.88, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "/uploads/small_Koala_502d0ac50e.jpg", "hash": "small_Koala_502d0ac50e", "mime": "image/jpeg", "name": "small_Koala.jpg", "path": null, "size": 57.57, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Koala_502d0ac50e.jpg", "hash": "medium_Koala_502d0ac50e", "mime": "image/jpeg", "name": "medium_Koala.jpg", "path": null, "size": 109.29, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Koala_502d0ac50e.jpg", "hash": "thumbnail_Koala_502d0ac50e", "mime": "image/jpeg", "name": "thumbnail_Koala.jpg", "path": null, "size": 21.68, "width": 208, "height": 156}}	Koala_502d0ac50e	.jpg	image/jpeg	780.83	/uploads/Koala_502d0ac50e.jpg	\N	local	\N	\N	\N	2021-12-08 02:16:18.096+01	2021-12-08 02:16:18.096+01
176	WhatsApp Image 2021-12-08 at 14.32.45.jpeg	\N	\N	801	1280	{"large": {"ext": ".jpeg", "url": "/uploads/large_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117.jpeg", "hash": "large_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117", "mime": "image/jpeg", "name": "large_WhatsApp Image 2021-12-08 at 14.32.45.jpeg", "path": null, "size": 44.45, "width": 626, "height": 1000}, "small": {"ext": ".jpeg", "url": "/uploads/small_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117.jpeg", "hash": "small_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117", "mime": "image/jpeg", "name": "small_WhatsApp Image 2021-12-08 at 14.32.45.jpeg", "path": null, "size": 16.19, "width": 313, "height": 500}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117.jpeg", "hash": "medium_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117", "mime": "image/jpeg", "name": "medium_WhatsApp Image 2021-12-08 at 14.32.45.jpeg", "path": null, "size": 29.97, "width": 469, "height": 750}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117.jpeg", "hash": "thumbnail_Whats_App_Image_2021_12_08_at_14_32_45_191da1a117", "mime": "image/jpeg", "name": "thumbnail_WhatsApp Image 2021-12-08 at 14.32.45.jpeg", "path": null, "size": 2.78, "width": 98, "height": 156}}	Whats_App_Image_2021_12_08_at_14_32_45_191da1a117	.jpeg	image/jpeg	52.07	/uploads/Whats_App_Image_2021_12_08_at_14_32_45_191da1a117.jpeg	\N	local	\N	\N	\N	2021-12-08 08:34:25.872+01	2021-12-08 08:34:25.872+01
177	IMG_4062_218dc932f7.jpeg	\N	\N	1920	1280	{"large": {"ext": ".jpeg", "url": "/uploads/large_IMG_4062_218dc932f7_ed6fa918c4.jpeg", "hash": "large_IMG_4062_218dc932f7_ed6fa918c4", "mime": "image/jpeg", "name": "large_IMG_4062_218dc932f7.jpeg", "path": null, "size": 131.64, "width": 1000, "height": 667}, "small": {"ext": ".jpeg", "url": "/uploads/small_IMG_4062_218dc932f7_ed6fa918c4.jpeg", "hash": "small_IMG_4062_218dc932f7_ed6fa918c4", "mime": "image/jpeg", "name": "small_IMG_4062_218dc932f7.jpeg", "path": null, "size": 44.55, "width": 500, "height": 333}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_IMG_4062_218dc932f7_ed6fa918c4.jpeg", "hash": "medium_IMG_4062_218dc932f7_ed6fa918c4", "mime": "image/jpeg", "name": "medium_IMG_4062_218dc932f7.jpeg", "path": null, "size": 82.95, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_IMG_4062_218dc932f7_ed6fa918c4.jpeg", "hash": "thumbnail_IMG_4062_218dc932f7_ed6fa918c4", "mime": "image/jpeg", "name": "thumbnail_IMG_4062_218dc932f7.jpeg", "path": null, "size": 12.54, "width": 234, "height": 156}}	IMG_4062_218dc932f7_ed6fa918c4	.jpeg	image/jpeg	309.74	/uploads/IMG_4062_218dc932f7_ed6fa918c4.jpeg	\N	local	\N	\N	\N	2021-12-08 10:54:12.878+01	2021-12-08 10:54:12.878+01
178	IMG_20211208_125316.jpg	\N	\N	4000	2992	{"large": {"ext": ".jpg", "url": "/uploads/large_IMG_20211208_125316_11e236dc93.jpg", "hash": "large_IMG_20211208_125316_11e236dc93", "mime": "image/jpeg", "name": "large_IMG_20211208_125316.jpg", "path": null, "size": 244.98, "width": 1000, "height": 748}, "small": {"ext": ".jpg", "url": "/uploads/small_IMG_20211208_125316_11e236dc93.jpg", "hash": "small_IMG_20211208_125316_11e236dc93", "mime": "image/jpeg", "name": "small_IMG_20211208_125316.jpg", "path": null, "size": 106.86, "width": 500, "height": 374}, "medium": {"ext": ".jpg", "url": "/uploads/medium_IMG_20211208_125316_11e236dc93.jpg", "hash": "medium_IMG_20211208_125316_11e236dc93", "mime": "image/jpeg", "name": "medium_IMG_20211208_125316.jpg", "path": null, "size": 164.88, "width": 750, "height": 561}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_IMG_20211208_125316_11e236dc93.jpg", "hash": "thumbnail_IMG_20211208_125316_11e236dc93", "mime": "image/jpeg", "name": "thumbnail_IMG_20211208_125316.jpg", "path": null, "size": 62.7, "width": 209, "height": 156}}	IMG_20211208_125316_11e236dc93	.jpg	image/jpeg	5428.76	/uploads/IMG_20211208_125316_11e236dc93.jpg	\N	local	\N	\N	\N	2021-12-09 00:18:11.227+01	2021-12-09 00:18:11.227+01
179	Screenshot_20211208-191141188.jpg	\N	\N	720	1600	{"large": {"ext": ".jpg", "url": "/uploads/large_Screenshot_20211208_191141188_5003eff89b.jpg", "hash": "large_Screenshot_20211208_191141188_5003eff89b", "mime": "image/jpeg", "name": "large_Screenshot_20211208-191141188.jpg", "path": null, "size": 46.48, "width": 450, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Screenshot_20211208_191141188_5003eff89b.jpg", "hash": "small_Screenshot_20211208_191141188_5003eff89b", "mime": "image/jpeg", "name": "small_Screenshot_20211208-191141188.jpg", "path": null, "size": 22.27, "width": 225, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Screenshot_20211208_191141188_5003eff89b.jpg", "hash": "medium_Screenshot_20211208_191141188_5003eff89b", "mime": "image/jpeg", "name": "medium_Screenshot_20211208-191141188.jpg", "path": null, "size": 33.09, "width": 338, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Screenshot_20211208_191141188_5003eff89b.jpg", "hash": "thumbnail_Screenshot_20211208_191141188_5003eff89b", "mime": "image/jpeg", "name": "thumbnail_Screenshot_20211208-191141188.jpg", "path": null, "size": 9.7, "width": 70, "height": 156}}	Screenshot_20211208_191141188_5003eff89b	.jpg	image/jpeg	119.10	/uploads/Screenshot_20211208_191141188_5003eff89b.jpg	\N	local	\N	\N	\N	2021-12-10 03:56:44.24+01	2021-12-10 03:56:44.24+01
180	Scan2021-12-07_100318.jpg	\N	\N	2457	3484	{"large": {"ext": ".jpg", "url": "/uploads/large_Scan2021_12_07_100318_841f2217b2.jpg", "hash": "large_Scan2021_12_07_100318_841f2217b2", "mime": "image/jpeg", "name": "large_Scan2021-12-07_100318.jpg", "path": null, "size": 140.99, "width": 705, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Scan2021_12_07_100318_841f2217b2.jpg", "hash": "small_Scan2021_12_07_100318_841f2217b2", "mime": "image/jpeg", "name": "small_Scan2021-12-07_100318.jpg", "path": null, "size": 43.93, "width": 353, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Scan2021_12_07_100318_841f2217b2.jpg", "hash": "medium_Scan2021_12_07_100318_841f2217b2", "mime": "image/jpeg", "name": "medium_Scan2021-12-07_100318.jpg", "path": null, "size": 84.8, "width": 529, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Scan2021_12_07_100318_841f2217b2.jpg", "hash": "thumbnail_Scan2021_12_07_100318_841f2217b2", "mime": "image/jpeg", "name": "thumbnail_Scan2021-12-07_100318.jpg", "path": null, "size": 11.48, "width": 110, "height": 156}}	Scan2021_12_07_100318_841f2217b2	.jpg	image/jpeg	1105.94	/uploads/Scan2021_12_07_100318_841f2217b2.jpg	\N	local	\N	\N	\N	2021-12-17 03:30:03.476+01	2021-12-17 03:30:03.476+01
181	Scan2021-12-07_100318.jpg	\N	\N	2457	3484	{"large": {"ext": ".jpg", "url": "/uploads/large_Scan2021_12_07_100318_acd1e3a63e.jpg", "hash": "large_Scan2021_12_07_100318_acd1e3a63e", "mime": "image/jpeg", "name": "large_Scan2021-12-07_100318.jpg", "path": null, "size": 140.99, "width": 705, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Scan2021_12_07_100318_acd1e3a63e.jpg", "hash": "small_Scan2021_12_07_100318_acd1e3a63e", "mime": "image/jpeg", "name": "small_Scan2021-12-07_100318.jpg", "path": null, "size": 43.93, "width": 353, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Scan2021_12_07_100318_acd1e3a63e.jpg", "hash": "medium_Scan2021_12_07_100318_acd1e3a63e", "mime": "image/jpeg", "name": "medium_Scan2021-12-07_100318.jpg", "path": null, "size": 84.8, "width": 529, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Scan2021_12_07_100318_acd1e3a63e.jpg", "hash": "thumbnail_Scan2021_12_07_100318_acd1e3a63e", "mime": "image/jpeg", "name": "thumbnail_Scan2021-12-07_100318.jpg", "path": null, "size": 11.48, "width": 110, "height": 156}}	Scan2021_12_07_100318_acd1e3a63e	.jpg	image/jpeg	1105.94	/uploads/Scan2021_12_07_100318_acd1e3a63e.jpg	\N	local	\N	\N	\N	2021-12-17 03:30:04.18+01	2021-12-17 03:30:04.18+01
182	Scan2021-12-07_100318.jpg	\N	\N	2457	3484	{"large": {"ext": ".jpg", "url": "/uploads/large_Scan2021_12_07_100318_3e54234d18.jpg", "hash": "large_Scan2021_12_07_100318_3e54234d18", "mime": "image/jpeg", "name": "large_Scan2021-12-07_100318.jpg", "path": null, "size": 140.99, "width": 705, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Scan2021_12_07_100318_3e54234d18.jpg", "hash": "small_Scan2021_12_07_100318_3e54234d18", "mime": "image/jpeg", "name": "small_Scan2021-12-07_100318.jpg", "path": null, "size": 43.93, "width": 353, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Scan2021_12_07_100318_3e54234d18.jpg", "hash": "medium_Scan2021_12_07_100318_3e54234d18", "mime": "image/jpeg", "name": "medium_Scan2021-12-07_100318.jpg", "path": null, "size": 84.8, "width": 529, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Scan2021_12_07_100318_3e54234d18.jpg", "hash": "thumbnail_Scan2021_12_07_100318_3e54234d18", "mime": "image/jpeg", "name": "thumbnail_Scan2021-12-07_100318.jpg", "path": null, "size": 11.48, "width": 110, "height": 156}}	Scan2021_12_07_100318_3e54234d18	.jpg	image/jpeg	1105.94	/uploads/Scan2021_12_07_100318_3e54234d18.jpg	\N	local	\N	\N	\N	2021-12-17 11:06:53.322+01	2021-12-17 11:06:53.322+01
183	Scan2021-12-07_100318.jpg	\N	\N	2457	3484	{"large": {"ext": ".jpg", "url": "/uploads/large_Scan2021_12_07_100318_5b7f2f683a.jpg", "hash": "large_Scan2021_12_07_100318_5b7f2f683a", "mime": "image/jpeg", "name": "large_Scan2021-12-07_100318.jpg", "path": null, "size": 140.99, "width": 705, "height": 1000}, "small": {"ext": ".jpg", "url": "/uploads/small_Scan2021_12_07_100318_5b7f2f683a.jpg", "hash": "small_Scan2021_12_07_100318_5b7f2f683a", "mime": "image/jpeg", "name": "small_Scan2021-12-07_100318.jpg", "path": null, "size": 43.93, "width": 353, "height": 500}, "medium": {"ext": ".jpg", "url": "/uploads/medium_Scan2021_12_07_100318_5b7f2f683a.jpg", "hash": "medium_Scan2021_12_07_100318_5b7f2f683a", "mime": "image/jpeg", "name": "medium_Scan2021-12-07_100318.jpg", "path": null, "size": 84.8, "width": 529, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_Scan2021_12_07_100318_5b7f2f683a.jpg", "hash": "thumbnail_Scan2021_12_07_100318_5b7f2f683a", "mime": "image/jpeg", "name": "thumbnail_Scan2021-12-07_100318.jpg", "path": null, "size": 11.48, "width": 110, "height": 156}}	Scan2021_12_07_100318_5b7f2f683a	.jpg	image/jpeg	1105.94	/uploads/Scan2021_12_07_100318_5b7f2f683a.jpg	\N	local	\N	\N	\N	2021-12-21 10:55:08.531+01	2021-12-21 10:55:08.531+01
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	objects	featured_image	1
2	2	1	objects	images	1
3	3	1	objects	images	1
4	4	1	objects	images	1
5	6	1	objects	images	2
6	5	1	objects	images	2
7	7	1	objects	images	2
8	8	1	objects	images	2
9	9	1	objects	images	3
10	10	1	objects	images	4
11	11	2	objects	images	1
12	12	2	objects	images	1
13	13	2	objects	images	1
14	14	2	objects	images	1
15	15	2	objects	images	1
16	16	2	objects	featured_image	1
17	17	3	objects	images	1
18	18	3	objects	images	1
19	20	3	objects	images	1
20	19	3	objects	images	1
21	22	3	objects	images	2
22	21	3	objects	images	2
23	23	3	objects	featured_image	1
107	73	5	objects	featured_image	1
108	74	5	objects	images	1
109	75	5	objects	images	1
110	76	5	objects	images	1
111	77	5	objects	images	1
112	78	5	objects	images	1
113	79	5	objects	images	1
114	80	5	objects	images	1
115	81	5	objects	images	2
33	6	1	objects	slideshow	1
34	10	1	objects	slideshow	2
35	24	4	objects	logo	1
36	26	4	objects	images	1
37	27	4	objects	images	1
38	28	4	objects	images	1
39	29	4	objects	images	1
40	30	4	objects	images	1
41	25	4	objects	images	1
42	31	4	objects	images	1
43	32	4	objects	images	1
44	33	4	objects	images	1
45	34	4	objects	images	2
46	35	4	objects	images	2
47	36	4	objects	images	3
116	82	5	objects	images	2
117	83	5	objects	images	2
270	159	11	products	images	1
271	158	11	products	images	2
272	162	11	products	images	3
273	166	11	products	images	4
122	84	1	rooms	gallery	1
123	85	1	rooms	gallery	2
124	86	1	rooms	gallery	3
125	87	1	rooms	gallery	4
126	88	1	rooms	gallery	5
274	167	11	products	images	5
275	172	11	products	images	6
276	173	11	products	images	7
278	118	5	products	images	1
279	120	5	products	images	2
280	119	5	products	images	3
133	89	6	objects	logo	1
134	90	6	objects	images	1
135	91	6	objects	images	1
136	92	6	objects	images	1
137	93	6	objects	images	1
138	94	6	objects	images	1
139	96	6	objects	images	2
140	95	6	objects	images	2
141	97	6	objects	images	2
142	98	6	objects	images	2
143	99	6	objects	images	2
144	100	6	objects	images	3
145	101	6	objects	images	3
146	102	4	products	featured_image	1
281	121	5	products	images	4
161	79	5	objects	slideshow	1
162	78	5	objects	slideshow	2
163	80	5	objects	slideshow	3
164	76	5	objects	slideshow	4
165	82	5	objects	slideshow	5
101	72	3	products	featured_image	1
175	123	5	products	featured_image	1
177	125	7	objects	images	1
178	126	7	objects	images	1
179	127	7	objects	logo	1
180	128	7	objects	images	2
181	129	7	objects	images	3
218	135	8	objects	logo	1
219	136	9	products	featured_image	1
223	140	1	payments	qr	1
224	142	8	objects	images	1
225	141	8	objects	images	1
226	143	8	objects	images	2
227	144	8	objects	images	2
228	145	8	objects	images	2
229	146	8	objects	images	3
230	146	8	objects	slideshow	1
231	145	8	objects	slideshow	2
232	143	8	objects	slideshow	3
233	148	9	objects	images	1
234	149	9	objects	images	1
235	147	9	objects	logo	1
236	150	9	objects	images	2
237	151	9	objects	images	3
242	156	10	products	featured_image	1
244	160	11	products	featured_image	1
260	168	12	products	featured_image	1
261	154	10	products	images	1
262	155	10	products	images	2
263	157	10	products	images	3
264	163	10	products	images	4
265	164	10	products	images	5
266	165	10	products	images	6
267	169	10	products	images	7
268	170	10	products	images	8
269	171	10	products	images	9
282	122	5	products	images	5
283	124	5	products	images	6
284	103	4	products	images	1
285	104	4	products	images	2
286	105	4	products	images	3
287	60	3	products	images	1
288	61	3	products	images	2
289	69	3	products	images	3
290	70	3	products	images	4
291	71	3	products	images	5
293	176	14	orders	konfirmasi	1
298	181	19	orders	konfirmasi	1
299	182	22	orders	konfirmasi	1
300	183	5	bookings	konfirmasi	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
531	application	payment	update	t		3	\N	\N
36	application	package	update	t		2	\N	\N
26	application	package	count	t		2	\N	\N
28	application	package	create	t		2	\N	\N
30	application	package	delete	t		2	\N	\N
2	application	object	create	t		1	\N	\N
66	application	visitor	create	t		2	\N	\N
1	application	object	count	t		1	\N	\N
74	application	visitor	update	t		2	\N	\N
43	application	product	find	t		1	\N	\N
68	application	visitor	delete	t		2	\N	\N
41	application	product	delete	t		1	\N	\N
22	application	order	findone	t		2	\N	\N
39	application	product	create	t		1	\N	\N
14	application	order	count	t		2	\N	\N
47	application	product	update	t		1	\N	\N
12	application	object	update	t		2	\N	\N
37	application	product	count	t		1	\N	\N
64	application	visitor	count	t		2	\N	\N
49	application	profile	changepassword	t		1	\N	\N
31	application	package	find	t		1	\N	\N
62	application	profile	update	t		2	\N	\N
51	application	profile	count	t		1	\N	\N
54	application	profile	create	t		2	\N	\N
33	application	package	findone	t		1	\N	\N
8	application	object	find	t		2	\N	\N
56	application	profile	delete	t		2	\N	\N
53	application	profile	create	t		1	\N	\N
70	application	visitor	find	t		2	\N	\N
57	application	profile	find	t		1	\N	\N
27	application	package	create	t		1	\N	\N
58	application	profile	find	t		2	\N	\N
55	application	profile	delete	t		1	\N	\N
42	application	product	delete	t		2	\N	\N
61	application	profile	update	t		1	\N	\N
72	application	visitor	findone	t		2	\N	\N
48	application	product	update	t		2	\N	\N
63	application	visitor	count	t		1	\N	\N
261	application	object	find	t		3	\N	\N
59	application	profile	findone	t		1	\N	\N
44	application	product	find	t		2	\N	\N
71	application	visitor	findone	t		1	\N	\N
65	application	visitor	create	t		1	\N	\N
67	application	visitor	delete	t		1	\N	\N
271	application	order	update	t		3	\N	\N
69	application	visitor	find	t		1	\N	\N
73	application	visitor	update	t		1	\N	\N
281	application	product	count	t		3	\N	\N
7	application	object	find	t		1	\N	\N
11	application	object	update	t		1	\N	\N
291	application	profile	changepassword	t		3	\N	\N
9	application	object	findone	t		1	\N	\N
6	application	object	delete	t		1	\N	\N
301	content-manager	collection-types	update	t		3	\N	\N
60	application	profile	findone	t		2	\N	\N
592	application	booking	delete	t		4	\N	\N
52	application	profile	count	t		2	\N	\N
50	application	profile	changepassword	t		2	\N	\N
541	application	room	delete	t		1	\N	\N
46	application	product	findone	t		2	\N	\N
521	application	payment	delete	t		1	\N	\N
557	application	cart	count	t		1	\N	\N
572	application	cart	find	t		4	\N	\N
38	application	product	count	t		2	\N	\N
79	content-manager	collection-types	delete	t		1	\N	\N
20	application	order	find	t		2	\N	\N
25	application	package	count	t		1	\N	\N
84	content-manager	collection-types	findone	t		2	\N	\N
35	application	package	update	t		1	\N	\N
40	application	product	create	t		2	\N	\N
24	application	order	update	t		2	\N	\N
552	application	room	findone	t		4	\N	\N
82	content-manager	collection-types	find	t		2	\N	\N
582	application	booking	create	t		1	\N	\N
29	application	package	delete	t		1	\N	\N
76	content-manager	collection-types	bulkdelete	t		2	\N	\N
19	application	order	find	t		1	\N	\N
18	application	order	delete	t		2	\N	\N
23	application	order	update	t		1	\N	\N
15	application	order	create	t		1	\N	\N
80	content-manager	collection-types	delete	t		2	\N	\N
13	application	order	count	t		1	\N	\N
78	content-manager	collection-types	create	t		2	\N	\N
88	content-manager	collection-types	publish	t		2	\N	\N
16	application	order	create	t		2	\N	\N
10	application	object	findone	t		2	\N	\N
3	application	object	count	t		2	\N	\N
5	application	object	delete	t		2	\N	\N
4	application	object	create	t		2	\N	\N
32	application	package	find	t		2	\N	\N
34	application	package	findone	t		2	\N	\N
311	content-manager	content-types	findcontenttypessettings	t		3	\N	\N
321	content-manager	uid	checkuidavailability	t		3	\N	\N
331	content-type-builder	contenttypes	getcontenttypes	t		3	\N	\N
391	application	object	find	t		4	\N	\N
17	application	order	delete	t		1	\N	\N
21	application	order	findone	t		1	\N	\N
392	application	object	findone	t		4	\N	\N
403	application	package	find	t		4	\N	\N
202	users-permissions	auth	connect	t		2	\N	\N
542	application	room	delete	t		2	\N	\N
533	application	room	count	t		1	\N	\N
522	application	payment	delete	t		2	\N	\N
86	content-manager	collection-types	previewmanyrelations	t		2	\N	\N
118	content-manager	single-types	unpublish	t		2	\N	\N
132	content-type-builder	components	deletecomponent	t		2	\N	\N
124	content-type-builder	builder	getreservednames	t		2	\N	\N
182	i18n	locales	updatelocale	t		2	\N	\N
242	users-permissions	userspermissions	getproviders	t		2	\N	\N
262	application	object	findone	t		3	\N	\N
272	application	order	delete	t		3	\N	\N
282	application	product	create	t		3	\N	\N
308	content-manager	components	findcomponentconfiguration	t		3	\N	\N
317	content-manager	single-types	delete	t		3	\N	\N
328	content-type-builder	components	updatecomponent	t		3	\N	\N
340	documentation	documentation	regeneratedoc	t		3	\N	\N
350	i18n	locales	updatelocale	t		3	\N	\N
360	users-permissions	auth	callback	t		3	\N	\N
369	users-permissions	user	find	t		3	\N	\N
378	users-permissions	userspermissions	getpolicies	t		3	\N	\N
385	users-permissions	userspermissions	getemailtemplate	t		3	\N	\N
415	application	profile	find	t		4	\N	\N
423	application	visitor	findone	t		4	\N	\N
436	content-manager	collection-types	previewmanyrelations	t		4	\N	\N
445	content-manager	single-types	find	t		4	\N	\N
456	content-type-builder	components	getcomponent	t		4	\N	\N
465	content-type-builder	contenttypes	deletecontenttype	t		4	\N	\N
473	email	email	send	t		4	\N	\N
482	upload	upload	find	t		4	\N	\N
495	users-permissions	auth	emailconfirmation	t		4	\N	\N
506	users-permissions	userspermissions	deleterole	t		4	\N	\N
515	users-permissions	userspermissions	getemailtemplate	t		4	\N	\N
109	content-manager	single-types	createorupdate	t		1	\N	\N
99	content-manager	content-types	findcontenttypeconfiguration	t		1	\N	\N
81	content-manager	collection-types	find	t		1	\N	\N
221	users-permissions	user	find	t		1	\N	\N
211	users-permissions	auth	sendemailconfirmation	t		1	\N	\N
251	users-permissions	userspermissions	searchusers	t		1	\N	\N
233	users-permissions	userspermissions	getadvancedsettings	t		1	\N	\N
143	content-type-builder	contenttypes	deletecontenttype	t		1	\N	\N
45	application	product	findone	t		1	\N	\N
195	upload	upload	updatesettings	t		1	\N	\N
155	documentation	documentation	index	t		1	\N	\N
173	i18n	iso-locales	listisolocales	t		1	\N	\N
165	email	email	getsettings	t		1	\N	\N
558	application	cart	count	t		2	\N	\N
569	application	cart	find	t		1	\N	\N
593	application	booking	find	t		1	\N	\N
601	application	booking	update	t		1	\N	\N
292	application	visitor	find	t		3	\N	\N
551	application	room	findone	t		3	\N	\N
583	application	booking	count	t		4	\N	\N
393	application	object	count	t		4	\N	\N
402	application	order	delete	t		4	\N	\N
418	application	profile	create	t		4	\N	\N
426	application	visitor	update	t		4	\N	\N
433	content-manager	collection-types	publish	t		4	\N	\N
200	users-permissions	auth	callback	t		2	\N	\N
210	users-permissions	auth	resetpassword	t		2	\N	\N
441	content-manager	content-types	findcontenttypessettings	t		4	\N	\N
451	content-manager	uid	checkuidavailability	t		4	\N	\N
466	documentation	documentation	getinfos	t		4	\N	\N
160	documentation	documentation	loginview	t		2	\N	\N
110	content-manager	single-types	createorupdate	t		2	\N	\N
90	content-manager	collection-types	unpublish	t		2	\N	\N
120	content-manager	uid	checkuidavailability	t		2	\N	\N
100	content-manager	content-types	findcontenttypeconfiguration	t		2	\N	\N
130	content-type-builder	components	createcomponent	t		2	\N	\N
150	content-type-builder	contenttypes	updatecontenttype	t		2	\N	\N
140	content-type-builder	connections	getconnections	t		2	\N	\N
180	i18n	locales	listlocales	t		2	\N	\N
190	upload	upload	findone	t		2	\N	\N
230	users-permissions	userspermissions	createrole	t		2	\N	\N
260	users-permissions	userspermissions	updaterole	t		2	\N	\N
240	users-permissions	userspermissions	getpolicies	t		2	\N	\N
250	users-permissions	userspermissions	index	t		2	\N	\N
220	users-permissions	user	destroyall	t		2	\N	\N
170	email	email	test	t		2	\N	\N
263	application	object	count	t		3	\N	\N
273	application	package	find	t		3	\N	\N
289	application	profile	update	t		3	\N	\N
298	content-manager	collection-types	find	t		3	\N	\N
307	content-manager	components	findcomponents	t		3	\N	\N
320	content-manager	uid	generateuid	t		3	\N	\N
329	content-type-builder	components	deletecomponent	t		3	\N	\N
337	documentation	documentation	index	t		3	\N	\N
344	email	email	test	t		3	\N	\N
353	upload	upload	findone	t		3	\N	\N
362	users-permissions	auth	connect	t		3	\N	\N
372	users-permissions	user	destroy	t		3	\N	\N
382	users-permissions	userspermissions	index	t		3	\N	\N
478	i18n	locales	listlocales	t		4	\N	\N
488	upload	upload	upload	t		4	\N	\N
497	users-permissions	user	create	t		4	\N	\N
507	users-permissions	userspermissions	getpermissions	t		4	\N	\N
516	users-permissions	userspermissions	updateemailtemplate	t		4	\N	\N
85	content-manager	collection-types	previewmanyrelations	t		1	\N	\N
532	application	payment	update	t		4	\N	\N
523	application	payment	delete	t		4	\N	\N
578	application	cart	update	t		2	\N	\N
568	application	cart	delete	t		4	\N	\N
559	application	cart	count	t		3	\N	\N
548	application	room	find	t		4	\N	\N
584	application	booking	count	t		3	\N	\N
595	application	booking	find	t		3	\N	\N
603	application	booking	update	t		3	\N	\N
394	application	object	create	t		4	\N	\N
404	application	package	findone	t		4	\N	\N
225	users-permissions	user	me	t		1	\N	\N
412	application	product	create	t		4	\N	\N
534	application	room	count	t		2	\N	\N
116	content-manager	single-types	publish	t		2	\N	\N
136	content-type-builder	components	getcomponents	t		2	\N	\N
148	content-type-builder	contenttypes	getcontenttypes	t		2	\N	\N
196	upload	upload	updatesettings	t		2	\N	\N
236	users-permissions	userspermissions	getemailtemplate	t		2	\N	\N
248	users-permissions	userspermissions	getroutes	t		2	\N	\N
214	users-permissions	user	count	t		2	\N	\N
264	application	object	create	t		3	\N	\N
277	application	package	update	t		3	\N	\N
288	application	profile	create	t		3	\N	\N
300	content-manager	collection-types	create	t		3	\N	\N
309	content-manager	components	updatecomponentconfiguration	t		3	\N	\N
316	content-manager	single-types	createorupdate	t		3	\N	\N
325	content-type-builder	components	getcomponents	t		3	\N	\N
335	content-type-builder	contenttypes	deletecontenttype	t		3	\N	\N
346	i18n	content-types	getnonlocalizedattributes	t		3	\N	\N
354	upload	upload	count	t		3	\N	\N
365	users-permissions	auth	emailconfirmation	t		3	\N	\N
379	users-permissions	userspermissions	getrole	t		3	\N	\N
384	users-permissions	userspermissions	updaterole	t		3	\N	\N
427	application	visitor	delete	t		4	\N	\N
437	content-manager	components	findcomponents	t		4	\N	\N
448	content-manager	single-types	publish	t		4	\N	\N
458	content-type-builder	components	updatecomponent	t		4	\N	\N
468	documentation	documentation	loginview	t		4	\N	\N
477	i18n	iso-locales	listisolocales	t		4	\N	\N
486	upload	upload	updatesettings	t		4	\N	\N
496	users-permissions	auth	sendemailconfirmation	t		4	\N	\N
505	users-permissions	userspermissions	createrole	t		4	\N	\N
514	users-permissions	userspermissions	updaterole	t		4	\N	\N
101	content-manager	content-types	findcontenttypes	t		1	\N	\N
87	content-manager	collection-types	publish	t		1	\N	\N
91	content-manager	collection-types	update	t		1	\N	\N
203	users-permissions	auth	emailconfirmation	t		1	\N	\N
259	users-permissions	userspermissions	updaterole	t		1	\N	\N
125	content-type-builder	componentcategories	deletecategory	t		1	\N	\N
187	upload	upload	find	t		1	\N	\N
159	documentation	documentation	loginview	t		1	\N	\N
179	i18n	locales	listlocales	t		1	\N	\N
169	email	email	test	t		1	\N	\N
553	application	room	update	t		1	\N	\N
524	application	payment	delete	t		3	\N	\N
560	application	cart	count	t		4	\N	\N
577	application	cart	update	t		1	\N	\N
567	application	cart	delete	t		3	\N	\N
585	application	booking	count	t		2	\N	\N
547	application	room	find	t		3	\N	\N
596	application	booking	find	t		4	\N	\N
395	application	object	update	t		4	\N	\N
406	application	package	create	t		4	\N	\N
414	application	product	delete	t		4	\N	\N
429	content-manager	collection-types	findone	t		4	\N	\N
154	documentation	documentation	getinfos	t		2	\N	\N
92	content-manager	collection-types	update	t		2	\N	\N
114	content-manager	single-types	find	t		2	\N	\N
144	content-type-builder	contenttypes	deletecontenttype	t		2	\N	\N
186	upload	upload	destroy	t		2	\N	\N
254	users-permissions	userspermissions	updateadvancedsettings	t		2	\N	\N
246	users-permissions	userspermissions	getroles	t		2	\N	\N
234	users-permissions	userspermissions	getadvancedsettings	t		2	\N	\N
222	users-permissions	user	find	t		2	\N	\N
265	application	object	update	t		3	\N	\N
275	application	package	count	t		3	\N	\N
283	application	product	update	t		3	\N	\N
299	content-manager	collection-types	findone	t		3	\N	\N
310	content-manager	content-types	findcontenttypes	t		3	\N	\N
319	content-manager	single-types	unpublish	t		3	\N	\N
326	content-type-builder	components	getcomponent	t		3	\N	\N
339	documentation	documentation	login	t		3	\N	\N
345	email	email	getsettings	t		3	\N	\N
359	upload	upload	search	t		3	\N	\N
370	users-permissions	user	findone	t		3	\N	\N
380	users-permissions	userspermissions	getroles	t		3	\N	\N
389	users-permissions	userspermissions	getproviders	t		3	\N	\N
439	content-manager	components	updatecomponentconfiguration	t		4	\N	\N
449	content-manager	single-types	unpublish	t		4	\N	\N
460	content-type-builder	connections	getconnections	t		4	\N	\N
470	documentation	documentation	regeneratedoc	t		4	\N	\N
479	i18n	locales	createlocale	t		4	\N	\N
489	upload	upload	search	t		4	\N	\N
500	users-permissions	user	findone	t		4	\N	\N
510	users-permissions	userspermissions	getroles	t		4	\N	\N
519	users-permissions	userspermissions	getproviders	t		4	\N	\N
103	content-manager	content-types	findcontenttypessettings	t		1	\N	\N
83	content-manager	collection-types	findone	t		1	\N	\N
217	users-permissions	user	destroy	t		1	\N	\N
207	users-permissions	auth	register	t		1	\N	\N
137	content-type-builder	components	updatecomponent	t		1	\N	\N
123	content-type-builder	builder	getreservednames	t		1	\N	\N
197	upload	upload	upload	t		1	\N	\N
163	documentation	documentation	updatesettings	t		1	\N	\N
175	i18n	locales	createlocale	t		1	\N	\N
554	application	room	update	t		2	\N	\N
525	application	payment	find	t		1	\N	\N
561	application	cart	create	t		2	\N	\N
571	application	cart	find	t		3	\N	\N
579	application	cart	update	t		3	\N	\N
586	application	booking	count	t		1	\N	\N
602	application	booking	update	t		2	\N	\N
594	application	booking	find	t		2	\N	\N
535	application	room	count	t		3	\N	\N
543	application	room	delete	t		3	\N	\N
396	application	object	delete	t		4	\N	\N
405	application	package	count	t		4	\N	\N
413	application	product	update	t		4	\N	\N
422	application	visitor	find	t		4	\N	\N
152	documentation	documentation	deletedoc	t		2	\N	\N
162	documentation	documentation	regeneratedoc	t		2	\N	\N
146	content-type-builder	contenttypes	getcontenttype	t		2	\N	\N
126	content-type-builder	componentcategories	deletecategory	t		2	\N	\N
178	i18n	locales	deletelocale	t		2	\N	\N
188	upload	upload	find	t		2	\N	\N
198	upload	upload	upload	t		2	\N	\N
252	users-permissions	userspermissions	searchusers	t		2	\N	\N
218	users-permissions	user	destroy	t		2	\N	\N
266	application	object	delete	t		3	\N	\N
274	application	package	findone	t		3	\N	\N
285	application	profile	find	t		3	\N	\N
304	content-manager	collection-types	unpublish	t		3	\N	\N
314	content-manager	relations	find	t		3	\N	\N
330	content-type-builder	connections	getconnections	t		3	\N	\N
338	documentation	documentation	loginview	t		3	\N	\N
349	i18n	locales	createlocale	t		3	\N	\N
358	upload	upload	upload	t		3	\N	\N
368	users-permissions	user	update	t		3	\N	\N
376	users-permissions	userspermissions	deleterole	t		3	\N	\N
388	users-permissions	userspermissions	updateadvancedsettings	t		3	\N	\N
431	content-manager	collection-types	update	t		4	\N	\N
442	content-manager	content-types	findcontenttypeconfiguration	t		4	\N	\N
453	content-type-builder	componentcategories	editcategory	t		4	\N	\N
461	content-type-builder	contenttypes	getcontenttypes	t		4	\N	\N
474	email	email	test	t		4	\N	\N
484	upload	upload	count	t		4	\N	\N
492	users-permissions	auth	connect	t		4	\N	\N
502	users-permissions	user	destroy	t		4	\N	\N
511	users-permissions	userspermissions	getroutes	t		4	\N	\N
113	content-manager	single-types	find	t		1	\N	\N
105	content-manager	content-types	updatecontenttypeconfiguration	t		1	\N	\N
93	content-manager	components	findcomponentconfiguration	t		1	\N	\N
77	content-manager	collection-types	create	t		1	\N	\N
227	users-permissions	user	update	t		1	\N	\N
209	users-permissions	auth	resetpassword	t		1	\N	\N
237	users-permissions	userspermissions	getpermissions	t		1	\N	\N
245	users-permissions	userspermissions	getroles	t		1	\N	\N
135	content-type-builder	components	getcomponents	t		1	\N	\N
538	application	room	create	t		2	\N	\N
546	application	room	find	t		2	\N	\N
526	application	payment	find	t		4	\N	\N
570	application	cart	find	t		2	\N	\N
580	application	cart	update	t		4	\N	\N
562	application	cart	create	t		3	\N	\N
597	application	booking	findone	t		1	\N	\N
556	application	room	update	t		4	\N	\N
587	application	booking	create	t		3	\N	\N
294	application	visitor	count	t		3	\N	\N
94	content-manager	components	findcomponentconfiguration	f		2	\N	\N
397	application	order	find	t		4	\N	\N
409	application	product	find	t		4	\N	\N
537	application	room	create	t		1	\N	\N
545	application	room	find	t		1	\N	\N
419	application	profile	update	t		4	\N	\N
156	documentation	documentation	index	t		2	\N	\N
102	content-manager	content-types	findcontenttypes	t		2	\N	\N
172	i18n	content-types	getnonlocalizedattributes	t		2	\N	\N
184	upload	upload	count	t		2	\N	\N
258	users-permissions	userspermissions	updateproviders	t		2	\N	\N
168	email	email	send	t		2	\N	\N
267	application	order	find	t		3	\N	\N
278	application	package	delete	t		3	\N	\N
286	application	profile	findone	t		3	\N	\N
303	content-manager	collection-types	publish	t		3	\N	\N
313	content-manager	content-types	updatecontenttypeconfiguration	t		3	\N	\N
323	content-type-builder	componentcategories	editcategory	t		3	\N	\N
332	content-type-builder	contenttypes	getcontenttype	t		3	\N	\N
342	documentation	documentation	updatesettings	t		3	\N	\N
352	upload	upload	find	t		3	\N	\N
367	users-permissions	user	create	t		3	\N	\N
377	users-permissions	userspermissions	getpermissions	t		3	\N	\N
387	users-permissions	userspermissions	getadvancedsettings	t		3	\N	\N
428	content-manager	collection-types	find	t		4	\N	\N
438	content-manager	components	findcomponentconfiguration	t		4	\N	\N
447	content-manager	single-types	delete	t		4	\N	\N
457	content-type-builder	components	createcomponent	t		4	\N	\N
467	documentation	documentation	index	t		4	\N	\N
475	email	email	getsettings	t		4	\N	\N
487	upload	upload	getsettings	t		4	\N	\N
493	users-permissions	auth	forgotpassword	t		4	\N	\N
503	users-permissions	user	destroyall	t		4	\N	\N
512	users-permissions	userspermissions	index	t		4	\N	\N
111	content-manager	single-types	delete	t		1	\N	\N
89	content-manager	collection-types	unpublish	t		1	\N	\N
121	content-manager	uid	generateuid	t		1	\N	\N
219	users-permissions	user	destroyall	t		1	\N	\N
205	users-permissions	auth	forgotpassword	t		1	\N	\N
249	users-permissions	userspermissions	index	t		1	\N	\N
229	users-permissions	userspermissions	createrole	t		1	\N	\N
239	users-permissions	userspermissions	getpolicies	t		1	\N	\N
141	content-type-builder	contenttypes	createcontenttype	t		1	\N	\N
131	content-type-builder	components	deletecomponent	t		1	\N	\N
193	upload	upload	search	t		1	\N	\N
527	application	payment	find	t		2	\N	\N
574	application	cart	findone	t		2	\N	\N
563	application	cart	create	t		4	\N	\N
598	application	booking	findone	t		2	\N	\N
295	application	visitor	create	t		3	\N	\N
555	application	room	update	t		3	\N	\N
588	application	booking	create	t		4	\N	\N
528	application	payment	find	t		3	\N	\N
206	users-permissions	auth	forgotpassword	t		2	\N	\N
398	application	order	findone	t		4	\N	\N
407	application	package	update	t		4	\N	\N
573	application	cart	findone	t		1	\N	\N
142	content-type-builder	contenttypes	createcontenttype	t		2	\N	\N
244	users-permissions	userspermissions	getrole	t		2	\N	\N
232	users-permissions	userspermissions	deleterole	t		2	\N	\N
224	users-permissions	user	findone	t		2	\N	\N
268	application	order	findone	t		3	\N	\N
276	application	package	create	t		3	\N	\N
284	application	product	delete	t		3	\N	\N
302	content-manager	collection-types	delete	t		3	\N	\N
312	content-manager	content-types	findcontenttypeconfiguration	t		3	\N	\N
327	content-type-builder	components	createcomponent	t		3	\N	\N
336	documentation	documentation	getinfos	t		3	\N	\N
348	i18n	locales	listlocales	t		3	\N	\N
356	upload	upload	updatesettings	t		3	\N	\N
364	users-permissions	auth	register	t		3	\N	\N
373	users-permissions	user	destroyall	t		3	\N	\N
386	users-permissions	userspermissions	updateemailtemplate	t		3	\N	\N
416	application	profile	findone	t		4	\N	\N
425	application	visitor	create	t		4	\N	\N
434	content-manager	collection-types	unpublish	t		4	\N	\N
444	content-manager	relations	find	t		4	\N	\N
455	content-type-builder	components	getcomponents	t		4	\N	\N
464	content-type-builder	contenttypes	updatecontenttype	t		4	\N	\N
471	documentation	documentation	deletedoc	t		4	\N	\N
481	i18n	locales	deletelocale	t		4	\N	\N
491	users-permissions	auth	resetpassword	t		4	\N	\N
501	users-permissions	user	count	t		4	\N	\N
513	users-permissions	userspermissions	searchusers	t		4	\N	\N
117	content-manager	single-types	unpublish	t		1	\N	\N
95	content-manager	components	findcomponents	t		1	\N	\N
75	content-manager	collection-types	bulkdelete	t		1	\N	\N
107	content-manager	relations	find	t		1	\N	\N
215	users-permissions	user	create	t		1	\N	\N
255	users-permissions	userspermissions	updateemailtemplate	t		1	\N	\N
127	content-type-builder	componentcategories	editcategory	t		1	\N	\N
133	content-type-builder	components	getcomponent	t		1	\N	\N
191	upload	upload	getsettings	t		1	\N	\N
161	documentation	documentation	regeneratedoc	t		1	\N	\N
151	documentation	documentation	deletedoc	t		1	\N	\N
171	i18n	content-types	getnonlocalizedattributes	t		1	\N	\N
181	i18n	locales	updatelocale	t		1	\N	\N
564	application	cart	delete	t		1	\N	\N
589	application	booking	delete	t		1	\N	\N
536	application	room	count	t		4	\N	\N
544	application	room	delete	t		4	\N	\N
293	application	visitor	findone	t		3	\N	\N
600	application	booking	findone	t		4	\N	\N
96	content-manager	components	findcomponents	f		2	\N	\N
399	application	order	count	t		4	\N	\N
550	application	room	findone	t		2	\N	\N
529	application	payment	update	t		1	\N	\N
208	users-permissions	auth	register	t		2	\N	\N
408	application	package	delete	t		4	\N	\N
164	documentation	documentation	updatesettings	t		2	\N	\N
108	content-manager	relations	find	t		2	\N	\N
256	users-permissions	userspermissions	updateemailtemplate	t		2	\N	\N
216	users-permissions	user	create	t		2	\N	\N
269	application	order	count	t		3	\N	\N
280	application	product	findone	t		3	\N	\N
287	application	profile	count	t		3	\N	\N
305	content-manager	collection-types	bulkdelete	t		3	\N	\N
318	content-manager	single-types	publish	t		3	\N	\N
324	content-type-builder	componentcategories	deletecategory	t		3	\N	\N
333	content-type-builder	contenttypes	createcontenttype	t		3	\N	\N
343	email	email	send	t		3	\N	\N
355	upload	upload	destroy	t		3	\N	\N
366	users-permissions	auth	sendemailconfirmation	t		3	\N	\N
375	users-permissions	userspermissions	createrole	t		3	\N	\N
383	users-permissions	userspermissions	searchusers	t		3	\N	\N
417	application	profile	count	t		4	\N	\N
424	application	visitor	count	t		4	\N	\N
435	content-manager	collection-types	bulkdelete	t		4	\N	\N
443	content-manager	content-types	updatecontenttypeconfiguration	t		4	\N	\N
452	content-type-builder	builder	getreservednames	t		4	\N	\N
463	content-type-builder	contenttypes	createcontenttype	t		4	\N	\N
472	documentation	documentation	updatesettings	t		4	\N	\N
483	upload	upload	findone	t		4	\N	\N
494	users-permissions	auth	register	t		4	\N	\N
504	users-permissions	user	me	t		4	\N	\N
517	users-permissions	userspermissions	getadvancedsettings	t		4	\N	\N
119	content-manager	uid	checkuidavailability	t		1	\N	\N
223	users-permissions	user	findone	t		1	\N	\N
199	users-permissions	auth	callback	t		1	\N	\N
231	users-permissions	userspermissions	deleterole	t		1	\N	\N
241	users-permissions	userspermissions	getproviders	t		1	\N	\N
145	content-type-builder	contenttypes	getcontenttype	t		1	\N	\N
129	content-type-builder	components	createcomponent	t		1	\N	\N
139	content-type-builder	connections	getconnections	t		1	\N	\N
189	upload	upload	findone	t		1	\N	\N
153	documentation	documentation	getinfos	t		1	\N	\N
177	i18n	locales	deletelocale	t		1	\N	\N
565	application	cart	delete	t		2	\N	\N
575	application	cart	findone	t		3	\N	\N
540	application	room	create	t		4	\N	\N
590	application	booking	delete	t		2	\N	\N
296	application	visitor	update	t		3	\N	\N
599	application	booking	findone	t		3	\N	\N
400	application	order	create	t		4	\N	\N
410	application	product	findone	t		4	\N	\N
204	users-permissions	auth	emailconfirmation	t		2	\N	\N
549	application	room	findone	t		1	\N	\N
226	users-permissions	user	me	t		2	\N	\N
530	application	payment	update	t		2	\N	\N
104	content-manager	content-types	findcontenttypessettings	t		2	\N	\N
134	content-type-builder	components	getcomponent	t		2	\N	\N
128	content-type-builder	componentcategories	editcategory	t		2	\N	\N
176	i18n	locales	createlocale	t		2	\N	\N
194	upload	upload	search	t		2	\N	\N
270	application	order	create	t		3	\N	\N
279	application	product	find	t		3	\N	\N
290	application	profile	delete	t		3	\N	\N
306	content-manager	collection-types	previewmanyrelations	t		3	\N	\N
315	content-manager	single-types	find	t		3	\N	\N
322	content-type-builder	builder	getreservednames	t		3	\N	\N
334	content-type-builder	contenttypes	updatecontenttype	t		3	\N	\N
347	i18n	iso-locales	listisolocales	t		3	\N	\N
357	upload	upload	getsettings	t		3	\N	\N
363	users-permissions	auth	forgotpassword	t		3	\N	\N
374	users-permissions	user	me	t		3	\N	\N
390	users-permissions	userspermissions	updateproviders	t		3	\N	\N
420	application	profile	delete	t		4	\N	\N
430	content-manager	collection-types	create	t		4	\N	\N
440	content-manager	content-types	findcontenttypes	t		4	\N	\N
450	content-manager	uid	generateuid	t		4	\N	\N
459	content-type-builder	components	deletecomponent	t		4	\N	\N
469	documentation	documentation	login	t		4	\N	\N
480	i18n	locales	updatelocale	t		4	\N	\N
490	users-permissions	auth	callback	t		4	\N	\N
499	users-permissions	user	find	t		4	\N	\N
509	users-permissions	userspermissions	getrole	t		4	\N	\N
520	users-permissions	userspermissions	updateproviders	t		4	\N	\N
115	content-manager	single-types	publish	t		1	\N	\N
97	content-manager	components	updatecomponentconfiguration	t		1	\N	\N
213	users-permissions	user	count	t		1	\N	\N
235	users-permissions	userspermissions	getemailtemplate	t		1	\N	\N
247	users-permissions	userspermissions	getroutes	t		1	\N	\N
257	users-permissions	userspermissions	updateproviders	t		1	\N	\N
149	content-type-builder	contenttypes	updatecontenttype	t		1	\N	\N
185	upload	upload	destroy	t		1	\N	\N
157	documentation	documentation	login	t		1	\N	\N
167	email	email	send	t		1	\N	\N
576	application	cart	findone	t		4	\N	\N
566	application	cart	create	t		1	\N	\N
297	application	visitor	delete	t		3	\N	\N
539	application	room	create	t		3	\N	\N
98	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
401	application	order	update	t		4	\N	\N
411	application	product	count	t		4	\N	\N
421	application	profile	changepassword	t		4	\N	\N
432	content-manager	collection-types	delete	t		4	\N	\N
201	users-permissions	auth	connect	t		1	\N	\N
446	content-manager	single-types	createorupdate	t		4	\N	\N
158	documentation	documentation	login	t		2	\N	\N
112	content-manager	single-types	delete	t		2	\N	\N
122	content-manager	uid	generateuid	t		2	\N	\N
106	content-manager	content-types	updatecontenttypeconfiguration	t		2	\N	\N
138	content-type-builder	components	updatecomponent	t		2	\N	\N
174	i18n	iso-locales	listisolocales	t		2	\N	\N
192	upload	upload	getsettings	t		2	\N	\N
238	users-permissions	userspermissions	getpermissions	t		2	\N	\N
228	users-permissions	user	update	t		2	\N	\N
212	users-permissions	auth	sendemailconfirmation	t		2	\N	\N
166	email	email	getsettings	t		2	\N	\N
341	documentation	documentation	deletedoc	t		3	\N	\N
351	i18n	locales	deletelocale	t		3	\N	\N
361	users-permissions	auth	resetpassword	t		3	\N	\N
371	users-permissions	user	count	t		3	\N	\N
381	users-permissions	userspermissions	getroutes	t		3	\N	\N
454	content-type-builder	componentcategories	deletecategory	t		4	\N	\N
462	content-type-builder	contenttypes	getcontenttype	t		4	\N	\N
476	i18n	content-types	getnonlocalizedattributes	t		4	\N	\N
485	upload	upload	destroy	t		4	\N	\N
498	users-permissions	user	update	t		4	\N	\N
508	users-permissions	userspermissions	getpolicies	t		4	\N	\N
518	users-permissions	userspermissions	updateadvancedsettings	t		4	\N	\N
253	users-permissions	userspermissions	updateadvancedsettings	t		1	\N	\N
243	users-permissions	userspermissions	getrole	t		1	\N	\N
147	content-type-builder	contenttypes	getcontenttypes	t		1	\N	\N
183	upload	upload	count	t		1	\N	\N
581	application	booking	create	t		2	\N	\N
591	application	booking	delete	t		3	\N	\N
604	application	booking	update	t		4	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	User	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
3	Pengelola	Pengelola	pengelola	\N	\N
4	Super Admin	Super Admin	super_admin	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, name, address, phone, profile, created_by, updated_by, created_at, updated_at, booking) FROM stdin;
13	nurwahyuni215@gmail.com	nurwahyuni215@gmail.com	local	$2a$10$m6MhIFrkTqUFeSTyD9paD..RqehUTNJPNEcZaInTkDFZaMTe0oacG	\N	\N	t	\N	1	Siti nur wahyuni	\N	082217775559	\N	\N	\N	2021-12-09 01:41:22.665+01	2021-12-09 01:41:22.691+01	\N
2	arif4hire@gmail.com	arif4hire@gmail.com	local	$2a$10$zRGca/Hb0Jw91m6DboYvUeb58CNBAxNJYjZLmRoxhBs7S0ejp2/TW	\N	\N	t	\N	1	Arif Hidayat	Banyuwangi	51654646	\N	\N	\N	2021-11-25 05:49:27.517+01	2021-11-25 05:49:27.525+01	\N
5	umkm@pokdarwisgombengsari.com	umkm@pokdarwisgombengsari.com	local	$2a$10$hDeiPCKfMrAqKBOqWkccduI7vXEGQwYVWSm6gXV7Wz2khE.lWB9Bm	\N	\N	t	\N	1	Faruk Alfiyan	\N	012345678910	\N	\N	\N	2021-12-03 11:08:58.363+01	2021-12-03 11:08:58.384+01	\N
15	elhasanmashuri@gmail.com	elhasanmashuri@gmail.com	local	$2a$10$DNUxODBYLoXA64fSJkKjOeP5w/xKOIluOU2wzdS/E4nZC5RvBCC4u	\N	\N	\N	\N	4	Nur Hasan Mashuri	\N	082146088299	\N	\N	\N	2021-12-09 04:48:49.126+01	2021-12-09 04:48:49.149+01	\N
8	umkm@umkm.com	umkm@umkm.com	local	$2a$10$dyiqHBweNdW5MtfKdXny5e0oYsRmDPQ/71iTrj2Tt9nSMz/stva8G	\N	\N	\N	\N	3	Pengelola UMKM	\N	-	\N	\N	\N	2021-12-06 16:04:52.745+01	2021-12-06 16:04:52.762+01	\N
9	moharifhidayat7@gmail.com	moharifhidayat7@gmail.com	local	$2a$10$HsYk23j/nJTw7Al8GMGFfOWecZ9Npgej2lSRD09tkuyXsa8/GjvYy	\N	\N	t	\N	1	Arif	\N	082335967247	\N	\N	\N	2021-12-07 06:06:50.447+01	2021-12-07 06:06:50.463+01	\N
10	rahman1234@gmail.com	rahman1234@gmail.com	local	$2a$10$5vQReS2mdym6lHROiXprvOcF18xRjObBkqBPwXeZ5/Zx0xcydE6JK	\N	\N	\N	\N	3	Abdurrahman	\N	085257790583	\N	\N	\N	2021-12-07 08:36:14.406+01	2021-12-07 08:57:05.656+01	\N
11	pengunjung@gmail.com	pengunjung@gmail.com	local	$2a$10$bXQo1DSdxdZFPCZQ7sSFZuRk6fqDZWXOYRcp6xLZSacQlmsvB6jSS	\N	\N	\N	\N	1	Pengunjung	\N	-	\N	\N	\N	2021-12-07 09:39:57.654+01	2021-12-07 09:39:57.675+01	\N
1	admin@admin.com	admin@admin.com	local	$2a$10$noTKT66t847zHcN7IR8j8.fp2aXAxjkodeFulp8aahl7QCGSxr3Me	\N	\N	t	f	4	Admin	\N	082335967247	\N	1	1	2021-11-25 04:40:11.969+01	2021-12-07 22:01:54.515+01	1
12	safii.lenovo2@gmail.com	safii.lenovo2@gmail.com	local	$2a$10$e140VsM0ZztXgyvt1kELJeBvpVjG0Vor8eRXtiyQSOGI9/Krmapfq	\N	\N	t	\N	1	Safii	\N	085230821527	\N	\N	\N	2021-12-08 08:25:30.11+01	2021-12-08 08:25:30.131+01	\N
4	sonypancab@gmail.com	sonypancab@gmail.com	local	$2a$10$SlRe/fi3O8QGb4Ks8os5be6ZvlS.Td/xtS7/rd/G5I/tuIi.Gqj0m	\N	\N	t	\N	1	sony	\N	082142188321	\N	\N	\N	2021-11-27 05:30:58.203+01	2021-11-27 05:30:58.225+01	\N
17	pengelolates@gmail.com	pengelolates@gmail.com	local	$2a$10$vnt2xAcxf6kcZQ2WYwXr3eshpi/VzmBdnqrZS646v3DIWJzidJdsC	\N	\N	\N	\N	3	Faruk Alfiyan	\N	012345678910	\N	\N	\N	2021-12-16 08:41:23.718+01	2021-12-16 08:41:23.744+01	\N
6	pengelola@gmail.com	pengelola@gmail.com	local	$2a$10$U8h0YXsZYLefa9h8zaAiG.4IipeycRH4G3rjtWllhG4ZxLoaRB7Xe	\N	\N	t	f	3	Pengelola	\N	\N	\N	1	1	2021-12-06 08:34:52.15+01	2021-12-06 08:34:52.165+01	\N
19	sony@gmail.com	sony@gmail.com	local	$2a$10$u7gdfM15Q.GCOLtsKZ3cNOj3cTzcw.q0EceMDKW9/VRaIdU/MyI.W	\N	\N	\N	\N	3	sony	\N	082142188321	\N	\N	\N	2021-12-21 04:29:35.381+01	2021-12-21 04:29:35.401+01	\N
\.


--
-- Data for Name: users-permissions_user_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user_components" (id, field, "order", component_type, component_id, "users-permissions_user_id") FROM stdin;
3	address	1	components_array_addresses	3	5
4	address	1	components_array_addresses	5	1
6	address	1	components_array_addresses	10	8
7	address	1	components_array_addresses	11	9
8	address	1	components_array_addresses	15	10
9	address	1	components_array_addresses	16	11
10	address	1	components_array_addresses	23	12
11	address	1	components_array_addresses	25	4
12	address	1	components_array_addresses	28	13
14	address	1	components_array_addresses	30	15
16	address	1	components_array_addresses	34	17
18	address	1	components_array_addresses	40	6
19	address	1	components_array_addresses	41	19
\.


--
-- Data for Name: visitors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visitors (id, people, created_by, updated_by, created_at, updated_at) FROM stdin;
1	1	\N	\N	2021-11-26 09:48:06.529+01	2021-11-26 09:48:06.529+01
2	1	\N	\N	2021-11-26 09:48:18.381+01	2021-11-26 09:48:18.381+01
3	1	\N	\N	2021-12-23 10:45:32.689+01	2021-12-23 10:45:32.689+01
4	1	\N	\N	2021-12-23 10:50:53.202+01	2021-12-23 10:50:53.202+01
5	1	\N	\N	2021-12-23 10:50:53.232+01	2021-12-23 10:50:53.232+01
\.


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bookings_id_seq', 5, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carts_id_seq', 1, false);


--
-- Name: components_array_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_array_addresses_id_seq', 42, true);


--
-- Name: components_array_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_array_contacts_id_seq', 10, true);


--
-- Name: components_array_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_array_items_id_seq', 1, false);


--
-- Name: components_array_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_array_prices_id_seq', 1, false);


--
-- Name: components_array_rekenings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_array_rekenings_id_seq', 28, true);


--
-- Name: components_array_tessses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_array_tessses_id_seq', 1, false);


--
-- Name: components_facility_arrays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_facility_arrays_id_seq', 1, false);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 59, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: objects_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objects_components_id_seq', 10, true);


--
-- Name: objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objects_id_seq', 10, true);


--
-- Name: orders_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_components_id_seq', 22, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 22, true);


--
-- Name: packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.packages_id_seq', 1, false);


--
-- Name: payments_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_components_id_seq', 28, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 12, true);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, false);


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 881, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 183, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 300, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 604, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 4, true);


--
-- Name: users-permissions_user_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_components_id_seq"', 20, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 20, true);


--
-- Name: visitors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitors_id_seq', 5, true);


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: components_array_addresses components_array_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_addresses
    ADD CONSTRAINT components_array_addresses_pkey PRIMARY KEY (id);


--
-- Name: components_array_contacts components_array_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_contacts
    ADD CONSTRAINT components_array_contacts_pkey PRIMARY KEY (id);


--
-- Name: components_array_items components_array_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_items
    ADD CONSTRAINT components_array_items_pkey PRIMARY KEY (id);


--
-- Name: components_array_prices components_array_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_prices
    ADD CONSTRAINT components_array_prices_pkey PRIMARY KEY (id);


--
-- Name: components_array_prices components_array_prices_variation_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_prices
    ADD CONSTRAINT components_array_prices_variation_unique UNIQUE (variation);


--
-- Name: components_array_rekenings components_array_rekenings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_rekenings
    ADD CONSTRAINT components_array_rekenings_pkey PRIMARY KEY (id);


--
-- Name: components_array_tessses components_array_tessses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_array_tessses
    ADD CONSTRAINT components_array_tessses_pkey PRIMARY KEY (id);


--
-- Name: components_facility_arrays components_facility_arrays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_facility_arrays
    ADD CONSTRAINT components_facility_arrays_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: objects_components objects_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects_components
    ADD CONSTRAINT objects_components_pkey PRIMARY KEY (id);


--
-- Name: objects objects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);


--
-- Name: objects objects_slug_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects
    ADD CONSTRAINT objects_slug_unique UNIQUE (slug);


--
-- Name: orders_components orders_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_components
    ADD CONSTRAINT orders_components_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: packages packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);


--
-- Name: payments_components payments_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_components
    ADD CONSTRAINT payments_components_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user_components users-permissions_user_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user_components"
    ADD CONSTRAINT "users-permissions_user_components_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: visitors visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT visitors_pkey PRIMARY KEY (id);


--
-- Name: objects_components object_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects_components
    ADD CONSTRAINT object_id_fk FOREIGN KEY (object_id) REFERENCES public.objects(id) ON DELETE CASCADE;


--
-- Name: orders_components order_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_components
    ADD CONSTRAINT order_id_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: payments_components payment_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_components
    ADD CONSTRAINT payment_id_fk FOREIGN KEY (payment_id) REFERENCES public.payments(id) ON DELETE CASCADE;


--
-- Name: users-permissions_user_components users-permissions_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user_components"
    ADD CONSTRAINT "users-permissions_user_id_fk" FOREIGN KEY ("users-permissions_user_id") REFERENCES public."users-permissions_user"(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

