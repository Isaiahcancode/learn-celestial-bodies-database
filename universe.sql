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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    age integer NOT NULL,
    size integer NOT NULL,
    description text,
    asteroid_id integer NOT NULL,
    name character varying(30),
    weight numeric,
    speed integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    age integer NOT NULL,
    size integer NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    name character varying(30),
    weight numeric,
    stars boolean,
    planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    age integer NOT NULL,
    size integer NOT NULL,
    description text,
    moon_id integer NOT NULL,
    name character varying(30),
    weight numeric,
    landed_on boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: plan; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.plan (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size integer,
    description text
);


ALTER TABLE public.plan OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    age integer NOT NULL,
    size integer NOT NULL,
    description text,
    planet_id integer NOT NULL,
    name character varying(30),
    weight numeric,
    moons boolean NOT NULL,
    life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    age integer NOT NULL,
    size integer NOT NULL,
    description text,
    star_id integer NOT NULL,
    name character varying(30),
    weight numeric,
    planets boolean,
    stars boolean,
    galaxy_id integer,
    magnitism integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (10000, 100000, 'This_contains_our_solar_systems', 1, 'milky_way', 100000.80, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4500, 3121, 'A moon of Jupiter, covered by a thick layer of ice.', 2, 'Europa', 48000000000000000000000, false, NULL);
INSERT INTO public.moon VALUES (4500, 3474, 'Earth only natural satellite.', 1, 'Luna', 73500000000000000000000, true, NULL);
INSERT INTO public.moon VALUES (4500, 5150, 'Largest moon of Saturn, with a thick nitrogen atmosphere.', 3, 'Titan', 135000000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4500, 5268, 'Largest moon in the Solar System, orbits Jupiter.', 4, 'Ganymede', 148000000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 4821, 'Jupiter moon with heavily cratered surface.', 5, 'Callisto', 108000000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4500, 5150, 'Saturn’s largest moon with thick atmosphere.', 6, 'Titan', 135000000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1528, 'Saturn moon with ice-covered surface.', 7, 'Rhea', 23100000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1469, 'Saturn moon with distinct color variation.', 8, 'Iapetus', 18000000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 504, 'Small Saturn moon with active geysers.', 9, 'Enceladus', 108000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 396, 'Saturn moon known for large crater.', 10, 'Mimas', 37500000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4700, 2706, 'Neptune moon with retrograde orbit.', 11, 'Triton', 21400000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1212, 'Pluto’s largest moon, discovered by Tombaugh.', 12, 'Charon', 15200000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4500, 22, 'Mars moon with irregular shape and craters.', 13, 'Phobos', 10800000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4500, 12, 'Small Mars moon, less cratered than Phobos.', 14, 'Deimos', 2000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1158, 'Uranus moon with smooth surface and large canyons.', 16, 'Ariel', 290000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1170, 'Uranus moon with dark, heavily cratered surface.', 17, 'Umbriel', 207000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 471, 'Uranus moon with extreme surface features.', 15, 'Miranda', 66000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1578, 'Uranus moon with largest surface area.', 18, 'Titania', 349000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 1523, 'Uranus moon with many craters and large canyons.', 19, 'Oberon', 300000000000000000000, NULL, NULL);
INSERT INTO public.moon VALUES (4600, 220, 'Irregular moon of Saturn, retrograde orbit.', 20, 'Phoebe', 30000000000000000000, NULL, NULL);


--
-- Data for Name: plan; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_speed_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_speed_key UNIQUE (speed);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_planets_key UNIQUE (planets);


--
-- Name: moon moon_landed_on_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_landed_on_key UNIQUE (landed_on);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: plan plan_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.plan
    ADD CONSTRAINT plan_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_life_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_life_key UNIQUE (life);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_magnitism_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_magnitism_key UNIQUE (magnitism);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.plan(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

