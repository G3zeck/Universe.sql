--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dimension; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dimension (
    dimension_id integer NOT NULL,
    dimensional_age character(20) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.dimension OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_million_years numeric NOT NULL,
    dimension integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    planet_distance integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: dimension; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dimension VALUES (1, '1500                ', NULL);
INSERT INTO public.dimension VALUES (2, '160                 ', NULL);
INSERT INTO public.dimension VALUES (3, '1500                ', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, 1500, NULL);
INSERT INTO public.galaxy VALUES (2, 'Via lactia', 2, 17000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Magallanes', 3, 1700, NULL);
INSERT INTO public.galaxy VALUES (4, 'Acount', 4, 1500, NULL);
INSERT INTO public.galaxy VALUES (5, 'Asauin', 5, 1500, NULL);
INSERT INTO public.galaxy VALUES (6, 'Aruin', 6, 1550, NULL);
INSERT INTO public.galaxy VALUES (7, 'aroyt', 7, 1500, NULL);
INSERT INTO public.galaxy VALUES (8, 'amane', 8, 1700, NULL);
INSERT INTO public.galaxy VALUES (9, 'Volir', 9, 160, NULL);
INSERT INTO public.galaxy VALUES (10, 'Outio', 10, 140, NULL);
INSERT INTO public.galaxy VALUES (11, 'Acountt', 11, 1500, NULL);
INSERT INTO public.galaxy VALUES (12, 'Assauin', 12, 1500, NULL);
INSERT INTO public.galaxy VALUES (13, 'fAruin', 13, 1550, NULL);
INSERT INTO public.galaxy VALUES (14, 'argoyt', 14, 1500, NULL);
INSERT INTO public.galaxy VALUES (15, 'asmane', 15, 1700, NULL);
INSERT INTO public.galaxy VALUES (16, 'Voliar', 16, 160, NULL);
INSERT INTO public.galaxy VALUES (17, 'Odutio', 17, 140, NULL);
INSERT INTO public.galaxy VALUES (18, 'Apoluys', 18, 1500, NULL);
INSERT INTO public.galaxy VALUES (19, 'asuysa', 19, 1500, NULL);
INSERT INTO public.galaxy VALUES (20, 'jouils', 20, 1620, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'pepe luna', 1, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Luna madre', 2, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Luna enana', 3, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Joils', 4, 4, 1234);
INSERT INTO public.moon VALUES (5, 'Koils', 5, 5, 6987);
INSERT INTO public.moon VALUES (6, 'Loits', 6, 6, 7841);
INSERT INTO public.moon VALUES (7, 'Jdsoils', 7, 7, 1234);
INSERT INTO public.moon VALUES (8, 'Koiasdls', 8, 8, 6987);
INSERT INTO public.moon VALUES (9, 'Looitits', 9, 9, 7841);
INSERT INTO public.moon VALUES (10, 'Jdsoils', 10, 10, 1234);
INSERT INTO public.moon VALUES (11, 'Koiloi', 11, 11, 6987);
INSERT INTO public.moon VALUES (13, 'Zoits', 13, 13, 7841);
INSERT INTO public.moon VALUES (14, 'Jdsssoils', 14, 14, 1234);
INSERT INTO public.moon VALUES (15, 'Jooiloi', 15, 15, 6987);
INSERT INTO public.moon VALUES (16, 'Zoloits', 16, 16, 7841);
INSERT INTO public.moon VALUES (17, 'Jdssbtrls', 17, 17, 1234);
INSERT INTO public.moon VALUES (18, 'Joscoi', 18, 18, 6987);
INSERT INTO public.moon VALUES (19, 'Zolofits', 19, 19, 7841);
INSERT INTO public.moon VALUES (20, 'moilts', 20, 20, 658);
INSERT INTO public.moon VALUES (12, 'Borteis', 12, 12, 1234);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pepes', 1, 'Blue', true, 1);
INSERT INTO public.planet VALUES (2, 'Planeta madre', 2, 'No life inside', true, 2);
INSERT INTO public.planet VALUES (3, 'Planeta Enano', 3, 'Toxic air', true, 3);
INSERT INTO public.planet VALUES (4, 'aroty', 4, 'Black', true, 4);
INSERT INTO public.planet VALUES (5, 'utyd', 5, 'Toxic', true, 5);
INSERT INTO public.planet VALUES (6, 'yutra', 6, 'Loytrs', true, 6);
INSERT INTO public.planet VALUES (7, 'Yutas', 7, 'Lotus', true, 7);
INSERT INTO public.planet VALUES (8, 'iout', 8, 'Loits', false, 8);
INSERT INTO public.planet VALUES (9, 'outyis', 9, 'Toxic', true, 9);
INSERT INTO public.planet VALUES (10, 'Ytrae', 10, 'Toxic', true, 10);
INSERT INTO public.planet VALUES (11, 'Apots', 11, 'ASDASD', true, 11);
INSERT INTO public.planet VALUES (12, 'Alotis', 12, 'asdasd', true, 12);
INSERT INTO public.planet VALUES (13, 'arsoty', 13, 'Black', true, 13);
INSERT INTO public.planet VALUES (14, 'ustyd', 14, 'Toxic', true, 14);
INSERT INTO public.planet VALUES (15, 'yustra', 15, 'Loytrs', true, 15);
INSERT INTO public.planet VALUES (16, 'Yutass', 16, 'Lotus', true, 16);
INSERT INTO public.planet VALUES (17, 'iosut', 17, 'Loits', false, 17);
INSERT INTO public.planet VALUES (18, 'ousstyis', 18, 'Toxic', true, 18);
INSERT INTO public.planet VALUES (19, 'Ytsrae', 19, 'Toxic', true, 19);
INSERT INTO public.planet VALUES (20, 'Apsots', 20, 'ASDASD', true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'pepestar', 1, true, 1);
INSERT INTO public.star VALUES (2, 'Estrella madre', 2, true, 2);
INSERT INTO public.star VALUES (3, 'Estrella enana', 3, true, 3);
INSERT INTO public.star VALUES (4, 'aroty', 4, true, 4);
INSERT INTO public.star VALUES (5, 'utyd', 5, true, 5);
INSERT INTO public.star VALUES (6, 'yutra', 6, true, 6);
INSERT INTO public.star VALUES (7, 'Yutas', 7, true, 7);
INSERT INTO public.star VALUES (8, 'iout', 8, false, 8);
INSERT INTO public.star VALUES (9, 'outyis', 9, true, 9);
INSERT INTO public.star VALUES (10, 'Ytrae', 10, true, 10);
INSERT INTO public.star VALUES (11, 'Oilst', 11, true, 11);
INSERT INTO public.star VALUES (12, 'Upost', 12, true, 12);
INSERT INTO public.star VALUES (13, 'Osilst', 13, true, 13);
INSERT INTO public.star VALUES (14, 'Uposst', 14, true, 14);
INSERT INTO public.star VALUES (15, 'Oasdst', 15, true, 15);
INSERT INTO public.star VALUES (16, 'Upsosst', 16, true, 16);
INSERT INTO public.star VALUES (17, 'Oasasddst', 17, true, 17);
INSERT INTO public.star VALUES (18, 'Upsdt', 18, true, 18);
INSERT INTO public.star VALUES (19, 'Oaassat', 19, true, 19);
INSERT INTO public.star VALUES (20, 'Agaspsdt', 20, true, 20);


--
-- Name: dimension dimension_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension
    ADD CONSTRAINT dimension_name_key UNIQUE (name);


--
-- Name: dimension dimension_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension
    ADD CONSTRAINT dimension_pkey PRIMARY KEY (dimension_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

