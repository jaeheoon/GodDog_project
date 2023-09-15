-- 테이블 생성
-- 23.09.14 홍재헌 수정
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

CREATE TABLE review (
  review_no    NUMBER,
  member_id   VARCHAR2(40),
  notice_no   NUMBER,
  review_title       VARCHAR2(100),
  review_contents    VARCHAR2(2000),
  count       NUMBER,
  write_date  DATE,
  group_no    NUMBER,
  level_no    NUMBER,
  order_no    NUMBER,
  CONSTRAINT adopt_no_pk PRIMARY KEY ( review_no )
);

CREATE TABLE review_img (
  img_no      NUMBER,
  img         VARCHAR2(2000),
  review_no    NUMBER,
  member_id   VARCHAR2(40),
  notice_no   NUMBER,
  CONSTRAINT img_no_pk PRIMARY KEY ( img_no )
);

CREATE TABLE care (
  care_no           NUMBER,
  name              VARCHAR2(50),
  adress            VARCHAR2(200),
  tel               VARCHAR2(20),
  closeday          VARCHAR2(20),
  mans              NUMBER(10),
  open              VARCHAR2(40),
  close             VARCHAR2(40),
  volunteer_am      VARCHAR2(40),
  volunteer_pm      VARCHAR2(40),
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
  people         NUMBER,
  status         VARCHAR2(40),
  insert_date    DATE,
  regdate        VARCHAR2(100),
  regtime        VARCHAR2(100),
  care_no        NUMBER,
  CONSTRAINT reservation_no_pk PRIMARY KEY ( reservation_no )
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

CREATE TABLE anno (
  anno_no  NUMBER,
  title    VARCHAR2(100),
  contents VARCHAR2(2000),
  CONSTRAINT anno_no_pk PRIMARY KEY ( anno_no )
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

ALTER TABLE review ADD (
  CONSTRAINT review_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id ),
  CONSTRAINT review_notice_no_fk FOREIGN KEY ( notice_no ) REFERENCES notice ( notice_no )
);

ALTER TABLE reservation ADD (
  CONSTRAINT reservation_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no ),
  CONSTRAINT reservation_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id )
);
  
ALTER TABLE care_admin 
  ADD CONSTRAINT care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no );

ALTER TABLE chat_room ADD (
  CONSTRAINT chat_room_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id ),
  CONSTRAINT chat_room_care_id_fk FOREIGN KEY ( care_id ) REFERENCES care_admin ( care_id )
);

ALTER TABLE chat ADD (
  CONSTRAINT chat_no_fk FOREIGN KEY ( chat_room_no ) REFERENCES chat_room ( chat_room_no ),
  CONSTRAINT chat_id_fk FOREIGN KEY ( care_id ) REFERENCES care_admin ( care_id ),
  CONSTRAINT chat_member_id_fk FOREIGN KEY ( member_id ) REFERENCES member ( member_id )
);

ALTER TABLE care_img
  ADD CONSTRAINT care_img_care_no_fk FOREIGN KEY ( care_no ) REFERENCES care ( care_no );


-- DEFAULT와 COMMENT 추가--------------------------------------------------------------------------
ALTER TABLE member MODIFY ( lev NUMBER(10) DEFAULT 1 );
COMMENT ON COLUMN member.lev IS '0.관리자 1.일반회원';

ALTER TABLE member MODIFY ( regdate DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE reservation MODIFY ( status VARCHAR2(40) DEFAULT 'wait' );    --체크 여부 - 디폴트 체크 - 대기

ALTER TABLE reservation MODIFY ( insert_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE donahistory MODIFY ( donation_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE review MODIFY ( write_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE chat MODIFY ( write_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

ALTER TABLE volunhistory MODIFY ( volun_date DATE DEFAULT sysdate );  -- 오늘 날짜 기본

-- 시퀀스 생성---------------------------------------------------------------------------------------
CREATE SEQUENCE chat_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE chat_room_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE care_img_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE care_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE reservation_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE donahistory_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE review_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE img_no_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE anno_no_seq START WITH 1 INCREMENT BY 1;

-- 시퀀스 삭제---------------------------------------------------------------------------------------
--DROP SEQUENCE chat_no_seq;
--DROP SEQUENCE chat_room_no_seq;
--DROP SEQUENCE care_img_seq;
--DROP SEQUENCE donahistory_no_seq;
--DROP SEQUENCE care_no_seq;
--DROP SEQUENCE reservation_no_seq;
--DROP SEQUENCE review_no_seq;
--DROP SEQUENCE img_no_seq;


--컬럼 수정 코드
--ALTER TABLE chat RENAME COLUMN care_no to care_id;
--ALTER TABLE DOG MODIFY ( STATUS VARCHAR2(10) );
  
--컬럼 삭제 코드
--ALTER TABLE reservation DROP COLUMN dog_no;

--컬럼 추가 코드
--ALTER TABLE care ADD (map_url VARCHAR2(4000));
--ALTER TABLE member ADD (care_no NUMBER);
--ALTER TABLE reservation ADD (regtime VARCHAR2(100));
--ALTER TABLE reservation ADD (insert_date DATE);

--FOREIGN KEY 삭제 코드
--ALTER TABLE chat_room drop CONSTRAINT CHAT_ROOM_CARE_NO_FK;

--TABLE 삭제 코드
--DROP TABLE goddog.adopt CASCADE CONSTRAINTS;
--DROP TABLE goddog.adopt_img CASCADE CONSTRAINTS;
--DROP TABLE goddog.anno CASCADE CONSTRAINTS;
--DROP TABLE goddog.care CASCADE CONSTRAINTS;
--DROP TABLE goddog.care_admin CASCADE CONSTRAINTS;
--DROP TABLE goddog.chat_room CASCADE CONSTRAINTS;
--DROP TABLE goddog.chat CASCADE CONSTRAINTS;
--DROP TABLE goddog.donahistory CASCADE CONSTRAINTS;
--DROP TABLE goddog.member CASCADE CONSTRAINTS;
--DROP TABLE goddog.notice CASCADE CONSTRAINTS;
--DROP TABLE goddog.reservation CASCADE CONSTRAINTS;
--DROP TABLE goddog.care_img CASCADE CONSTRAINTS;