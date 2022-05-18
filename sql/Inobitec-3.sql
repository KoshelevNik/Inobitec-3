--
-- PostgreSQL database dump
--

-- Dumped from database version 10.19
-- Dumped by pg_dump version 13.3

-- Started on 2022-05-19 02:20:06

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
-- TOC entry 2801 (class 1262 OID 73801)
-- Name: Inobitec-3; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "Inobitec-3" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru';


\connect -reuse-previous=on "dbname='Inobitec-3'"

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 2802 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 196 (class 1259 OID 73802)
-- Name: patient; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient (
    id integer NOT NULL,
    "firstName" character varying NOT NULL,
    "midName" character varying NOT NULL,
    "lastName" character varying NOT NULL,
    "genderId" smallint NOT NULL,
    birthday date NOT NULL,
    phone character varying NOT NULL,
    email character varying NOT NULL,
    address character varying NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 73810)
-- Name: patientid; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.patientid
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2794 (class 0 OID 73802)
-- Dependencies: 196
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.patient VALUES (1001, 'Макар', 'Макарович', 'Макаров', 1, '1952-10-07', '+7(900)-900-90-90', 'ivanov@gmail.com', 'Университетская пл. д. 1');
INSERT INTO public.patient VALUES (1002, 'Автандил', 'Автандилович', 'Автандилов', 1, '1952-10-07', '+7(900)-900-90-90', 'ivanov@gmail.com', 'Университетская пл. д. 1');
INSERT INTO public.patient VALUES (1003, 'Иван', 'Иванович', 'Иванов', 1, '1952-10-07', '+7(900)-900-90-90', 'ivanov@gmail.com', 'Университетская пл. д. 1');
INSERT INTO public.patient VALUES (1000, 'Иван', 'Иванов', 'Иванович', 1, '1952-10-07', '+7(900)-900-90-90', 'ivanov@gmail.com', 'Университетская пл. д. 1');


--
-- TOC entry 2803 (class 0 OID 0)
-- Dependencies: 197
-- Name: patientid; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.patientid', 1003, true);


--
-- TOC entry 2672 (class 2606 OID 73809)
-- Name: patient patient_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_id PRIMARY KEY (id);


-- Completed on 2022-05-19 02:20:06

--
-- PostgreSQL database dump complete
--

