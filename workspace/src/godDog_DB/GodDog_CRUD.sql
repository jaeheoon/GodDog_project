-- 230908 ���� �ۼ�---------------------------------------------------------------------------------------------------------
-- adoption_article �Ծ��ı�� ���
-- �Ծ� �ı� �Խ��� ��ȣ - 1
-- ADOPT�� �߰��� ����
INSERT INTO adopt (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no)
  VALUES (5, 'bangry', 1, '�Ϳ��� �������׿�', '������ �� ������ �ôµ� �ʹ� �Ϳ�����', 0, SYSDATE, 0, 0, 0);
-- ADOPT_IMG�� �߰��� ����
INSERT INTO adopt_img (img_no, img, adopt_no, member_id, notice_no)
  VALUES (2, 'TEST_IMG', 5, 'bangry', 1);
  
-- signup ȸ������ ���
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('test', '1111', '�׽�Ʈ', '1999-04-23', SYSDATE, 4, '1275-7, �̼����� 2��', 'irion@gmail.com', '010-1234-5678', 1);

-- choice ����Ȱ�� �ð� ��� �� ���� �ҷ�����
-- �������� ǥ�õ� ����
SELECT NAME, ADRESS, DO, GU, DONG
FROM CARE C JOIN ADRESS A ON c.adress_no = a.adress_no;
-- ���� ����(RESERVATION)�� �߰��� ����
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (6, 'test', 2, '2023-09-01', '13:00~18:00', 2, 'false');

-- cancel-detail ��û���� �� �ҷ�����
SELECT m.NAME, r.RESERVATION_NO, r.REGDATE, r.REGTIME, c.TEL, c.NAME CARE_NAME
FROM RESERVATION R 
JOIN MEMBER M ON r.member_id = m.member_id
JOIN CARE c ON r.care_no = c.care_no
WHERE r.RESERVATION_NO = 6;
-- ��û ���� �����ϱ�
DELETE FROM RESERVATION
WHERE RESERVATION_NO = 6;

-- adoption_article_detail �Ծ� �ı� �� �ҷ�����
SELECT m.NAME, a.adopt_no, a.title, a.contents, a.count, a.write_date, a.group_no, a.level_no, a.order_no
FROM ADOPT A 
JOIN MEMBER M ON a.member_id = m.member_id
WHERE m.member_id = 'irion';
-- �ı� �� �����ϱ�
DELETE FROM ADOPT
WHERE member_id = 'irion' AND adopt_no = 6;
-- �ı� �� �����ϱ�
UPDATE ADOPT
SET title = '�׽�Ʈ�Դϴ�', 
contents = '�׽�Ʈ ����Դϴ�'
WHERE member_id = 'bangry';

-- member/login - �α��� ������ - ������ �ߴ��� ���

-- CARE_NO�� ���� ���� �ο��� �ҷ�����
SELECT SUM(PEOPLE)
FROM RESERVATION
WHERE CARE_NO = 2;

-- ȸ���� ���翹�� �ҷ�����
SELECT *
FROM RESERVATION
WHERE REGDATE = '2023-09-16'
AND REGTIME = '09:00 ~ 13:00'
AND MEMBER_ID = 'bangry';


-- 230908 ���� �ۼ�---------------------------------------------------------------------------------------------------------
-- cancel-detail ��û���� �� �ҷ�����
SELECT m.NAME, r.RESERVATION_NO, r.REGDATE, r.REGTIME, c.NAME CARE_NAME
FROM RESERVATION R 
JOIN MEMBER M ON r.member_id = m.member_id
JOIN CARE c ON r.care_no = c.care_no
WHERE r.STATUS = 'false';

-- �α����� ����� ID, NAME, EMAIL, PHONENUM, BIRTHDAY, ADRESS, 
-- �Ŀ�����(�Ŀ����� ��ȣ, �Ŀ��ݾ�, �Ŀ���¥) �α����� ID�� ����, 
-- ���系��(���翹�೯¥, ���翹��ð�)
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

-- ��ȣ�� �� ������
SELECT  c.adress, c.TEL, c.WEEK_OPEN, c.WEEK_CLOSE, c.WEEKEND_OPEN, c.WEEKEND_CLOSE, a.CARE_IMG 
FROM CARE c JOIN care_img a
ON c.care_no = a.care_no
WHERE c.NAME = '�����Ŀ�';

SELECT r.REGDATE, c.NAME, r.REGTIME, c.TEL
FROM RESERVATION r JOIN CARE c
ON r.care_no = c.care_no
WHERE r.member_id = 'bangry' AND r.reservation_no =1 ;

-- 230908 �¿� �ۼ�---------------------------------------------------------------------------------------------------------
-- ����¡ ó�� ��ȸ(�����÷�(rownum)�� �������� Ȱ��)
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

 -- ����¡ ó���� ���� �˻�����(����)
SELECT COUNT(title) AS cnt
FROM   adopt
WHERE title LIKE '%�����%';  

 -- ����¡ ó���� ���� �˻�����(�۾���)
SELECT COUNT(member_id) AS cnt
FROM   member
WHERE member_id LIKE '%i%';  

----------------dog/dog-list-������ ��� �ҷ�����------------------


--------------shelter/shelter-list-��ȣ�� ����Ʈ------------------
SELECT * from care;

SELECT care_img,name,closeday,tel,do,gu,dong,new_adress,adress
FROM care, care_img, adress;

--------------volunteer/application_list-�����û ����------------
SELECT name,regdate,regtime,status
FROM reservation,care;

 -- ����¡ ó�� ��ȸ(�����÷�(rownum)�� �������� Ȱ��)
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










