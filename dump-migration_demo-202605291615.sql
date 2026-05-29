--
-- PostgreSQL database dump
--

\restrict qXcUz2BugnBm1XfcJELiDKZrqKwfpNHqsq7wtDG1zhp0ek6OWd7JRGrgrEMU5Qn

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2026-05-29 16:15:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 27839)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_id integer NOT NULL,
    name character varying(50),
    dept character varying(50),
    salary integer,
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 4787 (class 0 OID 27839)
-- Dependencies: 217
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (emp_id, name, dept, salary, hire_date) FROM stdin;
1001	张三	技术部	8000	2023-01-01
1002	李四	销售部	9000	2023-02-15
1003	王五	技术部	7500	2023-03-20
\.


--
-- TOC entry 4641 (class 2606 OID 27843)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);


-- Completed on 2026-05-29 16:15:37

--
-- PostgreSQL database dump complete
--

\unrestrict qXcUz2BugnBm1XfcJELiDKZrqKwfpNHqsq7wtDG1zhp0ek6OWd7JRGrgrEMU5Qn

