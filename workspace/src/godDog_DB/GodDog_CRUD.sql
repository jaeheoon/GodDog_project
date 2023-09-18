-- 230908 재헌 작성---------------------------------------------------------------------------------------------------------
-- adoption_article 입양후기글 등록
-- 입양 후기 게시판 번호 - 1
-- ADOPT에 추가될 정보
INSERT INTO adopt (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no)
  VALUES (5, 'bangry', 1, '귀여운 강아지네요', '강아지 한 마리를 봤는데 너무 귀여워요', 0, SYSDATE, 0, 0, 0);
-- ADOPT_IMG에 추가될 정보
INSERT INTO adopt_img (img_no, img, adopt_no, member_id, notice_no)
  VALUES (2, 'TEST_IMG', 5, 'bangry', 1);
  
-- signup 회원가입 등록
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('test', '1111', '테스트', '1999-04-23', SYSDATE, 4, '1275-7, 이석빌딩 2층', 'irion@gmail.com', '010-1234-5678', 1);

-- choice 봉사활동 시간 등록 및 정보 불러오기
-- 페이지에 표시될 정보
SELECT NAME, ADRESS, DO, GU, DONG
FROM CARE C JOIN ADRESS A ON c.adress_no = a.adress_no;
-- 봉사 예약(RESERVATION)에 추가될 정보
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (6, 'test', 2, '2023-09-01', '13:00~18:00', 2, 'false');

-- cancel-detail 신청내역 상세 불러오기
SELECT m.NAME, r.RESERVATION_NO, r.REGDATE, r.REGTIME, c.TEL, c.NAME CARE_NAME
FROM RESERVATION R 
JOIN MEMBER M ON r.member_id = m.member_id
JOIN CARE c ON r.care_no = c.care_no
WHERE r.RESERVATION_NO = 6;
-- 신청 내역 삭제하기
DELETE FROM RESERVATION
WHERE RESERVATION_NO = 6;

-- adoption_article_detail 입양 후기 상세 불러오기
SELECT m.NAME, a.adopt_no, a.title, a.contents, a.count, a.write_date, a.group_no, a.level_no, a.order_no
FROM ADOPT A 
JOIN MEMBER M ON a.member_id = m.member_id
WHERE m.member_id = 'irion';
-- 후기 글 삭제하기
DELETE FROM ADOPT
WHERE member_id = 'irion' AND adopt_no = 6;
-- 후기 글 수정하기
UPDATE ADOPT
SET title = '테스트입니다', 
contents = '테스트 댓글입니다'
WHERE member_id = 'bangry';

-- member/login - 로그인 페이지 - 예전에 했던거 사용

-- CARE_NO로 봉사 예약 인원수 불러오기
SELECT SUM(PEOPLE)
FROM RESERVATION
WHERE CARE_NO = 2;

-- 회원의 봉사예약 불러오기
SELECT *
FROM RESERVATION
WHERE REGDATE = '2023-09-16'
AND REGTIME = '09:00 ~ 13:00'
AND MEMBER_ID = 'bangry';


-- 230908 혜원 작성---------------------------------------------------------------------------------------------------------
-- cancel-detail 신청내역 상세 불러오기
SELECT m.NAME, r.RESERVATION_NO, r.REGDATE, r.REGTIME, c.NAME CARE_NAME
FROM RESERVATION R 
JOIN MEMBER M ON r.member_id = m.member_id
JOIN CARE c ON r.care_no = c.care_no
WHERE r.STATUS = 'false';

-- 로그인한 사람의 ID, NAME, EMAIL, PHONENUM, BIRTHDAY, ADRESS, 
-- 후원내역(후원내역 번호, 후원금액, 후원날짜) 로그인한 ID로 구분, 
-- 봉사내역(봉사예약날짜, 봉사예약시간)
SELECT m.MEMBER_ID, m.NAME, m.EMAIL, m.TEL, m.BIRTHDAY, m.ADRESS_NO
FROM MEMBER m
WHERE m.MEMBER_ID  = 'bangry';

SELECT d.DONAHISTORY_NO, d.DONATION_DATE, d.DONATION
FROM DONAHISTORY d
JOIN MEMBER m ON d.member_id = m.member_id
WHERE m.MEMBER_ID = 'bangry';

SELECT r.REGDATE, r.REGTIME
FROM RESERVATION r
JOIN MEMBER m ON r.member_id = m.member_id
WHERE m.MEMBER_ID = 'bangry';

-- 보호소 상세 페이지
SELECT  c.adress, c.TEL, c.WEEK_OPEN, c.WEEK_CLOSE, c.WEEKEND_OPEN, c.WEEKEND_CLOSE, a.CARE_IMG 
FROM CARE c JOIN care_img a
ON c.care_no = a.care_no
WHERE c.NAME = '해피파워';

SELECT r.REGDATE, c.NAME, r.REGTIME, c.TEL
FROM RESERVATION r JOIN CARE c
ON r.care_no = c.care_no
WHERE r.member_id = 'bangry' AND r.reservation_no =1 ;

-- 230908 승욱 작성---------------------------------------------------------------------------------------------------------
-- 페이징 처리 조회(가상컬럼(rownum)과 서브쿼리 활용)
SELECT a.title,
       m.name AS member_name, 
       a.write_date,
       a.count,
       a.adopt_no
FROM (SELECT CEIL(rownum / 5) AS request_page,
             a.title,
             a.member_id,
             TO_CHAR(a.write_date, 'YYYY-MM-DD') AS write_date,
             a.count,
             a.adopt_no
      FROM (SELECT n.title,
                           a.member_id,
                           a.write_date,
                           a.count,
                           a.adopt_no
            FROM adopt a
            JOIN notice n ON a.notice_no = n.notice_no
            WHERE a.notice_no = 1
            ORDER BY a.group_no DESC,
                     a.order_no ASC) a
                     ) a
JOIN member m ON a.member_id = m.member_id
WHERE request_page = 1
ORDER BY a.adopt_no;

commit;

 -- 페이징 처리를 위한 검색개수(제목)
SELECT COUNT(title) AS cnt
FROM   adopt
WHERE title LIKE '%댕댕이%';  

 -- 페이징 처리를 위한 검색개수(글쓴이)
SELECT COUNT(member_id) AS cnt
FROM   member
WHERE member_id LIKE '%i%';  

----------------dog/dog-list-강아지 목록 불러오기------------------


--------------shelter/shelter-list-보호소 리스트------------------
SELECT * from care;

SELECT care_img,name,closeday,tel,do,gu,dong,new_adress,adress
FROM care, care_img, adress;

--------------volunteer/application_list-봉사신청 내역------------
SELECT name,regdate,regtime,status
FROM reservation,care;

 -- 페이징 처리 조회(가상컬럼(rownum)과 서브쿼리 활용)
 SELECT name,
       regdate, 
       status,
       regtime
FROM (SELECT CEIL(rownum / 5) AS request_page,
             name,
             regdate,
             status,
             regtime
      FROM (SELECT n.name,
                   a.regdate,
                   a.status,
                   a.regtime
            FROM reservation a
            join care n 
            on a.care_no = n.care_no) a
            ) a
WHERE request_page = 1
and status LIKE 'true';










