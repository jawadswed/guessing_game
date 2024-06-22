--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE gussing_game;
--
-- Name: gussing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE gussing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE gussing_game OWNER TO freecodecamp;

\connect gussing_game

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
-- Name: game_stat; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_stat (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 1000
);


ALTER TABLE public.game_stat OWNER TO freecodecamp;

--
-- Name: game_stat_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_stat_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_stat_user_id_seq OWNER TO freecodecamp;

--
-- Name: game_stat_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_stat_user_id_seq OWNED BY public.game_stat.user_id;


--
-- Name: game_stat user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_stat ALTER COLUMN user_id SET DEFAULT nextval('public.game_stat_user_id_seq'::regclass);


--
-- Data for Name: game_stat; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_stat VALUES (40, 'user_1719024946729', 2, 589);
INSERT INTO public.game_stat VALUES (3, 'user_1719021903604', 2, 1000);
INSERT INTO public.game_stat VALUES (51, 'user_1719025247712', 5, 5);
INSERT INTO public.game_stat VALUES (2, 'user_1719021903605', 5, 1000);
INSERT INTO public.game_stat VALUES (14, 'user_1719024002885', 2, 245);
INSERT INTO public.game_stat VALUES (5, 'user_1719021955052', 2, 1000);
INSERT INTO public.game_stat VALUES (4, 'user_1719021955053', 5, 1000);
INSERT INTO public.game_stat VALUES (26, 'user_1719024528294', 2, 121);
INSERT INTO public.game_stat VALUES (13, 'user_1719024002886', 5, 164);
INSERT INTO public.game_stat VALUES (39, 'user_1719024946730', 5, 34);
INSERT INTO public.game_stat VALUES (6, '500', 1, 12);
INSERT INTO public.game_stat VALUES (64, 'user_1719025692636', 2, 98);
INSERT INTO public.game_stat VALUES (25, 'user_1719024528295', 5, 151);
INSERT INTO public.game_stat VALUES (16, 'user_1719024024937', 2, 817);
INSERT INTO public.game_stat VALUES (8, 'user_1719023580577', 2, 10);
INSERT INTO public.game_stat VALUES (15, 'user_1719024024938', 5, 108);
INSERT INTO public.game_stat VALUES (7, 'user_1719023580578', 5, 47);
INSERT INTO public.game_stat VALUES (54, 'user_1719025493295', 2, 707);
INSERT INTO public.game_stat VALUES (63, 'user_1719025692637', 5, 135);
INSERT INTO public.game_stat VALUES (10, 'user_1719023856668', 2, 4);
INSERT INTO public.game_stat VALUES (28, 'user_1719024603472', 2, 748);
INSERT INTO public.game_stat VALUES (18, 'user_1719024256640', 2, 286);
INSERT INTO public.game_stat VALUES (9, 'user_1719023856669', 5, 54);
INSERT INTO public.game_stat VALUES (42, 'user_1719024952204', 2, 80);
INSERT INTO public.game_stat VALUES (17, 'user_1719024256641', 5, 3);
INSERT INTO public.game_stat VALUES (27, 'user_1719024603473', 5, 59);
INSERT INTO public.game_stat VALUES (12, 'user_1719023896442', 2, 78);
INSERT INTO public.game_stat VALUES (53, 'user_1719025493296', 5, 155);
INSERT INTO public.game_stat VALUES (11, 'user_1719023896443', 5, 60);
INSERT INTO public.game_stat VALUES (41, 'user_1719024952205', 5, 233);
INSERT INTO public.game_stat VALUES (20, 'user_1719024447831', 2, 179);
INSERT INTO public.game_stat VALUES (19, 'user_1719024447832', 5, 353);
INSERT INTO public.game_stat VALUES (30, 'user_1719024870437', 2, 368);
INSERT INTO public.game_stat VALUES (22, 'user_1719024459921', 2, 45);
INSERT INTO public.game_stat VALUES (29, 'user_1719024870438', 5, 792);
INSERT INTO public.game_stat VALUES (21, 'user_1719024459922', 5, 23);
INSERT INTO public.game_stat VALUES (44, 'user_1719025130791', 2, 311);
INSERT INTO public.game_stat VALUES (56, 'user_1719025513751', 2, 427);
INSERT INTO public.game_stat VALUES (43, 'user_1719025130792', 5, 75);
INSERT INTO public.game_stat VALUES (24, 'user_1719024481635', 2, 654);
INSERT INTO public.game_stat VALUES (32, 'user_1719024922372', 2, 81);
INSERT INTO public.game_stat VALUES (23, 'user_1719024481636', 5, 17);
INSERT INTO public.game_stat VALUES (55, 'user_1719025513752', 5, 657);
INSERT INTO public.game_stat VALUES (31, 'user_1719024922373', 5, 42);
INSERT INTO public.game_stat VALUES (66, 'user_1719025860234', 2, 186);
INSERT INTO public.game_stat VALUES (46, 'user_1719025168737', 2, 80);
INSERT INTO public.game_stat VALUES (34, 'user_1719024929753', 2, 283);
INSERT INTO public.game_stat VALUES (33, 'user_1719024929754', 5, 320);
INSERT INTO public.game_stat VALUES (45, 'user_1719025168738', 5, 39);
INSERT INTO public.game_stat VALUES (65, 'user_1719025860235', 5, 140);
INSERT INTO public.game_stat VALUES (58, 'user_1719025534208', 2, 484);
INSERT INTO public.game_stat VALUES (36, 'user_1719024935159', 2, 825);
INSERT INTO public.game_stat VALUES (35, 'user_1719024935160', 5, 9);
INSERT INTO public.game_stat VALUES (48, 'user_1719025230838', 2, 782);
INSERT INTO public.game_stat VALUES (57, 'user_1719025534209', 5, 221);
INSERT INTO public.game_stat VALUES (47, 'user_1719025230839', 5, 89);
INSERT INTO public.game_stat VALUES (38, 'user_1719024941017', 2, 20);
INSERT INTO public.game_stat VALUES (37, 'user_1719024941018', 5, 56);
INSERT INTO public.game_stat VALUES (68, 'user_1719025875281', 2, 210);
INSERT INTO public.game_stat VALUES (60, 'user_1719025539289', 2, 318);
INSERT INTO public.game_stat VALUES (50, 'user_1719025242274', 2, 652);
INSERT INTO public.game_stat VALUES (49, 'user_1719025242275', 5, 138);
INSERT INTO public.game_stat VALUES (59, 'user_1719025539290', 5, 326);
INSERT INTO public.game_stat VALUES (67, 'user_1719025875282', 5, 81);
INSERT INTO public.game_stat VALUES (52, 'user_1719025247711', 2, 116);
INSERT INTO public.game_stat VALUES (62, 'user_1719025618450', 2, 294);
INSERT INTO public.game_stat VALUES (61, 'user_1719025618451', 5, 483);
INSERT INTO public.game_stat VALUES (1, 'jawad', 8, 10);


--
-- Name: game_stat_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_stat_user_id_seq', 68, true);


--
-- Name: game_stat game_stat_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_stat
    ADD CONSTRAINT game_stat_pkey PRIMARY KEY (user_id);


--
-- Name: game_stat game_stat_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_stat
    ADD CONSTRAINT game_stat_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

