--�׽�Ʈ�� ���� ���̵����� ����
-- 23.09.05 ȫ���� ����

-- Adress ���̺�
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (1, '����Ư����', '�����', '��赿', '����Ư���� ����� ���ط�');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (2, '��⵵', '���ֽ�', '������', '��⵵ ���ֽ� ��������');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (3, '�뱸������', '������', '���', '�뱸������ ������ �����');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (4, '������', '���뱸', '���ǵ�', '������ ���뱸 ���Ƿ�');

-- Care ���̺� - ��ȣ��
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (1, 3, '��Ű��', '�뱸������ ������ ����� 175', '010-1234-5678', '���� �����', 30, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'ansdmeklwl_21_21314sdfsew');
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (2, 4, '�̸���', '������ ���뱸 ���ǵ� 1275-7 �̼� ���� 2��', '010-1234-5678', '���� �����', 40, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'wmekldil_23_243266sdfsew');

-- Member ���̺�
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('admin', '1111', '������', '1982-05-24', '2023-05-23', 1, '617 ȭ������ 7F', 'admin@gmail.com', '010-1234-5678', 0);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('bangry', '1111', 'ȫ����', '1999-01-23', '2023-09-04', 2, '��������Ʈ 101��', 'bangry@gmail.com', '010-1234-5678', 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev, care_no)
VALUES ('furkids', '1111', '��Ű��', '1970-01-23', '2023-06-14', 3, '175', 'furkids@gmail.com', '010-1234-5678', 0, 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev, care_no)
VALUES ('irion', '1111', '�̸���', '1987-04-23', '2023-01-29', 4, '1275-7, �̼����� 2��', 'irion@gmail.com', '010-1234-5678', 0, 2);

-- Notice ���̺� - �Խ���
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (1, '�����Խ���', '�����Խ����Դϴ�');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (2, '���� �ڷ��', '�ڷ� �������Դϴ�');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (3, '��������', '�������� �Խ����Դϴ�');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (4, '���� ���ϱ�', '�������� �Խ����Դϴ�');

-- Anno - ��������
INSERT INTO ANNO (anno_no, title, contents)
VALUES (1, '2023-08-08 Ȩ������ ���� �ȳ�', 'Ȩ������ ���� �����̿��� Ȯ�� ��Ź�帳�ϴ�');

-- Adopt ���̺� - �ı��
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, ref, ref_step, ref_level) 
VALUES (1, 'bangry', 1, '�Ϳ��� �������׿�', '������ �� ������ �ôµ� �ʹ� �Ϳ�����', 231, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, ref, ref_step, ref_level) 
VALUES (2, 'furkids', 1, '��Ű�� �湮�غ�����', '�پ��� ���������� �ֽ��ϴ�', 23, '2023-09-24', 0, 0, 0);

-- Adopt_img ���̺� - ��ȣ�� �̹���
INSERT INTO ADOPT_IMG (img_no, adopt_no, img, member_id, notice_no)
VALUES (1, 1, 'test-img.png', 'bangry', 1);

-- Care_img ���̺� - ��ȣ�� �̹���
INSERT INTO CARE_IMG (care_img_no, care_no, care_img, care_1_img, care_2_img, care_3_img)
VALUES (1, 1, 'test-img.png', 'test-1-img', 'test-2-img', 'test-3-img');

-- Dog ���̺� - �����
INSERT INTO DOG (dog_no, care_no, notice_date, find_place, age, weight, str_notice, end_notice, gender, surgery, etc, adopt_state, dog_kind)
VALUES (1, 1, '2022-09-06', '������ ���뱸 ��ȸ��', '8����', '5kg', '2023-09-01', '2023-09-30', '1', '1', '����', '�Ծ�ȵ�', '���');

-- Dog_img ���̺� - ��ȣ�� �̹���
INSERT INTO DOG_IMG (dog_img_no, dog_no, dog_img, dog_1_img, dog_2_img, dog_3_img)
VALUES (1, 1, 'test-dog-img.png', 'test-dog-1-img', 'test-dog-2-img', 'test-dog-3-img');

-- Chat ���̺� - ä��
INSERT INTO CHAT (chat_no, member_id, chat_contents, write_date, care_no)
VALUES (1, 'bangry', '�������� ���� ������ �� �ֳ���?', '2023-09-02', 1);

-- Donahistory ���̺� - �Ŀ�����
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (1, 1000000, '2023-09-03', 'bangry');

-- Reservation ���̺� - ���� ����
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, people)
VALUES (1, 'bangry', 1, '2023-09-01 09:00', 7);

-- Volunhistory ���̺� - ���系��
INSERT INTO VOLUNHISTORY (volunhistory_no, volun_date, people, member_id, care_no)
VALUES (1, '2023-09-01', 7, 'bangry', 1);




commit;

rollback;




















