-- 테이블 생성
-- 23.09.05 홍재헌 수정
CREATE TABLE member (
  member_id VARCHAR2(40),
  adress_no NUMBER,
  name      VARCHAR2(15),
  passwd    VARCHAR2(100),
  tel       VARCHAR2(20),
  email     VARCHAR2(50),
  lev       NUMBER(10),
  regdate   DATE,
  birthday  DATE,
  adress    VARCHAR2(200),
  CONSTRAINT member_id_pk PRIMARY KEY ( member_id )
);

CREATE TABLE notice (
  notice_no   NUMBER,
  title       VARCHAR2(100),
  contents    VARCHAR2(2000),
  CONSTRAINT notice_no_pk PRIMARY KEY ( notice_no )
);

CREATE TABLE adopt (
  adopt_no    NUMBER,
  member_id   VARCHAR2(40),
  notice_no   NUMBER,
  title       VARCHAR2(100),
  contents    VARCHAR2(2000),
  count       NUMBER,
  write_date  DATE,
  group_no    NUMBER,
  level_no    NUMBER,
  order_no    NUMBER,
  CONSTRAINT adopt_no_pk PRIMARY KEY ( adopt_no )
);

CREATE TABLE adopt_img (
  img_no      NUMBER,
  img         VARCHAR2(2000),
  adopt_no    NUMBER,
  member_id   VARCHAR2(40),
  notice_no   NUMBER,
  CONSTRAINT img_no_pk PRIMARY KEY ( img_no )
);

CREATE TABLE care (
  care_no           NUMBER,
  adress_no         NUMBER,
  name              VARCHAR2(50),
  adress            VARCHAR2(200),
  tel               VARCHAR2(20),
  closeday          VARCHAR2(20),
  mans              NUMBER(10),
  week_open         VARCHAR2(40),
  week_close        VARCHAR2(40),
  week_adopt_str    VARCHAR2(40),
  week_adopt_end    VARCHAR2(40),
  weekend_open      VARCHAR2(40),
  weekend_close     VARCHAR2(40),
  weekend_adopt_str VARCHAR2(40),
  weekend_adopt_end VARCHAR2(40),
  map_url           VARCHAR2(4000),
  CONSTRAINT care_no_pk PRIMARY KEY ( care_no )
);

CREATE TABLE care_admin (
  care_id           VARCHAR2(40),
  care_no           NUMBER,
  passwd            VARCHAR2(100),
  CONSTRAINT care_id_pk PRIMARY KEY ( care_id )
);

CREATE TABLE reservation (
  reservation_no NUMBER,
  member_id      VARCHAR2(40),
  care_no        NUMBER,
  regdate        VARCHAR2(100),
  regtime        VARCHAR2(100),
  people         NUMBER,
  status         VARCHAR2(40),
  CONSTRAINT reservation_no_pk PRIMARY KEY ( reservation_no )
);

CREATE TABLE dog (
  dog_no      NUMBER,
  care_no     NUMBER,
  notice_date VARCHAR2(10),
  find_place  VARCHAR2(200),
  age         VARCHAR2(30),
  weight      VARCHAR2(10),
  str_notice  DATE,
  end_notice  DATE,
  status      VARCHAR2(10),
  gender      CHAR(1),
  surgery     CHAR(1),
  etc         VARCHAR2(200),
  adopt_state VARCHAR2(20),
  dog_kind    VARCHAR2(100),
  CONSTRAINT dog_no_pk PRIMARY KEY ( dog_no )
);

CREATE TABLE chat_room (
  chat_room_no  NUMBER,
  member_id     VARCHAR2(40),
  care_id       VARCHAR2(40),
  CONSTRAINT chat_room_no_pk PRIMARY KEY ( chat_room_no )
);

CREATE TABLE chat (
  chat_no       NUMBER,
  chat_room_no  NUMBER,
  member_id     VARCHAR2(40),
  care_id       VARCHAR2(40),
  chat_contents VARCHAR2(2000),
  write_date    DATE,
  CONSTRAINT chat_no_pk PRIMARY KEY ( chat_no )
);

CREATE TABLE donahistory (
  donahistory_no NUMBER,
  donation       LONG,
  donation_date  DATE,
  member_id      VARCHAR2(40),
  CONSTRAINT donahistory_no_pk PRIMARY KEY ( donahistory_no )
);

CREATE TABLE adress (
  adress_no  NUMBER,
  do         VARCHAR2(300),
  gu         VARCHAR2(300),
  dong       VARCHAR2(300),
  new_adress VARCHAR2(2000),
  CONSTRAINT adress_no_pk PRIMARY KEY ( adress_no )
);

CREATE TABLE volunhistory (
  volunhistory_no NUMBER,
  volun_date      DATE,
  care_no         NUMBER,
  member_id       VARCHAR2(40),
  people          NUMBER,
  CONSTRAINT volunhistory_no_pk PRIMARY KEY ( volunhistory_no )
);

CREATE TABLE anno (
  anno_no  NUMBER,
  title    VARCHAR2(100),
  contents VARCHAR2(2000),
  CONSTRAINT anno_no_pk PRIMARY KEY ( anno_no )
);

CREATE TABLE dog_img (
  dog_img_no NUMBER,
  dog_no     NUMBER,
  dog_img    VARCHAR2(200),
  dog_1_img  VARCHAR2(200),
  dog_2_img  VARCHAR2(200),
  dog_3_img  VARCHAR2(200),
  CONSTRAINT dog_img_no_pk PRIMARY KEY ( dog_img_no )
);

CREATE TABLE care_img (
  care_img_no NUMBER,
  care_no     NUMBER,
  care_img    VARCHAR2(200),
  care_1_img  VARCHAR2(200),
  care_2_img  VARCHAR2(200),
  care_3_img  VARCHAR2(200),
  CONSTRAINT care_img_no_pk PRIMARY KEY ( care_img_no )
);

-- FOREING KEY 생성

ALTER TABLE adopt ADD (
  CONSTRAINT adopt_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id ),
  CONSTRAINT adopt_notice_no_fk FOREIGN KEY ( notice_no ) REFERENCES notice ( notice_no )
);

ALTER TABLE reservation ADD (
  CONSTRAINT reservation_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no ),
  CONSTRAINT reservation_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id )
);

ALTER TABLE member 
  ADD CONSTRAINT member_adress_no_fk FOREIGN KEY ( adress_no ) REFERENCES adress ( adress_no );

ALTER TABLE care 
  ADD CONSTRAINT care_adress_no_fk FOREIGN KEY ( adress_no ) REFERENCES adress ( adress_no );
  
ALTER TABLE care_admin 
  ADD CONSTRAINT care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no );

ALTER TABLE dog 
  ADD CONSTRAINT dog_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no );

ALTER TABLE chat_room ADD (
  CONSTRAINT chat_room_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id ),
  CONSTRAINT chat_room_care_id_fk FOREIGN KEY ( care_id ) REFERENCES care_admin ( care_id )
);

ALTER TABLE chat ADD (
  CONSTRAINT chat_no_fk FOREIGN KEY ( chat_room_no ) REFERENCES chat_room ( chat_room_no ),
  CONSTRAINT chat_id_fk FOREIGN KEY ( care_id ) REFERENCES care_admin ( care_id ),
  CONSTRAINT chat_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id )
);

ALTER TABLE dog_img
  ADD CONSTRAINT dog_img_dog_no_fk FOREIGN KEY ( dog_no )  REFERENCES dog ( dog_no );

ALTER TABLE care_img
  ADD CONSTRAINT care_img_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no );


-- DEFAULT와 COMMENT 추가--------------------------------------------------------------------------
ALTER TABLE member MODIFY ( lev NUMBER(10) DEFAULT 1 );
COMMENT ON COLUMN member.lev IS '0.관리자 1.일반회원';

ALTER TABLE member MODIFY ( regdate DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE dog MODIFY ( gender CHAR(1) DEFAULT '1' );    --체크 여부 - 디폴트 체크 - 수컷
COMMENT ON COLUMN dog.gender IS '1.수컷 2.암컷';

ALTER TABLE dog MODIFY ( surgery CHAR(1) DEFAULT '1' );    --체크 여부 - 디폴트 체크 - YES
COMMENT ON COLUMN dog.surgery IS '1.YES 2.NO';

ALTER TABLE donahistory MODIFY ( donation_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE adopt MODIFY ( write_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE chat MODIFY ( write_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE volunhistory MODIFY ( volun_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

-- 시퀀스 생성---------------------------------------------------------------------------------------
  CREATE SEQUENCE DOGNUM_seq
  START WITH 1
  INCREMENT BY 1;

--컬럼 수정 코드
--ALTER TABLE chat RENAME COLUMN care_no to care_id;
--ALTER TABLE DOG MODIFY ( STATUS VARCHAR2(10) );
  
--컬럼 삭제 코드
--ALTER TABLE reservation DROP COLUMN dog_no;

--컬럼 추가 코드
--ALTER TABLE care ADD (map_url VARCHAR2(4000));
--ALTER TABLE member ADD (care_no NUMBER);
--ALTER TABLE reservation ADD (regtime VARCHAR2(100));

--FOREIGN KEY 삭제 코드
--ALTER TABLE chat_room drop CONSTRAINT CHAT_ROOM_CARE_NO_FK;

--TABLE 삭제 코드
--DROP TABLE goddog.adopt CASCADE CONSTRAINTS;
--DROP TABLE goddog.adopt_img CASCADE CONSTRAINTS;
--DROP TABLE goddog.adress CASCADE CONSTRAINTS;
--DROP TABLE goddog.anno CASCADE CONSTRAINTS;
--DROP TABLE goddog.care CASCADE CONSTRAINTS;
--DROP TABLE goddog.care_admin CASCADE CONSTRAINTS;
--DROP TABLE goddog.chat_room CASCADE CONSTRAINTS;
--DROP TABLE goddog.chat CASCADE CONSTRAINTS;
DROP TABLE goddog.dog CASCADE CONSTRAINTS;
--DROP TABLE goddog.donahistory CASCADE CONSTRAINTS;
--DROP TABLE goddog.member CASCADE CONSTRAINTS;
--DROP TABLE goddog.notice CASCADE CONSTRAINTS;
--DROP TABLE goddog.reservation CASCADE CONSTRAINTS;
DROP TABLE goddog.dog_img CASCADE CONSTRAINTS;
--DROP TABLE goddog.care_img CASCADE CONSTRAINTS;