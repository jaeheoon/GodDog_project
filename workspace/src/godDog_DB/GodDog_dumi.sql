--테스트를 위한 더미데이터 생성
-- 23.09.14 홍재헌 수정

-- Care 테이블 - 보호소(최대3개만 등록)
INSERT INTO CARE (care_no, name, adress, tel, closeday, mans, open, close, volunteer_am, volunteer_pm, map_url, Introduction, etc )
VALUES (1, '해피파워', '57-26', '010-1234-5678', '목요일', 30, '09:00', '18:00', '9:00 ~ 13:00', '14:00 ~ 18:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3160.286582158532!2d127.0987639896269!3d37.6189461490006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cba21c49379e7%3A0x18e763e51b5158de!2z7ISc7Jq47Jyg6riw64-Z66y87J6F7JaR7IS87YSw!5e0!3m2!1sko!2skr!4v1694584040563!5m2!1sko!2skr',
'해피파워 입양센터는 전주시에 위치해 있고, 주인을 기다리고 있는 반려동물 입양시설입니다. 보다 쉽게 유기동물과 교감하고 가족이 되실 수 있습니다. 보호되고 있는 아이들 모두 착하고 밝으니 한번 보러오세요!',
'새로운 가족을 만들어보아요');
INSERT INTO CARE (care_no, name, adress, tel, closeday, mans, open, close, volunteer_am, volunteer_pm, map_url, Introduction, etc)
VALUES (2, '굿도그', '357 KR', '010-5678-9101', '목요일', 40, '09:00', '18:00', '9:00 ~ 13:00', '14:00 ~ 18:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d178995.55098424698!2d126.90210231386554!3d38.10976704400116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357d338d5f434f95%3A0xbd5b1d5dd49ee366!2z7JyE65Oc64-F7IqkaW7tj6zsspw!5e0!3m2!1sko!2skr!4v1694584452617!5m2!1sko!2skr',
'우리 입양센터에서 진정한 동반자를 만나보세요. 강아지의 건강과 행복을 최우선으로 생각하며, 안전한 환경에서 무한한 사랑을 제공합니다.입양은 양쪽 모두에게 특별한 경험을 선물할 수 있는 기회입니다.
이 멋진 여정을 함께 시작해보세요.',
'입양으로 인생의 변화를 경험하세요');
INSERT INTO CARE (care_no, name, adress, tel, closeday, mans, open, close, volunteer_am, volunteer_pm, map_url, Introduction, etc )
VALUES (3, '춘향이와멍멍이', '139나길 83', '010-9876-5432', '목요일', 40, '09:00', '18:00', '9:00 ~ 13:00', '14:00 ~ 18:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51770.013672154666!2d127.1375037724449!3d35.809117452526905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35702510baabe389%3A0x20f739be04cba361!2z656R656R7J2064SkIO2VmOyImQ!5e0!3m2!1sko!2skr!4v1694584279357!5m2!1sko!2skr',
'우리 입양센터에서는 남겨진 강아지들에게 새로운 희망을 선사합니다. 매일 그들을 위해 헌신하며, 각 강아지의 독특한 특성과 성격을 고려하여 최적의 매칭을 찾아드립니다.
한 마리 강아지를 입양하면, 그 강아지의 삶을 풍요롭게 만들 뿐 아니라 당신의 삶에도 큰 변화를 가져다 줄 수 있는 특별한 기회가 여기있습니다.',
'사랑스러운 동반자를 만나보세요');

-- Care_admin 테이블 - 보호소 관리자
INSERT INTO CARE_ADMIN (care_id, care_no, passwd)
VALUES('happypower', 1, '1111');
INSERT INTO CARE_ADMIN (care_id, care_no, passwd)
VALUES('gooddog', 2, '1111');
INSERT INTO CARE_ADMIN (care_id, care_no, passwd)
VALUES('chunhyangandpuppy', 3, '1111');

-- Member 테이블
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('admin', '1111', '관리자', '1982-05-24', '2023-05-23', 1, '617 화랑빌딩 7F', 'admin@gmail.com', '010-1234-5678', 0);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('bangry', '1111', '홍재헌', '1999-01-23', '2023-09-04', 2, '이젠아파트 101동', 'bangry@gmail.com', '010-1234-5678', 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('furkids', '1111', '퍼키즈', '1970-01-23', '2023-06-14', 3, '175', 'furkids@gmail.com', '010-1234-5678', 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, lev)
VALUES ('irion', '1111', '이리온', '1987-04-23', '2023-01-29', 4, '1275-7, 이석빌딩 2층', 'irion@gmail.com', '010-1234-5678', 1);

-- Notice 테이블 - 게시판종류(최대2개만 있어도 됨.)
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (1, '입양후기', '입양후기에 대한 게시판 입니다.');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (2, '봉사후기', '봉사후기에 대한 게시판 입니다');

-- Anno - 공지사항
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '입양 과정은 어떻게 이루어지나요?', '입양 과정은 일반적은로 신청, 승인, 서류 작성 및 서류 검토, 그리고 최종 입양 절차로 진행됩니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '어떤 시간에 입양 및 방문이 가능한가요?', '입양 및 방문 가능 시간은 보호소나 구조 단체의 정책에 따라 다를 수 있으며, 일반적으로 주말과 평일의 일정한 시간에 열려 있습니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '강아지들을 직접 만나볼 수 있나요?', '네. 일반적으로 보호소에서는 입양을 고려하는 사람들이 강아지들을 직접 만날 수 있도록 허용합니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '현재 보호소에 몇 마리의 강아지가 있나요?', '현재 보호소에 있는 강아지들의 수는 항상 변할 수 있으며, 주기적으로 업데이트됩니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '입양을 원하는 강아지를 찾았어요. 다음 단계는 무엇인가요?', '원하는 강아지를 찾았다면, 일반적으로 입양 신청서를 작성하고 검토를 위해 제출해야 합니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '입양 전 강아지의 건강 상태를 어떻게 확인하나요?', '보호소에서는 일반적으로 강아지의 건강 상태를 확인하고, 필요한 모든 예방 접종과 의료 검진을 완료합니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '어떻게 봉사자가 될 수 있나요?', '봉사자가 되고자 하는 경우, 해당 보호소나 구조 단체의 웹사이트에서 봉사 신청 양식을 작성하거나 직접 연락할 수 있습니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '입양이 불가능한 경우는 어떤 경우인가요?', '입양이 불가능한 경우에는 보호소의 정책이나 강아지의 특정 상황에 따라 달라질 수 있습니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '보호소에서 필요한 물품을 기부하려면 어떻게 해야 하나요?', '보호소에서 필요한 물품을 기부하려면 해당 보호소의 웹사이트나 연락처를 통해 기부 절차와 원하는 물품 목록을 확인하세요.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '입양 신청 후 얼마나 빨리 피드백을 받을 수 있나요?', '입양 신청 후 보호소에서 얼마나 빨리 피드백을 받을지는 보호소에 따라 다를 수 있으며, 일반적으로 일주일 내에 연락을 받을 것입니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (anno_no_seq.NEXTVAL, '입양 시 필요한 서류는 어떤 것이 있나요?', '일반적으로 입양을 위해 신분증, 주소 증명서, 그리고 입양 신청서와 같은 기본 서류가 필요할 수 있습니다.');

-- Review 테이블 - 후기글
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'bangry', 1, '귀여운 강아지네요', '강아지 한 마리를 봤는데 너무 귀여워요', 231, '2023-09-24', 0, 0, 0);
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'furkids', 1, '퍼키즈 방문해보세요', '다양한 강아지들이 있습니다', 23, '2023-09-24', 0, 0, 0);
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'irion', 2, '굿도그 봉사 후기올립니다~', '너무 귀여운 아이들이 있고 마음이 치유되는 기분이내요~ 아파트에서 강아지 못키우게해서 자주가서 아이들이랑 놀아줄꺼 같아요. 여러분도 강츄!!', 23, '2023-09-24', 0, 0, 0);
INSERT INTO review (review_no, member_id, notice_no, review_title, review_contents, count, write_date, group_no, level_no, order_no) 
VALUES (review_no_seq.NEXTVAL, 'furkids', 2, '퍼키즈 방문해보세요', '다양한 강아지들이 있습니다', 23, '2023-09-24', 0, 0, 0);

-- Review_img 테이블 - 후기글 이미지
INSERT INTO REVIEW_IMG (img_no, img, review_no, member_id, notice_no)
VALUES (img_no_seq.NEXTVAL, 'test-img.png', 1, 'bangry', 1);

-- Care_img 테이블 - 보호소 이미지
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

-- Chat_room 테이블 - 채팅방 리스트
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'bangry', 'gooddog');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'furkids', 'chunhyangandpuppy');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'furkids', 'happypower');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (chat_room_no_seq.NEXTVAL, 'irion', 'gooddog');

-- Chat 테이블 - 채팅
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (chat_no_seq.NEXTVAL, 1, 'bangry', null, '강아지는 언제 보러갈 수 있나요?', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (chat_no_seq.NEXTVAL, 1, null, 'gooddog', '내일 보러오셔도 될 것 같습니다', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (chat_no_seq.NEXTVAL, 1, 'bangry', null, '알겠습니다. 그날 뵙겠습니다,', '2023-09-02');

-- Donahistory 테이블 - 후원내역
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

-- Reservation 테이블 - 봉사 예약
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




















