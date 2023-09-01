-- 테이블 생성
-- 23.09.01 홍재헌 생성
CREATE TABLE member (
  member_id VARCHAR2(20),
  adress_no VARCHAR2(20),
  name      VARCHAR2(15),
  passwd    VARCHAR2(20),
  tel       VARCHAR2(20),
  email     VARCHAR2(50),
  lev       NUMBER(10),
  status    VARCHAR2(10),
  regdate   DATE,
  birthday  DATE,
  adress    VARCHAR2(200),
  CONSTRAINT member_id_pk PRIMARY KEY ( member_id )
);

CREATE TABLE notice (
  notice_no   VARCHAR2(20),
  category_no VARCHAR2(20),
  title       VARCHAR2(100),
  contents    VARCHAR2(2000),
  CONSTRAINT notice_no_pk PRIMARY KEY ( notice_no )
);

CREATE TABLE adopt (
  adopt_no    VARCHAR2(20),
  member_id   VARCHAR2(20),
  notice_no   VARCHAR2(20),
  category_no VARCHAR2(20),
  title       VARCHAR2(100),
  contents    VARCHAR2(2000),
  count       NUMBER,
  write_date  DATE,
  ref         NUMBER,
  ref_step    NUMBER,
  ref_level   NUMBER,
  CONSTRAINT adopt_no_pk PRIMARY KEY ( adopt_no )
);

CREATE TABLE care (
  care_no           VARCHAR(20),
  adress_no         VARCHAR2(20),
  name              VARCHAR2(50),
  adress            VARCHAR2(200),
  tel               VARCHAR2(20),
  closeday          VARCHAR2(20),
  mans              NUMBER(10),
  week_open         VARCHAR2(20),
  week_close        VARCHAR2(20),
  week_adopt_str    VARCHAR2(20),
  week_adopt_end    VARCHAR2(20),
  weekend_open      VARCHAR2(20),
  weekend_close     VARCHAR2(20),
  weekend_adopt_str VARCHAR2(20),
  weekeen_adopt_end VARCHAR2(20),
  CONSTRAINT care_no_pk PRIMARY KEY ( care_no )
);

CREATE TABLE reservation (
  reservation_no VARCHAR2(20),
  dog_no         VARCHAR2(20),
  member_id      VARCHAR2(20),
  care_no        VARCHAR2(20),
  regdate        VARCHAR2(20),
  people         NUMBER,
  CONSTRAINT reservation_no_pk PRIMARY KEY ( reservation_no )
);

CREATE TABLE adopt_img (
  img_no      VARCHAR2(20),
  img         VARCHAR2(2000),
  adopt_no    VARCHAR2(20),
  member_id   VARCHAR2(20),
  notice_no   VARCHAR2(20),
  category_no VARCHAR2(20),
  CONSTRAINT img_no_pk PRIMARY KEY ( img_no )
);

CREATE TABLE dog (
  dog_no      VARCHAR2(20),
  dog_kind_no VARCHAR2(20),
  care_no     VARCHAR2(20),
  dog_img     VARCHAR2(200),
  notice_date VARCHAR2(10),
  find_place  VARCHAR2(200),
  kind        VARCHAR2(100),
  age         VARCHAR2(30),
  weight      VARCHAR2(10),
  str_notice  DATE,
  end_notice  DATE,
  dog_big_img VARCHAR2(200),
  status      CHAR(1),
  gender      CHAR(1),
  surgery     CHAR(1),
  etc         VARCHAR2(200),
  adopt_state VARCHAR2(20),
  CONSTRAINT dog_no_pk PRIMARY KEY ( dog_no )
);

CREATE TABLE chat (
  chat_no       VARCHAR2(20),
  member_id     VARCHAR2(20),
  chat_contents VARCHAR2(2000),
  write_date    DATE,
  care_no       VARCHAR(20),
  CONSTRAINT chat_no_pk PRIMARY KEY ( chat_no )
);

CREATE TABLE donahistory (
  donahistory_no VARCHAR2(20),
  donation_date  DATE,
  member_id      VARCHAR2(20),
  CONSTRAINT donahistory_no_pk PRIMARY KEY ( donahistory_no )
);

CREATE TABLE donation (
  donation_no    VARCHAR2(20),
  donahistory_no VARCHAR2(20),
  donation_date  DATE,
  CONSTRAINT donation_no_pk PRIMARY KEY ( donation_no )
);

CREATE TABLE dog_kind (
  dog_kind_no VARCHAR2(20),
  care_no     VARCHAR2(20),
  kind        VARCHAR2(20),
  CONSTRAINT dog_kind_no_pk PRIMARY KEY ( dog_kind_no )
);

CREATE TABLE adress (
  adress_no  VARCHAR2(20),
  do         VARCHAR2(2000),
  gu         VARCHAR2(2000),
  dong       VARCHAR2(2000),
  new_adress VARCHAR2(2000),
  CONSTRAINT adress_no_pk PRIMARY KEY ( adress_no )
);

CREATE TABLE volunhistory (
  volunhistory_no VARCHAR2(20),
  volun_date      DATE,
  member_id       VARCHAR2(20),
  CONSTRAINT volunhistory_no_pk PRIMARY KEY ( volunhistory_no )
);

CREATE TABLE volunteer (
  volunteer_no    VARCHAR2(20),
  volunhistory_no VARCHAR2(20),
  money           NUMBER,
  CONSTRAINT volunteer_no_pk PRIMARY KEY ( volunteer_no )
);

CREATE TABLE category (
  category_no VARCHAR2(20),
  title       VARCHAR2(100),
  CONSTRAINT category_no_pk PRIMARY KEY ( category_no )
);

CREATE TABLE anno (
  anno_no  VARCHAR2(20),
  title    VARCHAR2(100),
  contents VARCHAR2(2000),
  CONSTRAINT anno_noo_pk PRIMARY KEY ( anno_no )
);


-- FOREING KEY 생성

ALTER TABLE adopt ADD (
  CONSTRAINT adopt_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id ),
  CONSTRAINT adopt_notice_no_fk FOREIGN KEY ( notice_no ) REFERENCES notice ( notice_no ),
  CONSTRAINT adopt_category_no_fk FOREIGN KEY ( category_no ) REFERENCES category ( category_no )
);

ALTER TABLE notice ADD (
  CONSTRAINT notice_category_no_fk FOREIGN KEY ( category_no ) REFERENCES category ( category_no )
);

ALTER TABLE donation ADD (
  CONSTRAINT donation_donahistory_no_fk FOREIGN KEY ( donahistory_no ) REFERENCES donahistory ( donahistory_no )
);

ALTER TABLE reservation ADD (
  CONSTRAINT reservation_dog_no_fk FOREIGN KEY ( dog_no ) REFERENCES dog ( dog_no ),
  CONSTRAINT reservation_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no ),
  CONSTRAINT reservation_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id )
);

ALTER TABLE volunteer ADD CONSTRAINT volunteer_volunhistory_no_fk FOREIGN KEY ( volunhistory_no ) REFERENCES volunhistory ( volunhistory_no );

ALTER TABLE member ADD CONSTRAINT member_adress_no_fk FOREIGN KEY ( adress_no ) REFERENCES adress ( adress_no );

ALTER TABLE care ADD CONSTRAINT care_adress_no_fk FOREIGN KEY ( adress_no ) REFERENCES adress ( adress_no );

ALTER TABLE dog ADD (
  CONSTRAINT dog_kind_no_fk FOREIGN KEY ( dog_kind_no ) REFERENCES dog_kind ( dog_kind_no ),
  CONSTRAINT dog_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no ));

ALTER TABLE chat ADD CONSTRAINT chat_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id );

ALTER TABLE dog_kind ADD CONSTRAINT dog_kind_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no );



-- DEFAULT와 COMMENT 추가--------------------------------------------------------------------------
ALTER TABLE MEMBER MODIFY (LEV NUMBER(10) DEFAULT 1);
COMMENT ON COLUMN MEMBER.LEV IS '0.관리자 1.일반회원 2.보호소';

ALTER TABLE MEMBER MODIFY (STATUS VARCHAR2(10) DEFAULT '0');
COMMENT ON COLUMN MEMBER.STATUS IS '0.가입승인 1.가입미승인';

ALTER TABLE MEMBER MODIFY (REGDATE DATE DEFAULT SYSDATE);  -- 오늘 날짜 기본

ALTER TABLE DOG MODIFY (GENDER CHAR(1) DEFAULT '1');    --체크 여부 - 디폴트 체크 - 수컷
COMMENT ON COLUMN DOG.GENDER IS '1.수컷 2.암컷';

ALTER TABLE DOG MODIFY (SURGERY CHAR(1) DEFAULT '1');    --체크 여부 - 디폴트 체크 - YES
COMMENT ON COLUMN DOG.SURGERY IS '1.YES 2.NO';

ALTER TABLE DONAHISTORY MODIFY (donation_date DATE DEFAULT SYSDATE);  -- 오늘 날짜 기본

ALTER TABLE ADOPT MODIFY (write_date DATE DEFAULT SYSDATE);  -- 오늘 날짜 기본

ALTER TABLE CHAT MODIFY (write_date DATE DEFAULT SYSDATE);  -- 오늘 날짜 기본

ALTER TABLE VOLUNHISTORY MODIFY (volun_date DATE DEFAULT SYSDATE);  -- 오늘 날짜 기본



--ALTER TABLE care drop CONSTRAINT fk_adress_to_care_1;

--DROP TABLE goddog.adopt CASCADE CONSTRAINTS;
--DROP TABLE goddog.adopt_img CASCADE CONSTRAINTS;
--DROP TABLE goddog.adress CASCADE CONSTRAINTS;
--DROP TABLE goddog.anno CASCADE CONSTRAINTS;
--DROP TABLE goddog.care CASCADE CONSTRAINTS;
--DROP TABLE goddog.category CASCADE CONSTRAINTS;
--DROP TABLE goddog.chat CASCADE CONSTRAINTS;
--DROP TABLE goddog.dog CASCADE CONSTRAINTS;
--DROP TABLE goddog.dog_kind CASCADE CONSTRAINTS;
--DROP TABLE goddog.donahistory CASCADE CONSTRAINTS;
--DROP TABLE goddog.donation CASCADE CONSTRAINTS;
--DROP TABLE goddog.member CASCADE CONSTRAINTS;
--DROP TABLE goddog.notice CASCADE CONSTRAINTS;
--DROP TABLE goddog.reservation CASCADE CONSTRAINTS;
--DROP TABLE goddog.volunhistory CASCADE CONSTRAINTS;
--DROP TABLE goddog.volunteer CASCADE CONSTRAINTS;