--�׽�Ʈ�� ���� ���̵����� ����
-- 23.09.05 ȫ���� ����

-- Adress ���̺�
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (1, '����Ư����', '�߶���', '�ų���', '����Ư���� �߶��� �븶���');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (2, '��⵵', '���ֽ�', '��ô��', '��⵵ ���ֽ� ��ô�� ������');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (3, '����ϵ�', '���ֽ�', '�뼺��', '����ϵ� ���ֽ� �ϻ걸 ������');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (4, '������', '���뱸', '���ǵ�', '������ ���뱸 ���Ƿ�');

-- Care ���̺� - ��ȣ��(�ִ�3���� ���)
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (1, 3, '�����Ŀ�', '57-26', '010-1234-5678', '���� �����', 30, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23401.192695856615!2d127.15998703550167!3d35.792659781764605!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35702510baabe389%3A0x20f739be04cba361!2z656R656R7J2064SkIO2VmOyImQ!5e0!3m2!1sko!2skr!4v1693900715878!5m2!1sko!2skr');
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (2, 2, '�µ���', '357 KR', '010-5678-9101', '���� �����', 40, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4173.778456239814!2d127.30491264159748!3d37.33584054588896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356355f4a1f0641b%3A0x56ebac08078de44f!2z7JWE7J207KGw7JWEIOyalOyWkeuztO2YuOyGjCDqsr3quLDqtJHso7zsoJA!5e0!3m2!1sko!2skr!4v1693901340631!5m2!1sko!2skr');
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (3, 1, '�����̿͸۸���', '139���� 83', '010-9876-5432', '���� �����', 40, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1348.064582504651!2d127.10170285603522!3d37.61888852972289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cba21c49379e7%3A0x18e763e51b5158de!2z7ISc7Jq47Jyg6riw64-Z66y87J6F7JaR7IS87YSw!5e0!3m2!1sko!2skr!4v1693901528111!5m2!1sko!2skr');

-- Care_admin ���̺� - ��ȣ�� ������
INSERT INTO CARE_ADMIN (care_id, care_no, passwd)
VALUES('happypower', 1, '1111');
INSERT INTO CARE_ADMIN (care_id, care_no, passwd)
VALUES('gooddog', 2, '1111');
INSERT INTO CARE_ADMIN (care_id, care_no, passwd)
VALUES('chunhyangandpuppy', 3, '1111');

-- Member ���̺�
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('admin', '1111', '������', '1982-05-24', '2023-05-23', 1, '617 ȭ������ 7F', 'admin@gmail.com', '010-1234-5678', 0);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('bangry', '1111', 'ȫ����', '1999-01-23', '2023-09-04', 2, '��������Ʈ 101��', 'bangry@gmail.com', '010-1234-5678', 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('furkids', '1111', '��Ű��', '1970-01-23', '2023-06-14', 3, '175', 'furkids@gmail.com', '010-1234-5678', 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('irion', '1111', '�̸���', '1987-04-23', '2023-01-29', 4, '1275-7, �̼����� 2��', 'irion@gmail.com', '010-1234-5678', 1);

-- Notice ���̺� - �Խ�������(�ִ�2���� �־ ��.)
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (1, '�Ծ��ı�', '�Ծ��ı⿡ ���� �Խ��� �Դϴ�.');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (2, '�����ı�', '�����ı⿡ ���� �Խ��� �Դϴ�');

-- Anno - ��������
INSERT INTO ANNO (anno_no, title, contents)
VALUES (1, '2023-08-08 Ȩ������ ���� �ȳ�', 'Ȩ������ ���� �����̿��� Ȯ�� ��Ź�帳�ϴ�');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (2, '����Ʈ�̿� ���', '������ȣ���� �������� ����� ���ôٰ� �������� ���Ͻôº��� ä������ �ش� �������� ��ȣ���� ��ȣ�ҿ� ����غ��ð� ���� ��ȣ�ҿ� ã�ư� ���ñ� �ٶ��ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (3, '���ֹ��� �Ŀ����Ǵ亯', '���ϴ� �ݾ��� �����Ͽ� �Ŀ��� �Ұ����Ͻʴϴ�. ���� �Ŀ����� �ݾ��� Ư�� ��ȣ�Ұ� �ƴ� ���� ����Ʈ�� ��ϵ� ��� ��ȣ�ҿ� �յ��ϰ� ���޵��� �̸� �˷��帳�ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (4, '����Ȱ�� ��û���', '���翹�� �������� �湮�Ͽ� ���Ͻô� ��ȣ�Ҹ� ���� ��, �޷¿��� ���ϴ� ��¥�� �����Ͽ� ��û�� �ּ���. �ѹ� ��û�� ���絵 ��� �� �� �ֽ��ϴ�. ���� ���� ��Ź�����');

-- Adopt ���̺� - �ı��
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (1, 'bangry', 1, '�Ϳ��� �������׿�', '������ �� ������ �ôµ� �ʹ� �Ϳ�����', 231, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (2, 'furkids', 1, '��Ű�� �湮�غ�����', '�پ��� ���������� �ֽ��ϴ�', 23, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (3, 'irion', 2, '�µ��� ���� �ı�ø��ϴ�~', '�ʹ� �Ϳ��� ���̵��� �ְ� ������ ġ���Ǵ� ����̳���~ ����Ʈ���� ������ ��Ű����ؼ� ���ְ��� ���̵��̶� ����ٲ� ���ƿ�. �����е� ����!!', 23, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (4, 'furkids', 2, '��Ű�� �湮�غ�����', '�پ��� ���������� �ֽ��ϴ�', 23, '2023-09-24', 0, 0, 0);

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

-- Chat_room ���̺� - ä�ù� ����Ʈ
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (1, 'bangry', 'gooddog');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (2, 'furkids', 'chunhyangandpuppy');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (3, 'furkids', 'happypower');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (4, 'irion', 'gooddog');

-- Chat ���̺� - ä��
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (1, 1, 'bangry', null, '�������� ���� ������ �� �ֳ���?', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (2, 1, null, 'gooddog', '���� �������ŵ� �� �� �����ϴ�', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (3, 1, 'bangry', null, '�˰ڽ��ϴ�. �׳� �˰ڽ��ϴ�,', '2023-09-02');

-- Donahistory ���̺� - �Ŀ�����
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (1, 10000, '2023-09-05', 'irion');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (2, 5000, '2023-09-02', 'bangry');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (3, 3000, '2023-09-04', 'bangry');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (4, 1000, '2023-09-01', 'furkids');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (5, 1000, '2023-09-04', 'furkids');

-- Reservation ���̺� - ���� ����
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (1, 'bangry', 1, '2023-09-01', '09:00~12:00', 7, 'false');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (2, 'furkids', 2, '2023-09-01', '13:00~18:00', 5, 'false');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (3, 'furkids', 1, '2023-09-01', '09:00~12:00', 3, 'true');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (4, 'bangry', 2,'2023-09-01', '13:00~18:00', 6, 'true');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (5, 'irion', 2,'2023-09-01', '13:00~18:00', 1, 'true');


commit;

rollback;




















