--------------------------------------------------------
--  File created - Jumat-Juli-25-2014   
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
	"NAMA" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
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
	"KEGIATAN" VARCHAR2(100 BYTE), 
	"USULAN" VARCHAR2(200 BYTE), 
	"SUPPORTS" VARCHAR2(100 BYTE), 
	"FK_KARYAWAN" VARCHAR2(10 BYTE), 
	"TANGGAL" DATE, 
	"KETERANGAN" VARCHAR2(100 BYTE)
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
REM INSERTING into WEBBDG.KARYAWAN
SET DEFINE OFF;
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar1','A','a','K1');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar2','B','b','K2');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar3','C','c','K3');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar4','D','d','K4');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar5','E','e','K5');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('kar6','F','f','K6');
Insert into WEBBDG.KARYAWAN (NIK,NAMA,PASSWORD,FK_SUBUNIT) values ('akr7','G','g','K7');
REM INSERTING into WEBBDG.KEGIATAN
SET DEFINE OFF;
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('28',' testestestes','  testestestes','  testestestes','kar1',to_date('21-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('13',' cccccccccccccccccccccccccccccccccccc','ccccccccccccccccccccccccccccccc','cccccccccccccccccccccccccccccccc','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('2','b','b ','b ','kar1',to_date('12-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('12',' adawdwa','dawdadawda ','adwdawdw ','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('21',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('19',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('20',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('22',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('23',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('29',' mencari ikan','pagi pagi berangkat ','mobil pribadi ','kar1',to_date('24-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('27',' ',' ',' ','kar1',to_date('18-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('4',' z','z ','z ','kar1',to_date('12-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('5','t','t ','t ','kar1',to_date('13-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('6',' ',' ',' ','kar1',to_date('13-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('7',' ',' ',' ','kar1',to_date('13-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('8',' d','d ','d ','kar1',to_date('13-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('9',' ',' ',' ','kar1',to_date('13-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('26',' fsfs',' ssad',' ssdasd','kar1',to_date('17-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('1',' a','a ','a ','kar1',to_date('12-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('3',' ',' ',' ','kar1',to_date('12-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('10','z','z ','z ','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('11','asasasa','asasasa','asasasa','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('14',' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa sjdgjbdgjd sdbhjkqbd jhbgwd',' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa sjdgjbdgjd sdbhjkqbd jhbgwd',' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa sjdgjbdgjd sdbhjkqbd jhbgwd ','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('15',' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa sjdgjbdgjd sdbhjkqbd jhbgwd sajvrhqeyjfgnqeuf fkuqhynsfkubqf',' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa sjdgjbdgjd sdbhjkqbd jhbgwd sajvrhqeyjfgnqeuf fkuqhynsfkubqf',' aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa sjdgjbdgjd sdbhjkqbd jhbgwd sajvrhqeyjfgnqeuf fkuqhynsfkubqf','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('16',' ybgbjgbb
jngnkni]
j g jghnjg
j fjf ',' ybgbjgbb
jngnkni]
j g jghnjg
j fjf ',' ybgbjgbb
jngnkni]
j g jghnjg
j fjf  ','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('17',' ybgbjgbb
jngnkni]
j g jghnjg
j fjf ',' ybgbjgbb
jngnkni]
j g jghnjg
j fjf ',' ybgbjgbb
jngnkni]
j g jghnjg
j fjf ','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('18','a
b
c
d','a
b
c
d','a
b
c
d','kar1',to_date('14-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('24',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
Insert into WEBBDG.KEGIATAN (ID,KEGIATAN,USULAN,SUPPORTS,FK_KARYAWAN,TANGGAL,KETERANGAN) values ('25',' ',' ',' ','kar1',to_date('16-07-2014','DD-MM-RRRR'),null);
REM INSERTING into WEBBDG.SUBUNIT
SET DEFINE OFF;
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K1','Func Supp DTB');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K2','Func Supp DTT');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K3','DM');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K4','Service Desk');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K5','IT-SM');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K6','VVIP');
Insert into WEBBDG.SUBUNIT (ID,NAMA) values ('K7','Perf. Mag');
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
