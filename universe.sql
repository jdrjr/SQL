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
-- Name: flag; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.flag (
    flag_id integer NOT NULL,
    name character varying(30) NOT NULL,
    country text
);


ALTER TABLE public.flag OWNER TO freecodecamp;

--
-- Name: flag_flag_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.flag_flag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flag_flag_id_seq OWNER TO freecodecamp;

--
-- Name: flag_flag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.flag_flag_id_seq OWNED BY public.flag.flag_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age numeric(4,1),
    shape text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age numeric(4,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age numeric(4,1),
    life boolean,
    water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(4,1),
    age numeric(4,1),
    constellation text,
    magnitude numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: flag flag_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.flag ALTER COLUMN flag_id SET DEFAULT nextval('public.flag_flag_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: flag; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.flag VALUES (1, 'First', 'America');
INSERT INTO public.flag VALUES (2, 'Second', 'Russia');
INSERT INTO public.flag VALUES (3, 'Third', 'China');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100700, 13.6, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Backwards', 122732, 13.8, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 220000, 10.1, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Cyngus A', 500000, 3.0, 'Radio');
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 60000, 13.2, 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 7000, 1.1, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 2159, 4.5, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 8, 4.5, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 14, 4.5, 4);
INSERT INTO public.moon VALUES (4, 'Titan', 3199, 4.5, 5);
INSERT INTO public.moon VALUES (5, 'Enceladus', 313, 4.5, 5);
INSERT INTO public.moon VALUES (6, 'Tethys', 659, 4.5, 5);
INSERT INTO public.moon VALUES (7, 'Dione', 697, 4.5, 5);
INSERT INTO public.moon VALUES (8, 'Rhea', 949, 4.5, 5);
INSERT INTO public.moon VALUES (9, 'Hyperion', 167, 4.5, 5);
INSERT INTO public.moon VALUES (10, 'Iapetus', 912, 4.5, 5);
INSERT INTO public.moon VALUES (11, 'Ganymede', 3273, 4.5, 6);
INSERT INTO public.moon VALUES (12, 'Europa', 1939, 4.5, 6);
INSERT INTO public.moon VALUES (13, 'Callisto', 2995, 4.5, 6);
INSERT INTO public.moon VALUES (14, 'Io', 2263, 4.5, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', 719, 4.5, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', 293, 4.5, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 979, 4.5, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 946, 4.5, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 726, 4.5, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 1681, 4.5, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 3031, 4.5, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 7520, 4.5, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 7917, 4.5, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4212, 4.6, true, false, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 72367, 4.5, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 86881, 4.6, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 31518, 4.5, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 30599, 4.5, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 738, 4.6, false, false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima a', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Proxima b', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Keplar', 9263, 3.2, NULL, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.9, 4.6, NULL, 4.8, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.1, 4.9, 'Centaurus', 11.1, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 1.5, 0.2, 'Canis Major', 1.4, 1);
INSERT INTO public.star VALUES (4, 'Adhara', 12.0, 0.0, 'Canis Major', 1.5, 2);
INSERT INTO public.star VALUES (5, 'Alpheratz', 2.9, 0.1, 'Andromeda', 2.1, 3);
INSERT INTO public.star VALUES (6, 'Mirach', 0.0, NULL, 'Andromeda', 2.1, 3);
INSERT INTO public.star VALUES (7, 'Keplar-186', 0.5, 3.2, 'Cyngus', 15.3, 4);


--
-- Name: flag_flag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.flag_flag_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: flag flag_country_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.flag
    ADD CONSTRAINT flag_country_key UNIQUE (country);


--
-- Name: flag flag_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.flag
    ADD CONSTRAINT flag_pkey PRIMARY KEY (flag_id);


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
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_key UNIQUE (size);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


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