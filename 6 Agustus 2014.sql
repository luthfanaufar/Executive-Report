--------------------------------------------------------
--  File created - Rabu-Agustus-06-2014   
--------------------------------------------------------
DROP TABLE "WEBBDG"."BAB" cascade constraints;
DROP TABLE "WEBBDG"."EREPORT" cascade constraints;
DROP TABLE "WEBBDG"."KARYAWAN" cascade constraints;
DROP TABLE "WEBBDG"."KEGIATAN" cascade constraints;
DROP TABLE "WEBBDG"."SUBUNIT" cascade constraints;
--------------------------------------------------------
--  DDL for Table BAB
--------------------------------------------------------

  CREATE TABLE "WEBBDG"."BAB" 
   (	"ID" VARCHAR2(10 BYTE), 
	"FK_EREPORT" VARCHAR2(10 BYTE), 
	"NO" NUMBER, 
	"NAMA" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EREPORT
--------------------------------------------------------

  CREATE TABLE "WEBBDG"."EREPORT" 
   (	"ID" VARCHAR2(10 BYTE), 
	"FK_KARYAWAN" VARCHAR2(10 BYTE), 
	"EXSUM" VARCHAR2(4000 BYTE), 
	"MABA" VARCHAR2(4000 BYTE), 
	"SI" VARCHAR2(4000 BYTE), 
	"KEPEN" VARCHAR2(4000 BYTE), 
	"DMR" VARCHAR2(4000 BYTE), 
	"LAMPIRAN" VARCHAR2(4000 BYTE), 
	"TANGGAL" TIMESTAMP (6), 
	"TRI" VARCHAR2(4 BYTE), 
	"TAHUN" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KARYAWAN
--------------------------------------------------------

  CREATE TABLE "WEBBDG"."KARYAWAN" 
   (	"NIK" VARCHAR2(10 BYTE), 
	"NAMA" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"FK_SUBUNIT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KEGIATAN
--------------------------------------------------------

  CREATE TABLE "WEBBDG"."KEGIATAN" 
   (	"ID" VARCHAR2(10 BYTE), 
	"KEGIATAN" VARCHAR2(4000 BYTE), 
	"USULAN" VARCHAR2(4000 BYTE), 
	"SUPPORTS" VARCHAR2(4000 BYTE), 
	"FK_KARYAWAN" VARCHAR2(10 BYTE), 
	"TANGGAL" DATE, 
	"KET" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SUBUNIT
--------------------------------------------------------

  CREATE TABLE "WEBBDG"."SUBUNIT" 
   (	"ID" VARCHAR2(10 BYTE), 
	"NAMA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into WEBBDG.BAB
SET DEFINE OFF;
REM INSERTING into WEBBDG.EREPORT
SET DEFINE OFF;
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('5','kar1','<p>A</p>
','<p>A</p>
','<p>A</p>
','<p>A</p>
','<p>A</p>
','<p>A</p>
',to_timestamp('21-07-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),'III','2004');
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('6','kar1',null,null,null,null,null,null,to_timestamp('03-08-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),null,null);
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('7','kar1','<p>8<br />
&nbsp;</p>
','<p>7</p>
','<p>6</p>
','<p>5</p>
','<p>4</p>
','<p>3</p>
',to_timestamp('03-08-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),'10','9');
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('1','kar1','<p><strong>exsum</strong></p>

<ol>
	<li><strong>satu</strong></li>
	<li><strong>dua</strong></li>
	<li><strong>tiga</strong></li>
</ol>
','<p><em>maba</em></p>

<ul>
	<li><em>poin 1</em></li>
	<li><em>poin 2</em></li>
</ul>
','<p>c</p>
','<p>d</p>
','<p>e</p>
','<p>f</p>
',to_timestamp('18-07-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),null,null);
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('2','kar1','<ol>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam kegiatan FTTH yang telah diimplemantasikan di beberapa Witel di Indonesia. Kegiatan ini berupa : pelatihan migrasi FTTH, workshop FTTH readiness, bantuan teknis percepatan FTTH readiness dan bantuan teknis lainnya terkait dengan proses auto provisioning FTTH.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam penyiapan implementasi layanan wifi@id berupa penyiapan tenaga trainer dan functional support.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam pengawalan Proyek ALWAYS ON (AON) yang ada di lokasi Sentul dan Surabaya, adalah terlibat dalam pengawasan proyek dan pelaksanaan uji terima. Sampai dengan saat ini telah dilakukan proses pengujian integrasi system.</li>
	<li>&nbsp;&nbsp;&nbsp;Penyelesaian Closing SM-III SP-03 dan Delivery SM-IV SP-04 dan SP05.</li>
</ol>
','<ol>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam kegiatan FTTH yang telah diimplemantasikan di beberapa Witel di Indonesia. Kegiatan ini berupa : pelatihan migrasi FTTH, workshop FTTH readiness, bantuan teknis percepatan FTTH readiness dan bantuan teknis lainnya terkait dengan proses auto provisioning FTTH.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam penyiapan implementasi layanan wifi@id berupa penyiapan tenaga trainer dan functional support.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam pengawalan Proyek ALWAYS ON (AON) yang ada di lokasi Sentul dan Surabaya, adalah terlibat dalam pengawasan proyek dan pelaksanaan uji terima. Sampai dengan saat ini telah dilakukan proses pengujian integrasi system.</li>
	<li>&nbsp;&nbsp;&nbsp;Penyelesaian Closing SM-III SP-03 dan Delivery SM-IV SP-04 dan SP05.</li>
</ol>
','<ol>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam kegiatan FTTH yang telah diimplemantasikan di beberapa Witel di Indonesia. Kegiatan ini berupa : pelatihan migrasi FTTH, workshop FTTH readiness, bantuan teknis percepatan FTTH readiness dan bantuan teknis lainnya terkait dengan proses auto provisioning FTTH.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam penyiapan implementasi layanan wifi@id berupa penyiapan tenaga trainer dan functional support.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam pengawalan Proyek ALWAYS ON (AON) yang ada di lokasi Sentul dan Surabaya, adalah terlibat dalam pengawasan proyek dan pelaksanaan uji terima. Sampai dengan saat ini telah dilakukan proses pengujian integrasi system.</li>
	<li>&nbsp;&nbsp;&nbsp;Penyelesaian Closing SM-III SP-03 dan Delivery SM-IV SP-04 dan SP05.</li>
</ol>
','<ol>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam kegiatan FTTH yang telah diimplemantasikan di beberapa Witel di Indonesia. Kegiatan ini berupa : pelatihan migrasi FTTH, workshop FTTH readiness, bantuan teknis percepatan FTTH readiness dan bantuan teknis lainnya terkait dengan proses auto provisioning FTTH.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam penyiapan implementasi layanan wifi@id berupa penyiapan tenaga trainer dan functional support.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam pengawalan Proyek ALWAYS ON (AON) yang ada di lokasi Sentul dan Surabaya, adalah terlibat dalam pengawasan proyek dan pelaksanaan uji terima. Sampai dengan saat ini telah dilakukan proses pengujian integrasi system.</li>
	<li>&nbsp;&nbsp;&nbsp;Penyelesaian Closing SM-III SP-03 dan Delivery SM-IV SP-04 dan SP05.</li>
</ol>
','<ol>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam kegiatan FTTH yang telah diimplemantasikan di beberapa Witel di Indonesia. Kegiatan ini berupa : pelatihan migrasi FTTH, workshop FTTH readiness, bantuan teknis percepatan FTTH readiness dan bantuan teknis lainnya terkait dengan proses auto provisioning FTTH.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam penyiapan implementasi layanan wifi@id berupa penyiapan tenaga trainer dan functional support.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam pengawalan Proyek ALWAYS ON (AON) yang ada di lokasi Sentul dan Surabaya, adalah terlibat dalam pengawasan proyek dan pelaksanaan uji terima. Sampai dengan saat ini telah dilakukan proses pengujian integrasi system.</li>
	<li>&nbsp;&nbsp;&nbsp;Penyelesaian Closing SM-III SP-03 dan Delivery SM-IV SP-04 dan SP05.</li>
</ol>
','<ol>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam kegiatan FTTH yang telah diimplemantasikan di beberapa Witel di Indonesia. Kegiatan ini berupa : pelatihan migrasi FTTH, workshop FTTH readiness, bantuan teknis percepatan FTTH readiness dan bantuan teknis lainnya terkait dengan proses auto provisioning FTTH.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam penyiapan implementasi layanan wifi@id berupa penyiapan tenaga trainer dan functional support.</li>
	<li>&nbsp;&nbsp;&nbsp;Dukungan IS SSM dalam pengawalan Proyek ALWAYS ON (AON) yang ada di lokasi Sentul dan Surabaya, adalah terlibat dalam pengawasan proyek dan pelaksanaan uji terima. Sampai dengan saat ini telah dilakukan proses pengujian integrasi system.</li>
	<li>&nbsp;&nbsp;&nbsp;Penyelesaian Closing SM-III SP-03 dan Delivery SM-IV SP-04 dan SP05.</li>
</ol>
',to_timestamp('18-07-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),null,null);
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('3','kar1','<p>asdasda</p>
','<p>sdfsdfsdf</p>
','<p>gse</p>
',null,null,null,to_timestamp('21-07-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),null,null);
Insert into WEBBDG.EREPORT (ID,FK_KARYAWAN,EXSUM,MABA,SI,KEPEN,DMR,LAMPIRAN,TANGGAL,TRI,TAHUN) values ('4','kar1','<p>strdhgcdnhvymj</p>
','<p>strdhgcdnhvymj</p>
','<p>strdhgcdnhvymj</p>
','<p>strdhgcdnhvymj</p>
','<p>strdhgcdnhvymj</p>
','<p>strdhgcdnhvymj</p>
',to_timestamp('21-07-2014 00.00.00,000000000','DD-MM-RRRR HH24.MI.SSXFF'),null,null);
commit;
REM INSERTING into WEBBDG.KARYAWAN
SET DEFINE OFF;
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar9','Sahna Melly Marselina','a','K1');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar1','A','a','K1');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar2','B','b','K2');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar3','C','c','K3');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar4','D','d','K4');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar5','E','e','K5');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar6','F','f','K6');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar7','G','g','K7');
commit;
REM INSERTING into WEBBDG.KEGIATAN
SET DEFINE OFF;
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KET) values ('1','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','kar1',to_date('06-08-2014','DD-MM-RRRR'),'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KET) values ('2','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','kar1',to_date('06-08-2014','DD-MM-RRRR'),'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KET) values ('3','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','kar1',to_date('06-08-2014','DD-MM-RRRR'),'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KET) values ('4','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','kar9',to_date('06-08-2014','DD-MM-RRRR'),'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');
commit;
REM INSERTING into WEBBDG.SUBUNIT
SET DEFINE OFF;
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K1','Func Supp DTB');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K2','Func Supp DTT');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K3','DM');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K4','Service Desk');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K5','IT-SM');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K6','VVIP');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K7','Perf. Mag');
commit;
--------------------------------------------------------
--  DDL for Index EREPORT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBBDG"."EREPORT_PK" ON "WEBBDG"."EREPORT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KARYAWAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBBDG"."KARYAWAN_PK" ON "WEBBDG"."KARYAWAN" ("NIK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KEGIATAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBBDG"."KEGIATAN_PK" ON "WEBBDG"."KEGIATAN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SUBUNIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBBDG"."SUBUNIT_PK" ON "WEBBDG"."SUBUNIT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EREPORT
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."EREPORT" MODIFY ("FK_KARYAWAN" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."EREPORT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."EREPORT" ADD CONSTRAINT "EREPORT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KARYAWAN
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."KARYAWAN" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KARYAWAN" MODIFY ("NAMA" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KARYAWAN" MODIFY ("NIK" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KARYAWAN" ADD CONSTRAINT "KARYAWAN_PK" PRIMARY KEY ("NIK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KEGIATAN
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."KEGIATAN" MODIFY ("TANGGAL" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KEGIATAN" MODIFY ("FK_KARYAWAN" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KEGIATAN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KEGIATAN" MODIFY ("SUPPORTS" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KEGIATAN" MODIFY ("USULAN" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KEGIATAN" MODIFY ("KEGIATAN" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."KEGIATAN" ADD CONSTRAINT "KEGIATAN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUBUNIT
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."SUBUNIT" MODIFY ("NAMA" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."SUBUNIT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "WEBBDG"."SUBUNIT" ADD CONSTRAINT "SUBUNIT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAB
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."BAB" ADD CONSTRAINT "FK_EREPORT" FOREIGN KEY ("FK_EREPORT")
	  REFERENCES "WEBBDG"."EREPORT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EREPORT
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."EREPORT" ADD CONSTRAINT "EREPORT_FK1" FOREIGN KEY ("FK_KARYAWAN")
	  REFERENCES "WEBBDG"."KARYAWAN" ("NIK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KARYAWAN
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."KARYAWAN" ADD CONSTRAINT "KARYAWAN_FK1" FOREIGN KEY ("FK_SUBUNIT")
	  REFERENCES "WEBBDG"."SUBUNIT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KEGIATAN
--------------------------------------------------------

  ALTER TABLE "WEBBDG"."KEGIATAN" ADD CONSTRAINT "KEGIATAN_FK1" FOREIGN KEY ("FK_KARYAWAN")
	  REFERENCES "WEBBDG"."KARYAWAN" ("NIK") ENABLE;
