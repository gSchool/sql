--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: animals; Type: TABLE; Schema: public; Owner: nmuta
--

CREATE TABLE animals (
    id integer NOT NULL,
    name text,
    species_id integer
);


ALTER TABLE animals OWNER TO nmuta;

--
-- Name: animals_id_seq; Type: SEQUENCE; Schema: public; Owner: nmuta
--

CREATE SEQUENCE animals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE animals_id_seq OWNER TO nmuta;

--
-- Name: animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nmuta
--

ALTER SEQUENCE animals_id_seq OWNED BY animals.id;


--
-- Name: appointments; Type: TABLE; Schema: public; Owner: nmuta
--

CREATE TABLE appointments (
    trainer_id integer,
    animal_id integer,
    day_of_week integer
);


ALTER TABLE appointments OWNER TO nmuta;

--
-- Name: species; Type: TABLE; Schema: public; Owner: nmuta
--

CREATE TABLE species (
    id integer NOT NULL,
    name text
);


ALTER TABLE species OWNER TO nmuta;

--
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: nmuta
--

CREATE SEQUENCE species_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE species_id_seq OWNER TO nmuta;

--
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nmuta
--

ALTER SEQUENCE species_id_seq OWNED BY species.id;


--
-- Name: trainers; Type: TABLE; Schema: public; Owner: nmuta
--

CREATE TABLE trainers (
    id integer NOT NULL,
    trainer_name text,
    trainer_level integer
);


ALTER TABLE trainers OWNER TO nmuta;

--
-- Name: trainers_id_seq; Type: SEQUENCE; Schema: public; Owner: nmuta
--

CREATE SEQUENCE trainers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE trainers_id_seq OWNER TO nmuta;

--
-- Name: trainers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nmuta
--

ALTER SEQUENCE trainers_id_seq OWNED BY trainers.id;


--
-- Name: animals id; Type: DEFAULT; Schema: public; Owner: nmuta
--

ALTER TABLE ONLY animals ALTER COLUMN id SET DEFAULT nextval('animals_id_seq'::regclass);


--
-- Name: species id; Type: DEFAULT; Schema: public; Owner: nmuta
--

ALTER TABLE ONLY species ALTER COLUMN id SET DEFAULT nextval('species_id_seq'::regclass);


--
-- Name: trainers id; Type: DEFAULT; Schema: public; Owner: nmuta
--

ALTER TABLE ONLY trainers ALTER COLUMN id SET DEFAULT nextval('trainers_id_seq'::regclass);


--
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: nmuta
--

COPY animals (id, name, species_id) FROM stdin;
1	Fozzy	1
2	Simba	2
3	Smokey	1
4	Nemo	4
5	Scar	2
6	Mickey	3
7	Fivel	3
8	Alex	2
9	Dora	4
10	Mighty	3
11	Teddy	1
\.


--
-- Name: animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nmuta
--

SELECT pg_catalog.setval('animals_id_seq', 11, true);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: nmuta
--

COPY appointments (trainer_id, animal_id, day_of_week) FROM stdin;
10	1	6
7	3	1
10	4	1
1	2	4
5	8	4
4	5	2
6	9	5
7	11	0
3	5	3
7	7	6
2	3	1
6	4	1
5	5	0
5	9	0
\.


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: nmuta
--

COPY species (id, name) FROM stdin;
1	bear
2	lion
3	mouse
4	fish
\.


--
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nmuta
--

SELECT pg_catalog.setval('species_id_seq', 4, true);


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: nmuta
--

COPY trainers (id, trainer_name, trainer_level) FROM stdin;
1	Zora	5
2	Amber	2
3	Jacob	1
4	Carl	4
5	Olu	5
6	Rachel	3
7	Malcolm	6
\.


--
-- Name: trainers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nmuta
--

SELECT pg_catalog.setval('trainers_id_seq', 7, true);


--
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: nmuta
--

ALTER TABLE ONLY animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: nmuta
--

ALTER TABLE ONLY species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);


--
-- Name: trainers trainers_pkey; Type: CONSTRAINT; Schema: public; Owner: nmuta
--

ALTER TABLE ONLY trainers
    ADD CONSTRAINT trainers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

