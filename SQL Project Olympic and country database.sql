PGDMP      *    
            |            olympic_cities    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16546    olympic_cities    DATABASE     �   CREATE DATABASE olympic_cities WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE olympic_cities;
                postgres    false            �            1259    16550    countrydata    TABLE     �   CREATE TABLE public.countrydata (
    iso_code_mapping character varying(10),
    country character varying(100),
    continent character varying(100),
    latitude numeric(10,8),
    longitude numeric(11,8)
);
    DROP TABLE public.countrydata;
       public         heap    postgres    false            �            1259    16547    olympicdata    TABLE     �  CREATE TABLE public.olympicdata (
    olympiad character varying(100),
    olympic_city character varying(100),
    olympic_year integer,
    olympic_season character varying(50),
    total_medals integer,
    total_medals_gold integer,
    total_medals_silver integer,
    total_medals_bronze integer,
    number_committees integer,
    number_disciplines integer,
    number_events integer,
    iso_code_mapping character varying(10)
);
    DROP TABLE public.olympicdata;
       public         heap    postgres    false            �          0    16550    countrydata 
   TABLE DATA           `   COPY public.countrydata (iso_code_mapping, country, continent, latitude, longitude) FROM stdin;
    public          postgres    false    216   �	       �          0    16547    olympicdata 
   TABLE DATA           �   COPY public.olympicdata (olympiad, olympic_city, olympic_year, olympic_season, total_medals, total_medals_gold, total_medals_silver, total_medals_bronze, number_committees, number_disciplines, number_events, iso_code_mapping) FROM stdin;
    public          postgres    false    215   �       �   �  x��V�NI}��
~�VU_��mb.!q";(��/#<��`��f���{j`af�,k��rΩ�}4;0G}Ӝ7fr�/o�-)F	���6���T�F氯��Ȑm�>�Ȉ�W8Ru6���]7����^7+3]��˽�uӷ��ي��
��\�8���x�x��.���J�m��{q'B��T�3��,��)�X�"srd8[JL����7W��fR���`}�o�W猶� �P]lN.E� 2���L��e�_��b�T!�S*��3J�,U�:S���-6��Kj�"� �]�C��KԖ���R��*8Ȁ��N~����������Q"'���[�s����p>`�l	�e�cc\*�'Ss�v���%����` ��~�)��UFNҦ	;�!h���Ȝ�뫻�v�ψT�9� x���lnF��u__���v��~��k��UE<'�����[`��;�C!��A�����0�/V%�#��}j>�7ugF+t����xQ��M��C�xA�l;�����6�K���/��0_�1e���N�2_����v�`�N���� j@��_t�%�U�тv�~��6�2�Xɡۘ��s�`45uW/ꗋm$���E�R2�v��Ϡ���j��Tp�b``i	C���O��x���� ��㦿o.�����8��%�0��g�,;���.q�%�/o{����t�IE��	f�:9�6�3�B�P@�%HoHH�rT�%LTM�����n���X��6��+��k/lQ2����z�Ļ��ڄ	���w9�mm�h~_�`�Xjɫ�e`	�	�8��E#�r��b��E8D	��:����6���J:I-#;5rPy��z��	�xpVZؕ���)�!\��h��2���q����c�pEأ���0R�CN㾾o�~����}�`�x�x��q��x�x[�^_
�~�r����.�+~۪��}�wR      �     x�mW�V�V^��»��#]�/!@�)ǆ��n.�V�%*��Fy���b�f�^�ОHx������M5n��FE�Q5n�Βл�v[CI�O�QQ2}�8n���fQ�$$	��L���	�9� h)J������av��U4��%a'�KCeDbMw�*��u߱hAJ��N.6	��e�/,���O0ݯ7}��|dhbIX�"b�̩HX?aL�?΂�_��fLH�%a��$��S8��b	�����]������'�9��F(H�?lg�W��y��S��� �VĆb6!21N"��;�^[�4�$�W�r��x�g��b<��>K�=��y?4�w�¹S^�8����F��+�Ӌ���>ֳ�֮�5����ɁW`D�>!�����ͪ�n�Sp8P>�n�Խ!ʉ�CY�I=�'�4	��g�<��'��!��gw����n����V��)���T��m$Y�]n�d���Mށ�L�f�T�������#9j��8%j!��q!���u�k�/�Q��#ἂ�k�ԪFuC�����u����U�)���џ����"8�sg����>�߿�|F�9&9v�r�IY�8O��m�����]�J&V��8���i�*��F����p���p8�@cd�Ҕ�DX�[�,$Pl0;L�,R�7'�5����{o_f_l�֯���D���HJ8##�P�'W�m��ʸe		IB:�)��g\m	�%������:�����_=��Ī
g��� �#׌���68ꮿooT��H�I8�Da�e�6��]���l��Ƿfի�y-�i3��"�� "��"9,C�?�9OO��*P�!a&?R�]G*m'~0��t�{����kVu�3,4�_^ÛO���Bz��<{a>Ul�.�s��L��p�w���mU\�ڶ*�@�G%�D�F�4�0N��w+��@-)w<���mƈp����UiЫ�E�}�"a���;��/i�-c��~f�4��H��r.f�q��try�n�C��0/�:�
�0,��ϥ�U`Y�{F?��t�9�_ƌ7����o<�l�`�Wv��{��>�<j�����z��V: �������#¨����ic�	n�;���*�XwH��0�aP�!��k�ly\�9� �KV$�f�><��E"S�[ۍ�_��!a�X�A�<�R� �������Ihg������2�7HA)��|]w{&D�)MB;�%�,+/hT$�23:�m;Τ�yV����3�3���\�H�v���/+H��#�'/06��y�R��z���rF���v���F�f԰>�3Oe���צ{`��C�x���8�REå�r��=J��:�b�U�F�M���Xv�^P��d�z���'��������P���gۙ���_m�E�3IBz�|�/��^:���9�hz��mW7#�|{Fr�}�9v�E�z)����/��u�=��,b!�8b��c~�H��J�}ݜ&DK���o���-�=� �S1��:	D+h�������")|+O�0���>A�/@�Qz     