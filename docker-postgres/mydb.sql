--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

-- Started on 2024-05-24 14:59:44 CEST

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

--
-- TOC entry 5 (class 2615 OID 17418)
-- Name: openage; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA openage;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 266 (class 1259 OID 17811)
-- Name: dat_alerts; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_alerts (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    activated integer DEFAULT 0 NOT NULL,
    hashcode integer,
    transfered timestamp without time zone,
    title character varying(255),
    user_from integer,
    table_id integer,
    criteria text,
    user_to integer,
    email integer,
    text text,
    background integer,
    field_id integer,
    is_create integer,
    is_update integer
);


--
-- TOC entry 265 (class 1259 OID 17810)
-- Name: dat_alerts_pkref_seq; Type: SEQUENCE; Schema: openage; Owner: -
--

CREATE SEQUENCE openage.dat_alerts_pkref_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4186 (class 0 OID 0)
-- Dependencies: 265
-- Name: dat_alerts_pkref_seq; Type: SEQUENCE OWNED BY; Schema: openage; Owner: -
--

ALTER SEQUENCE openage.dat_alerts_pkref_seq OWNED BY openage.dat_alerts.pkref;


--
-- TOC entry 262 (class 1259 OID 17785)
-- Name: dat_imports; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_imports (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    activated integer DEFAULT 0 NOT NULL,
    hashcode integer,
    transfered timestamp without time zone,
    title character varying(255),
    target integer,
    content text,
    completed integer,
    cr text,
    error text,
    content_file bytea,
    target_view integer,
    doall integer
);


--
-- TOC entry 261 (class 1259 OID 17784)
-- Name: dat_imports_pkref_seq; Type: SEQUENCE; Schema: openage; Owner: -
--

CREATE SEQUENCE openage.dat_imports_pkref_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4187 (class 0 OID 0)
-- Dependencies: 261
-- Name: dat_imports_pkref_seq; Type: SEQUENCE OWNED BY; Schema: openage; Owner: -
--

ALTER SEQUENCE openage.dat_imports_pkref_seq OWNED BY openage.dat_imports.pkref;


--
-- TOC entry 214 (class 1259 OID 17448)
-- Name: dat_labels_alarm_mode; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_labels_alarm_mode (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    table_id integer,
    activated integer,
    order_id integer,
    selected integer,
    label text,
    property character varying(255),
    tooltip text,
    image bytea
);


--
-- TOC entry 210 (class 1259 OID 17420)
-- Name: dat_labels_gender; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_labels_gender (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    table_id integer,
    activated integer,
    order_id integer,
    selected integer,
    label text,
    property character varying(255),
    tooltip text,
    image bytea
);


--
-- TOC entry 211 (class 1259 OID 17427)
-- Name: dat_labels_priority; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_labels_priority (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    table_id integer,
    activated integer,
    order_id integer,
    selected integer,
    label text,
    property character varying(255),
    tooltip text,
    image bytea
);


--
-- TOC entry 212 (class 1259 OID 17434)
-- Name: dat_labels_status; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_labels_status (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    table_id integer,
    activated integer,
    order_id integer,
    selected integer,
    label text,
    property character varying(255),
    tooltip text,
    image bytea
);


--
-- TOC entry 213 (class 1259 OID 17441)
-- Name: dat_labels_upload_type; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_labels_upload_type (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    table_id integer,
    activated integer,
    order_id integer,
    selected integer,
    label text,
    property character varying(255),
    tooltip text,
    image bytea
);


--
-- TOC entry 264 (class 1259 OID 17798)
-- Name: dat_reports; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.dat_reports (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    activated integer DEFAULT 0 NOT NULL,
    hashcode integer,
    transfered timestamp without time zone,
    title character varying(255),
    comments text,
    currency integer,
    model character varying(255),
    criteria text
);


--
-- TOC entry 263 (class 1259 OID 17797)
-- Name: dat_reports_pkref_seq; Type: SEQUENCE; Schema: openage; Owner: -
--

CREATE SEQUENCE openage.dat_reports_pkref_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4188 (class 0 OID 0)
-- Dependencies: 263
-- Name: dat_reports_pkref_seq; Type: SEQUENCE OWNED BY; Schema: openage; Owner: -
--

ALTER SEQUENCE openage.dat_reports_pkref_seq OWNED BY openage.dat_reports.pkref;


--
-- TOC entry 267 (class 1259 OID 17823)
-- Name: int_1894018807; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.int_1894018807 (
    pkref integer NOT NULL,
    fkref integer NOT NULL
);


--
-- TOC entry 268 (class 1259 OID 17828)
-- Name: int_1894018810; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.int_1894018810 (
    pkref integer NOT NULL,
    fkref integer NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 17455)
-- Name: lab_bases; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_bases (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label character varying(255) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 17460)
-- Name: lab_countries; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_countries (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label character varying(255) NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 17465)
-- Name: lab_lang; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_lang (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label character varying(255) NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 17470)
-- Name: lab_relations; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_relations (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label_name character varying(30),
    label_asc character varying(40),
    label_desc character varying(40)
);


--
-- TOC entry 219 (class 1259 OID 17475)
-- Name: lab_resources; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_resources (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label character varying(255) NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 17480)
-- Name: lab_rights; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_rights (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label character varying(255) NOT NULL,
    short_label character varying(3) NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 17487)
-- Name: lab_roles; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.lab_roles (
    fkref integer NOT NULL,
    lang integer NOT NULL,
    label character varying(255) NOT NULL
);


--
-- TOC entry 301 (class 1259 OID 18530)
-- Name: person; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.person (
    pkref integer NOT NULL,
    created timestamp without time zone,
    updated timestamp without time zone,
    owned_by integer,
    created_by integer,
    updated_by integer,
    firsname character varying(255),
    lastname character varying(255),
    description text,
    age integer,
    birth_date date
);


--
-- TOC entry 300 (class 1259 OID 18529)
-- Name: person_pkref_seq; Type: SEQUENCE; Schema: openage; Owner: -
--

CREATE SEQUENCE openage.person_pkref_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4189 (class 0 OID 0)
-- Dependencies: 300
-- Name: person_pkref_seq; Type: SEQUENCE OWNED BY; Schema: openage; Owner: -
--

ALTER SEQUENCE openage.person_pkref_seq OWNED BY openage.person.pkref;


--
-- TOC entry 223 (class 1259 OID 17502)
-- Name: sys_bases; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_bases (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    company_id integer NOT NULL,
    lang_id integer NOT NULL,
    time_zone character varying(64) DEFAULT 'UTC'::character varying NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 17508)
-- Name: sys_calendar_comp_labels; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_calendar_comp_labels (
    comp_id integer NOT NULL,
    table_id integer NOT NULL,
    label_id integer NOT NULL,
    icon character varying(64),
    duration integer,
    busy integer,
    report integer
);


--
-- TOC entry 226 (class 1259 OID 17516)
-- Name: sys_calendar_definitions; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_calendar_definitions (
    table_id integer NOT NULL,
    owner_column_id integer,
    type_column_id integer,
    type_table_id integer,
    label_column_id integer,
    desc_column_id integer,
    date_column_id integer,
    time_column_id integer,
    duration_column_id integer,
    status_column_id integer,
    status_table_id integer,
    private integer,
    status_open integer,
    status_close integer
);


--
-- TOC entry 225 (class 1259 OID 17513)
-- Name: sys_calendar_holidays; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_calendar_holidays (
    user_id integer,
    holidays_impl character varying(255)
);


--
-- TOC entry 227 (class 1259 OID 17521)
-- Name: sys_calendar_user_labels; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_calendar_user_labels (
    user_id integer NOT NULL,
    table_id integer NOT NULL,
    label_id integer NOT NULL,
    icon character varying(64),
    duration integer,
    busy integer,
    report integer
);


--
-- TOC entry 228 (class 1259 OID 17526)
-- Name: sys_calendar_user_prefs; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_calendar_user_prefs (
    user_id integer NOT NULL,
    start_hour integer,
    start_minute integer,
    end_hour integer,
    end_minute integer,
    minutes_before integer DEFAULT 10,
    minutes_after integer DEFAULT 10
);


--
-- TOC entry 229 (class 1259 OID 17533)
-- Name: sys_columns; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_columns (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    order_id integer,
    table_id integer NOT NULL,
    fk_table_id integer,
    fk_column_id integer,
    constraint_id integer,
    name character varying(255) NOT NULL,
    title text,
    data_type integer DEFAULT 0 NOT NULL,
    key_seq integer,
    flag_id integer,
    colsize integer,
    required integer,
    searchable integer,
    format_id integer DEFAULT 0 NOT NULL,
    properties text,
    mode_id integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 17543)
-- Name: sys_columns_accessflags; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_columns_accessflags (
    table_id integer NOT NULL,
    column_id integer NOT NULL,
    role_id integer NOT NULL,
    flags integer NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 17553)
-- Name: sys_columns_preset; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_columns_preset (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer DEFAULT 0 NOT NULL,
    name character varying(30) NOT NULL,
    title character varying(30) NOT NULL,
    format_id integer DEFAULT 0 NOT NULL,
    colsize double precision,
    table_id integer DEFAULT 0 NOT NULL,
    column_id integer DEFAULT 0 NOT NULL,
    object_id integer DEFAULT 0 NOT NULL,
    code_id integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 17564)
-- Name: sys_companies; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_companies (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    name character varying(80) NOT NULL,
    account character varying(8) NOT NULL,
    lang integer NOT NULL,
    time_zone character varying(64) DEFAULT 'UTC'::character varying NOT NULL,
    licence_agreed integer DEFAULT 0 NOT NULL,
    licence_key_data text,
    licence_key_code character varying(255),
    max_login_retries integer DEFAULT 3 NOT NULL,
    min_login_lockout integer DEFAULT 1440 NOT NULL,
    def_currency integer NOT NULL,
    sto_lim integer DEFAULT '-1'::integer NOT NULL,
    doc_lim integer DEFAULT '-1'::integer NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 17579)
-- Name: sys_company_lang; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_company_lang (
    fkref integer NOT NULL,
    lang_id integer NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 17584)
-- Name: sys_config; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_config (
    property_name character varying(255) NOT NULL,
    property_value character varying(255) NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 17591)
-- Name: sys_config_companies; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_config_companies (
    company_id integer NOT NULL,
    property_name character varying(255) NOT NULL,
    property_value character varying(255) NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 17548)
-- Name: sys_constraints; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_constraints (
    created timestamp without time zone,
    updated timestamp without time zone,
    table_id integer NOT NULL,
    column_id integer NOT NULL,
    type_id integer NOT NULL,
    target_table_id integer NOT NULL,
    target_column_id integer NOT NULL,
    primary_table_id integer NOT NULL,
    primary_column_id integer NOT NULL
);


--
-- TOC entry 297 (class 1259 OID 18050)
-- Name: sys_containers; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_containers (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    order_id integer,
    alias_id integer NOT NULL,
    table_id integer NOT NULL,
    column_id integer NOT NULL,
    title text
);


--
-- TOC entry 237 (class 1259 OID 17598)
-- Name: sys_countries; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_countries (
    pkref integer NOT NULL,
    iso_code character(2) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 17605)
-- Name: sys_criteria; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_criteria (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    creator_id integer NOT NULL,
    criteria_label character varying(255)
);


--
-- TOC entry 280 (class 1259 OID 17898)
-- Name: sys_custom_shared_view_model; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_custom_shared_view_model (
    created timestamp without time zone,
    updated timestamp without time zone,
    owner_id integer NOT NULL,
    profil_id integer NOT NULL,
    cvm_id integer NOT NULL
);


--
-- TOC entry 279 (class 1259 OID 17889)
-- Name: sys_custom_view_model; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_custom_view_model (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    creator_id integer NOT NULL,
    view_id integer NOT NULL,
    name character varying(255),
    type_id integer DEFAULT 0,
    content text,
    criteria text
);


--
-- TOC entry 278 (class 1259 OID 17888)
-- Name: sys_custom_view_model_pkref_seq; Type: SEQUENCE; Schema: openage; Owner: -
--

CREATE SEQUENCE openage.sys_custom_view_model_pkref_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4190 (class 0 OID 0)
-- Dependencies: 278
-- Name: sys_custom_view_model_pkref_seq; Type: SEQUENCE OWNED BY; Schema: openage; Owner: -
--

ALTER SEQUENCE openage.sys_custom_view_model_pkref_seq OWNED BY openage.sys_custom_view_model.pkref;


--
-- TOC entry 239 (class 1259 OID 17610)
-- Name: sys_duplicate_columns; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_duplicate_columns (
    dup_id integer NOT NULL,
    col_id integer NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 17615)
-- Name: sys_duplicate_commonwords; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_duplicate_commonwords (
    base_id integer NOT NULL,
    company_id integer NOT NULL,
    commonword character varying(20) NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 17620)
-- Name: sys_duplicate_params; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_duplicate_params (
    pkref integer DEFAULT 0 NOT NULL,
    base_id integer DEFAULT 0 NOT NULL,
    company_id integer DEFAULT 0 NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    view_id integer DEFAULT 0 NOT NULL,
    duplicate_label character varying(255) NOT NULL,
    activated integer DEFAULT 0 NOT NULL,
    timedigit integer DEFAULT 0 NOT NULL,
    timeunit integer DEFAULT 0 NOT NULL,
    lastrun timestamp without time zone NOT NULL,
    threshold numeric,
    warn integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 17637)
-- Name: sys_element; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_element (
    created timestamp without time zone,
    updated timestamp without time zone,
    single integer DEFAULT 0 NOT NULL,
    table_id integer DEFAULT 0 NOT NULL,
    column_id integer DEFAULT 0 NOT NULL,
    element_id integer DEFAULT 0 NOT NULL,
    object_id integer DEFAULT 0 NOT NULL,
    template_id integer DEFAULT 0 NOT NULL,
    element_name character varying(30) NOT NULL,
    element_value text
);


--
-- TOC entry 244 (class 1259 OID 17658)
-- Name: sys_field_behaviors; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_field_behaviors (
    created timestamp without time zone,
    updated timestamp without time zone,
    single integer DEFAULT 0 NOT NULL,
    view_id integer NOT NULL,
    field_id integer NOT NULL,
    name character varying(100) NOT NULL,
    value text
);


--
-- TOC entry 245 (class 1259 OID 17666)
-- Name: sys_field_grids; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_field_grids (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    creator_id integer,
    name character varying(80),
    order_id integer,
    type_id integer DEFAULT 0,
    view_id integer,
    content text
);


--
-- TOC entry 246 (class 1259 OID 17674)
-- Name: sys_field_rules; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_field_rules (
    created timestamp without time zone,
    updated timestamp without time zone,
    row_index integer NOT NULL,
    view_id integer NOT NULL,
    field_id integer NOT NULL,
    name character varying(100) NOT NULL,
    value text
);


--
-- TOC entry 243 (class 1259 OID 17650)
-- Name: sys_fields; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_fields (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    view_id integer NOT NULL,
    order_id integer,
    table_id integer NOT NULL,
    column_id integer NOT NULL,
    widget_id integer,
    fk_view_id integer,
    label text,
    tip text,
    searchable integer,
    layout integer,
    group_name text,
    properties text,
    title text,
    hover text,
    help text,
    mode_id integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 251 (class 1259 OID 17710)
-- Name: sys_filetypes; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_filetypes (
    pkref integer NOT NULL,
    mimetype_id integer NOT NULL,
    extension character varying(16) NOT NULL
);


--
-- TOC entry 249 (class 1259 OID 17696)
-- Name: sys_lang; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_lang (
    pkref integer NOT NULL,
    iso_code character(2) NOT NULL
);


--
-- TOC entry 252 (class 1259 OID 17717)
-- Name: sys_media; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_media (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    filename character varying(92) NOT NULL,
    mimetype_id integer NOT NULL,
    cache integer NOT NULL,
    length integer NOT NULL,
    content bytea
);


--
-- TOC entry 253 (class 1259 OID 17726)
-- Name: sys_media_alias; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_media_alias (
    created timestamp without time zone,
    updated timestamp without time zone,
    media_id integer NOT NULL,
    project_id integer NOT NULL,
    length integer NOT NULL,
    content bytea
);


--
-- TOC entry 254 (class 1259 OID 17733)
-- Name: sys_menus; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_menus (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    project_id integer NOT NULL,
    name text NOT NULL,
    activated integer,
    order_id integer,
    image bytea
);


--
-- TOC entry 250 (class 1259 OID 17703)
-- Name: sys_mimetypes; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_mimetypes (
    pkref integer NOT NULL,
    mimetype character varying(92) NOT NULL
);


--
-- TOC entry 255 (class 1259 OID 17740)
-- Name: sys_object; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_object (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    object_name character varying(80),
    object_title character varying(255),
    object_format character varying(255),
    object_access integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 256 (class 1259 OID 17748)
-- Name: sys_object_template; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_object_template (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    order_id integer DEFAULT 0 NOT NULL,
    is_primary integer DEFAULT 0 NOT NULL,
    duplicate integer DEFAULT 0 NOT NULL,
    element_name character varying(8),
    table_id integer DEFAULT 0 NOT NULL,
    column_id integer DEFAULT 0 NOT NULL,
    object_id integer DEFAULT 0 NOT NULL,
    template_id integer DEFAULT 0 NOT NULL,
    force_id integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 257 (class 1259 OID 17761)
-- Name: sys_project_user_roles; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_project_user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    project_id integer NOT NULL
);


--
-- TOC entry 258 (class 1259 OID 17766)
-- Name: sys_projects; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_projects (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    name character varying(10) NOT NULL,
    title text,
    description text,
    use_calendar integer DEFAULT 0 NOT NULL,
    opened integer
);


--
-- TOC entry 222 (class 1259 OID 17492)
-- Name: sys_records; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_records (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    table_id integer NOT NULL,
    base_id integer DEFAULT 0 NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    activated integer DEFAULT 0 NOT NULL,
    hashcode integer,
    transfered timestamp without time zone
);


--
-- TOC entry 259 (class 1259 OID 17774)
-- Name: sys_relation_definitions; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_relation_definitions (
    pkref integer NOT NULL,
    table_id integer,
    selected integer
);


--
-- TOC entry 260 (class 1259 OID 17779)
-- Name: sys_relations; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_relations (
    pkref integer NOT NULL,
    relation_id integer NOT NULL,
    key_src integer NOT NULL,
    key_dest integer NOT NULL,
    direction integer NOT NULL,
    comments character varying(255)
);


--
-- TOC entry 269 (class 1259 OID 17833)
-- Name: sys_reports_type; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_reports_type (
    pkref integer NOT NULL,
    project_id integer NOT NULL,
    name character varying(20),
    xmldesc text
);


--
-- TOC entry 270 (class 1259 OID 17840)
-- Name: sys_resources; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_resources (
    pkref integer NOT NULL,
    resource_name character varying(255) NOT NULL,
    project_id integer
);


--
-- TOC entry 271 (class 1259 OID 17847)
-- Name: sys_resources_rightsfilters; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_resources_rightsfilters (
    fkref_resource integer NOT NULL,
    fkref_right integer NOT NULL
);


--
-- TOC entry 272 (class 1259 OID 17852)
-- Name: sys_rights; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_rights (
    pkref integer NOT NULL,
    ref_code character varying(15) NOT NULL
);


--
-- TOC entry 273 (class 1259 OID 17859)
-- Name: sys_role_hierarchies; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_role_hierarchies (
    pkref integer NOT NULL,
    extends_role integer,
    container_id integer NOT NULL
);


--
-- TOC entry 274 (class 1259 OID 17864)
-- Name: sys_role_rights_resources; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_role_rights_resources (
    role_id integer NOT NULL,
    right_id integer NOT NULL,
    resource_id integer NOT NULL
);


--
-- TOC entry 275 (class 1259 OID 17869)
-- Name: sys_role_rights_tables; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_role_rights_tables (
    table_id integer NOT NULL,
    role_id integer NOT NULL,
    right_id integer NOT NULL
);


--
-- TOC entry 247 (class 1259 OID 17681)
-- Name: sys_row_level; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_row_level (
    created timestamp without time zone,
    updated timestamp without time zone,
    owner_id integer NOT NULL,
    role_id integer NOT NULL,
    mode_id integer NOT NULL,
    scope integer DEFAULT 0 NOT NULL,
    criteria text
);


--
-- TOC entry 248 (class 1259 OID 17689)
-- Name: sys_row_level_model; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_row_level_model (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    name character varying(255),
    criteria text
);


--
-- TOC entry 276 (class 1259 OID 17874)
-- Name: sys_search; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_search (
    created timestamp without time zone,
    updated timestamp without time zone,
    creator_id integer NOT NULL,
    view_id integer NOT NULL,
    criteria text
);


--
-- TOC entry 277 (class 1259 OID 17881)
-- Name: sys_search_model; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_search_model (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    creator_id integer NOT NULL,
    view_id integer NOT NULL,
    name character varying(255),
    criteria text
);


--
-- TOC entry 281 (class 1259 OID 17903)
-- Name: sys_search_shared_model; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_search_shared_model (
    created timestamp without time zone,
    updated timestamp without time zone,
    owner_id integer NOT NULL,
    role_id integer NOT NULL,
    model_id integer NOT NULL
);


--
-- TOC entry 282 (class 1259 OID 17908)
-- Name: sys_sequence; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_sequence (
    sequence_name character varying(255) NOT NULL,
    sequence_value integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 283 (class 1259 OID 17914)
-- Name: sys_share; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_share (
    table_id integer DEFAULT 0 NOT NULL,
    fkref integer DEFAULT 0 NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 284 (class 1259 OID 17922)
-- Name: sys_share_auto; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_share_auto (
    created timestamp without time zone,
    updated timestamp without time zone,
    from_user_id integer DEFAULT 0 NOT NULL,
    with_user_id integer DEFAULT 0 NOT NULL,
    right_type integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 285 (class 1259 OID 17930)
-- Name: sys_tables; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_tables (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    mode_id integer,
    name character varying(255) NOT NULL,
    title text,
    at_first_id integer,
    at_last_id integer,
    properties text
);


--
-- TOC entry 287 (class 1259 OID 17950)
-- Name: sys_task_history; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_task_history (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref bigint NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    project_id integer,
    table_id integer,
    fkref integer,
    state_id integer,
    lang_iso character varying(2) DEFAULT 'fr'::character varying NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    status_id integer DEFAULT 0 NOT NULL,
    date_utc timestamp without time zone,
    value text,
    text text
);


--
-- TOC entry 288 (class 1259 OID 17962)
-- Name: sys_task_submit; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_task_submit (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref bigint NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    project_id integer,
    table_id integer,
    fkref integer,
    state_id integer,
    lang_iso character varying(2) DEFAULT 'fr'::character varying NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    status_id integer DEFAULT 0 NOT NULL,
    date_utc timestamp without time zone,
    value text,
    text text
);


--
-- TOC entry 286 (class 1259 OID 17938)
-- Name: sys_task_waiting; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_task_waiting (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref bigint NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    owner_id integer DEFAULT 0 NOT NULL,
    project_id integer,
    table_id integer,
    fkref integer,
    state_id integer,
    lang_iso character varying(2) DEFAULT 'fr'::character varying NOT NULL,
    type_id integer DEFAULT 0 NOT NULL,
    status_id integer DEFAULT 0 NOT NULL,
    date_utc timestamp without time zone,
    value text,
    text text
);


--
-- TOC entry 289 (class 1259 OID 17974)
-- Name: sys_uploads; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_uploads (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    row_id integer NOT NULL,
    view_id integer DEFAULT 0 NOT NULL,
    field_id integer DEFAULT 0 NOT NULL,
    creator_id integer DEFAULT 0 NOT NULL,
    company_id integer NOT NULL,
    type_id integer,
    filename character varying(255),
    filesize integer,
    comments text
);


--
-- TOC entry 290 (class 1259 OID 17984)
-- Name: sys_user_hierarchy_views; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_user_hierarchy_views (
    viewer integer NOT NULL,
    target integer NOT NULL
);


--
-- TOC entry 291 (class 1259 OID 17989)
-- Name: sys_users; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_users (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    company_id integer NOT NULL,
    base_id integer,
    owner integer,
    login character varying(255) NOT NULL,
    password character varying(64),
    login_time timestamp without time zone,
    login_retries integer DEFAULT 0 NOT NULL,
    lang integer NOT NULL,
    currency integer NOT NULL,
    time_zone character varying(64) DEFAULT 'UTC'::character varying NOT NULL,
    is_active integer DEFAULT 1 NOT NULL,
    firstname character varying(40),
    lastname character varying(40) NOT NULL,
    email character varying(100),
    phone character varying(18),
    mobile character varying(18),
    usesldap integer DEFAULT 1 NOT NULL,
    password_date timestamp without time zone,
    is_ro integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 292 (class 1259 OID 18003)
-- Name: sys_values_criteria; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_values_criteria (
    created timestamp without time zone,
    updated timestamp without time zone,
    creator_id integer DEFAULT 0 NOT NULL,
    fk_table_id integer DEFAULT 0 NOT NULL,
    fkref integer DEFAULT 0 NOT NULL,
    criteria text,
    table_id integer DEFAULT 0 NOT NULL,
    column_id integer DEFAULT 0 NOT NULL,
    format integer DEFAULT 0 NOT NULL,
    parent_table_id integer NOT NULL,
    parent_col_id integer NOT NULL,
    logical integer DEFAULT 0 NOT NULL,
    comparator integer DEFAULT 0 NOT NULL,
    label character varying(255),
    order_show integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 293 (class 1259 OID 18019)
-- Name: sys_version; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_version (
    major_version integer DEFAULT 0 NOT NULL,
    minor_version integer DEFAULT 0 NOT NULL,
    patch_version integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 295 (class 1259 OID 18035)
-- Name: sys_view_behaviors; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_view_behaviors (
    created timestamp without time zone,
    updated timestamp without time zone,
    single integer DEFAULT 0 NOT NULL,
    view_id integer NOT NULL,
    name character varying(100) NOT NULL,
    value text
);


--
-- TOC entry 296 (class 1259 OID 18043)
-- Name: sys_view_rules; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_view_rules (
    created timestamp without time zone,
    updated timestamp without time zone,
    row_index integer NOT NULL,
    view_id integer NOT NULL,
    name character varying(100) NOT NULL,
    value text
);


--
-- TOC entry 294 (class 1259 OID 18027)
-- Name: sys_views; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.sys_views (
    created timestamp without time zone,
    updated timestamp without time zone,
    pkref integer NOT NULL,
    order_id integer,
    parent_id integer NOT NULL,
    table_id integer NOT NULL,
    title text,
    description text,
    grid text,
    def_shared integer,
    activated integer,
    attached_id integer,
    next_id integer,
    image bytea,
    mode_id integer DEFAULT 0 NOT NULL,
    mnemo character varying(20)
);


--
-- TOC entry 299 (class 1259 OID 18483)
-- Name: test; Type: TABLE; Schema: openage; Owner: -
--

CREATE TABLE openage.test (
    pkref integer NOT NULL,
    test character varying(255),
    tt character varying(255),
    ee character varying(255),
    aa character varying(255)
);


--
-- TOC entry 298 (class 1259 OID 18482)
-- Name: test_pkref_seq; Type: SEQUENCE; Schema: openage; Owner: -
--

CREATE SEQUENCE openage.test_pkref_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4191 (class 0 OID 0)
-- Dependencies: 298
-- Name: test_pkref_seq; Type: SEQUENCE OWNED BY; Schema: openage; Owner: -
--

ALTER SEQUENCE openage.test_pkref_seq OWNED BY openage.test.pkref;


--
-- TOC entry 3624 (class 2604 OID 17814)
-- Name: dat_alerts pkref; Type: DEFAULT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_alerts ALTER COLUMN pkref SET DEFAULT nextval('openage.dat_alerts_pkref_seq'::regclass);


--
-- TOC entry 3614 (class 2604 OID 17788)
-- Name: dat_imports pkref; Type: DEFAULT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_imports ALTER COLUMN pkref SET DEFAULT nextval('openage.dat_imports_pkref_seq'::regclass);


--
-- TOC entry 3619 (class 2604 OID 17801)
-- Name: dat_reports pkref; Type: DEFAULT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_reports ALTER COLUMN pkref SET DEFAULT nextval('openage.dat_reports_pkref_seq'::regclass);


--
-- TOC entry 3677 (class 2604 OID 18533)
-- Name: person pkref; Type: DEFAULT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.person ALTER COLUMN pkref SET DEFAULT nextval('openage.person_pkref_seq'::regclass);


--
-- TOC entry 3629 (class 2604 OID 17892)
-- Name: sys_custom_view_model pkref; Type: DEFAULT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_custom_view_model ALTER COLUMN pkref SET DEFAULT nextval('openage.sys_custom_view_model_pkref_seq'::regclass);


--
-- TOC entry 3676 (class 2604 OID 18486)
-- Name: test pkref; Type: DEFAULT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.test ALTER COLUMN pkref SET DEFAULT nextval('openage.test_pkref_seq'::regclass);


--
-- TOC entry 4145 (class 0 OID 17811)
-- Dependencies: 266
-- Data for Name: dat_alerts; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_alerts (created, updated, pkref, owner_id, creator_id, author_id, activated, hashcode, transfered, title, user_from, table_id, criteria, user_to, email, text, background, field_id, is_create, is_update) FROM stdin;
\.


--
-- TOC entry 4141 (class 0 OID 17785)
-- Dependencies: 262
-- Data for Name: dat_imports; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_imports (created, updated, pkref, owner_id, creator_id, author_id, activated, hashcode, transfered, title, target, content, completed, cr, error, content_file, target_view, doall) FROM stdin;
\.


--
-- TOC entry 4093 (class 0 OID 17448)
-- Dependencies: 214
-- Data for Name: dat_labels_alarm_mode; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_labels_alarm_mode (created, updated, pkref, table_id, activated, order_id, selected, label, property, tooltip, image) FROM stdin;
2024-04-09 15:10:13.127	2024-04-09 15:10:13.127	0	0	0	0	0		\N	\N	\N
\.


--
-- TOC entry 4089 (class 0 OID 17420)
-- Dependencies: 210
-- Data for Name: dat_labels_gender; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_labels_gender (created, updated, pkref, table_id, activated, order_id, selected, label, property, tooltip, image) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.13	77	0	0	0	1	fr=M\nen=Mr	\N	\N	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.131	77477	0	0	1	0	fr=Mme\nen=Mrs	\N	\N	\N
\.


--
-- TOC entry 4090 (class 0 OID 17427)
-- Dependencies: 211
-- Data for Name: dat_labels_priority; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_labels_priority (created, updated, pkref, table_id, activated, order_id, selected, label, property, tooltip, image) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.134	69499373	0	0	0	0	fr=Haute\nen=High	\N	\N	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.134	502695874	0	0	1	1	fr=Normale\nen=Normal	\N	\N	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.135	63956294	0	0	2	0	fr=Basse\nen=Low	\N	\N	\N
\.


--
-- TOC entry 4091 (class 0 OID 17434)
-- Dependencies: 212
-- Data for Name: dat_labels_status; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_labels_status (created, updated, pkref, table_id, activated, order_id, selected, label, property, tooltip, image) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.138	153029773	0	0	0	1	fr=En cours\nen=In progress	True	\N	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.138	241075288	0	0	1	0	fr=Terminé\nen=Finished	False	\N	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.139	812587700	0	0	2	0	fr=Annulée\nen=Cancelled	False	\N	\N
\.


--
-- TOC entry 4092 (class 0 OID 17441)
-- Dependencies: 213
-- Data for Name: dat_labels_upload_type; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_labels_upload_type (created, updated, pkref, table_id, activated, order_id, selected, label, property, tooltip, image) FROM stdin;
2024-04-09 15:10:13.142	2024-04-09 15:10:13.142	0	0	0	0	0		\N	\N	\N
\.


--
-- TOC entry 4143 (class 0 OID 17798)
-- Dependencies: 264
-- Data for Name: dat_reports; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.dat_reports (created, updated, pkref, owner_id, creator_id, author_id, activated, hashcode, transfered, title, comments, currency, model, criteria) FROM stdin;
\.


--
-- TOC entry 4146 (class 0 OID 17823)
-- Dependencies: 267
-- Data for Name: int_1894018807; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.int_1894018807 (pkref, fkref) FROM stdin;
\.


--
-- TOC entry 4147 (class 0 OID 17828)
-- Dependencies: 268
-- Data for Name: int_1894018810; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.int_1894018810 (pkref, fkref) FROM stdin;
\.


--
-- TOC entry 4094 (class 0 OID 17455)
-- Dependencies: 215
-- Data for Name: lab_bases; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_bases (fkref, lang, label) FROM stdin;
\.


--
-- TOC entry 4095 (class 0 OID 17460)
-- Dependencies: 216
-- Data for Name: lab_countries; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_countries (fkref, lang, label) FROM stdin;
1	1	Australia
1	2	Australia
2	1	Autriche
2	2	Austria
3	1	Belgique
3	2	Belgium
4	1	Canada
4	2	Canada
5	1	Danemark
5	2	Denmark
6	1	Finlande
6	2	Finland
7	1	France
7	2	France
8	1	France métropole
8	2	France, metropolitan
9	1	Guyane française
9	2	French Guiana
10	1	Polynésie française
10	2	French Polynesia
11	1	FRENCH SOUTHERN TERRITORIES
11	2	French Southern Territories
12	1	Allemagne
12	2	Germany
13	1	Grèce
13	2	Greece
14	1	Guadeloupe
14	2	Guadeloupe
15	1	Irelande
15	2	Ireland
16	1	Italie
16	2	Italy
17	1	Luxembourg
17	2	Luxembourg
18	1	Martinique
18	2	Martinique
19	1	Monaco
19	2	Monaco
20	1	Pays-Bas
20	2	Netherlands
21	1	Nouvelle Calédonie
21	2	New Caledonia
22	1	Nouvelle Zélande
22	2	New Zealand
23	1	Norvège
23	2	Norway
24	1	Pologne
24	2	Poland
25	1	Portugal
25	2	Portugal
26	1	Réunion
26	2	Reunion
27	1	San Marin
27	2	San Marino
28	1	Espagne
28	2	Spain
29	1	Suède
29	2	Sweden
30	1	Suisse
30	2	Switzerland
31	1	Royaume-Uni
31	2	United Kingdom
32	1	Etats-Unis
32	2	United States
\.


--
-- TOC entry 4096 (class 0 OID 17465)
-- Dependencies: 217
-- Data for Name: lab_lang; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_lang (fkref, lang, label) FROM stdin;
1	1	Français
1	2	French
2	1	Anglais
2	2	English
\.


--
-- TOC entry 4097 (class 0 OID 17470)
-- Dependencies: 218
-- Data for Name: lab_relations; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_relations (fkref, lang, label_name, label_asc, label_desc) FROM stdin;
\.


--
-- TOC entry 4098 (class 0 OID 17475)
-- Dependencies: 219
-- Data for Name: lab_resources; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_resources (fkref, lang, label) FROM stdin;
1	1	Gestion des comptes utilisateurs
1	2	Manage user accounts
2	1	Gestion des comptes utilisateurs rattachés
2	2	Manage descendant user accounts
3	1	Gestion des profils et des droits
3	2	Manage security roles and profiles
4	1	Gestion des filtres sur les données
4	2	Manage data access filters
5	1	Gestion des paramètres de la société
5	2	Manage company settings
7	1	Export de données
7	2	Export data
8	1	Impression de listes de données
8	2	Print lists
9	1	Désactivation d'éléments partagés
9	2	Shared elements deactivation
10	1	Transfert d'éléments privés
10	2	Transfer private elements
11	1	Partage d'éléments privés
11	2	Share private data
12	1	Administration de l'agenda
12	2	Manage calendar
13	1	Personnalisation de mon agenda
13	2	Customise my calendar
14	1	Designer : mode développeur
14	2	Designer: developer mode
15	1	Designer : mode standard
15	2	Designer: standard mode
16	1	Traitement par lot
16	2	Batch processing
17	1	Emailling
17	2	E-mailing
18	1	Personnalisation des listes
18	2	Customise lists
19	1	Gestion du verrouillage des comptes
19	2	Manage account locking
20	1	Partage des filtres
20	2	Sharing filters
21	1	Filtres sur les relations
21	2	Relations filters
\.


--
-- TOC entry 4099 (class 0 OID 17480)
-- Dependencies: 220
-- Data for Name: lab_rights; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_rights (fkref, lang, label, short_label) FROM stdin;
1	1	Activer	A
1	2	Activate	A
2	1	Lecture	L
2	2	Read	R
3	1	Création	C
3	2	Create	C
4	1	Modification	M
4	2	Update	U
5	1	Demander la suppression	DS
5	2	Request deletion	RD
6	1	Suppression	S
6	2	Delete	D
\.


--
-- TOC entry 4100 (class 0 OID 17487)
-- Dependencies: 221
-- Data for Name: lab_roles; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.lab_roles (fkref, lang, label) FROM stdin;
1	1	Administrateur
1	2	Administrator
\.


--
-- TOC entry 4180 (class 0 OID 18530)
-- Dependencies: 301
-- Data for Name: person; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.person (pkref, created, updated, owned_by, created_by, updated_by, firsname, lastname, description, age, birth_date) FROM stdin;
\.


--
-- TOC entry 4102 (class 0 OID 17502)
-- Dependencies: 223
-- Data for Name: sys_bases; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_bases (created, updated, pkref, company_id, lang_id, time_zone) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	1	1	UTC
\.


--
-- TOC entry 4103 (class 0 OID 17508)
-- Dependencies: 224
-- Data for Name: sys_calendar_comp_labels; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_calendar_comp_labels (comp_id, table_id, label_id, icon, duration, busy, report) FROM stdin;
\.


--
-- TOC entry 4105 (class 0 OID 17516)
-- Dependencies: 226
-- Data for Name: sys_calendar_definitions; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_calendar_definitions (table_id, owner_column_id, type_column_id, type_table_id, label_column_id, desc_column_id, date_column_id, time_column_id, duration_column_id, status_column_id, status_table_id, private, status_open, status_close) FROM stdin;
\.


--
-- TOC entry 4104 (class 0 OID 17513)
-- Dependencies: 225
-- Data for Name: sys_calendar_holidays; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_calendar_holidays (user_id, holidays_impl) FROM stdin;
\.


--
-- TOC entry 4106 (class 0 OID 17521)
-- Dependencies: 227
-- Data for Name: sys_calendar_user_labels; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_calendar_user_labels (user_id, table_id, label_id, icon, duration, busy, report) FROM stdin;
\.


--
-- TOC entry 4107 (class 0 OID 17526)
-- Dependencies: 228
-- Data for Name: sys_calendar_user_prefs; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_calendar_user_prefs (user_id, start_hour, start_minute, end_hour, end_minute, minutes_before, minutes_after) FROM stdin;
\.


--
-- TOC entry 4108 (class 0 OID 17533)
-- Dependencies: 229
-- Data for Name: sys_columns; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_columns (created, updated, pkref, order_id, table_id, fk_table_id, fk_column_id, constraint_id, name, title, data_type, key_seq, flag_id, colsize, required, searchable, format_id, properties, mode_id) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.295	1	0	39	0	0	0	CREATED	fr=Date création\nen=Created	93	0	0	0	0	1	1409576363	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.298	2	1	39	0	0	0	UPDATED	fr=Date MAJ\nen=Updated	93	0	0	0	0	1	1409576363	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.3	3	2	39	0	0	0	PKREF	fr=Identifiant\nen=Ident	4	1	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.302	5	3	39	0	0	0	BASE_ID	fr=Base\nen=Base	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.305	6	4	39	62	0	0	OWNER_ID	fr=Propriétaire\nen=Owner	4	0	0	0	0	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.308	7	5	39	62	0	0	CREATOR_ID	fr=Créateur\nen=Creator	4	0	0	0	0	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.311	8	6	39	62	0	0	AUTHOR_ID	fr=Auteur\nen=Author	4	0	0	0	0	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.358	4	0	62	0	0	0	COMPANY_ID	fr=Companie\nen=Company	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.361	5	1	62	0	0	0	BASE_ID	fr=Base\nen=Base	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.364	6	2	62	0	0	0	OWNER	fr=Utilisateur\nen=User	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.366	7	3	62	0	0	0	LOGIN	fr=N/A\nen=N/A	12	0	0	12	0	0	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.369	8	4	62	0	0	0	PASSWORD	fr=N/A\nen=N/A	12	0	0	12	0	0	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.372	9	5	62	0	0	0	LOGIN_TIME	fr=N/A\nen=N/A	93	0	0	0	0	0	1409576363	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.375	10	6	62	0	0	0	LOGIN_RETRIES	fr=N/A\nen=N/A	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.377	11	7	62	0	0	0	LANG	fr=Langue\nen=Language	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.38	12	8	62	0	0	0	CURRENCY	fr=Devise\nen=Currency	4	0	0	64	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.384	13	9	62	0	0	0	TIME_ZONE	fr=N/A\nen=N/A	12	0	0	64	0	0	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.387	14	10	62	0	0	0	IS_ACTIVE	fr=N/A\nen=N/A	4	0	0	0	0	0	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.39	15	11	62	0	0	0	FIRSTNAME	fr=Prénom\nen=First name	12	0	2	40	0	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.393	16	12	62	0	0	0	LASTNAME	fr=Nom\nen=Last name	12	0	1	40	0	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.395	18	13	62	0	0	0	EMAIL	fr=Email\nen=Email	12	0	2	100	0	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.398	19	14	62	0	0	0	PHONE	fr=Téléphone\nen=Phone	12	0	0	18	0	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.401	20	15	62	0	0	0	MOBILE	fr=Mobile\nen=Mobile	12	0	0	18	0	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.423	-2016715516	0	1048037902	0	0	1	TITLE	fr=Libellé\nen=Label	12	0	1	255	1	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.426	-2016715517	1	1048037902	62	0	0	USER_FROM	en=Authors\nAuteurs=	2003	0	0	0	0	0	-631027346	#Tue Apr 09 15:10:13 CEST 2024\nfield=fr.openage.mdd.meta.MDField@8f1b9109\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.429	-2016715518	2	1048037902	0	0	0	TABLE_ID	fr=Table\nen=Table	4	0	0	0	1	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.433	-2016715519	3	1048037902	0	0	0	CRITERIA	fr=Critères\nen=Criteria	-1	0	0	0	0	0	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.437	-2016715520	4	1048037902	62	0	0	USER_TO	fr=Destinaires\nen=Recipients	2003	0	0	0	1	0	-631027346	#Tue Apr 09 15:10:13 CEST 2024\nfield=fr.openage.mdd.meta.MDField@8f1b9106\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.44	-2016715521	5	1048037902	0	0	0	EMAIL	fr=Email\nen=Email	4	0	0	0	0	1	-27733507	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.443	-2016715522	6	1048037902	0	0	0	TEXT	fr=Texte\nen=Text	-1	0	0	0	0	1	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.447	-2016715523	7	1048037902	0	0	0	BACKGROUND	fr=Arrière-plan\nen=Background	4	0	0	0	0	1	-27733507	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.45	-2016715524	8	1048037902	0	0	0	FIELD_ID	fr=Destinaire\nen=Recipient	4	0	0	0	0	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.453	-367648090	9	1048037902	0	0	0	IS_CREATE	fr=Création\nen=Created	4	0	0	0	0	1	-27733507	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.456	-816477130	10	1048037902	0	0	0	IS_UPDATE	fr=Modification\nen=Modification	4	0	0	0	0	1	-27733507	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.459	-1734642933	11	1048037902	0	0	0	CREATED	fr=Date création\nen=Created	93	0	0	0	0	1	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=CREATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.462	-1734642934	12	1048037902	0	0	0	UPDATED	fr=Date MAJ\nen=Updated	93	0	0	0	0	1	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=UPDATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.465	-1734642935	13	1048037902	62	0	0	OWNER_ID	fr=Propriétaire\nen=Owner	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=OWNER_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.468	-1734665669	14	1048037902	62	0	0	CREATOR_ID	fr=Créateur\nen=Creator	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=CREATOR_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.472	-1734665670	15	1048037902	62	0	0	AUTHOR_ID	fr=Auteur\nen=Author	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=AUTHOR_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.475	-1734665671	16	1048037902	62	0	0	ACTIVATED	fr=Activation\nen=Activation	4	0	0	0	0	0	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=ACTIVATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.478	-1734665672	17	1048037902	0	0	0	HASHCODE	fr=Dédoublonnage\nen=Deduplication	4	0	0	0	0	0	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=HASHCODE\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.481	-1734665665	18	1048037902	0	0	0	TRANSFERED	fr=Transfert\nen=Transfer	93	0	0	0	0	0	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=TRANSFERED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.486	-1096586476	0	1357963732	0	0	0	TITLE	fr=TITLE\nen=TITLE	12	0	1	255	1	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.489	-1233479276	1	1357963732	0	0	0	TARGET	fr=TARGET\nen=TARGET	4	0	0	0	1	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.492	-1289035164	2	1357963732	0	0	0	CONTENT	fr=CONTENT\nen=CONTENT	-1	0	0	0	0	1	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.495	-1963990524	3	1357963732	0	0	0	COMPLETED	fr=COMPLETED\nen=COMPLETED	4	0	0	0	0	1	-27733507	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.498	-2064513724	4	1357963732	0	0	0	CR	fr=CR\nen=CR	-1	0	0	0	0	1	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.501	-1807144572	5	1357963732	0	0	0	ERROR	fr=ERROR\nen=ERROR	-1	0	0	0	0	1	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.504	864454805	6	1357963732	0	0	0	CONTENT_FILE	fr=CONTENT_FILE\nen=CONTENT_FILE	-4	0	0	0	0	0	-297310265	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.508	361085910	7	1357963732	0	0	0	TARGET_VIEW	fr=TARGET_VIEW\nen=TARGET_VIEW	4	0	0	0	0	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.511	-1363816667	8	1357963732	0	0	0	DOALL	fr=DOALL\nen=DOALL	4	0	0	0	0	1	-27733507	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.514	-1729012533	9	1357963732	0	0	0	CREATED	fr=Date création\nen=Created	93	0	0	0	0	1	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=CREATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.517	-1729012534	10	1357963732	0	0	0	UPDATED	fr=Date MAJ\nen=Updated	93	0	0	0	0	1	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=UPDATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.521	-1729012535	11	1357963732	62	0	0	OWNER_ID	fr=Propriétaire\nen=Owner	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=OWNER_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.524	-1729012536	12	1357963732	62	0	0	CREATOR_ID	fr=Créateur\nen=Creator	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=CREATOR_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.528	-1729009669	13	1357963732	62	0	0	AUTHOR_ID	fr=Auteur\nen=Author	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=AUTHOR_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.531	-1729009670	14	1357963732	62	0	0	ACTIVATED	fr=Activation\nen=Activation	4	0	0	0	0	0	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=ACTIVATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.534	-1729009671	15	1357963732	0	0	0	HASHCODE	fr=Dédoublonnage\nen=Deduplication	4	0	0	0	0	0	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=HASHCODE\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.538	-1729009672	16	1357963732	0	0	0	TRANSFERED	fr=Transfert\nen=Transfer	93	0	0	0	0	0	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=TRANSFERED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.544	-2016715511	0	1048037901	0	0	1	TITLE	fr=Titre\nen=Title	12	0	1	255	1	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.547	-2016715512	1	1048037901	0	0	0	COMMENTS	fr=Commentaires\nen=Comments	-1	0	0	80	0	1	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.55	-2016715513	2	1048037901	0	0	0	CURRENCY	fr=Devise\nen=Currency	4	0	0	0	1	1	1865606931	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.554	-2016715514	3	1048037901	0	0	0	MODEL	fr=Modèle\nen=Model	12	0	0	255	1	1	-1864799332	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.557	-2016715515	4	1048037901	0	0	0	CRITERIA	fr=Critères\nen=Criteria	-1	0	0	0	0	0	-297396665	\N	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.561	-1686806293	5	1048037901	0	0	0	CREATED	fr=Date création\nen=Created	93	0	0	0	0	1	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=CREATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.564	-1686829029	6	1048037901	0	0	0	UPDATED	fr=Date MAJ\nen=Updated	93	0	0	0	0	1	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=UPDATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.567	-1686829030	7	1048037901	62	0	0	OWNER_ID	fr=Propriétaire\nen=Owner	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=OWNER_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.57	-1686829031	8	1048037901	62	0	0	CREATOR_ID	fr=Créateur\nen=Creator	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=CREATOR_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.573	-1686829032	9	1048037901	62	0	0	AUTHOR_ID	fr=Auteur\nen=Author	4	0	0	0	0	1	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=AUTHOR_ID\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.576	-1686829025	10	1048037901	62	0	0	ACTIVATED	fr=Activation\nen=Activation	4	0	0	0	0	0	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=ACTIVATED\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.578	-1686829026	11	1048037901	0	0	0	HASHCODE	fr=Dédoublonnage\nen=Deduplication	4	0	0	0	0	0	1865606931	#Tue Apr 09 15:10:13 CEST 2024\naudit=HASHCODE\n	0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.581	-1686829027	12	1048037901	0	0	0	TRANSFERED	fr=Transfert\nen=Transfer	93	0	0	0	0	0	1409576363	#Tue Apr 09 15:10:13 CEST 2024\naudit=TRANSFERED\n	0
2024-04-09 15:10:13.594	2024-04-09 15:10:13.594	488556717	0	487698269	0	0	-1	TEST	fr=test	12	0	1	255	1	1	-1864799332	\N	0
2024-04-09 15:26:21.914	2024-04-09 15:26:21.914	-1545519347	1	487698269	0	0	-1	TT	fr=tt	12	0	0	255	0	1	-1864799332	\N	0
2024-04-09 15:27:53.52	2024-04-09 15:27:53.52	-1023767699	2	487698269	0	0	-1	EE	fr=ee	12	0	0	255	0	1	-1864799332	\N	0
2024-04-10 16:40:30.961	2024-04-10 16:40:30.961	-1194870100	3	487698269	0	0	-1	AA	fr=AA	12	0	0	255	0	1	-1864799332	\N	0
2024-04-10 16:53:08.715	2024-04-10 16:53:08.715	1093013517	0	1092619357	0	0	-1	CREATED	fr=Date création\nen=Created	93	0	0	0	0	1	1409576363	#Wed Apr 10 16:53:08 CEST 2024\naudit=CREATED\n	0
2024-04-10 16:53:08.717	2024-04-10 16:53:08.717	1093013516	1	1092619357	0	0	-1	UPDATED	fr=Date MAJ\nen=Updated	93	0	0	0	0	1	1409576363	#Wed Apr 10 16:53:08 CEST 2024\naudit=UPDATED\n	0
2024-04-10 16:53:08.719	2024-04-10 16:53:08.719	1093013519	2	1092619357	62	0	-1	OWNED_BY	fr=Propriétaire\nen=Owner	4	0	0	0	0	1	1865606931	#Wed Apr 10 16:53:08 CEST 2024\naudit=OWNER_ID\n	0
2024-04-10 16:53:08.721	2024-04-10 16:53:08.721	1093013518	3	1092619357	62	0	-1	CREATED_BY	fr=Créateur\nen=Creator	4	0	0	0	0	1	1865606931	#Wed Apr 10 16:53:08 CEST 2024\naudit=CREATOR_ID\n	0
2024-04-10 16:53:08.723	2024-04-10 16:53:08.723	1093013513	4	1092619357	62	0	-1	UPDATED_BY	fr=Auteur\nen=Author	4	0	0	0	0	1	1865606931	#Wed Apr 10 16:53:08 CEST 2024\naudit=AUTHOR_ID\n	0
2024-04-10 16:53:08.725	2024-04-10 16:53:08.725	1093013512	5	1092619357	0	0	-1	FIRSNAME	fr=prénom	12	0	1	255	1	1	-1864799332	\N	0
2024-04-10 16:53:08.726	2024-04-10 16:53:08.726	1093013515	6	1092619357	0	0	-1	LASTNAME	fr=nom	12	0	0	255	0	1	-1864799332	\N	0
2024-04-10 16:53:08.728	2024-04-10 16:53:08.728	1093013514	7	1092619357	0	0	-1	DESCRIPTION	fr=description	-1	0	0	0	0	1	-297396665	\N	0
2024-04-10 16:53:08.73	2024-04-10 16:53:08.73	1093013509	8	1092619357	0	0	-1	AGE	fr=age	4	0	0	0	0	1	1865606931	\N	0
2024-04-10 16:53:08.732	2024-04-10 16:53:08.732	1093013508	9	1092619357	0	0	-1	BIRTH_DATE	fr=date de naissance	91	0	0	0	0	1	-297377287	\N	0
\.


--
-- TOC entry 4109 (class 0 OID 17543)
-- Dependencies: 230
-- Data for Name: sys_columns_accessflags; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_columns_accessflags (table_id, column_id, role_id, flags) FROM stdin;
\.


--
-- TOC entry 4111 (class 0 OID 17553)
-- Dependencies: 232
-- Data for Name: sys_columns_preset; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_columns_preset (created, updated, pkref, name, title, format_id, colsize, table_id, column_id, object_id, code_id) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	62358065	ALARM	Gestion d'alarme	4	0	0	0	63343153	75314053
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1516022313	RELATIONS	Relation entre éléments	4	0	0	0	1996318167	0
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1560293537	CRITERIA	Crirètes de recherche	4	0	0	0	1907086124	1471259081
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1785265663	UPLOAD	Sauvegarde de fichier	4	0	0	0	1620699109	0
\.


--
-- TOC entry 4112 (class 0 OID 17564)
-- Dependencies: 233
-- Data for Name: sys_companies; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_companies (created, updated, pkref, name, account, lang, time_zone, licence_agreed, licence_key_data, licence_key_code, max_login_retries, min_login_lockout, def_currency, sto_lim, doc_lim) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1	Client OpenAGE	intranet	1	Europe/Paris	0			5	720	1	-1	-1
\.


--
-- TOC entry 4113 (class 0 OID 17579)
-- Dependencies: 234
-- Data for Name: sys_company_lang; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_company_lang (fkref, lang_id) FROM stdin;
1	1
1	2
\.


--
-- TOC entry 4114 (class 0 OID 17584)
-- Dependencies: 235
-- Data for Name: sys_config; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_config (property_name, property_value) FROM stdin;
framework.version	83
identity.password.recovery.enabled	true
authn.realm.fixed	false
\.


--
-- TOC entry 4115 (class 0 OID 17591)
-- Dependencies: 236
-- Data for Name: sys_config_companies; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_config_companies (company_id, property_name, property_value) FROM stdin;
1	PasswordExpiration	-1
\.


--
-- TOC entry 4110 (class 0 OID 17548)
-- Dependencies: 231
-- Data for Name: sys_constraints; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_constraints (created, updated, table_id, column_id, type_id, target_table_id, target_column_id, primary_table_id, primary_column_id) FROM stdin;
\.


--
-- TOC entry 4176 (class 0 OID 18050)
-- Dependencies: 297
-- Data for Name: sys_containers; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_containers (created, updated, pkref, order_id, alias_id, table_id, column_id, title) FROM stdin;
\.


--
-- TOC entry 4116 (class 0 OID 17598)
-- Dependencies: 237
-- Data for Name: sys_countries; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_countries (pkref, iso_code) FROM stdin;
2	AT
1	AU
3	BE
4	CA
30	CH
12	DE
5	DK
28	ES
6	FI
7	FR
8	FX
31	GB
9	GF
14	GP
13	GR
15	IE
16	IT
17	LU
19	MC
18	MQ
21	NC
20	NL
23	NO
22	NZ
10	PF
24	PL
25	PT
26	RE
29	SE
27	SM
11	TF
32	US
\.


--
-- TOC entry 4117 (class 0 OID 17605)
-- Dependencies: 238
-- Data for Name: sys_criteria; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_criteria (created, updated, pkref, creator_id, criteria_label) FROM stdin;
\.


--
-- TOC entry 4159 (class 0 OID 17898)
-- Dependencies: 280
-- Data for Name: sys_custom_shared_view_model; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_custom_shared_view_model (created, updated, owner_id, profil_id, cvm_id) FROM stdin;
\.


--
-- TOC entry 4158 (class 0 OID 17889)
-- Dependencies: 279
-- Data for Name: sys_custom_view_model; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_custom_view_model (created, updated, pkref, creator_id, view_id, name, type_id, content, criteria) FROM stdin;
\.


--
-- TOC entry 4118 (class 0 OID 17610)
-- Dependencies: 239
-- Data for Name: sys_duplicate_columns; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_duplicate_columns (dup_id, col_id) FROM stdin;
\.


--
-- TOC entry 4119 (class 0 OID 17615)
-- Dependencies: 240
-- Data for Name: sys_duplicate_commonwords; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_duplicate_commonwords (base_id, company_id, commonword) FROM stdin;
\.


--
-- TOC entry 4120 (class 0 OID 17620)
-- Dependencies: 241
-- Data for Name: sys_duplicate_params; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_duplicate_params (pkref, base_id, company_id, owner_id, project_id, view_id, duplicate_label, activated, timedigit, timeunit, lastrun, threshold, warn) FROM stdin;
\.


--
-- TOC entry 4121 (class 0 OID 17637)
-- Dependencies: 242
-- Data for Name: sys_element; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_element (created, updated, single, table_id, column_id, element_id, object_id, template_id, element_name, element_value) FROM stdin;
\.


--
-- TOC entry 4123 (class 0 OID 17658)
-- Dependencies: 244
-- Data for Name: sys_field_behaviors; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_field_behaviors (created, updated, single, view_id, field_id, name, value) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	6	255465300	ui.behaviors.imports.UIImportInitHeadersBehavior	\N
\.


--
-- TOC entry 4124 (class 0 OID 17666)
-- Dependencies: 245
-- Data for Name: sys_field_grids; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_field_grids (created, updated, pkref, creator_id, name, order_id, type_id, view_id, content) FROM stdin;
\.


--
-- TOC entry 4125 (class 0 OID 17674)
-- Dependencies: 246
-- Data for Name: sys_field_rules; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_field_rules (created, updated, row_index, view_id, field_id, name, value) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	2	-2016715522	ui.rules.UIDependencyValue	conditions=<?xml version\\="1.0" encoding\\="UTF-8"?><groups><group><condition id\\="-2016715521" comparator\\="3">true</condition></group></groups>
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	2	-2016715524	ui.rules.UIDependencyValue	conditions=<?xml version\\="1.0" encoding\\="UTF-8"?><groups><group><condition id\\="-2016715521" comparator\\="3">true</condition></group></groups>
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	2	-2016715518	ui.rules.UIAlertFilter1	\N
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1	2	-2016715524	ui.rules.UIAlertFilter2	\N
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	6	255465300	ui.behaviors.imports.UIImportInitHeadersRule	\N
\.


--
-- TOC entry 4122 (class 0 OID 17650)
-- Dependencies: 243
-- Data for Name: sys_fields; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_fields (created, updated, pkref, view_id, order_id, table_id, column_id, widget_id, fk_view_id, label, tip, searchable, layout, group_name, properties, title, hover, help, mode_id) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.61	-2016715511	1	0	1048037901	-2016715511	417464835	0	fr=Titre\nen=Title		1	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumns=80\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.615	-2016715512	1	1	1048037901	-2016715512	56524839	0	fr=Commentaires\nen=Comments		0	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumns=80\\nrows\\=2\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.625	-2016715514	1	3	1048037901	-2016715514	192836961	0	fr=Modèle\nen=Model		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.63	-2016715515	1	4	1048037901	-2016715515	1283151796	0	fr=Critères\nen=Criteria		0	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.639	2146453299	5	0	62	15	415095513	0	fr=Prénom\nen=First name		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.643	2146453298	5	1	62	16	415095513	0	fr=Nom\nen=Last name		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.646	2146453297	5	2	62	18	415095513	0	fr=Email\nen=Email		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.663	2146453296	5	3	62	19	415095513	0	fr=Téléphone\nen=Phone		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.665	2146453303	5	4	62	20	415095513	0	fr=Mobile\nen=Mobile		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.673	-2016715516	2	0	1048037902	-2016715516	417464835	0	fr=Libellé\nen=Label		1	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumns=80\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.675	-626435754	2	1	1048037902	-367648090	1698306896	0	fr=Création\nen=Created		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.678	-626435753	2	2	1048037902	-816477130	1698306896	0	fr=Modification\nen=Modification		1	1		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.681	-2016715523	2	3	1048037902	-2016715523	1698306896	0	fr=Arrière-plan\nen=Background		0	1		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.684	-2016715517	2	4	1048037902	-2016715517	407707135	5	fr=Auteurs\nen=Authors	fr=Si aucune sélection, tous les utilisateurs sont sélectionnés.\nen=If no selection, all the users are selected.	0	0		#Tue Apr 09 15:10:13 CEST 2024\nwidth=450\\nunit\\=px\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.689	-2016715518	2	5	1048037902	-2016715518	1144079756	0	fr=Vue\nen=View		1	0		#Tue Apr 09 15:10:13 CEST 2024\ntype=view\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.692	-2016715519	2	6	1048037902	-2016715519	1283151796	0	fr=Critères\nen=Criteria		0	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumn=8.3\\nrestricted\\=false\\nfield\\=fr.openage.mdd.meta.MDField@87cb5d4c\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.695	-2016715520	2	7	1048037902	-2016715520	407707135	5	fr=Destinaires\nen=Recipients		0	0		#Tue Apr 09 15:10:13 CEST 2024\nwidth=450\\nunit\\=px\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.703	-2016715521	2	8	1048037902	-2016715521	1698306896	0	fr=Email\nen=Email		0	0		#Tue Apr 09 15:10:13 CEST 2024\nlabel=fr\\=Envoyer|enTo Send\\nenabled\\=true\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.707	-2016715524	2	9	1048037902	-2016715524	1144079756	0	fr=Destinaire\nen=Recipient		0	1		#Tue Apr 09 15:10:13 CEST 2024\ntype=field\\nfield\\=fr.openage.mdd.meta.MDField@87cb5d4c\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.711	-2016715522	2	10	1048037902	-2016715522	180469350	0	fr=Texte\nen=Text		0	0		#Tue Apr 09 15:10:13 CEST 2024\nfield=fr.openage.mdd.meta.MDField@87cb5d4c\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.723	255502708	6	0	1357963732	-1096586476	417464835	0	fr=Titre\nen=Title		1	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumns=50\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.728	1097326149	6	1	1357963732	-1363816667	1698306896	0	fr=Tout ou rien\nen=All or nothing		1	1		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.734	255475268	6	2	1357963732	-1963990524	1698306896	0	fr=Complété\nen=Completed		1	1		#Tue Apr 09 15:10:13 CEST 2024\nenabled=false\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.739	255520868	6	3	1357963732	-1233479276	1144079756	0	fr=Cible\nen=Target		1	0		#Tue Apr 09 15:10:13 CEST 2024\ntype=data_table\n				0
2024-04-05 17:43:54.99	2024-04-10 16:53:08.758	-2016715513	1	2	1048037901	-2016715513	221336873	0	fr=Devise\nen=Currency		1	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.744	458617334	6	4	1357963732	361085910	1144079756	0	fr=Vue cible\nen=Target view	fr=	1	1		#Tue Apr 09 15:10:13 CEST 2024\ntype=view\\nfield\\=fr.openage.mdd.meta.MDField@f3af142\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.747	-661991227	6	5	1357963732	864454805	288763438	0	fr=Contenu - Fichier\nen=Content - File		0	0		\N				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.751	255465300	6	6	1357963732	-1289035164	56524839	0	fr=Contenu - Texte\nen=Content - Text		1	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumns=120\\nrows\\=12\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.754	255475269	6	7	1357963732	-2064513724	56524839	0	fr=CR\nen=CR		1	0		#Tue Apr 09 15:10:13 CEST 2024\nenabled=false\\ncolumns\\=120\\nrows\\=5\n				0
2024-04-05 17:43:54.99	2024-04-09 15:10:13.758	-1710264012	6	8	1357963732	-1807144572	56524839	0	fr=Erreur\nen=Error		1	0		#Tue Apr 09 15:10:13 CEST 2024\ncolumns=120\\nrows\\=12\n				0
2024-04-09 15:26:21.937	2024-04-09 15:26:21.937	-1230329859	-1214439283	0	487698269	488556717	417464835	0	fr=test		1	0		#Tue Apr 09 15:26:21 CEST 2024\naggregatable=false\ngroupable=true\n				0
2024-04-09 15:26:21.942	2024-04-09 15:26:21.942	-1230329860	-1214439283	1	487698269	-1545519347	417464835	0	fr=tt		1	0		#Tue Apr 09 15:26:21 CEST 2024\naggregatable=false\ngroupable=true\n				0
2024-04-10 16:53:08.739	2024-04-10 16:53:08.739	-1165624435	1861198557	0	1092619357	1093013512	417464835	0	fr=prénom	fr=Champ qui sert à renseigner les prénoms	1	0	fr=	#Wed Apr 10 16:53:08 CEST 2024\naggregatable=false\ncolumns=50\ngroupable=true\n		fr=ceci est une infobulle	fr=ceci est un pop-up	0
2024-04-10 16:53:08.744	2024-04-10 16:53:08.744	-1165624436	1861198557	1	1092619357	1093013515	417464835	0	fr=nom		1	0		#Wed Apr 10 16:53:08 CEST 2024\naggregatable=false\ncolumns=50\ngroupable=true\n				0
2024-04-10 16:53:08.746	2024-04-10 16:53:08.746	-1165624433	1861198557	2	1092619357	1093013514	180469350	0	fr=description		1	0		#Wed Apr 10 16:53:08 CEST 2024\naggregatable=false\ncolspan=6\ngroupable=false\n				0
2024-04-10 16:53:08.748	2024-04-10 16:53:08.748	-1165624434	1861198557	3	1092619357	1093013509	227711246	0	fr=age		1	0		#Wed Apr 10 16:53:08 CEST 2024\naggregatable=true\ngroupable=true\n				0
2024-04-10 16:53:08.755	2024-04-10 16:53:08.755	-1165624439	1861198557	4	1092619357	1093013508	1814743269	0	fr=date de naissance		1	0		#Wed Apr 10 16:53:08 CEST 2024\naggregatable=true\ngroupable=true\n				0
\.


--
-- TOC entry 4130 (class 0 OID 17710)
-- Dependencies: 251
-- Data for Name: sys_filetypes; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_filetypes (pkref, mimetype_id, extension) FROM stdin;
\.


--
-- TOC entry 4128 (class 0 OID 17696)
-- Dependencies: 249
-- Data for Name: sys_lang; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_lang (pkref, iso_code) FROM stdin;
2	en
1	fr
\.


--
-- TOC entry 4131 (class 0 OID 17717)
-- Dependencies: 252
-- Data for Name: sys_media; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_media (created, updated, pkref, filename, mimetype_id, cache, length, content) FROM stdin;
\.


--
-- TOC entry 4132 (class 0 OID 17726)
-- Dependencies: 253
-- Data for Name: sys_media_alias; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_media_alias (created, updated, media_id, project_id, length, content) FROM stdin;
\.


--
-- TOC entry 4133 (class 0 OID 17733)
-- Dependencies: 254
-- Data for Name: sys_menus; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_menus (created, updated, pkref, project_id, name, activated, order_id, image) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.602	1	0	fr=Décisionnel\nen=Business Intelligence	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.668	2	0	fr=Workflow\nen=Workflow	0	1	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.716	3	0	fr=Données\nen=Data	0	2	\N
2024-04-09 15:26:21.931	2024-04-09 15:26:21.931	-1280647587	-1361671043	fr=test	1	0	\N
2024-04-10 16:53:08.735	2024-04-10 16:53:08.735	1669982477	1904508381	fr=RH	1	0	\N
\.


--
-- TOC entry 4129 (class 0 OID 17703)
-- Dependencies: 250
-- Data for Name: sys_mimetypes; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_mimetypes (pkref, mimetype) FROM stdin;
\.


--
-- TOC entry 4134 (class 0 OID 17740)
-- Dependencies: 255
-- Data for Name: sys_object; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_object (created, updated, pkref, object_name, object_title, object_format, object_access) FROM stdin;
\.


--
-- TOC entry 4135 (class 0 OID 17748)
-- Dependencies: 256
-- Data for Name: sys_object_template; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_object_template (created, updated, pkref, order_id, is_primary, duplicate, element_name, table_id, column_id, object_id, template_id, force_id) FROM stdin;
\.


--
-- TOC entry 4136 (class 0 OID 17761)
-- Dependencies: 257
-- Data for Name: sys_project_user_roles; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_project_user_roles (user_id, role_id, project_id) FROM stdin;
1	1	0
\.


--
-- TOC entry 4137 (class 0 OID 17766)
-- Dependencies: 258
-- Data for Name: sys_projects; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_projects (created, updated, pkref, name, title, description, use_calendar, opened) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.598	0	SYS	fr=Outils\nen=Tools	fr=Application système\nen=System application	0	1
2024-04-09 15:26:21.928	2024-04-09 15:26:21.928	-1361671043	TEST	fr=test		0	1
2024-04-10 16:53:08.733	2024-04-10 16:53:08.733	1904508381	RH	fr=RH		0	1
\.


--
-- TOC entry 4101 (class 0 OID 17492)
-- Dependencies: 222
-- Data for Name: sys_records; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_records (created, updated, pkref, table_id, base_id, owner_id, creator_id, author_id, activated, hashcode, transfered) FROM stdin;
\.


--
-- TOC entry 4138 (class 0 OID 17774)
-- Dependencies: 259
-- Data for Name: sys_relation_definitions; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_relation_definitions (pkref, table_id, selected) FROM stdin;
\.


--
-- TOC entry 4139 (class 0 OID 17779)
-- Dependencies: 260
-- Data for Name: sys_relations; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_relations (pkref, relation_id, key_src, key_dest, direction, comments) FROM stdin;
\.


--
-- TOC entry 4148 (class 0 OID 17833)
-- Dependencies: 269
-- Data for Name: sys_reports_type; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_reports_type (pkref, project_id, name, xmldesc) FROM stdin;
\.


--
-- TOC entry 4149 (class 0 OID 17840)
-- Dependencies: 270
-- Data for Name: sys_resources; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_resources (pkref, resource_name, project_id) FROM stdin;
1	config.user.account.mgmt	\N
2	config.user.subordinate-account.mgmt	\N
3	config.user.role.mgmt	\N
4	config.user.filter.mgmt	\N
5	config.prefs.mgmt	\N
7	data.export	\N
8	data.lists.print	\N
9	data.quarantine	\N
10	data.private.transfer	\N
11	data.private.share	\N
12	calendar.config	\N
13	calendar.personalise	\N
14	designer.mode.developer	\N
15	designer.mode.standard	\N
16	data.batch	\N
17	emailling	\N
18	list.personalization	\N
19	config.user.access-control	\N
20	filters.sharing	\N
21	array.relations.filters	\N
\.


--
-- TOC entry 4150 (class 0 OID 17847)
-- Dependencies: 271
-- Data for Name: sys_resources_rightsfilters; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_resources_rightsfilters (fkref_resource, fkref_right) FROM stdin;
1	1
2	1
3	1
4	1
5	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	3
16	4
16	6
17	1
18	3
19	1
20	1
21	1
\.


--
-- TOC entry 4151 (class 0 OID 17852)
-- Dependencies: 272
-- Data for Name: sys_rights; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_rights (pkref, ref_code) FROM stdin;
1	ACTIVATE
6	DELETE
3	INSERT
2	READ
5	REQUEST_DELETE
4	UPDATE
\.


--
-- TOC entry 4152 (class 0 OID 17859)
-- Dependencies: 273
-- Data for Name: sys_role_hierarchies; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_role_hierarchies (pkref, extends_role, container_id) FROM stdin;
1	\N	1
\.


--
-- TOC entry 4153 (class 0 OID 17864)
-- Dependencies: 274
-- Data for Name: sys_role_rights_resources; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_role_rights_resources (role_id, right_id, resource_id) FROM stdin;
\.


--
-- TOC entry 4154 (class 0 OID 17869)
-- Dependencies: 275
-- Data for Name: sys_role_rights_tables; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_role_rights_tables (table_id, role_id, right_id) FROM stdin;
\.


--
-- TOC entry 4126 (class 0 OID 17681)
-- Dependencies: 247
-- Data for Name: sys_row_level; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_row_level (created, updated, owner_id, role_id, mode_id, scope, criteria) FROM stdin;
\.


--
-- TOC entry 4127 (class 0 OID 17689)
-- Dependencies: 248
-- Data for Name: sys_row_level_model; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_row_level_model (created, updated, pkref, name, criteria) FROM stdin;
\.


--
-- TOC entry 4155 (class 0 OID 17874)
-- Dependencies: 276
-- Data for Name: sys_search; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_search (created, updated, creator_id, view_id, criteria) FROM stdin;
\.


--
-- TOC entry 4156 (class 0 OID 17881)
-- Dependencies: 277
-- Data for Name: sys_search_model; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_search_model (created, updated, pkref, creator_id, view_id, name, criteria) FROM stdin;
\.


--
-- TOC entry 4160 (class 0 OID 17903)
-- Dependencies: 281
-- Data for Name: sys_search_shared_model; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_search_shared_model (created, updated, owner_id, role_id, model_id) FROM stdin;
\.


--
-- TOC entry 4161 (class 0 OID 17908)
-- Dependencies: 282
-- Data for Name: sys_sequence; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_sequence (sequence_name, sequence_value) FROM stdin;
\.


--
-- TOC entry 4162 (class 0 OID 17914)
-- Dependencies: 283
-- Data for Name: sys_share; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_share (table_id, fkref, owner_id) FROM stdin;
\.


--
-- TOC entry 4163 (class 0 OID 17922)
-- Dependencies: 284
-- Data for Name: sys_share_auto; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_share_auto (created, updated, from_user_id, with_user_id, right_type) FROM stdin;
\.


--
-- TOC entry 4164 (class 0 OID 17930)
-- Dependencies: 285
-- Data for Name: sys_tables; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_tables (created, updated, pkref, type_id, mode_id, name, title, at_first_id, at_last_id, properties) FROM stdin;
2024-04-10 16:53:08.703	2024-04-10 16:53:08.703	1092619357	2	0	PERSON	fr=personnel\nen=PERSON	0	0	\N
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1894018807	5	0	INT_1894018807	\N	1048037902	-2016715517	\N
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1894018810	5	0	INT_1894018810	\N	1048037902	-2016715520	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.121	104	3	1	DAT_LABELS_ALARM_MODE	fr=Alarme\nen=Alarm	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.128	820846535	3	1	DAT_LABELS_GENDER	fr=Genre\nen=Gender	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.131	1534073572	3	1	DAT_LABELS_PRIORITY	fr=Priorité\nen=Priority	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.135	463815318	3	1	DAT_LABELS_STATUS	fr=Status\nen=Statut	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.143	1	0	0	SYS_BASES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.139	1991280704	3	1	DAT_LABELS_UPLOAD_TYPE	fr=Upload\nen=Upload	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.145	2	0	0	SYS_CALENDAR_COMP_LABELS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.147	4	0	0	SYS_CALENDAR_DEFINITIONS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.149	3	0	0	SYS_CALENDAR_HOLIDAYS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.151	5	0	0	SYS_CALENDAR_USER_LABELS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.153	6	0	0	SYS_CALENDAR_USER_PREFS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.155	7	0	0	SYS_COLUMNS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.157	8	0	0	SYS_COLUMNS_ACCESSFLAGS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.159	9	0	0	SYS_COLUMNS_PRESET	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.161	10	0	0	SYS_COMPANIES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.163	11	0	0	SYS_COMPANY_LANG	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.165	12	0	0	SYS_CONFIG	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.167	13	0	0	SYS_CONFIG_COMPANIES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.17	14	0	0	SYS_COUNTRIES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.172	15	0	0	SYS_CRITERIA	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.175	17	0	0	SYS_DUPLICATE_COLUMNS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.177	18	0	0	SYS_DUPLICATE_COMMONWORDS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.179	19	0	0	SYS_DUPLICATE_PARAMS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.263	20	0	0	SYS_ELEMENT	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.266	22	0	0	SYS_FIELD_BEHAVIORS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.267	23	0	0	SYS_FIELD_GRIDS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.269	24	0	0	SYS_FIELD_RULES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.271	25	0	0	SYS_FIELDS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.273	26	0	0	SYS_FILETYPES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.274	30	0	0	SYS_LANG	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.276	31	0	0	SYS_MEDIA	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.278	32	0	0	SYS_MEDIA_ALIAS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.28	33	0	0	SYS_MENUS	fr=Menus\nen=Menus	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.283	34	0	0	SYS_MIMETYPES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.285	35	0	0	SYS_OBJECT	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.287	36	0	0	SYS_OBJECT_TEMPLATE	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.289	37	0	0	SYS_PROJECT_USER_ROLES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.291	38	0	1	SYS_PROJECTS	fr=Projets\nen=Projects	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.293	39	0	0	SYS_RECORDS	fr=Enregistrements\nen=Records	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.314	40	0	0	SYS_RELATION_DEFINITIONS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.316	41	0	0	SYS_RELATIONS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.318	42	0	0	SYS_REPORTS_TYPE	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.32	43	0	0	SYS_RESOURCES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.322	44	0	0	SYS_RESOURCES_RIGHTSFILTERS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.324	45	0	0	SYS_RIGHTS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.327	46	0	0	SYS_ROLE_HIERARCHIES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.329	47	0	0	SYS_ROLE_RIGHTS_RESOURCES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.33	48	0	0	SYS_ROLE_RIGHTS_TABLES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.332	27	0	0	SYS_ROW_LEVEL	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.334	29	0	0	SYS_ROW_LEVEL_MODEL	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.336	49	0	0	SYS_SEARCH	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.337	51	0	0	SYS_SEARCH_MODEL	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.339	52	0	0	SYS_SEQUENCE	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.341	53	0	0	SYS_SHARE	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.343	54	0	0	SYS_SHARE_AUTO	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.345	55	0	0	SYS_TABLES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.347	56	0	0	SYS_TASK_HISTORY	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.349	57	0	0	SYS_TASK_SUBMIT	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.35	58	0	0	SYS_TASK_WAITING	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.352	60	0	0	SYS_UPLOADS	fr=Téléchargements\nen=Downloads	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.354	61	0	0	SYS_USER_HIERARCHY_VIEWS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.356	62	0	1	SYS_USERS	fr=Utilisateurs\nen=Users	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.404	63	0	0	SYS_VALUES_CRITERIA	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.407	64	0	0	SYS_VERSION	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.41	65	0	0	SYS_VIEW_BEHAVIORS	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.413	66	0	0	SYS_VIEW_RULES	fr=x\nen=x	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.416	67	0	0	SYS_VIEWS	fr=Vues\nen=Views	0	0	\N
2024-04-05 17:43:54.99	2024-04-09 15:10:13.419	1048037902	2	0	DAT_ALERTS	fr=Alertes\nen=Alerts	0	0	#Tue Apr 09 15:10:13 CEST 2024\nindexable=false\n
2024-04-05 17:43:54.99	2024-04-09 15:10:13.484	1357963732	2	0	DAT_IMPORTS	fr=Imports\nen=Imports	0	0	#Tue Apr 09 15:10:13 CEST 2024\nindexable=false\n
2024-04-05 17:43:54.99	2024-04-09 15:10:13.541	1048037901	2	0	DAT_REPORTS	fr=Reporting\nen=Report	0	0	\N
2024-04-09 15:10:13.583	2024-04-09 15:10:13.583	487698269	2	0	TEST	fr=TEST\nen=TEST	0	0	\N
\.


--
-- TOC entry 4166 (class 0 OID 17950)
-- Dependencies: 287
-- Data for Name: sys_task_history; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_task_history (created, updated, pkref, creator_id, owner_id, project_id, table_id, fkref, state_id, lang_iso, type_id, status_id, date_utc, value, text) FROM stdin;
\.


--
-- TOC entry 4167 (class 0 OID 17962)
-- Dependencies: 288
-- Data for Name: sys_task_submit; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_task_submit (created, updated, pkref, creator_id, owner_id, project_id, table_id, fkref, state_id, lang_iso, type_id, status_id, date_utc, value, text) FROM stdin;
\.


--
-- TOC entry 4165 (class 0 OID 17938)
-- Dependencies: 286
-- Data for Name: sys_task_waiting; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_task_waiting (created, updated, pkref, creator_id, owner_id, project_id, table_id, fkref, state_id, lang_iso, type_id, status_id, date_utc, value, text) FROM stdin;
\.


--
-- TOC entry 4168 (class 0 OID 17974)
-- Dependencies: 289
-- Data for Name: sys_uploads; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_uploads (created, updated, pkref, row_id, view_id, field_id, creator_id, company_id, type_id, filename, filesize, comments) FROM stdin;
\.


--
-- TOC entry 4169 (class 0 OID 17984)
-- Dependencies: 290
-- Data for Name: sys_user_hierarchy_views; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_user_hierarchy_views (viewer, target) FROM stdin;
\.


--
-- TOC entry 4170 (class 0 OID 17989)
-- Dependencies: 291
-- Data for Name: sys_users; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_users (created, updated, pkref, company_id, base_id, owner, login, password, login_time, login_retries, lang, currency, time_zone, is_active, firstname, lastname, email, phone, mobile, usesldap, password_date, is_ro) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	1	1	\N	\N	admin	hash:De41B7Fb99201d8334C23c014dB35eCd92Df81Bc	2024-04-24 07:37:27.357	0	1	1	Europe/Paris	1		Administrateur		\N	\N	0	\N	0
\.


--
-- TOC entry 4171 (class 0 OID 18003)
-- Dependencies: 292
-- Data for Name: sys_values_criteria; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_values_criteria (created, updated, creator_id, fk_table_id, fkref, criteria, table_id, column_id, format, parent_table_id, parent_col_id, logical, comparator, label, order_show) FROM stdin;
\.


--
-- TOC entry 4172 (class 0 OID 18019)
-- Dependencies: 293
-- Data for Name: sys_version; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_version (major_version, minor_version, patch_version) FROM stdin;
6	4	3
\.


--
-- TOC entry 4174 (class 0 OID 18035)
-- Dependencies: 295
-- Data for Name: sys_view_behaviors; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_view_behaviors (created, updated, single, view_id, name, value) FROM stdin;
2024-04-05 17:43:54.99	2024-04-05 17:43:54.99	0	6	ui.behaviors.imports.UIImport	\N
\.


--
-- TOC entry 4175 (class 0 OID 18043)
-- Dependencies: 296
-- Data for Name: sys_view_rules; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_view_rules (created, updated, row_index, view_id, name, value) FROM stdin;
\.


--
-- TOC entry 4173 (class 0 OID 18027)
-- Dependencies: 294
-- Data for Name: sys_views; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.sys_views (created, updated, pkref, order_id, parent_id, table_id, title, description, grid, def_shared, activated, attached_id, next_id, image, mode_id, mnemo) FROM stdin;
2024-04-05 17:43:54.99	2024-04-09 15:10:13.605	1	0	1	1048037901	fr=Reporting\nen=Reporting	fr=Reporting\nen=Reporting	\N	1	1	0	0	\N	0	1
2024-04-05 17:43:54.99	2024-04-09 15:10:13.635	5	1	1	62	fr=Utilisateurs\nen=Users	fr=Utilisateurs\nen=Users	<root><descriptions name="Default" table-id="62" type="0"><description table-id="5" origin-id="2146453298" order="0" type="1" index="1" width="10" updatable="false"></description><description table-id="5" origin-id="2146453299" order="1" type="0" index="0" width="10" updatable="false"></description><description table-id="5" origin-id="2146453297" order="2" type="0" index="0" width="10" updatable="false"></description><description table-id="5" origin-id="2146453296" order="3" type="0" index="0" width="10" updatable="false"></description><description table-id="5" origin-id="2146453303" order="4" type="0" index="0" width="10" updatable="false"></description></descriptions></root>	0	0	0	0	\N	0	5
2024-04-05 17:43:54.99	2024-04-09 15:10:13.67	2	0	2	1048037902	fr=Alertes\nen=Alerts	fr=Alertes\nen=Alerts	\N	1	0	0	0	\N	0	2
2024-04-05 17:43:54.99	2024-04-09 15:10:13.686	3	-1	-2016715517	1894018807	fr=Utilisateurs\nen=Users	fr=Utilisateurs\nen=Users	\N	1	0	0	0	\N	0	3
2024-04-05 17:43:54.99	2024-04-09 15:10:13.699	4	-1	-2016715520	1894018810	fr=Utilisateurs\nen=Users	fr=Utilisateurs\nen=Users	\N	1	0	0	0	\N	0	4
2024-04-05 17:43:54.99	2024-04-09 15:10:13.719	6	0	3	1357963732	fr=Imports\nen=Imports	fr=Imports\nen=Imports	\N	1	0	0	0	\N	0	6
2024-04-09 15:26:21.933	2024-04-09 15:27:53.537	-1214439283	0	-1280647587	487698269	fr=TEST\nen=TEST		<?xml version="1.0" encoding="UTF-8"?>\n<root><descriptions name="Default" table-id="487698269" type="0" chart="" limit="-1"><description table-id="-1214439283" origin-id="-1230329859" order="0" type="1" index="1" width="100" summary="false" groupby="false" aggregation="" label="" resize-mode="false"></description></descriptions><descriptions name="Default" table-id="487698269" type="1" chart="" limit="-1"><description table-id="-1214439283" origin-id="-1230329859" order="0" type="1" index="1" width="100" summary="false" groupby="false" aggregation="" label="" resize-mode="false"></description></descriptions><descriptions name="Default" table-id="487698269" type="2" chart="" limit="-1"><description table-id="-1214439283" origin-id="-1230329859" order="0" type="1" index="1" width="100" summary="false" groupby="false" aggregation="" label="" resize-mode="false"></description></descriptions></root>	1	0	-1	-1	\N	0	-1214439283
2024-04-10 16:53:08.736	2024-04-10 16:53:08.736	1861198557	0	1669982477	1092619357	fr=Personnel\nen=PERSON		\N	1	0	-1	-1	\N	0	1861198557
\.


--
-- TOC entry 4178 (class 0 OID 18483)
-- Dependencies: 299
-- Data for Name: test; Type: TABLE DATA; Schema: openage; Owner: -
--

COPY openage.test (pkref, test, tt, ee, aa) FROM stdin;
1	test	tests	\N	\N
\.


--
-- TOC entry 4192 (class 0 OID 0)
-- Dependencies: 265
-- Name: dat_alerts_pkref_seq; Type: SEQUENCE SET; Schema: openage; Owner: -
--

SELECT pg_catalog.setval('openage.dat_alerts_pkref_seq', 1, false);


--
-- TOC entry 4193 (class 0 OID 0)
-- Dependencies: 261
-- Name: dat_imports_pkref_seq; Type: SEQUENCE SET; Schema: openage; Owner: -
--

SELECT pg_catalog.setval('openage.dat_imports_pkref_seq', 1, false);


--
-- TOC entry 4194 (class 0 OID 0)
-- Dependencies: 263
-- Name: dat_reports_pkref_seq; Type: SEQUENCE SET; Schema: openage; Owner: -
--

SELECT pg_catalog.setval('openage.dat_reports_pkref_seq', 1, false);


--
-- TOC entry 4195 (class 0 OID 0)
-- Dependencies: 300
-- Name: person_pkref_seq; Type: SEQUENCE SET; Schema: openage; Owner: -
--

SELECT pg_catalog.setval('openage.person_pkref_seq', 1, false);


--
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 278
-- Name: sys_custom_view_model_pkref_seq; Type: SEQUENCE SET; Schema: openage; Owner: -
--

SELECT pg_catalog.setval('openage.sys_custom_view_model_pkref_seq', 1, false);


--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 298
-- Name: test_pkref_seq; Type: SEQUENCE SET; Schema: openage; Owner: -
--

SELECT pg_catalog.setval('openage.test_pkref_seq', 1, true);


--
-- TOC entry 3797 (class 2606 OID 17822)
-- Name: dat_alerts dat_alerts_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_alerts
    ADD CONSTRAINT dat_alerts_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3793 (class 2606 OID 17796)
-- Name: dat_imports dat_imports_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_imports
    ADD CONSTRAINT dat_imports_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3687 (class 2606 OID 17454)
-- Name: dat_labels_alarm_mode dat_labels_alarm_mode_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_labels_alarm_mode
    ADD CONSTRAINT dat_labels_alarm_mode_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3679 (class 2606 OID 17426)
-- Name: dat_labels_gender dat_labels_gender_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_labels_gender
    ADD CONSTRAINT dat_labels_gender_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3681 (class 2606 OID 17433)
-- Name: dat_labels_priority dat_labels_priority_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_labels_priority
    ADD CONSTRAINT dat_labels_priority_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3683 (class 2606 OID 17440)
-- Name: dat_labels_status dat_labels_status_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_labels_status
    ADD CONSTRAINT dat_labels_status_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3685 (class 2606 OID 17447)
-- Name: dat_labels_upload_type dat_labels_upload_type_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_labels_upload_type
    ADD CONSTRAINT dat_labels_upload_type_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3795 (class 2606 OID 17809)
-- Name: dat_reports dat_reports_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.dat_reports
    ADD CONSTRAINT dat_reports_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3799 (class 2606 OID 17827)
-- Name: int_1894018807 int_1894018807_pkref_fkref_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.int_1894018807
    ADD CONSTRAINT int_1894018807_pkref_fkref_key UNIQUE (pkref, fkref);


--
-- TOC entry 3803 (class 2606 OID 17832)
-- Name: int_1894018810 int_1894018810_pkref_fkref_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.int_1894018810
    ADD CONSTRAINT int_1894018810_pkref_fkref_key UNIQUE (pkref, fkref);


--
-- TOC entry 3689 (class 2606 OID 17459)
-- Name: lab_bases lab_bases_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_bases
    ADD CONSTRAINT lab_bases_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3691 (class 2606 OID 17464)
-- Name: lab_countries lab_countries_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_countries
    ADD CONSTRAINT lab_countries_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3693 (class 2606 OID 17469)
-- Name: lab_lang lab_lang_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_lang
    ADD CONSTRAINT lab_lang_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3695 (class 2606 OID 17474)
-- Name: lab_relations lab_relations_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_relations
    ADD CONSTRAINT lab_relations_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3697 (class 2606 OID 17479)
-- Name: lab_resources lab_resources_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_resources
    ADD CONSTRAINT lab_resources_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3699 (class 2606 OID 17486)
-- Name: lab_rights lab_rights_lang_short_label_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_rights
    ADD CONSTRAINT lab_rights_lang_short_label_key UNIQUE (lang, short_label);


--
-- TOC entry 3701 (class 2606 OID 17484)
-- Name: lab_rights lab_rights_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_rights
    ADD CONSTRAINT lab_rights_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3703 (class 2606 OID 17491)
-- Name: lab_roles lab_roles_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_roles
    ADD CONSTRAINT lab_roles_pkey PRIMARY KEY (fkref, lang);


--
-- TOC entry 3871 (class 2606 OID 18537)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3707 (class 2606 OID 17507)
-- Name: sys_bases sys_bases_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_bases
    ADD CONSTRAINT sys_bases_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3709 (class 2606 OID 17512)
-- Name: sys_calendar_comp_labels sys_calendar_comp_labels_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_calendar_comp_labels
    ADD CONSTRAINT sys_calendar_comp_labels_pkey PRIMARY KEY (comp_id, table_id, label_id);


--
-- TOC entry 3711 (class 2606 OID 17520)
-- Name: sys_calendar_definitions sys_calendar_definitions_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_calendar_definitions
    ADD CONSTRAINT sys_calendar_definitions_pkey PRIMARY KEY (table_id);


--
-- TOC entry 3713 (class 2606 OID 17525)
-- Name: sys_calendar_user_labels sys_calendar_user_labels_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_calendar_user_labels
    ADD CONSTRAINT sys_calendar_user_labels_pkey PRIMARY KEY (user_id, table_id, label_id);


--
-- TOC entry 3715 (class 2606 OID 17532)
-- Name: sys_calendar_user_prefs sys_calendar_user_prefs_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_calendar_user_prefs
    ADD CONSTRAINT sys_calendar_user_prefs_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3719 (class 2606 OID 17547)
-- Name: sys_columns_accessflags sys_columns_accessflags_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_columns_accessflags
    ADD CONSTRAINT sys_columns_accessflags_pkey PRIMARY KEY (table_id, column_id, role_id);


--
-- TOC entry 3717 (class 2606 OID 17542)
-- Name: sys_columns sys_columns_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_columns
    ADD CONSTRAINT sys_columns_pkey PRIMARY KEY (pkref, table_id);


--
-- TOC entry 3723 (class 2606 OID 17563)
-- Name: sys_columns_preset sys_columns_preset_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_columns_preset
    ADD CONSTRAINT sys_columns_preset_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3725 (class 2606 OID 17578)
-- Name: sys_companies sys_companies_account_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_companies
    ADD CONSTRAINT sys_companies_account_key UNIQUE (account);


--
-- TOC entry 3727 (class 2606 OID 17576)
-- Name: sys_companies sys_companies_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_companies
    ADD CONSTRAINT sys_companies_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3729 (class 2606 OID 17583)
-- Name: sys_company_lang sys_company_lang_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_company_lang
    ADD CONSTRAINT sys_company_lang_pkey PRIMARY KEY (fkref, lang_id);


--
-- TOC entry 3733 (class 2606 OID 17597)
-- Name: sys_config_companies sys_config_companies_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_config_companies
    ADD CONSTRAINT sys_config_companies_pkey PRIMARY KEY (company_id, property_name);


--
-- TOC entry 3731 (class 2606 OID 17590)
-- Name: sys_config sys_config_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_config
    ADD CONSTRAINT sys_config_pkey PRIMARY KEY (property_name);


--
-- TOC entry 3721 (class 2606 OID 17552)
-- Name: sys_constraints sys_constraints_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_constraints
    ADD CONSTRAINT sys_constraints_pkey PRIMARY KEY (table_id, column_id, type_id, target_table_id, target_column_id, primary_table_id, primary_column_id);


--
-- TOC entry 3867 (class 2606 OID 18056)
-- Name: sys_containers sys_containers_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_containers
    ADD CONSTRAINT sys_containers_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3735 (class 2606 OID 17604)
-- Name: sys_countries sys_countries_iso_code_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_countries
    ADD CONSTRAINT sys_countries_iso_code_key UNIQUE (iso_code);


--
-- TOC entry 3737 (class 2606 OID 17602)
-- Name: sys_countries sys_countries_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_countries
    ADD CONSTRAINT sys_countries_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3739 (class 2606 OID 17609)
-- Name: sys_criteria sys_criteria_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_criteria
    ADD CONSTRAINT sys_criteria_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3831 (class 2606 OID 17902)
-- Name: sys_custom_shared_view_model sys_custom_shared_view_model_owner_id_profil_id_cvm_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_custom_shared_view_model
    ADD CONSTRAINT sys_custom_shared_view_model_owner_id_profil_id_cvm_id_key UNIQUE (owner_id, profil_id, cvm_id);


--
-- TOC entry 3829 (class 2606 OID 17897)
-- Name: sys_custom_view_model sys_custom_view_model_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_custom_view_model
    ADD CONSTRAINT sys_custom_view_model_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3741 (class 2606 OID 17614)
-- Name: sys_duplicate_columns sys_duplicate_columns_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_columns
    ADD CONSTRAINT sys_duplicate_columns_pkey PRIMARY KEY (dup_id, col_id);


--
-- TOC entry 3743 (class 2606 OID 17619)
-- Name: sys_duplicate_commonwords sys_duplicate_commonwords_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_commonwords
    ADD CONSTRAINT sys_duplicate_commonwords_pkey PRIMARY KEY (base_id, company_id, commonword);


--
-- TOC entry 3745 (class 2606 OID 17636)
-- Name: sys_duplicate_params sys_duplicate_params_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_params
    ADD CONSTRAINT sys_duplicate_params_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3747 (class 2606 OID 17649)
-- Name: sys_element sys_element_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_element
    ADD CONSTRAINT sys_element_pkey PRIMARY KEY (table_id, column_id, element_id, object_id, template_id, element_name);


--
-- TOC entry 3751 (class 2606 OID 17665)
-- Name: sys_field_behaviors sys_field_behaviors_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_field_behaviors
    ADD CONSTRAINT sys_field_behaviors_pkey PRIMARY KEY (view_id, field_id, name);


--
-- TOC entry 3753 (class 2606 OID 17673)
-- Name: sys_field_grids sys_field_grids_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_field_grids
    ADD CONSTRAINT sys_field_grids_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3755 (class 2606 OID 17680)
-- Name: sys_field_rules sys_field_rules_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_field_rules
    ADD CONSTRAINT sys_field_rules_pkey PRIMARY KEY (row_index, view_id, field_id, name);


--
-- TOC entry 3749 (class 2606 OID 17657)
-- Name: sys_fields sys_fields_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_fields
    ADD CONSTRAINT sys_fields_pkey PRIMARY KEY (pkref, view_id);


--
-- TOC entry 3769 (class 2606 OID 17716)
-- Name: sys_filetypes sys_filetypes_extension_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_filetypes
    ADD CONSTRAINT sys_filetypes_extension_key UNIQUE (extension);


--
-- TOC entry 3771 (class 2606 OID 17714)
-- Name: sys_filetypes sys_filetypes_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_filetypes
    ADD CONSTRAINT sys_filetypes_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3761 (class 2606 OID 17702)
-- Name: sys_lang sys_lang_iso_code_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_lang
    ADD CONSTRAINT sys_lang_iso_code_key UNIQUE (iso_code);


--
-- TOC entry 3763 (class 2606 OID 17700)
-- Name: sys_lang sys_lang_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_lang
    ADD CONSTRAINT sys_lang_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3777 (class 2606 OID 17732)
-- Name: sys_media_alias sys_media_alias_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_media_alias
    ADD CONSTRAINT sys_media_alias_pkey PRIMARY KEY (media_id, project_id);


--
-- TOC entry 3773 (class 2606 OID 17725)
-- Name: sys_media sys_media_filename_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_media
    ADD CONSTRAINT sys_media_filename_key UNIQUE (filename);


--
-- TOC entry 3775 (class 2606 OID 17723)
-- Name: sys_media sys_media_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_media
    ADD CONSTRAINT sys_media_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3779 (class 2606 OID 17739)
-- Name: sys_menus sys_menus_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_menus
    ADD CONSTRAINT sys_menus_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3765 (class 2606 OID 17709)
-- Name: sys_mimetypes sys_mimetypes_mimetype_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_mimetypes
    ADD CONSTRAINT sys_mimetypes_mimetype_key UNIQUE (mimetype);


--
-- TOC entry 3767 (class 2606 OID 17707)
-- Name: sys_mimetypes sys_mimetypes_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_mimetypes
    ADD CONSTRAINT sys_mimetypes_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3781 (class 2606 OID 17747)
-- Name: sys_object sys_object_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_object
    ADD CONSTRAINT sys_object_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3783 (class 2606 OID 17760)
-- Name: sys_object_template sys_object_template_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_object_template
    ADD CONSTRAINT sys_object_template_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3785 (class 2606 OID 17765)
-- Name: sys_project_user_roles sys_project_user_roles_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_project_user_roles
    ADD CONSTRAINT sys_project_user_roles_pkey PRIMARY KEY (user_id, role_id, project_id);


--
-- TOC entry 3787 (class 2606 OID 17773)
-- Name: sys_projects sys_projects_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_projects
    ADD CONSTRAINT sys_projects_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3705 (class 2606 OID 17501)
-- Name: sys_records sys_records_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_records
    ADD CONSTRAINT sys_records_pkey PRIMARY KEY (pkref, table_id);


--
-- TOC entry 3789 (class 2606 OID 17778)
-- Name: sys_relation_definitions sys_relation_definitions_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_relation_definitions
    ADD CONSTRAINT sys_relation_definitions_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3791 (class 2606 OID 17783)
-- Name: sys_relations sys_relations_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_relations
    ADD CONSTRAINT sys_relations_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3807 (class 2606 OID 17839)
-- Name: sys_reports_type sys_reports_type_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_reports_type
    ADD CONSTRAINT sys_reports_type_pkey PRIMARY KEY (pkref, project_id);


--
-- TOC entry 3809 (class 2606 OID 17844)
-- Name: sys_resources sys_resources_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_resources
    ADD CONSTRAINT sys_resources_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3811 (class 2606 OID 17846)
-- Name: sys_resources sys_resources_resource_name_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_resources
    ADD CONSTRAINT sys_resources_resource_name_key UNIQUE (resource_name);


--
-- TOC entry 3813 (class 2606 OID 17851)
-- Name: sys_resources_rightsfilters sys_resources_rightsfilters_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_resources_rightsfilters
    ADD CONSTRAINT sys_resources_rightsfilters_pkey PRIMARY KEY (fkref_resource, fkref_right);


--
-- TOC entry 3815 (class 2606 OID 17856)
-- Name: sys_rights sys_rights_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_rights
    ADD CONSTRAINT sys_rights_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3817 (class 2606 OID 17858)
-- Name: sys_rights sys_rights_ref_code_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_rights
    ADD CONSTRAINT sys_rights_ref_code_key UNIQUE (ref_code);


--
-- TOC entry 3819 (class 2606 OID 17863)
-- Name: sys_role_hierarchies sys_role_hierarchies_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_hierarchies
    ADD CONSTRAINT sys_role_hierarchies_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3821 (class 2606 OID 17868)
-- Name: sys_role_rights_resources sys_role_rights_resources_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_resources
    ADD CONSTRAINT sys_role_rights_resources_pkey PRIMARY KEY (role_id, right_id, resource_id);


--
-- TOC entry 3823 (class 2606 OID 17873)
-- Name: sys_role_rights_tables sys_role_rights_tables_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_tables
    ADD CONSTRAINT sys_role_rights_tables_pkey PRIMARY KEY (table_id, role_id, right_id);


--
-- TOC entry 3759 (class 2606 OID 17695)
-- Name: sys_row_level_model sys_row_level_model_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_row_level_model
    ADD CONSTRAINT sys_row_level_model_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3757 (class 2606 OID 17688)
-- Name: sys_row_level sys_row_level_owner_id_role_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_row_level
    ADD CONSTRAINT sys_row_level_owner_id_role_id_key UNIQUE (owner_id, role_id);


--
-- TOC entry 3825 (class 2606 OID 17880)
-- Name: sys_search sys_search_creator_id_view_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search
    ADD CONSTRAINT sys_search_creator_id_view_id_key UNIQUE (creator_id, view_id);


--
-- TOC entry 3827 (class 2606 OID 17887)
-- Name: sys_search_model sys_search_model_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search_model
    ADD CONSTRAINT sys_search_model_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3833 (class 2606 OID 17907)
-- Name: sys_search_shared_model sys_search_shared_model_owner_id_role_id_model_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search_shared_model
    ADD CONSTRAINT sys_search_shared_model_owner_id_role_id_model_id_key UNIQUE (owner_id, role_id, model_id);


--
-- TOC entry 3835 (class 2606 OID 17913)
-- Name: sys_sequence sys_sequence_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_sequence
    ADD CONSTRAINT sys_sequence_pkey PRIMARY KEY (sequence_name);


--
-- TOC entry 3839 (class 2606 OID 17929)
-- Name: sys_share_auto sys_share_auto_from_user_id_with_user_id_right_type_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_share_auto
    ADD CONSTRAINT sys_share_auto_from_user_id_with_user_id_right_type_key UNIQUE (from_user_id, with_user_id, right_type);


--
-- TOC entry 3837 (class 2606 OID 17921)
-- Name: sys_share sys_share_table_id_fkref_owner_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_share
    ADD CONSTRAINT sys_share_table_id_fkref_owner_id_key UNIQUE (table_id, fkref, owner_id);


--
-- TOC entry 3841 (class 2606 OID 17937)
-- Name: sys_tables sys_tables_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_tables
    ADD CONSTRAINT sys_tables_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3845 (class 2606 OID 17961)
-- Name: sys_task_history sys_task_history_pkref_creator_id_owner_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_task_history
    ADD CONSTRAINT sys_task_history_pkref_creator_id_owner_id_key UNIQUE (pkref, creator_id, owner_id);


--
-- TOC entry 3847 (class 2606 OID 17973)
-- Name: sys_task_submit sys_task_submit_pkref_creator_id_owner_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_task_submit
    ADD CONSTRAINT sys_task_submit_pkref_creator_id_owner_id_key UNIQUE (pkref, creator_id, owner_id);


--
-- TOC entry 3843 (class 2606 OID 17949)
-- Name: sys_task_waiting sys_task_waiting_pkref_creator_id_owner_id_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_task_waiting
    ADD CONSTRAINT sys_task_waiting_pkref_creator_id_owner_id_key UNIQUE (pkref, creator_id, owner_id);


--
-- TOC entry 3849 (class 2606 OID 17983)
-- Name: sys_uploads sys_uploads_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_uploads
    ADD CONSTRAINT sys_uploads_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3851 (class 2606 OID 17988)
-- Name: sys_user_hierarchy_views sys_user_hierarchy_views_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_user_hierarchy_views
    ADD CONSTRAINT sys_user_hierarchy_views_pkey PRIMARY KEY (viewer, target);


--
-- TOC entry 3853 (class 2606 OID 18002)
-- Name: sys_users sys_users_login_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_users
    ADD CONSTRAINT sys_users_login_key UNIQUE (login);


--
-- TOC entry 3855 (class 2606 OID 18000)
-- Name: sys_users sys_users_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_users
    ADD CONSTRAINT sys_users_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3857 (class 2606 OID 18018)
-- Name: sys_values_criteria sys_values_criteria_creator_id_fk_table_id_fkref_table_id_c_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_values_criteria
    ADD CONSTRAINT sys_values_criteria_creator_id_fk_table_id_fkref_table_id_c_key UNIQUE (creator_id, fk_table_id, fkref, table_id, column_id, order_show);


--
-- TOC entry 3859 (class 2606 OID 18026)
-- Name: sys_version sys_version_major_version_minor_version_patch_version_key; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_version
    ADD CONSTRAINT sys_version_major_version_minor_version_patch_version_key UNIQUE (major_version, minor_version, patch_version);


--
-- TOC entry 3863 (class 2606 OID 18042)
-- Name: sys_view_behaviors sys_view_behaviors_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_view_behaviors
    ADD CONSTRAINT sys_view_behaviors_pkey PRIMARY KEY (view_id, name);


--
-- TOC entry 3865 (class 2606 OID 18049)
-- Name: sys_view_rules sys_view_rules_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_view_rules
    ADD CONSTRAINT sys_view_rules_pkey PRIMARY KEY (row_index, view_id, name);


--
-- TOC entry 3861 (class 2606 OID 18034)
-- Name: sys_views sys_views_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_views
    ADD CONSTRAINT sys_views_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3869 (class 2606 OID 18488)
-- Name: test test_pkey; Type: CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (pkref);


--
-- TOC entry 3804 (class 1259 OID 18269)
-- Name: ix_1345296807; Type: INDEX; Schema: openage; Owner: -
--

CREATE INDEX ix_1345296807 ON openage.int_1894018810 USING btree (pkref);


--
-- TOC entry 3805 (class 1259 OID 18275)
-- Name: ix_1345296808; Type: INDEX; Schema: openage; Owner: -
--

CREATE INDEX ix_1345296808 ON openage.int_1894018810 USING btree (fkref);


--
-- TOC entry 3800 (class 1259 OID 18257)
-- Name: ix_1345296844; Type: INDEX; Schema: openage; Owner: -
--

CREATE INDEX ix_1345296844 ON openage.int_1894018807 USING btree (pkref);


--
-- TOC entry 3801 (class 1259 OID 18263)
-- Name: ix_1345296845; Type: INDEX; Schema: openage; Owner: -
--

CREATE INDEX ix_1345296845 ON openage.int_1894018807 USING btree (fkref);


--
-- TOC entry 3914 (class 2606 OID 18270)
-- Name: int_1894018810 cs_1345296807; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.int_1894018810
    ADD CONSTRAINT cs_1345296807 FOREIGN KEY (pkref) REFERENCES openage.dat_alerts(pkref) ON DELETE CASCADE;


--
-- TOC entry 3915 (class 2606 OID 18276)
-- Name: int_1894018810 cs_1345296808; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.int_1894018810
    ADD CONSTRAINT cs_1345296808 FOREIGN KEY (fkref) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3912 (class 2606 OID 18258)
-- Name: int_1894018807 cs_1345296844; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.int_1894018807
    ADD CONSTRAINT cs_1345296844 FOREIGN KEY (pkref) REFERENCES openage.dat_alerts(pkref) ON DELETE CASCADE;


--
-- TOC entry 3913 (class 2606 OID 18264)
-- Name: int_1894018807 cs_1345296845; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.int_1894018807
    ADD CONSTRAINT cs_1345296845 FOREIGN KEY (fkref) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3872 (class 2606 OID 18057)
-- Name: lab_bases lab_bases_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_bases
    ADD CONSTRAINT lab_bases_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_bases(pkref) ON DELETE CASCADE;


--
-- TOC entry 3873 (class 2606 OID 18062)
-- Name: lab_bases lab_bases_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_bases
    ADD CONSTRAINT lab_bases_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3875 (class 2606 OID 18072)
-- Name: lab_countries lab_countries_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_countries
    ADD CONSTRAINT lab_countries_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_countries(pkref) ON DELETE CASCADE;


--
-- TOC entry 3874 (class 2606 OID 18067)
-- Name: lab_countries lab_countries_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_countries
    ADD CONSTRAINT lab_countries_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3876 (class 2606 OID 18077)
-- Name: lab_lang lab_lang_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_lang
    ADD CONSTRAINT lab_lang_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3877 (class 2606 OID 18082)
-- Name: lab_lang lab_lang_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_lang
    ADD CONSTRAINT lab_lang_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3879 (class 2606 OID 18092)
-- Name: lab_resources lab_resources_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_resources
    ADD CONSTRAINT lab_resources_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_resources(pkref) ON DELETE CASCADE;


--
-- TOC entry 3878 (class 2606 OID 18087)
-- Name: lab_resources lab_resources_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_resources
    ADD CONSTRAINT lab_resources_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3881 (class 2606 OID 18102)
-- Name: lab_rights lab_rights_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_rights
    ADD CONSTRAINT lab_rights_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_rights(pkref) ON DELETE CASCADE;


--
-- TOC entry 3880 (class 2606 OID 18097)
-- Name: lab_rights lab_rights_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_rights
    ADD CONSTRAINT lab_rights_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3882 (class 2606 OID 18107)
-- Name: lab_roles lab_roles_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_roles
    ADD CONSTRAINT lab_roles_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_role_hierarchies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3883 (class 2606 OID 18112)
-- Name: lab_roles lab_roles_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.lab_roles
    ADD CONSTRAINT lab_roles_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3885 (class 2606 OID 18122)
-- Name: sys_bases sys_bases_company_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_bases
    ADD CONSTRAINT sys_bases_company_id_fkey FOREIGN KEY (company_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3884 (class 2606 OID 18117)
-- Name: sys_bases sys_bases_lang_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_bases
    ADD CONSTRAINT sys_bases_lang_id_fkey FOREIGN KEY (lang_id) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3887 (class 2606 OID 18132)
-- Name: sys_columns_accessflags sys_columns_accessflags_column_id_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_columns_accessflags
    ADD CONSTRAINT sys_columns_accessflags_column_id_table_id_fkey FOREIGN KEY (column_id, table_id) REFERENCES openage.sys_columns(pkref, table_id) ON DELETE CASCADE;


--
-- TOC entry 3888 (class 2606 OID 18137)
-- Name: sys_columns_accessflags sys_columns_accessflags_role_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_columns_accessflags
    ADD CONSTRAINT sys_columns_accessflags_role_id_fkey FOREIGN KEY (role_id) REFERENCES openage.sys_role_hierarchies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3886 (class 2606 OID 18127)
-- Name: sys_columns sys_columns_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_columns
    ADD CONSTRAINT sys_columns_table_id_fkey FOREIGN KEY (table_id) REFERENCES openage.sys_tables(pkref) ON DELETE CASCADE;


--
-- TOC entry 3891 (class 2606 OID 18152)
-- Name: sys_companies sys_companies_lang_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_companies
    ADD CONSTRAINT sys_companies_lang_fkey FOREIGN KEY (lang) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3893 (class 2606 OID 18162)
-- Name: sys_company_lang sys_company_lang_fkref_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_company_lang
    ADD CONSTRAINT sys_company_lang_fkref_fkey FOREIGN KEY (fkref) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3892 (class 2606 OID 18157)
-- Name: sys_company_lang sys_company_lang_lang_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_company_lang
    ADD CONSTRAINT sys_company_lang_lang_id_fkey FOREIGN KEY (lang_id) REFERENCES openage.sys_lang(pkref) ON DELETE CASCADE;


--
-- TOC entry 3894 (class 2606 OID 18167)
-- Name: sys_config_companies sys_config_companies_company_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_config_companies
    ADD CONSTRAINT sys_config_companies_company_id_fkey FOREIGN KEY (company_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3889 (class 2606 OID 18142)
-- Name: sys_constraints sys_constraints_column_id_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_constraints
    ADD CONSTRAINT sys_constraints_column_id_table_id_fkey FOREIGN KEY (column_id, table_id) REFERENCES openage.sys_columns(pkref, table_id) ON DELETE CASCADE;


--
-- TOC entry 3890 (class 2606 OID 18147)
-- Name: sys_constraints sys_constraints_target_column_id_target_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_constraints
    ADD CONSTRAINT sys_constraints_target_column_id_target_table_id_fkey FOREIGN KEY (target_column_id, target_table_id) REFERENCES openage.sys_columns(pkref, table_id) ON DELETE CASCADE;


--
-- TOC entry 3949 (class 2606 OID 18446)
-- Name: sys_containers sys_containers_alias_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_containers
    ADD CONSTRAINT sys_containers_alias_id_fkey FOREIGN KEY (alias_id) REFERENCES openage.sys_tables(pkref) ON DELETE CASCADE;


--
-- TOC entry 3948 (class 2606 OID 18441)
-- Name: sys_containers sys_containers_column_id_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_containers
    ADD CONSTRAINT sys_containers_column_id_table_id_fkey FOREIGN KEY (column_id, table_id) REFERENCES openage.sys_columns(pkref, table_id) ON DELETE CASCADE;


--
-- TOC entry 3931 (class 2606 OID 18356)
-- Name: sys_custom_shared_view_model sys_custom_shared_view_model_cvm_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_custom_shared_view_model
    ADD CONSTRAINT sys_custom_shared_view_model_cvm_id_fkey FOREIGN KEY (cvm_id) REFERENCES openage.sys_custom_view_model(pkref) ON DELETE CASCADE;


--
-- TOC entry 3930 (class 2606 OID 18351)
-- Name: sys_custom_view_model sys_custom_view_model_creator_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_custom_view_model
    ADD CONSTRAINT sys_custom_view_model_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3929 (class 2606 OID 18346)
-- Name: sys_custom_view_model sys_custom_view_model_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_custom_view_model
    ADD CONSTRAINT sys_custom_view_model_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3895 (class 2606 OID 18172)
-- Name: sys_duplicate_columns sys_duplicate_columns_dup_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_columns
    ADD CONSTRAINT sys_duplicate_columns_dup_id_fkey FOREIGN KEY (dup_id) REFERENCES openage.sys_duplicate_params(pkref) ON DELETE CASCADE;


--
-- TOC entry 3896 (class 2606 OID 18177)
-- Name: sys_duplicate_commonwords sys_duplicate_commonwords_base_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_commonwords
    ADD CONSTRAINT sys_duplicate_commonwords_base_id_fkey FOREIGN KEY (base_id) REFERENCES openage.sys_bases(pkref) ON DELETE CASCADE;


--
-- TOC entry 3897 (class 2606 OID 18182)
-- Name: sys_duplicate_commonwords sys_duplicate_commonwords_company_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_commonwords
    ADD CONSTRAINT sys_duplicate_commonwords_company_id_fkey FOREIGN KEY (company_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3900 (class 2606 OID 18197)
-- Name: sys_duplicate_params sys_duplicate_params_company_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_params
    ADD CONSTRAINT sys_duplicate_params_company_id_fkey FOREIGN KEY (company_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3899 (class 2606 OID 18192)
-- Name: sys_duplicate_params sys_duplicate_params_project_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_params
    ADD CONSTRAINT sys_duplicate_params_project_id_fkey FOREIGN KEY (project_id) REFERENCES openage.sys_projects(pkref) ON DELETE CASCADE;


--
-- TOC entry 3898 (class 2606 OID 18187)
-- Name: sys_duplicate_params sys_duplicate_params_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_duplicate_params
    ADD CONSTRAINT sys_duplicate_params_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3903 (class 2606 OID 18212)
-- Name: sys_field_behaviors sys_field_behaviors_field_id_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_field_behaviors
    ADD CONSTRAINT sys_field_behaviors_field_id_view_id_fkey FOREIGN KEY (field_id, view_id) REFERENCES openage.sys_fields(pkref, view_id) ON DELETE CASCADE;


--
-- TOC entry 3904 (class 2606 OID 18217)
-- Name: sys_field_grids sys_field_grids_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_field_grids
    ADD CONSTRAINT sys_field_grids_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3905 (class 2606 OID 18222)
-- Name: sys_field_rules sys_field_rules_field_id_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_field_rules
    ADD CONSTRAINT sys_field_rules_field_id_view_id_fkey FOREIGN KEY (field_id, view_id) REFERENCES openage.sys_fields(pkref, view_id) ON DELETE CASCADE;


--
-- TOC entry 3901 (class 2606 OID 18202)
-- Name: sys_fields sys_fields_column_id_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_fields
    ADD CONSTRAINT sys_fields_column_id_table_id_fkey FOREIGN KEY (column_id, table_id) REFERENCES openage.sys_columns(pkref, table_id) ON DELETE CASCADE;


--
-- TOC entry 3902 (class 2606 OID 18207)
-- Name: sys_fields sys_fields_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_fields
    ADD CONSTRAINT sys_fields_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3906 (class 2606 OID 18227)
-- Name: sys_filetypes sys_filetypes_mimetype_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_filetypes
    ADD CONSTRAINT sys_filetypes_mimetype_id_fkey FOREIGN KEY (mimetype_id) REFERENCES openage.sys_mimetypes(pkref) ON DELETE CASCADE;


--
-- TOC entry 3908 (class 2606 OID 18237)
-- Name: sys_media_alias sys_media_alias_media_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_media_alias
    ADD CONSTRAINT sys_media_alias_media_id_fkey FOREIGN KEY (media_id) REFERENCES openage.sys_media(pkref) ON DELETE CASCADE;


--
-- TOC entry 3909 (class 2606 OID 18242)
-- Name: sys_media_alias sys_media_alias_project_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_media_alias
    ADD CONSTRAINT sys_media_alias_project_id_fkey FOREIGN KEY (project_id) REFERENCES openage.sys_projects(pkref) ON DELETE CASCADE;


--
-- TOC entry 3907 (class 2606 OID 18232)
-- Name: sys_media sys_media_mimetype_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_media
    ADD CONSTRAINT sys_media_mimetype_id_fkey FOREIGN KEY (mimetype_id) REFERENCES openage.sys_mimetypes(pkref) ON DELETE CASCADE;


--
-- TOC entry 3910 (class 2606 OID 18247)
-- Name: sys_project_user_roles sys_project_user_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_project_user_roles
    ADD CONSTRAINT sys_project_user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES openage.sys_role_hierarchies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3911 (class 2606 OID 18252)
-- Name: sys_project_user_roles sys_project_user_roles_user_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_project_user_roles
    ADD CONSTRAINT sys_project_user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3917 (class 2606 OID 18286)
-- Name: sys_resources_rightsfilters sys_resources_rightsfilters_fkref_resource_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_resources_rightsfilters
    ADD CONSTRAINT sys_resources_rightsfilters_fkref_resource_fkey FOREIGN KEY (fkref_resource) REFERENCES openage.sys_resources(pkref) ON DELETE CASCADE;


--
-- TOC entry 3916 (class 2606 OID 18281)
-- Name: sys_resources_rightsfilters sys_resources_rightsfilters_fkref_right_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_resources_rightsfilters
    ADD CONSTRAINT sys_resources_rightsfilters_fkref_right_fkey FOREIGN KEY (fkref_right) REFERENCES openage.sys_rights(pkref) ON DELETE CASCADE;


--
-- TOC entry 3918 (class 2606 OID 18291)
-- Name: sys_role_hierarchies sys_role_hierarchies_container_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_hierarchies
    ADD CONSTRAINT sys_role_hierarchies_container_id_fkey FOREIGN KEY (container_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3921 (class 2606 OID 18306)
-- Name: sys_role_rights_resources sys_role_rights_resources_resource_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_resources
    ADD CONSTRAINT sys_role_rights_resources_resource_id_fkey FOREIGN KEY (resource_id) REFERENCES openage.sys_resources(pkref) ON DELETE CASCADE;


--
-- TOC entry 3920 (class 2606 OID 18301)
-- Name: sys_role_rights_resources sys_role_rights_resources_right_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_resources
    ADD CONSTRAINT sys_role_rights_resources_right_id_fkey FOREIGN KEY (right_id) REFERENCES openage.sys_rights(pkref) ON DELETE CASCADE;


--
-- TOC entry 3919 (class 2606 OID 18296)
-- Name: sys_role_rights_resources sys_role_rights_resources_role_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_resources
    ADD CONSTRAINT sys_role_rights_resources_role_id_fkey FOREIGN KEY (role_id) REFERENCES openage.sys_role_hierarchies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3922 (class 2606 OID 18311)
-- Name: sys_role_rights_tables sys_role_rights_tables_right_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_tables
    ADD CONSTRAINT sys_role_rights_tables_right_id_fkey FOREIGN KEY (right_id) REFERENCES openage.sys_rights(pkref) ON DELETE CASCADE;


--
-- TOC entry 3924 (class 2606 OID 18321)
-- Name: sys_role_rights_tables sys_role_rights_tables_role_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_tables
    ADD CONSTRAINT sys_role_rights_tables_role_id_fkey FOREIGN KEY (role_id) REFERENCES openage.sys_role_hierarchies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3923 (class 2606 OID 18316)
-- Name: sys_role_rights_tables sys_role_rights_tables_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_role_rights_tables
    ADD CONSTRAINT sys_role_rights_tables_table_id_fkey FOREIGN KEY (table_id) REFERENCES openage.sys_tables(pkref) ON DELETE CASCADE;


--
-- TOC entry 3926 (class 2606 OID 18331)
-- Name: sys_search sys_search_creator_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search
    ADD CONSTRAINT sys_search_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3928 (class 2606 OID 18341)
-- Name: sys_search_model sys_search_model_creator_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search_model
    ADD CONSTRAINT sys_search_model_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3927 (class 2606 OID 18336)
-- Name: sys_search_model sys_search_model_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search_model
    ADD CONSTRAINT sys_search_model_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3932 (class 2606 OID 18361)
-- Name: sys_search_shared_model sys_search_shared_model_model_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search_shared_model
    ADD CONSTRAINT sys_search_shared_model_model_id_fkey FOREIGN KEY (model_id) REFERENCES openage.sys_search_model(pkref) ON DELETE CASCADE;


--
-- TOC entry 3925 (class 2606 OID 18326)
-- Name: sys_search sys_search_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_search
    ADD CONSTRAINT sys_search_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3935 (class 2606 OID 18376)
-- Name: sys_share_auto sys_share_auto_from_user_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_share_auto
    ADD CONSTRAINT sys_share_auto_from_user_id_fkey FOREIGN KEY (from_user_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3936 (class 2606 OID 18381)
-- Name: sys_share_auto sys_share_auto_with_user_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_share_auto
    ADD CONSTRAINT sys_share_auto_with_user_id_fkey FOREIGN KEY (with_user_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3934 (class 2606 OID 18371)
-- Name: sys_share sys_share_owner_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_share
    ADD CONSTRAINT sys_share_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3933 (class 2606 OID 18366)
-- Name: sys_share sys_share_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_share
    ADD CONSTRAINT sys_share_table_id_fkey FOREIGN KEY (table_id) REFERENCES openage.sys_tables(pkref) ON DELETE CASCADE;


--
-- TOC entry 3940 (class 2606 OID 18401)
-- Name: sys_uploads sys_uploads_company_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_uploads
    ADD CONSTRAINT sys_uploads_company_id_fkey FOREIGN KEY (company_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3937 (class 2606 OID 18386)
-- Name: sys_uploads sys_uploads_creator_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_uploads
    ADD CONSTRAINT sys_uploads_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3939 (class 2606 OID 18396)
-- Name: sys_uploads sys_uploads_field_id_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_uploads
    ADD CONSTRAINT sys_uploads_field_id_view_id_fkey FOREIGN KEY (field_id, view_id) REFERENCES openage.sys_fields(pkref, view_id) ON DELETE CASCADE;


--
-- TOC entry 3938 (class 2606 OID 18391)
-- Name: sys_uploads sys_uploads_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_uploads
    ADD CONSTRAINT sys_uploads_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3941 (class 2606 OID 18406)
-- Name: sys_user_hierarchy_views sys_user_hierarchy_views_target_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_user_hierarchy_views
    ADD CONSTRAINT sys_user_hierarchy_views_target_fkey FOREIGN KEY (target) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3942 (class 2606 OID 18411)
-- Name: sys_user_hierarchy_views sys_user_hierarchy_views_viewer_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_user_hierarchy_views
    ADD CONSTRAINT sys_user_hierarchy_views_viewer_fkey FOREIGN KEY (viewer) REFERENCES openage.sys_users(pkref) ON DELETE CASCADE;


--
-- TOC entry 3943 (class 2606 OID 18416)
-- Name: sys_users sys_users_company_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_users
    ADD CONSTRAINT sys_users_company_id_fkey FOREIGN KEY (company_id) REFERENCES openage.sys_companies(pkref) ON DELETE CASCADE;


--
-- TOC entry 3944 (class 2606 OID 18421)
-- Name: sys_values_criteria sys_values_criteria_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_values_criteria
    ADD CONSTRAINT sys_values_criteria_table_id_fkey FOREIGN KEY (table_id) REFERENCES openage.sys_tables(pkref) ON DELETE CASCADE;


--
-- TOC entry 3946 (class 2606 OID 18431)
-- Name: sys_view_behaviors sys_view_behaviors_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_view_behaviors
    ADD CONSTRAINT sys_view_behaviors_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3947 (class 2606 OID 18436)
-- Name: sys_view_rules sys_view_rules_view_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_view_rules
    ADD CONSTRAINT sys_view_rules_view_id_fkey FOREIGN KEY (view_id) REFERENCES openage.sys_views(pkref) ON DELETE CASCADE;


--
-- TOC entry 3945 (class 2606 OID 18426)
-- Name: sys_views sys_views_table_id_fkey; Type: FK CONSTRAINT; Schema: openage; Owner: -
--

ALTER TABLE ONLY openage.sys_views
    ADD CONSTRAINT sys_views_table_id_fkey FOREIGN KEY (table_id) REFERENCES openage.sys_tables(pkref) ON DELETE CASCADE;


-- Completed on 2024-05-24 14:59:49 CEST

--
-- PostgreSQL database dump complete
--

