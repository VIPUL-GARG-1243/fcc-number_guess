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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(50) NOT NULL,
    game integer DEFAULT 0 NOT NULL,
    best integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('qwerty', 4, 12);
INSERT INTO public.games VALUES ('user_1679642173836', 2, 267);
INSERT INTO public.games VALUES ('user_1679643463015', 2, 545);
INSERT INTO public.games VALUES ('user_1679642173837', 5, 945);
INSERT INTO public.games VALUES ('user_1679642486494', 2, 184);
INSERT INTO public.games VALUES ('user_1679643463016', 5, 760);
INSERT INTO public.games VALUES ('user_1679642486495', 5, 903);
INSERT INTO public.games VALUES ('user_1679642707252', 2, 92);
INSERT INTO public.games VALUES ('user_1679642707253', 5, 843);
INSERT INTO public.games VALUES ('user_1679643537847', 2, 30);
INSERT INTO public.games VALUES ('user_1679642828299', 2, 611);
INSERT INTO public.games VALUES ('user_1679642828300', 4, 85);
INSERT INTO public.games VALUES ('user_1679643537848', 5, 518);
INSERT INTO public.games VALUES ('user_1679642916938', 2, 493);
INSERT INTO public.games VALUES ('user_1679642916939', 5, 822);
INSERT INTO public.games VALUES ('user_1679642985363', 2, 721);
INSERT INTO public.games VALUES ('user_1679642985364', 5, 777);
INSERT INTO public.games VALUES ('user_1679642999309', 2, 899);
INSERT INTO public.games VALUES ('user_1679642999310', 5, 837);
INSERT INTO public.games VALUES ('user_1679643032958', 2, 546);
INSERT INTO public.games VALUES ('user_1679643032959', 5, 691);
INSERT INTO public.games VALUES ('user_1679643175148', 2, 973);
INSERT INTO public.games VALUES ('user_1679643175149', 5, 868);
INSERT INTO public.games VALUES ('user_1679643219954', 2, 658);
INSERT INTO public.games VALUES ('user_1679643219955', 5, 688);
INSERT INTO public.games VALUES ('user_1679643430433', 2, 476);
INSERT INTO public.games VALUES ('user_1679643430434', 5, 994);


--
-- Name: games games_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

