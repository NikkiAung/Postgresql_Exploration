PGDMP                      |            rental_estate    16.2    16.2     ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    25563    rental_estate    DATABASE     o   CREATE DATABASE rental_estate WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE rental_estate;
                postgres    false            �            1259    25604    web_visitor    TABLE     I  CREATE TABLE public.web_visitor (
    visitor_id integer NOT NULL,
    visit_date_time timestamp without time zone,
    ip character varying(45),
    device character varying(100),
    browser character varying(100),
    country character varying(100),
    city character varying(100),
    page_visited character varying(255)
);
    DROP TABLE public.web_visitor;
       public         heap    postgres    false            �            1259    25609    web_visitor_visitor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_visitor_visitor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.web_visitor_visitor_id_seq;
       public          postgres    false    232            0           0    0    web_visitor_visitor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.web_visitor_visitor_id_seq OWNED BY public.web_visitor.visitor_id;
          public          postgres    false    233            �           2604    25618    web_visitor visitor_id    DEFAULT     �   ALTER TABLE ONLY public.web_visitor ALTER COLUMN visitor_id SET DEFAULT nextval('public.web_visitor_visitor_id_seq'::regclass);
 E   ALTER TABLE public.web_visitor ALTER COLUMN visitor_id DROP DEFAULT;
       public          postgres    false    233    232            (          0    25604    web_visitor 
   TABLE DATA           t   COPY public.web_visitor (visitor_id, visit_date_time, ip, device, browser, country, city, page_visited) FROM stdin;
    public          postgres    false    232   &       1           0    0    web_visitor_visitor_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.web_visitor_visitor_id_seq', 300, true);
          public          postgres    false    233            �           2606    25933    web_visitor web_visitor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.web_visitor
    ADD CONSTRAINT web_visitor_pkey PRIMARY KEY (visitor_id);
 F   ALTER TABLE ONLY public.web_visitor DROP CONSTRAINT web_visitor_pkey;
       public            postgres    false    232            (      x��]ۮ,�q}>���j�x�6� N��E�OlÉ�q|�$�Z����v�`$�&�j�*J�x��.��ۛ��s7)[��c�"�m��&[�_�������_~��o�����O���/_����޿���?�?�������/��ͅ[�[���6ii�m��c�������_~��_-�csb땛����n�e+n�>������/_~����|��o�Â�A)o"7/7ɏ�~m-[M�b��b���t�o.ߒ����������|��_���u|3�ﾽ����񽯙�-�f�cL�5��������S��rZ���M�͕[����[���U��b���cEW�\�a���E�e�f��&N��{�r>�6�o��p��m���^�W���E��Qܸ��v�q�A/��AOS��E����������>E�:��E���y�]�醴Ij/H<�T-�Wvü������m2�MFl2�[�cI��OU��/��KV�����)��c�����O���@#��Չ^��� ���fs�<VU?��&zÞ�f�I)�U�&*e�{2O�Jj�����y��˻��m����ś�aMz�z�I�>Ƥy�6}w�%��6�F9���'��|s�x?���%���u��u�jN�j4�Ï�E�zD�c�jDqCr��~{t�~���7�o�Y��k�M�_����G"��[Ms۰O|��P�_z��c�#�1������X�Z��1�U�?�j�5�rs�Ȝq�@5u���NGJ�j��f>:`B���+�����j���9�k|���IV�t������[)>�F��dY����ɥl*�o��,�'�Q�N� 7n��z��nʫQ�=��_�zA&�OfT���g�=�Յ��}��O�(��H>�jQEl�Nr��Շ�AO�Sp7?����J�i��}{d?�Ajd'Q�b�>�e�?������T�0nʇMW�^��A��i	
��O����}Y��������9By�&5 ��%w�Yy�zEI�Hʺ�7��β�n����T�eO)a���LH�A�q��1n��4aE�x���Y\�r���]�Ij���a�[{��|�t�	i.=.��{�ĥ��.Rqԋ-Mȏo׿S ����|�G�㴦f��G��(�6��ӏ1c$tg��d��7jQ�{���#%*pt��T���k�h��b��V9e���5��&sq$
o��ǩ8�n�rQ|!���"m�#=>�;z�z���J�q�j����:$w���7��>}xSS��0���Ρ\�;�L�V�f0�Ba��c�KL@|˴�\�j%��*b���gS,�$-���5%r&Ew���ø�de�J���[�\�8\yM��WĀ��je>����^�r0|A<P���⵨�'G�˩��k��px0B�M���d��J�rLV��C�X#�"ۓ<�d��͍*aZ�� Q?|�V+fǆ�QDf<O���֟�;�� ]�S�D1�P��Ld��;�y����P��SKϱ�8$呌�ُ�������U�Q��'r�`����4��׾ G;�dd�"���Ԍ>X�E:�������ǩ�P�����u"(��W�\�~^�è���%d%�K�:yTGZ�!�yZUݲa] k�\���&�D����zVo ���c����-�D9��e���/�P&�v�lM����E��ć�g����8�iqS����ȗ��|d!]�#�(ׄ���X�P�|��\&b	�H�Po*��eFI��Eb%n%��#���Xnr��7��Y��?$4o��Wd�:I��<7�t]�q��:�q>K��j*�#����,�, Μqg���9c�	�;
�`ю8X��Ɋt�Z��&L��[���d��ԉ`�b�3�:��p�_H�0��
��u��'���#RC�0��i��T���:H:d��RcP�T*bX�u%|p���p��32��I��J����$��@A���3�x�����K�l*܎hv,���N+N5�Xn2( ��U���T��=�mu��b�a�q���rrosa��DM��j�Фf�Z	�ȟ"n_��&�(P��w�>{�P�3TTg�̞�G�'r��n�M���(���V�%%���M��fp��h�!���=mTF�Yjx7��E��-,I�3m�34�
�R,	�Nc�Ya4)9�3�j�z�c���9�j-ӆ;)�V��P:�t�����ssڝ��J����~~f>XE�r�֎��Q��>�|�Kq^��M/'�]4�R�B1�d���^�g���D���4��i�Z�\gk��g�H-/0�^��F��O2���	�e���T*���\�t�7'����3��A���9qy��Z(�!<>Mz��,CD���e&�O�2�l�*$�s���nK���a�c]��Z`����8e���cc"}���aHD�5g"�j�(;��:H2�w,�ЈW M
�k<����[v�u��\�3���+u���A�3Z�0u�Py�Ug���H�г��[�`�����|9ґ��e�x@�ЈBLzI� �I�x�<�@����G�_8�#L	�`!T|=�N{S��Ĥ�
1��8�rD�E��,@2�_�}&��T�	+�kLQh�(:�E9XO�OG��!-F�_�L�p�mYIB,�'��Ǌ�X�ؤP�G�p�dRG&Y���`��8D8��~�?�������$Z���O�Y�w�b�d6
���MǛ)�y~'�*�B���ks�R�/�p�!o�zÂ����(xLV��E`>��5�"�x�0.t�HO]�p�+68�E��K�`Ye���@	2]O�>'�0�p��3ڎ�#9����Y�잣�yҩ��,=�B� %�e�o��X��٫�M	�x@N��(1վ��W�X��XJ����0$��=������T��z*�5rlܑ���	���p��eJ����VC̋���^H� �H��]��r�Κ0���^h������B�p!_,{���[�MVan�M�5�T�@(ކ����&���a�!�����K�&�)af�"]{-V��/��Y��{)cE$�`=�zVo�ל�p���/��_ a\1XK�'U�;��T[�BN�J(r��I�#E*|4-
Y��ή��`Ukv�f`���7멼x���&u��;Z��t�GeA��sf"����O�
31X0vLs	KgJS��vg�r&Bo������ۓg!0+�l�]��Zj"q<�C$5�����aeћ<�7)N�m9#et���R��^Q�IJS选������ښvX��ć;�d��c�]�dY�`d��)���Z|5�q��H� y�1.��@�6c÷��XDa;S��Q(��v�h{�#Ȏ� 4��Q$r/6+���|*2����׾2@�;�^��y>��=��C�wF���t�Ae@.��|���Ier%�0AzE�>Z���Ӂ�x�� z�CQ����e���ܵ�ɡC*,:!��0�p}�#�	A���{���c3���e'�j��Ε	l�n<\�ɍ��>�t𵏾 �?�C�/�L�/��dh���Vw��)�gU�*'�@�Њ��ZF�#�'̓X]�^E�n���;x�J�r�I:��h���)�?+��g0WQ���즒��S�ݟ��W�F�j�X���_m�I�S 4V��lW�h�BL�*���3U�S6�!�i����w�k�z�$37���)_.sK�*���fk��h���9uT����5ۣ�⋫9Fg��xƊk�� ZG�`��Za�ꜟL�7�Ek�e�^��
K ��i�Д*��x���-J=[g1��?$6W���+�paD'N�}�G�%�Nkݵ�B���})Ԥ� ='��"I��´��P�U;�rnX;��D�ɝ��9��)��S�?�q�C|.���K�S*wQ�q�j��H�Y]�f�OJ�ݘ"ul��Oiϔ��s1���I�j�(��l���-��8(�.7Y�<M-�hJ��I�����["	l�wH*	� �j�r��%	���d�m��P����B�r���DK ��� �?��Q�� _09w��ȝ,D�!rH�\AU�ؔ>��^&�奪�M���i t  *���
������I�%�2�)��;�q�7�$����p�9����;�T�5�<r!�4�S�OM��h������B�o,���W3+�Ի8��YQL1T�8U�~ń��R�o'�/� ,r:�% }E[�q�Y�qښ>* g������l:����A�*�j�����4N:��l��M��R�Jֆ`r4O�S��ϓC����!�c�=����dgS2O��)�)���V���-J(A�4�U�z'��l��ߣ%gg|�'��<��$�"��œ�K��1��v ��w��h�%���y&�in���ArɻH#7�����Չxc<b�o<�1���MI���F�Qєq�`!GyoC� K}���g���׀ |�'�1nӬ�r=�y~��r}H{i�z)��X���͈%rgMFG8�a��=O�>s�x�GײL<xX��[b	��P��财/|���)��<�)Ê�9	q~���sƄ�Ѷ���?��o�!��Wr�9׫�A���`"�{7�!� ������/�xn<X�Z�n�-�8�>,3�[H��׋�6��\��H{w�$+�k�4�/�l�r �����aϮ���1uc`1we��U�܇���\�H0������L���$�����Ώ#0��U���񘳩��6�|�	t�	�<�"R����a}�tZ>L�"��@�-��b��O�L�:M7u��1�CP4/���I�@eQ��/�!�|>�2+#��5ӻ�±1S��|(|�����k(V�D.��>C���d�z祧�O8���S���BZ�R7�{�\��$� �[�i��u� f�����/KIJ�ǒ����MitI��I��2��72��=�E���_}h��h�[A͆�pSˏ_�8WK�z.D>I���o׋�8u��dz:AԺo0��l:�4M=\�M��L��3� 4����d�7?y��e[՝�
�6=�Gg�� �qE�3����o���`w�/Z����=WϪ�+�"��^��b�2,���)D��#/����g�O��is�<$��� f���4�D�XY�ĝ�� ?^�r �3��aM��i%3Z�(?���r�!�c^�uF#��ڋ���g'E��އ "�t�I�ϓ����Ğe"����p�]�ގ��c>з[�:NٚC��b.}�0��A��͢�xO�g�F�mf(���� ����i���������oW����c�^�w6�[@r>p��y�aG�52(C�o�Ǽp�Ë��n�SxF��Ԁ���[�&o��{�,���:ڹ�p�:��͊�A!�+M֯���?�"��G}��C�G�R}��)�ǵ��42%)�Z�@�G0�n�P����m���^�sXazek�*�z�	Ξa�/9�m�0?�hjw�&3�N>��i��&H��l!2~���Ya:�9�h<�(x�e��/Ӱ�}��@��}>J�e��0s��й�U�:�'�D�'k|��DNG<g �Dg;�(�ϐ��y��XS����)^��˔��:P�3�������4��`�����/���VD�G3��Mlf|%�<yӔH�_��ŀ��\{7�W*�L�>�gj�$$�{��7=r�:yU����L)8�t�}�m�r�ft�r�\��xŤ���Lx Ӵg�k�k.�|w�����x�񳻀?�f�¥*�ȕ��� �"�5%C��^��8��P����@�����%)��uL�ҫ��� [�]���_�0������2Ş'���o�F�%�|C!
�=���t�H��虉[���_ǎN�CSY%p�a�x({^�yG�?�M9��-��9�>kSH"N�Y=$!���7��������{Hl�M��f�u����?���5S
     