--�׽�Ʈ�� ���� ���̵����� ����
-- 23.09.14 ȫ���� ����

-- Care ���̺� - ��ȣ��(�ִ�3���� ���)
INSERT INTO CARE (care_no, name, adress, tel, closeday, mans, open, close, volunteer_am, volunteer_pm, map_url, Introduction, etc )
VALUES (1, '�����Ŀ�', '57-26', '010-1234-5678', '�����', 30, '09:00', '18:00', '9:00 ~ 13:00', '14:00 ~ 18:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3160.286582158532!2d127.0987639896269!3d37.6189461490006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cba21c49379e7%3A0x18e763e51b5158de!2z7ISc7Jq47Jyg6riw64-Z66y87J6F7JaR7IS87YSw!5e0!3m2!1sko!2skr!4v1694584040563!5m2!1sko!2skr',
'�����Ŀ� �Ծ缾�ʹ� ���ֽÿ� ��ġ�� �ְ�, ������ ��ٸ��� �ִ� �ݷ����� �Ծ�ü��Դϴ�. ���� ���� ���⵿���� �����ϰ� ������ �ǽ� �� �ֽ��ϴ�. ��ȣ�ǰ� �ִ� ���̵� ��� ���ϰ� ������ �ѹ� ����������!',
'���ο� ������ �����ƿ�');
INSERT INTO CARE (care_no, name, adress, tel, closeday, mans, open, close, volunteer_am, volunteer_pm, map_url, Introduction, etc)
VALUES (2, '�µ���', '357 KR', '010-5678-9101', '�����', 40, '09:00', '18:00', '9:00 ~ 13:00', '14:00 ~ 18:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d178995.55098424698!2d126.90210231386554!3d38.10976704400116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357d338d5f434f95%3A0xbd5b1d5dd49ee366!2z7JyE65Oc64-F7IqkaW7tj6zsspw!5e0!3m2!1sko!2skr!4v1694584452617!5m2!1sko!2skr',
'�츮 �Ծ缾�Ϳ��� ������ �����ڸ� ����������. �������� �ǰ��� �ູ�� �ֿ켱���� �����ϸ�, ������ ȯ�濡�� ������ ����� �����մϴ�.�Ծ��� ���� ��ο��� Ư���� ������ ������ �� �ִ� ��ȸ�Դϴ�.
�� ���� ������ �Բ� �����غ�����.',
'�Ծ����� �λ��� ��ȭ�� �����ϼ���');
INSERT INTO CARE (care_no, name, adress, tel, closeday, mans, open, close, volunteer_am, volunteer_pm, map_url, Introduction, etc )
VALUES (3, '�����̿͸۸���', '139���� 83', '010-9876-5432', '�����', 40, '09:00', '18:00', '9:00 ~ 13:00', '14:00 ~ 18:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51770.013672154666!2d127.1375037724449!3d35.809117452526905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35702510baabe389%3A0x20f739be04cba361!2z656R656R7J2064SkIO2VmOyImQ!5e0!3m2!1sko!2skr!4v1694584279357!5m2!1sko!2skr',
'�츮 �Ծ缾�Ϳ����� ������ �������鿡�� ���ο� ����� �����մϴ�. ���� �׵��� ���� ����ϸ�, �� �������� ��Ư�� Ư���� ������ ����Ͽ� ������ ��Ī�� ã�Ƶ帳�ϴ�.
�� ���� �������� �Ծ��ϸ�, �� �������� ���� ǳ��Ӱ� ���� �� �ƴ϶� ����� ��� ū ��ȭ�� ������ �� �� �ִ� Ư���� ��ȸ�� �����ֽ��ϴ�.',
'��������� �����ڸ� ����������');

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
VALUES (anno_no_seq.NEXTVAL, '�Ծ� ������ ��� �̷��������?', '�Ծ� ������ �Ϲ������� ��û, ����, ���� �ۼ� �� ���� ����, �׸��� ���� �Ծ� ������ ����˴ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '� �ð��� �Ծ� �� �湮�� �����Ѱ���?', '�Ծ� �� �湮 ���� �ð��� ��ȣ�ҳ� ���� ��ü�� ��å�� ���� �ٸ� �� ������, �Ϲ������� �ָ��� ������ ������ �ð��� ���� �ֽ��ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '���������� ���� ������ �� �ֳ���?', '��. �Ϲ������� ��ȣ�ҿ����� �Ծ��� ����ϴ� ������� ���������� ���� ���� �� �ֵ��� ����մϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '���� ��ȣ�ҿ� �� ������ �������� �ֳ���?', '���� ��ȣ�ҿ� �ִ� ���������� ���� �׻� ���� �� ������, �ֱ������� ������Ʈ�˴ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '�Ծ��� ���ϴ� �������� ã�Ҿ��. ���� �ܰ�� �����ΰ���?', '���ϴ� �������� ã�Ҵٸ�, �Ϲ������� �Ծ� ��û���� �ۼ��ϰ� ���並 ���� �����ؾ� �մϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '�Ծ� �� �������� �ǰ� ���¸� ��� Ȯ���ϳ���?', '��ȣ�ҿ����� �Ϲ������� �������� �ǰ� ���¸� Ȯ���ϰ�, �ʿ��� ��� ���� ������ �Ƿ� ������ �Ϸ��մϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '��� �����ڰ� �� �� �ֳ���?', '�����ڰ� �ǰ��� �ϴ� ���, �ش� ��ȣ�ҳ� ���� ��ü�� ������Ʈ���� ���� ��û ����� �ۼ��ϰų� ���� ������ �� �ֽ��ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '�Ծ��� �Ұ����� ���� � ����ΰ���?', '�Ծ��� �Ұ����� ��쿡�� ��ȣ���� ��å�̳� �������� Ư�� ��Ȳ�� ���� �޶��� �� �ֽ��ϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '��ȣ�ҿ��� �ʿ��� ��ǰ�� ����Ϸ��� ��� �ؾ� �ϳ���?', '��ȣ�ҿ��� �ʿ��� ��ǰ�� ����Ϸ��� �ش� ��ȣ���� ������Ʈ�� ����ó�� ���� ��� ������ ���ϴ� ��ǰ ����� Ȯ���ϼ���.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '�Ծ� ��û �� �󸶳� ���� �ǵ���� ���� �� �ֳ���?', '�Ծ� ��û �� ��ȣ�ҿ��� �󸶳� ���� �ǵ���� �������� ��ȣ�ҿ� ���� �ٸ� �� ������, �Ϲ������� ������ ���� ������ ���� ���Դϴ�.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '�Ծ� �� �ʿ��� ������ � ���� �ֳ���?', '�Ϲ������� �Ծ��� ���� �ź���, �ּ� ����, �׸��� �Ծ� ��û���� ���� �⺻ ������ �ʿ��� �� �ֽ��ϴ�.');

-- Review ���̺� - �ı��
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'bangry', 1, '�Ϳ��� �������׿�', '������ �� ������ �ôµ� �ʹ� �Ϳ�����', 231, '2023-09-24', 0, 0, 0);
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'furkids', 1, '��Ű�� �湮�غ�����', '�پ��� ���������� �ֽ��ϴ�', 23, '2023-09-24', 0, 0, 0);
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'irion', 2, '�µ��� ���� �ı�ø��ϴ�~', '�ʹ� �Ϳ��� ���̵��� �ְ� ������ ġ���Ǵ� ����̳���~ ����Ʈ���� ������ ��Ű����ؼ� ���ְ��� ���̵��̶� ����ٲ� ���ƿ�. �����е� ����!!', 23, '2023-09-24', 0, 0, 0);
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'furkids', 2, '��Ű�� �湮�غ�����', '�پ��� ���������� �ֽ��ϴ�', 23, '2023-09-24', 0, 0, 0);

-- Review_img ���̺� - �ı�� �̹���
INSERT INTO REVIEW_IMG (img_no, img, review_no, member_id, notice_no)
VALUES (img_no_seq.NEXTVAL, 'test-img.png', 1, 'bangry', 1);

-- Care_img ���̺� - ��ȣ�� �̹���
INSERT INTO CARE_IMG (care_img_no, care_no, care_img, care_1_img, care_2_img, care_3_img, care_4_img)
VALUES (care_img_seq.NEXTVAL, 1, 'happypower-list-img.jpg',
'introex3.jpg',
'happypower-img1.jpg',
'happypower-img2.jpg',
'happypower-img3.jpg');
INSERT INTO CARE_IMG (care_img_no, care_no, care_img, care_1_img, care_2_img, care_3_img, care_4_img)
VALUES (care_img_seq.NEXTVAL, 2, 'gooddog-list-img.jpg',
'introex1.jpg',
'gooddog-img1.jpg',
'gooddog-img2.jpg',
'gooddog-img3.jpg');
INSERT INTO CARE_IMG (care_img_no, care_no, care_img, care_1_img, care_2_img, care_3_img, care_4_img)
VALUES (care_img_seq.NEXTVAL, 3, 'chunhyangandpuppy-list-img.jpg',
'introex2.jpg',
'chunhyangandpuppy-img1.jpg',
'chunhyangandpuppy-img2.jpg',
'chunhyangandpuppy-img3.jpg');

-- Chat_room ���̺� - ä�ù� ����Ʈ
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'bangry', 'gooddog');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'furkids', 'chunhyangandpuppy');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'furkids', 'happypower');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'irion', 'gooddog');

-- Chat ���̺� - ä��
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (chat_no_seq.NEXTVAL, 1, 'bangry', null, '�������� ���� ������ �� �ֳ���?', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (chat_no_seq.NEXTVAL, 1, null, 'gooddog', '���� �������ŵ� �� �� �����ϴ�', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (chat_no_seq.NEXTVAL, 1, 'bangry', null, '�˰ڽ��ϴ�. �׳� �˰ڽ��ϴ�,', '2023-09-02');

-- Donahistory ���̺� - �Ŀ�����
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (donahistory_no_seq.NEXTVAL, 10000, '2023-09-05', 'irion');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (donahistory_no_seq.NEXTVAL, 5000, '2023-09-02', 'bangry');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (donahistory_no_seq.NEXTVAL, 3000, '2023-09-04', 'bangry');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (donahistory_no_seq.NEXTVAL, 1000, '2023-09-01', 'furkids');
INSERT INTO DONAHISTORY (donahistory_no, donation, donation_date, member_id)
VALUES (donahistory_no_seq.NEXTVAL, 1000, '2023-09-04', 'furkids');

-- Reservation ���̺� - ���� ����
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (reservation_no_seq.NEXTVAL, 'bangry', 1, '2023-09-01', '09:00~12:00', 7, 'false');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (reservation_no_seq.NEXTVAL, 'furkids', 2, '2023-09-01', '13:00~18:00', 5, 'false');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (reservation_no_seq.NEXTVAL, 'furkids', 1, '2023-09-01', '09:00~12:00', 3, 'wait');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (reservation_no_seq.NEXTVAL, 'bangry', 2,'2023-09-01', '13:00~18:00', 6, 'wait');
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate, regtime, people, status)
VALUES (reservation_no_seq.NEXTVAL, 'irion', 2,'2023-09-01', '13:00~18:00', 1, 'true');


commit;

rollback;




















