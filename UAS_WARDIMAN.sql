PGDMP     !                    z            retail    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16404    retail    DATABASE     }   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16410    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30) NOT NULL,
    harga_barang integer,
    stok_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16425 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16415    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jenis_kelamin character(1),
    no_telp character(15),
    alamat character varying(15)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16405    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    nomor_telfon character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16420 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16410    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stok_barang, id_supplier) FROM stdin;
    public          postgres    false    215                    0    16425 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   ?                 0    16415    pembeli 
   TABLE DATA           [   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, no_telp, alamat) FROM stdin;
    public          postgres    false    216   ?                 0    16405    supplier 
   TABLE DATA           T   COPY public.supplier (id_supplier, nama_supplier, nomor_telfon, alamat) FROM stdin;
    public          postgres    false    214   ?                 0    16420 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    217   ?       w           2606    16414    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    16429    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            y           2606    16419    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16409    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            {           2606    16424    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    217                       2606    16435    transaksi fk_barang_transkasi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transkasi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transkasi;
       public          postgres    false    217    3191    215            ?           2606    16440    transaksi fk_pembeli_transkasi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transkasi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transkasi;
       public          postgres    false    3193    216    217            ~           2606    16430    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    215    214    3189            ?           2606    16454 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3195    218    217               ?   x?Uнn?0???)x??????퐁la?b?(B?Q??=ؐ??𝋮?ѐ.|??'0??PF??sX??.f???v??1S??$'?0N?!;Յ?˵?
ː	?xjO???ܯb?2C?i?|L???`????Nrs???;?v?1r.?????/v>????@?4>??Rv?V#?!?a,??3˒`w?.iX??S??????~Y?????@??1?#f???W?7??7eaf         ?   x?EϻA????3D???^?(????&M???+?\??=ai??????	DCL ?lȂX?`??`8?? ???w??\????r6D??\UΆ(W??????rU9?\]?*gC9??1?????         ?   x?e?Aj?0???:A?Hv?,SJJhL?覛_d"[5???W&]x?Y?f?|??>?0!?+閍γɣ?????jC;??????^0??Z:???I:3?7???gS??/?Z??????72?s?du#?.?K?????+¯?h?Q?? ?\?O??]????b-?????n???4????E|6?Zz?[
+DM]??A?'7t?[???󡪪???         ?   x?]?Mn?0?5??D	Yv???T)Yv3??`?(??x????g?=P??\?????L5%h]֊>(???eXrPeT?p?d3t?#??9???H3?a8?"???#TE??ӄ]O?^?????????q{y?aM?x?{?????L??&??ɧ??3?bA%?????%???``??ث?ۄ?MZ:??Z?B?T?'?wbL??p???E9?q??.???a??         ?   x?E?;?@??:{????fw??B?????Hą5???ܪ? ????^s{????SZ??E?ڬI?hZk?mh?v?A{??uX;mG?uZ?@?uY'?D祪?E??eե<???5?lDR?Jފ? )o%o?c??????1H?[?[?$??tmu??R?h?]     