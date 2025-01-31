PGDMP     9    '                z         	   kinopoisk "   12.12 (Ubuntu 12.12-1.pgdg20.04+1)    14.3 Q    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18298 	   kinopoisk    DATABASE     ^   CREATE DATABASE kinopoisk WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE kinopoisk;
                postgres    false            �           0    0    DATABASE kinopoisk    ACL     ,   GRANT ALL ON DATABASE kinopoisk TO gb_user;
                   postgres    false    3055            �            1259    26652    actors    TABLE     �   CREATE TABLE public.actors (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birthday date NOT NULL,
    country_id_of_birth integer NOT NULL,
    best_film_id integer
);
    DROP TABLE public.actors;
       public         heap    gb_user    false            �            1259    26650    actors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public          gb_user    false    212            �           0    0    actors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;
          public          gb_user    false    211            �            1259    26739 	   countries    TABLE     d   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying(40) NOT NULL
);
    DROP TABLE public.countries;
       public         heap    gb_user    false            �            1259    26737    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          gb_user    false    220            �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          gb_user    false    219            �            1259    18378 	   directors    TABLE     �   CREATE TABLE public.directors (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);
    DROP TABLE public.directors;
       public         heap    gb_user    false            �            1259    18376    directors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.directors_id_seq;
       public          gb_user    false    203            �           0    0    directors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.directors_id_seq OWNED BY public.directors.id;
          public          gb_user    false    202            �            1259    18384    filmography    TABLE     a   CREATE TABLE public.filmography (
    actor_id integer NOT NULL,
    film_id integer NOT NULL
);
    DROP TABLE public.filmography;
       public         heap    gb_user    false            �            1259    26695    films    TABLE     �   CREATE TABLE public.films (
    id integer NOT NULL,
    title character varying(45) NOT NULL,
    year integer,
    director_id integer NOT NULL,
    description text NOT NULL,
    trailer character varying(250),
    score real
);
    DROP TABLE public.films;
       public         heap    gb_user    false            �            1259    26645    films_countries    TABLE     g   CREATE TABLE public.films_countries (
    film_id integer NOT NULL,
    country_id integer NOT NULL
);
 #   DROP TABLE public.films_countries;
       public         heap    gb_user    false            �            1259    26674    films_genres    TABLE     b   CREATE TABLE public.films_genres (
    film_id integer NOT NULL,
    genre_id integer NOT NULL
);
     DROP TABLE public.films_genres;
       public         heap    gb_user    false            �            1259    26693    films_id_seq    SEQUENCE     �   CREATE SEQUENCE public.films_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.films_id_seq;
       public          gb_user    false    218            �           0    0    films_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;
          public          gb_user    false    217            �            1259    26658    films_watched    TABLE     �   CREATE TABLE public.films_watched (
    user_id integer NOT NULL,
    film_id integer NOT NULL,
    is_favorite boolean NOT NULL,
    viewed_at date
);
 !   DROP TABLE public.films_watched;
       public         heap    gb_user    false            �            1259    26593    genres    TABLE     a   CREATE TABLE public.genres (
    id integer NOT NULL,
    name character varying(20) NOT NULL
);
    DROP TABLE public.genres;
       public         heap    gb_user    false            �            1259    26591    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          gb_user    false    209            �           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          gb_user    false    208            �            1259    26665    profiles_photo    TABLE     �   CREATE TABLE public.profiles_photo (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    size integer NOT NULL,
    uploaded_at timestamp without time zone
);
 "   DROP TABLE public.profiles_photo;
       public         heap    gb_user    false            �            1259    26663    profiles_photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profiles_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.profiles_photo_id_seq;
       public          gb_user    false    215            �           0    0    profiles_photo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.profiles_photo_id_seq OWNED BY public.profiles_photo.id;
          public          gb_user    false    214            �            1259    18394    scores    TABLE     �   CREATE TABLE public.scores (
    user_id integer NOT NULL,
    film_id integer NOT NULL,
    score real NOT NULL,
    created_at timestamp without time zone
);
    DROP TABLE public.scores;
       public         heap    gb_user    false            �            1259    26760    shots    TABLE     �   CREATE TABLE public.shots (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    film_id integer NOT NULL,
    size integer NOT NULL,
    uploaded_at timestamp without time zone
);
    DROP TABLE public.shots;
       public         heap    gb_user    false            �            1259    26758    shots_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.shots_id_seq;
       public          gb_user    false    222            �           0    0    shots_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.shots_id_seq OWNED BY public.shots.id;
          public          gb_user    false    221            �            1259    18411    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    main_photo_id integer,
    created_at timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    gb_user    false            �            1259    18409    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          gb_user    false    207            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          gb_user    false    206            .           2604    26655 	   actors id    DEFAULT     f   ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    212    211    212            1           2604    26742    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    219    220    220            +           2604    18381    directors id    DEFAULT     l   ALTER TABLE ONLY public.directors ALTER COLUMN id SET DEFAULT nextval('public.directors_id_seq'::regclass);
 ;   ALTER TABLE public.directors ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    203    202    203            0           2604    26698    films id    DEFAULT     d   ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);
 7   ALTER TABLE public.films ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    217    218    218            -           2604    26596 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    209    208    209            /           2604    26668    profiles_photo id    DEFAULT     v   ALTER TABLE ONLY public.profiles_photo ALTER COLUMN id SET DEFAULT nextval('public.profiles_photo_id_seq'::regclass);
 @   ALTER TABLE public.profiles_photo ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    215    214    215            2           2604    26763    shots id    DEFAULT     d   ALTER TABLE ONLY public.shots ALTER COLUMN id SET DEFAULT nextval('public.shots_id_seq'::regclass);
 7   ALTER TABLE public.shots ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    221    222    222            ,           2604    18414    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          gb_user    false    207    206    207            �          0    26652    actors 
   TABLE DATA           h   COPY public.actors (id, first_name, last_name, birthday, country_id_of_birth, best_film_id) FROM stdin;
    public          gb_user    false    212   eV       �          0    26739 	   countries 
   TABLE DATA           -   COPY public.countries (id, name) FROM stdin;
    public          gb_user    false    220   �]       �          0    18378 	   directors 
   TABLE DATA           >   COPY public.directors (id, first_name, last_name) FROM stdin;
    public          gb_user    false    203   `       �          0    18384    filmography 
   TABLE DATA           8   COPY public.filmography (actor_id, film_id) FROM stdin;
    public          gb_user    false    204   Dd       �          0    26695    films 
   TABLE DATA           Z   COPY public.films (id, title, year, director_id, description, trailer, score) FROM stdin;
    public          gb_user    false    218   {e       �          0    26645    films_countries 
   TABLE DATA           >   COPY public.films_countries (film_id, country_id) FROM stdin;
    public          gb_user    false    210   #}       �          0    26674    films_genres 
   TABLE DATA           9   COPY public.films_genres (film_id, genre_id) FROM stdin;
    public          gb_user    false    216   W~       �          0    26658    films_watched 
   TABLE DATA           Q   COPY public.films_watched (user_id, film_id, is_favorite, viewed_at) FROM stdin;
    public          gb_user    false    213   o       �          0    26593    genres 
   TABLE DATA           *   COPY public.genres (id, name) FROM stdin;
    public          gb_user    false    209   +�       �          0    26665    profiles_photo 
   TABLE DATA           N   COPY public.profiles_photo (id, url, owner_id, size, uploaded_at) FROM stdin;
    public          gb_user    false    215   ނ       �          0    18394    scores 
   TABLE DATA           E   COPY public.scores (user_id, film_id, score, created_at) FROM stdin;
    public          gb_user    false    205   ߋ       �          0    26760    shots 
   TABLE DATA           D   COPY public.shots (id, url, film_id, size, uploaded_at) FROM stdin;
    public          gb_user    false    222   ��       �          0    18411    users 
   TABLE DATA           \   COPY public.users (id, first_name, last_name, email, main_photo_id, created_at) FROM stdin;
    public          gb_user    false    207   ��       �           0    0    actors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.actors_id_seq', 100, true);
          public          gb_user    false    211            �           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 65, true);
          public          gb_user    false    219            �           0    0    directors_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.directors_id_seq', 100, true);
          public          gb_user    false    202            �           0    0    films_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.films_id_seq', 100, true);
          public          gb_user    false    217            �           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 19, true);
          public          gb_user    false    208            �           0    0    profiles_photo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.profiles_photo_id_seq', 100, true);
          public          gb_user    false    214            �           0    0    shots_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.shots_id_seq', 100, true);
          public          gb_user    false    221                        0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 100, true);
          public          gb_user    false    206            B           2606    26657    actors actors_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            gb_user    false    212            P           2606    26746    countries countries_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_name_key;
       public            gb_user    false    220            R           2606    26744    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            gb_user    false    220            4           2606    18383    directors directors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            gb_user    false    203            6           2606    18388    filmography filmography_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.filmography
    ADD CONSTRAINT filmography_pkey PRIMARY KEY (actor_id, film_id);
 F   ALTER TABLE ONLY public.filmography DROP CONSTRAINT filmography_pkey;
       public            gb_user    false    204    204            @           2606    26649 $   films_countries films_countries_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.films_countries
    ADD CONSTRAINT films_countries_pkey PRIMARY KEY (film_id, country_id);
 N   ALTER TABLE ONLY public.films_countries DROP CONSTRAINT films_countries_pkey;
       public            gb_user    false    210    210            J           2606    26678    films_genres films_genres_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.films_genres
    ADD CONSTRAINT films_genres_pkey PRIMARY KEY (film_id, genre_id);
 H   ALTER TABLE ONLY public.films_genres DROP CONSTRAINT films_genres_pkey;
       public            gb_user    false    216    216            L           2606    26703    films films_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.films DROP CONSTRAINT films_pkey;
       public            gb_user    false    218            N           2606    26705    films films_trailer_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_trailer_key UNIQUE (trailer);
 A   ALTER TABLE ONLY public.films DROP CONSTRAINT films_trailer_key;
       public            gb_user    false    218            D           2606    26662     films_watched films_watched_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.films_watched
    ADD CONSTRAINT films_watched_pkey PRIMARY KEY (user_id, film_id);
 J   ALTER TABLE ONLY public.films_watched DROP CONSTRAINT films_watched_pkey;
       public            gb_user    false    213    213            >           2606    26598    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            gb_user    false    209            F           2606    26670 "   profiles_photo profiles_photo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.profiles_photo
    ADD CONSTRAINT profiles_photo_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.profiles_photo DROP CONSTRAINT profiles_photo_pkey;
       public            gb_user    false    215            H           2606    26672 %   profiles_photo profiles_photo_url_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.profiles_photo
    ADD CONSTRAINT profiles_photo_url_key UNIQUE (url);
 O   ALTER TABLE ONLY public.profiles_photo DROP CONSTRAINT profiles_photo_url_key;
       public            gb_user    false    215            8           2606    18398    scores scores_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (user_id, film_id);
 <   ALTER TABLE ONLY public.scores DROP CONSTRAINT scores_pkey;
       public            gb_user    false    205    205            T           2606    26765    shots shots_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.shots
    ADD CONSTRAINT shots_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.shots DROP CONSTRAINT shots_pkey;
       public            gb_user    false    222            V           2606    26767    shots shots_url_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.shots
    ADD CONSTRAINT shots_url_key UNIQUE (url);
 =   ALTER TABLE ONLY public.shots DROP CONSTRAINT shots_url_key;
       public            gb_user    false    222            :           2606    18418    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            gb_user    false    207            <           2606    18416    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            gb_user    false    207            �   q  x�MW]o�8|n�D����|�%3�w�${�-[gY�Rr��_�-��� ����ꎦ�<t����<�V�*��5��V��{�8D���!�q�	d�2�=���u��tA@��tU�����%�k��p_�oݪҤ-�V5�z��]:����s�>wF>��Y�p��?�O���?�2^�t��S�j����_;�Z���k��ߑu,��C.��_U�Jr��U�~+]<Я)�\=׶��d�����n��:�s}	����Z!��x��x�ؤ��$���"�RH�{>t�?w�$�����<=�sO���?#��t%72�L���Mˑ�r��x�% #�s���}�}u{Z�K��d�rFs�Z���:n/���C�_�Z�Ӗ~��4%N!���1��BiO��m��S��"�vU&j T ]��=cby�U�i�A�M/q<D �3ѐE+h����x���2�9�/׌�K�)���K�����Z@@�m�nJy�@f>��E�������q3�[I��F�S�i�$���y7�Y��#��:h�7<G��a@C��)������UX�K�rj��g�)��c����Ȁ�N!��T&`u��˄A�,Z^+S�C*�n��C�Z������(���of�0a�P�yo���
�;�`quŪt�p��o��y�3N0`�[���{��� `��f�!���i�n @���1��Ve]��	)�S���/&���%���K���|G�9�����X��Kw��m+��-��@u@�6����i{�V��'A+t�6��-m���0��rV��e �sR�EU�����*[����5d'�2N��7����m|g0Q��FX��,,ݖ�%�$6g	�!]���,�a�����V�����БWw�?�۴,PAY@�f�tl��6J�f:nq.�����SX�em�1����eH�E�0Qk�m�l��'H�n��Ɂ���M������_�H�e'�W��15�Z�a��S*b�s�x����8�"ȟ�I��Ɖ"�o�p�Sw��g,T�4o� l��-�i`����V��4�cհg���x���g-�ש���m6��'��T"��3��gg~��l�����<,���1�q�e5�}+'L�9�E&�̡ �ÂW��Cꎙ���B��!h��D�*��`��H8�l�����Kx�0E����6�<��I�U����;���2+�� Gp�50�ψ���pH�j�X$���y���8qZF6�t���A�ݞ9�J�F굘�z��thޘ$�Z�Su�\��m,=W�2�#����q6���mŢFS��B���[v�V���>��Edg�:��jk�WD���Y׎�j��;�Gb�	�yq02����M��Gn�G�!aM��$7�|r��eu	2*�O��G��iu5� ��l�H���m��l���b7c��8����<J'ۅ����%Ө��LO9ϙʊ��D��q�́S��-�3�^y�&�� �yf�ղŁ0�)_ӫD�51i�	q`bx�i�F6Z�g<��L	�s�KE�49H(3k��h���x�|!�a:��aq/�!{4��m�w�����bi�og+^�1��Ļxe+��d�+n`��8�@xű><#	y��'��|���]G��P�+��#�?M�G~>^&48��=,y�c-�0�BM�ێW�~����K�ò0��`Г�~;���^vR�&����xDٻ�o�ZT�p.��4��wHi�s�\ǆ�U��?��[o�Ix�D�L�V�BKW�eėw�{��rX�s�
��{���G¡�X�\H�H���Ӽ����O�a*x�59.�?$<o���R�+^      �   '  x�ER�rA<K_��J������c�eHr�E�2;fv��î��]\�M3R�[j�pG:jT�H��HV�#�%�&�ܑ!�`�zbG!�C��Z �� �)<��3XQ/�Ϛ�sxt6��w�O`�{��s���<�
�d��-�켶��&|�s{:
����qAb.j.|h�>����k�%���r�u�!��"����9,�u�PM��M�]&�aK���|����O{BU��?�P�pM�?�QUp�|#:TKOmP	i��$gC`=��'{`,d�k���\�ԱwNb7l;�',
��f�~	�H�Ǣ��d&���aOQ�~lX#�9�ɾ�<�	�9l����	�SG�@X�tF�K�`����l����m�'U���c^���g2XN�&���=�3�K7����՜j�n<�J6�~�R"v�
�~�xa-)�:=�Tb�?u�irUóPE����j
��ƻX�������Mc�|X 1��d�(w��W�'���L�ZFg�%�P+�&�W	��z$��.aM�4��[_]����a����
��      �     x�MU�v9]�>f��^�`c;&�'>3g6ES��B"j5���\5�Ov J���"���ۊz��U|�J�;�[	Ae4݉�'��N�to�L1b�rV=8�={>�N�(׿z�f�f3����=[��о���b�c��������lU2A�������I�n��B?����kI
x���ŕ����g�>�9-�Z��w*)���p��v�n��I	~v���]ZG��'̙�AMW����� *i�_( ~�3��J'tm��zr>�WiB���,�ٟY�)]����Qڌڊ?2M=o�Js��7���Ɗ���,d ��]Z�2ȉ}��3k�IN�Cɯ�~�u,9�৶�X�n��aUo��l��޹�
_Pc(�4QY������ets��w�U�� `�v*+�cb��!�a#�<^��h����-����`���!���� "�|�g�'�8��a�bAJ�0Щ�dPyF�>&�9��U��M ��G�-DF�pv���P���+��W�����k�{��谋��tj聡~e'� T��S����fb����IT���5.F*��Td�ؾҒ��EdV#TQ�J�RQЍ1uX�I��ڢmk��
�0�7!�HQ��q�;���&2�@.PD��D-z޹�!�*(�?`��=���4��ʌ~x}1V,bP��(�����FA�~��C��e!��)(+�?Z:s��0B��X�98��A{4�#R|�W��X"�ѪB.�q���')���LK;�(Vٻ��P�x�t3�|ŭ���/4];U��&���{�XM���7q7Tc>5�Fi��=J�0UO�-f�;�c#�	�[$�m,�S��RA�H�e)�=q��}@;UCQ>!���G�.�ou��5����JL����P�U��X�s��q]����|ݡ)f�C)��l�Q��y�OH�jl���}�A��c�4�m\M��z?Zj(����v�q�G��"V0v^�H4����ˇ�j*�Z���(�o���8s�J���C l�	���@�N�򿿔R�
��      �   '  x�%��q@1CϨ��g�^�A����	]�B�XaSڡ!���K�lAM�x���H�d}*zd12�.���{�F$���+~�+��G��ԍ�,��@���AI*ݍT�e0#�,�bR��ϫ��K��П�#?���/��Q-alZ7�iv��Wi?>��PnF~�3Xw�� ��.u�-j���/�f�8-[3�F/OM
o�e�q��܎��6���+3d���٩=�M���m�������?FƐȤ����z�7���e[�e�y`ȡ�=W����^br�,�L��b{�(�� �P~V�      �      x��]Is�H�>'~N}��b��Cm�fa����4��$L� M ����ykf��TU���5��"�̷|�{Kf���C3t��]�ٌ}���3���s�͋�������m�U��6u?4uX�W�,|[��z���&�7�q��:�V��þ�n�{�p��V��f�}Շ�f5��p��f��}�i��M5ߌ�<�n�-u�/�U;�Q�T�q_�֫��î��'O�OC���٪�>���'�j�?��gq�4�,M��yWow�����}�j`�=�n17���װ�����G��j%�z3�+��,|��/���Z�Ѯ�['�n�j¡iW�zl��Z7��_5�5|�e`ߺ������HV��|�|a�ݾ��#�e���
�d\�&h���+��e��F;��[UO?��M9K� 1��e����,J��fS�dA������"�R�C^��5�	�����mC���U׮A�-*	�3D�m��|F��j@�)~C��G���4��;���db�|^�u������{����<K��o�qZ�� 5$��m77Ef�ˆWeU!�7	�ɏ�ht��`mC��6��5���$�Ta�����ٯU��Q�x�D�o�M3��3�C��w�)ԫ��H�W��>�r���sg��_�q�������"���F��ҍ����E����0[�=���na�o�~W�r��BP��R����V��V�<;�%f���^�{��m=x�߃�������
�1���m��Wj8�{%�>�U{
{-k�7�T�X������T/m�������%��u"��W�!B �H5t��mB�� @�U{�4x;�����H��n�\a-����tvm�Y���n�#+�L�_�뱙�����&�#CCO�[���=�i�o�m�Ê<��F"�I/aI��v�;]� f��D�<~_�Qr�܃��,��w���y�|�1p�+�_+���Fs���������BǄ�r����81�G������!/�x@v�n=^����k�n��rAG���Re����6���Ct�>Pu� %�>���(AU��q��DR��� ��y���@g�)+�x���)��N�l����v����8��v��Aa^p�
��WÚ�-��W/���kY?|v?�x.���"-'r
��
m�Xda幧lDe):�f�¨ч^C(ҳ��'�x��@���?�n�P9�_i^!�����L�bi�RPw:�0��k�����o��5���뽷:w� d�G8�6�%�V�2�
)�Y ��,��@V�J��m^4V�5�pN9���.�s��,\��a=��&(�լ��)�Ę�U�Ƚ\qT���Aܰo����
�F� �a�m�)� 0�Tc�@�|�D��ZA2-�M�F�b��HT����C+��Hb5��zS7W��BZ��n�}3��&����G���ȃxa�vk�x1�Ⴠt�� ��5�J^b :���E>�u߬1�g~�b�c*����@4�/�\�t���������a�e�)d�lr�K�u��w��vӟ�q/k�8����v�A���[��lZ���8
f������������އ=�s+I��tW ;��z�d�S$��2t𰩻]��n~��LQ�����Ԛ��|�/.s#�!lq�~"@p�w�&Ã-!v��VّM[0V�7ޢ�1|�ُ��Hu�6 �m��V�a=%��3���c2כ�m��ef\����>������x3��D���G�L��_B+�S_�Z	qv�h��dP�4F*�~*8��+Q��T�\V �)���`	��/(�YN�o1�KL4 R���+p�
qj6���RS��$��Fg��m���%F�02\��9���1n�^�o���R���u���9����Mi^����A�`z_�&I�p��3�;')\xq��q ��C�S�@u�u���M��7��y `=GL~Ŏ�Y�Xb�����;�X:R	����28R�:'|���Q*v"�n�t�,�D���V>r�m5n��u q`fݝ*Y���w:���ba��#�-%���%��]Ģ_!�؂����}(<����4�C��`��,|E�A�!��I~�d=#�<т	�6�*�%�����֒`�8y�"+l��#�G��8�P�W�Z��G��m��¦�ӬAߗp��=[��H*���`uP͙x���2�9��o�=���h�e��l��4��m��8�;�ђ	�ƺ�o�ȥ&2�i�H���EIO2T�dHx�D�n14zt�:�VT�v���bMĳi���7��C4��n)���?���	5�#���_�O�ỎK��(�9���P��L��F����o=\m��!���E��#"�L�S���4?:�/Q`��sS}��M�N�`1�P��w���_ �W�曁��nτڕ��2X�5��>��P#�JQ5�c��h"���3`h�6��`�j��0NT���)��kn(��r�$�rl g���߀���jQ?|x�~�����#�QԜ����|�-��)�@�	���P)�5l�]�jtQcŤ[(�ڸ�C�c?݆�����������r6�/�dn��H����0�����U"��v�v6��rv�,�$���Eзl��K��c�0�,�}iP��i��Ae�ɪ��Е,qa� rLD���MJ�@e)Zy��F6a���$��"�pd����kWR�V kq�*ұ �̈�"m��{9��<�qឪ���U�ſ����ѓ6��1.uت���$(kS�:{u�u^k{wV -� z�B��n��l�S[�����������բ�`}�tH+��H�7��F�%��!?{����� �X�>((��Y���+*�Z�-,�q-JSP����8uHm��u-xe[q�tb�\��,���o��.`�F�G2Z�F^�N�F�%����]fO85I4�E(��+чU5U$�Ar��j���e�i�dv�a癩T,���z�
�L���R��lq����!<�����ݛR�GTE���t�	��)��\yeK�a�Erg�9�DHrs�,L�^�U~	`r�� �ꔺ8A4[�b����wOM�����
��Z!�NW�=p\
�V�GR��$k�<8�Y�I��jf/מ$ �)K��(�gP� 簾���2H��K�e"��XH@�
��w^Bn�v��+1�U����|�R�襯m)�p%j_<%yܔA��Zu���w��	���#n� ��&�&�r��3z&�q%-5�r��ʕGΎ�,���B�/0���;:��Q/�^�_J7U��&~�X�+�?���f�l���JX:�m�	F)��)�b���s���^�����nx��pZ�⌝¦�=A@�c�+A|���>�JS�Z��' � ��da8���EJ�H\�D<���-�u.���Wx7���VE2R� ����Ev.�H	�fI�
7n�n9A?��v�M���ti^+P�,�@��� ��q����͵P��By���70 �
�0�c�R�L��ۓ�w��(c/��V��4�Uk���Y����NS��`f�?p��{���<���QW3������xF��D}�w��������Ы.�;��sb��j�y�sCiatu�D�iěgxf�kcw��; � ��慄���a���0eb~�ڔ���� �)�k��7���w8ҒcM遧Ul�����w����S�����y�H�D��c��|-y�;��E�E,���9��\�/�a��d1,J�W"�E/��ǧ�����4X&2Bs�z�yU�r ����1�hڳ�l���ә[2��L����*�` �d��	��y!%���(!7�h�k���еY�L?F[����K$`�i#�7�8�Kdi6B�,��&$�Z3�m�Ώ��u#�����Nz:x�jw�Z-s����/\s,�����$Z$�f&�Y�2T~$��b_�=6�~�Adkd�zi�T6^n.��T0?�-	�O}�VJ��#e�N� �  m� s����mc�A����h�����I�B�4� �Ý�ʎ�Q���z��l�`��h���pN������=�%=y2�_,p���-u$��,�ycĵ+� �g���t�d�?�e�`	t�h c[bd�R0��J�1�S� ���#�I� Ol�F�n��X;Q՚����k����g
� �aӜ��Ϡ��%��<�|ׁk���gE��
'k�s~�Q��Ϳ/�+=���%i��Q�Y�9�/��9I�9�ɵ�<���|���GK���|�3T	":�0��[v802������o���� K̯hH<(YM\��Sn+�0��E~Dq|��<���h�գĄX(<`N1^ʐ6�y�su�C�~�y�,�� l�ӓ.�,�g|�cd�/3D?\����dM��,̃�('[�v��p$���ݙy�����¼0@���z��'LW\_	�'�|��|ؑkW��b���T�� s��jY��`[�� 9k\�!��"�7"%���SF'��We߰"w*�F�ȴ��2��`]��;�%�	���H�q��.���E���y�C2�����yp��NӞ�]i�F��kB�D�bP������[�W|~0,����8��s��ɔ�4���Y�ǒ� ���4t����Ɲ��"��篞7�P{F[�>~_*R�@��\�r&uR���S�G)=qxo��̶�Uu��S2���w��H�0-�j�{�5���4	���&�g2��.�P�\x�eG�l�(ƺ��D�P(vGx_�:�l�̻n��c՛��,_����M{(���a�C�jl0\Y[KY�e(�c�;�����A�6�s��#[̲8�S�+�lN��&EN��:�s����� ���s�y�/�\ⲳo���K)�����5�j�+spq�V�<	OV%�NLa~�Z��$�ϴ">�Hi5O�،N\�+�5>5yh��Ĩ�q)r>g�`j17)#V�!������[MO�i�ݳ	'�ȸۛd+�
;|�fy��s�M��p�O��<)�b�G��x���PO#�]s ��uYHV.� V���/����x]҅QX��l�(�աVC�>=@�_n��&� �L������#Sj�`�(q�|h����Zf�y�[z<vpm#����0��1�i����e
�ojG2���ju�P`�)'�nA�U�;��	�%12a�u/�����[���r��9��'5�=7���v>��y�}�2	�rm.CM��t��w9����,PkL3u2Y��i�Ň�e�kj4aa\�����E)�-�����"(R�*I�dcnI��;�my8{z
��>1`�=�RTʍ7����<F�O�zh��*	M�zTH�b5��������6V� ��p����f)��W@���s�R��(��F�3�h��lt���t��YV��sͦ�����_���O2av���9U����M���o�X,D�x'`pZ��[�!y|�W��G�DQ�'0W���[��+W�qP��K1&=��^b��6�'sL~�st�^Qel����6:�����B���G�� C��y��(�O����c�V�'�y'��IP&vH�|55�E�W��$w�X�Pr4��K��w�ʸm�� ����rQ%W*%3�N�9₵w�A0҇j&�W���K�TC������;��^]5.�ri�.f��������4Yn��ƅ�3�w%ܰ�ePfX<##:8Q����� w9�N���2?���dȏe������0�N
�	a���`�_B'��Ť��gn_������,�)�	C�����Oj~��U��i�ϻfO�k:���O>��|N!`IϛË 2�<�c��Q��x�&��/��o҂�	�[�N�S�:�Y�@C�F�n�?�;n����=�
�ᗭݖt�V��1�;:%ux�/^��߳ ����      �   $  x�%RA�%1Z�a�Z�������MW�  ��Ɔ�g5p�X�ف��wt���^�g��i^�k�³q]��>7�v[&N���X;�z6<Ң,'R���K���&�����V3�Tg�A�F�����s�T��)ӜQ�:ǜi��E�������Cw~�Zr��q˟/�p��_	G�	�#��a����5WuW��m��G��E�������U��WQ��D`�t�1WD����*�^��]e�����Z Z���"k��G���sZ�ɷ�?���0��"+���? �`T      �     x�%��1CϦ���1�^�������]e�+���z��X,z[�z���,V{������1�6l���uR*���Yb�R�u�4z&�~k]~��2i��z[�
��nE���r��G��T8��谄�.���[%�_�X��J��;�	��n���?ז�C����t1��K�lH��8�;{�p.ъ��|ob�V$E\f�1��c�sV�$��M�1����R֭��Kap�+I����)wDj�E/~KD��0Z}�J Ծ3�*N�      �   �  x�UUI�0;�_2e��s�`�_#����@!�e4}H����K�mS�;$��K������_"�����W���ў:DTX��̤I��VE7^���BD'w�噥�M����w�	I�t�bq�-����K�捥~1�0�7K�ս�ع����QgBkd[#j̇@t�.�Dl֕Y�%�g�W�|��z �N�̣�A�f_�������V��iy�)�K��"F���~���h�,��e�%]7<H�`�Tk�����fo�1Z�y�D^�Jz4�����	����� ��
E�Y��t�T�=Rj!%4���fcjHIu�z�{��TN�ت�VlìH/j������[ܧ�IS[M���5C�Ê=A��v/�� �W�;������|&�X6���h­,�u�B~�)MIuI�/~����>�v���"A��2��-��{�MP���e�,Z���*б"��4�W@C�׾m����>n1���v��Zo |1I��(���#���%E��{��yt�ޱ�a�c���9���@�>�Jm�7�UH��*�	���sSnc����<�;AN�x�c�;�v8I^�	$XNG&ٙ�H�����b:(�����`5s$�wr�ړ�����p�tiq�N�q#����3�(�ֶ�!UG���a��`oH�      �   �   x�-�A�0��W�D�����RR#'��D��J;����-t��,mu�jO�׼���Y'D+�6]��I�t�-tE���>���ɹ0�&.�7
��^����wN��6s��)�1��9�E��GF����jG�n�\(\�fל�7|�6��{"�TD#      �   �  x��Y�r�<>O�Sn�э�U���\([VT�%G˟�<�|� )Q5���غ��ij~\�_���G��۞N?_�N�������;_�_v���ǆ
�֔�Dkr+ҭ�_�y���&���p�_���؆]�!F�gZk�&�ҡen+S�_����y~��}C�`��;���زn�V����t�޶�����Z��a'n�m���r�+��M�&��b�O���~��ew~%�����y�FZ<ķ6�W�r���N�/�K���&6eL�K�9[�*�G��~�N󓿺�nC�N���1��)�J���V�n��������g����aw�n��sQ;�k�Vڢ-E��]�t�>��uސ�(D��7�r��(ŊM�{�H�B�^��K��t܍U��q>��	a�x�i�I3��"�d���o�7�&���P�>"��*��SP������!,�qC?p	����40�q�����t�zM���@4x�����u�P���g��ẫ�OИ�c�PI�^`@����~��J�1:��Z�A���
����~�uw�6h�O����5�\��Z�(������������Al��&�M���w��ki����&�8�O��5 M����k�����c�	ɗҋ�C�)�������.c�m��u�<���q4�+�G ������3v�=�Xv /͓M�b^��۶�(֛d�h�� �'Vl�?1���cΙJ�(2�b(��N�F����`���M�Qt��M�IU&j��e���j\���V�:~��n����?Ε��O����=�c��E��讗��k֓�� ������+@EY�8����Tn6��Z���[���|��oe�6;Q@OJ��e0���9��b�"�R�В-����StTp�KrB��#-ƤEϝU����U�1�S��K"*����Q�-�
�C\� jL���� �p M՘��Id�xeܳ*����0rIÈ8���Sr�lc1�&�G�}K8������&U&gy�X��"�k�-���f���S�@k�\���q�����D�a�&=ah_���8T(iS�Im�QY����Ε��|��"_�Bub^��Xh���ؐ���x���ȡ��|��E���k�l蓭�&��M�r���8Å�FY�mq+ɬ��D<.1B�3����W�┙�P`S�)�����i�b��#� ����C�s�ʊ��E����f��V��y��,7� U���ǯÿ��Oh�O�_�Z�"�O����8Mr/@��ݢg.I`�h8�8y��r�$h�d�4�K<Q��#���S H\��R5� ��H���
�����YS!!6f1*m=�0h��հfS�Ӯ.�<eh�2�[��\�h124:�/ I�����U�� \C���M��>�Eɇ�xqM�9����1lK>����������^ϛ��
dq��(��"u.-��"����R$"�(�^�bȏ6:R]��.��%�2+O�<�J	�@�,��[9��</_x6I�����oB��)o�d&?x�]�.idG��֐k?�E&����!"&����,�xAۼ�5�f���"#�����&����㱘�8�6��_�}��X�x2>��Ć'(YY�T?0�p/c�f>��K�l���I�FVb�pb��BA�v�6 ���Q���M�h�-'������I�l��P12�~"HR��xh�7�ۅ�?�<�;�G���20Bv�g��l�^���ɬ���L�M��4��%���2��3���@�r8�87�I�r"�1]���W���Z����c.�ؑ��t-pt�����{����$�0�)�|/�5�R2O���p��2j$�[�8hL|�l�RI�E���"Dz�Ay�������E��©�K.�/�΄RN1�1≱�.H�� �1C#������q��#��7i�aP� �BP��p>/��7'��h���eL����d�(]���10�����3��q�s����\p��`��'K"�qY9���[@�����^�~�1=��,Ry�K"��RN$�j���R�	�Φ��e�51�%Z�4��I2#���2~D�R���/8s<`d�T���d�w0O��lNm���"��r�Iv�O�G$�.��y������n�*�ơ��h�?� 8�8�C�m�d���[]��3�H>ȩ�$��j�~bC�!g7#��Jq���#tV�q6Οӄ�y�Hi���:��^�D\@��Q�?��?		���b�^���E)�_@U��      �   �  x�MVّ� ��(^�B�c����n��5o�(�ԗ�"uM�+�W�O~ⷖ[G���H�3�g��%nEÒ��Ү�w�wh�#UɸD���-�2����U�U�O�~G�bIF�]���O�m~�Ȗ�^��+���#�"��W��r��m�_xf�Mo6�I��\Z~E�`evOh����]n���c��z$�f]Ͻ'[w�v�`��[j��|�pa�Te�Ya�{�p*�Mɵ�)��c<�,5kK������."� m�݊c
�`0B%ồM*霠�Ǆ�� �$�Gj�2/�?h�hz6�}cᙌ��?�>��@���w�N�x�k�5�.��NYg��e=X�l�A'=��Q������&Q;wB�O��~z�K��>�YW�/�ϊ�%��v��DS�-C`�N/�҉J��
5�G���=�X�!hD^i�% �h�а�sJ�55;n-����H�
�cQ�KA-�ʍ6�R@����B�ŧ_�e{R�ڃ�:X�ܶHa���
�c1#
+���0 &���\�f[�Y�6>�)|�m}��ȝ� ����t��4���Qb�l��Q��i�1�l?0�!���Ν>��F�(8�W���d�< ��ot4��J8igxZL�f ���0;\�D/G�|��#S/P��m+�,h���Me��-�Lz�����G��t�7:�%c9b*3�\gR��tA�)y2�_ѷ�0���g����2.�H�R�-8R�Z�G?�f�Sj�D+��8�S�=޹��K��! u�$Cm����'����תқ^Νa�v��,���� X{�t�S�[w��3�|�ىm�7�i�q�f/B��?f��'"�+��ss�(\EI��;G������ ��/�;x�,�n ��z���ڡ��,�{�F]YKe���e�S�9W��=&�c:��%����C`���z�9Ѓ)�z7������کM���#@Bf� 1�NX�q�f��p���Ðt0&RWς[Yfl��:���^���T�ޕ��a-��s:���<�Jp�υ�/�~(�Vq&2���s�yEd����B��0(�9�	?x��!�u�����Q&��g`�2�y��J� p`o|Ȅ�2A�`󽋸rӕ��q�yfX�j|��gV?3?,�� &�1��|�88?z�߿���/�      �   �  x��Y�n�]�_��윰�ŗ#?2'Q�Fw�iۙ��_OQ)����
@��:�b��v>��OO��?������߯^�ϧ~{|����~m����.e��-ەM+��sk�/��~|��m��.�/Ұ������[��J,����s{<���}���c��ϛ�·�;]�+K+vlג�������ݰ������=��ml�R�8����@a���_W����؟�v���;u.��ŔW�+G��6�]6a*��־Nϟۏwvx?��u�v�K�W`I�1q���k{|�m�������ӯQ�SGٗ��ʺ�e�<�k�j������R�ש?>ٛB�t�eNc�s9zL�v�_��[|>���S�e/d��G]h�k��y\���:V�q<|}>����F���n�6��H�Ю�xm��ǜ:�vA����chc�]�0���(h�z��/�@���c��y'㇇d�vI�H�.=�ޝ�����.�X�_qz`Z��7�1]ï����Bi�C|��&A�
����G?��eb;
6W2(	��`�
ɗ����2�YO���@ �U��$���[6��b%�p$E3�R��6�B���F��DMl��ae�E�6�.�`��Jx�h�2°������x<5�zj��ˆiZ�۟�ۏ���R�=�@s ��Bkr�y�bI�.�C�%�q��z�m�mx�s�:��w�3�)q���*�8��ˀ�mFJC#�Q�\*Y3�◯��*L>�xG���.TN8,�^��q܆�P��B"!��F2�Ix˯�t���n�TX�<X)�.�Ӎ�5eܤ.v>�&M���s���~�򒍬e��*i��(�d���\i����QD��A� sL�θ�.VJ����{b_�ǧ�����^&�ܘ��)�b�p���ƹ8��ǥ�%~\t!��?6N����>{���p�����	v��(��*��/Y[#��6���Y�u\���U%|߾�/�����g�h���<�qp՗/�Aݠ�!n?&�&+A[�]���������QM�C�j�6�o�0���)�؊\l��� Yp�;�� pH��GU��5&#{�/sX�-��Z���
�a#U۞O���a�f�{�d[:�^�C�7�D�RyBBS#��i��>.���sQ�Q L�����)�����T�(�c{(<x� 
d&#�W2ps�]�]r>UE�L���4��Y�2FF܌�Rʢ��Ⱳ���B(�a;a)�����$eYȇu"��Ԏ�x���TK}��KA(^4�����U	`��1"��E�T&\x+רW� Ԁ����,�X�q�E ��w˼�:b-!���]_݌)q�P&/���5��䢫P֯c��x��L���h����s7�f@q����U,k�
]7��Jk�46>�у�b`�K��W� J Ʒx���������p�D��0��QU�W^8ڀC����!Q�+C�d��U�v�*�u�I:�)O�'�Mك���8H� 	yʴKB���y��?��{D
nDB�DS�T?��ˣ�=����l72ȕ�΅�4�}��k�c�d��&����� Fv� .EH���|kB���b(��5���"�x����f�-�ˁ��`K��!C�B��Lw ����W�ʬ�QH�͆�����4C�� �&���*��[��(O��x��{M���u�u�	�qNQ�e�o��4�P�
�XQ���,�m���Y`d�� ��U�4��4
�؀׾>�J�y��X���\|�����i�T�iU�O3$1,��#b7�e�.�n�,��-
ߒSR��vge�Ɲ	>ߞejbаQ#�<L��0z=����|��<c��>���<g�|�.tn�����v68�bM@r1�bmR���!%x�t}N�2�dE..�"N�%Kc�+�i��0����&~W����R������q���&��� ^�G`.YU����T�R{)�kyu�:S'ϩ9���i2�ė�7��A����t�(��P�f�*[�<qL�I��ی�q��������ЅKꚮ��f�&U�]��q\���M�
���`��d��]`*yk���O[.�LwYQȌ����[�'��O��ː��=I ��5º��Z������  ��g��>{Ml�ao)w�R�8��w��2N�*�W���>�.�4�0_��5l�s�G�/���8�Py��Rܔ�q]����TF&�=L27�]p������deҙ���p�Z��B[��+\r�m�����m=�U!.O �a�m���1�`���      �   h  x�eX�v�6|�b~`x�>YVl9�{�$އ}�Hh+9�q�_���u�/�	 �����9{ht�*�`�I�̜���Fo��pR�	u����D��|��.J�$+�8�i��(�A��n�n�)�:��o��7�j:W����:����K��\1���+�[|�e�1;=�����`t8�q���M׽�j�²b�*�U��'%ރ�${w�͵e�ӓ�53��چ�RuzsUǮ��$r}L���K�	���5�?Z���=�0����5�邪;1��C����'ʃ��U�^���[�����9�>E��r��ɨQ��Ϻ�l��r�c��S���=��rϋ=���q<6.�<�ٿE��������VWa�	[�s>};��S�y�A�>v�O�����]��i�&Qq2�:����^Fq�#vwҍ�/�C���Mg7��bz3r�j%�J�x˽Q�}�VՊ��of� Q"{�c�p���.����Z!�;|jT[�!����V-p�)�)h��b*]%���*����Q�ڙ�r�^��,]��#Y jp�����=��Iہ�T�B�8ϧ ҽ 6�2JJ���{elǾ����=�le�Z���h
ߧ{L!;*=��⫽n����i�r�����R1B�xA	D�@T�wd��b_����;��C)�|*5B�)n��ɜ}2=Rm��m���v�U���'�����%����A���}%�o\�-{�������S�~iֳ��Ӆ��hy� �e�@DH��xH_Y�z2�r�ΦSI��Hv".%/e ��F�4�A%q�jXM9��r�pΉ�S4ԃ�.�K����<(��qe'�r@u��@�Kn	���I���J�#
D<��7S��� Bg�
H�=��`�$�(�D���d����=�� �]������l�*"|
e��=����˦a�u�0�ۮ]��DE �W��^|���EH�m	���FN$�$D�h�o��XO���N]:۪[��s�^�SW��Ed�`ҳ�)�Z�!�5IٌI��h�B䏊@���=���od�t��P�M����!���
�}���Q���u����- ���9�2O�'A��GU�����|��#�aߡ�*��&=��v�z e��3� P,��Z��U�]Y�j"�]��L=$(|D!p<���g_;�z$Xs��M���|J ��,FA,ٗ�R�}�z�&^� w�1U� �"�����{>�g`��κ6)&���;�wJ��)��ا+{p����Я`'�4�=����P�FŻ�i��p��9�'� ��B��0�(���sv�k��kt� �AI��z����KOBc��+:���h�`��Ԯ]y�gSթo����Ȉ�u���F�J�t|��I ��N �lǀ��"��j����ʹ�Y�ձ�r!<���AM
jV�6Z8qR�P���$b !���2d�x��0nA�Ce+�Ez�0�~����K��:A2h�v�� �=��IZn�K���N�)���rQM|�^�ϝ� ��H�G�&J)P���ʞeJ�
~7(>u�>R���N�zpP"���zb��]��+�Ƌ�����D[^�I�Ɔ#�a���\������#*%�Gh�+R����@�ȗEjIC�fk����F�{�.�R$�R��]Oyq5���f�,��(٪"��JR�4 �=����"/t�3DCUi][m�<�='lQH T rIy��O'�4ي���Aa�����:�4�t����%1�s�C}�~�f�[B�٢�|<	=�II>2��A=Z���5Ui��a�$�,,ܛ���HT��?2�Đ��*���1�^���8�G� I��G@��.���f0��$����c��]�jh��E]���2Q� ܨ���=��O$rzI>?��]�a�ɶA�r�J��I���3�������t�F�G�5XR.
C,�ɶ�E�F�V�;��V���RW{a�oX
<	D� ��w5Uk�������f6��ϊ*��C�N͉6���,��t�Y6�_�9/7�� r��d�忢��dqR>��צ8�e�F�c,��!��H��KaV��b�	*^B8���ɏ�H��k�p�w�dV���O������q� EV��{���Dqd�B�x��S<lfh"�Ơ�z�4�7<�r����o���i�NW��WL)��`г���z��>�r�ɿH깴`�P�#���	Ҧ �z���ǔ%��~� -�0���|��~L���9ï@��0�" �ȵ;�C���F`f4���U�+�$�����N�Ḳ�;�m��M��xaoRCxg��`�X�`���l*���t]��L���a��S?x���8��[�,��ے%��{��Pc�s_�Zo_�b���� vʦQ���ڒb��(�4W8�o�w����MK`<�L��;���J���n!M�ꆯ	O��fHz�0s\���%�?��c���G���_�A�,�)0 S�t�EIu�3J,�,:�`5�s�y?"H�0k�]�:A�0�^��z쀍x��n����8@��]��hN�A���^.�zRA �1lG����P���o^ұ��ju�������-�=IN��n�ٻƐ!�`Z��1���_#��R����))��=�p��pd=r�V'�zq��d�T�Qt��l�' ��nU�X9��X`��>0_����nx�I����^n7�3�'~9�h����i�Ӡ���_��9,Yo�n4����_xk�6FI~.6n��n!��*����W^��Mq�ΐ7^'���j�����K�����Ƃ,.���5M�#�nvG[_V˪ ��b"(?p�w�Q�Gg�Ԟ�Լ���bZ�%�u0����]$t��=��L1-�`-/	p�}1L��r^�L��9z#/�l��\�罌��7td���=�m�����f~�'��/+H��H��tGaw��z����zƮUӴ>��dZ����Oړ�������gd�����d���v����GG�J����Vm�F�ؒ/�49MrE�l�CO���v%��K�h��e�:2�_)J��`_iҀM<��JX�Q��3����Wi�2��,��7p�q2 +�h�"��94�妸~��n���}z�'��`c^�     