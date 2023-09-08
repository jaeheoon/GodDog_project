--테스트를 위한 더미데이터 생성
-- 23.09.05 홍재헌 수정

-- Adress 테이블
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (1, '서울특별시', '중랑구', '신내동', '서울특별시 중랑구 용마산로');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (2, '경기도', '광주시', '도척동', '경기도 광주시 도척면 독고개길');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (3, '전라북도', '전주시', '대성동', '전라북도 전주시 완산구 객원길');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (4, '수원시', '영통구', '이의동', '수원시 영통구 이의로');

-- Care 테이블 - 보호소(최대3개만 등록)
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (1, 3, '해피파워', '57-26', '010-1234-5678', '매주 목요일', 30, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23401.192695856615!2d127.15998703550167!3d35.792659781764605!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35702510baabe389%3A0x20f739be04cba361!2z656R656R7J2064SkIO2VmOyImQ!5e0!3m2!1sko!2skr!4v1693900715878!5m2!1sko!2skr');
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (2, 2, '굿도그', '357 KR', '010-5678-9101', '매주 목요일', 40, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4173.778456239814!2d127.30491264159748!3d37.33584054588896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356355f4a1f0641b%3A0x56ebac08078de44f!2z7JWE7J207KGw7JWEIOyalOyWkeuztO2YuOyGjCDqsr3quLDqtJHso7zsoJA!5e0!3m2!1sko!2skr!4v1693901340631!5m2!1sko!2skr');
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end, map_url)
VALUES (3, 1, '춘향이와멍멍이', '139나길 83', '010-9876-5432', '매주 목요일', 40, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1348.064582504651!2d127.10170285603522!3d37.61888852972289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cba21c49379e7%3A0x18e763e51b5158de!2z7ISc7Jq47Jyg6riw64-Z66y87J6F7JaR7IS87YSw!5e0!3m2!1sko!2skr!4v1693901528111!5m2!1sko!2skr');

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
VALUES (1, '2023-08-08 홈페이지 점검 안내', '홈페이지 점검 예정이오니 확인 부탁드립니다');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (2, '사이트이용 방법', '여러보호소의 강아지의 목록을 보시다가 만나보길 원하시는분은 채팅으로 해당 강아지를 보호중인 보호소와 상담해보시고 직접 보호소에 찾아가 보시기 바랍니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (3, '자주묻는 후원문의답변', '원하는 금액을 지정하여 후원은 불가능하십니다. 또한 후원받은 금액은 특정 보호소가 아닌 현재 사이트에 등록된 모든 보호소에 균등하게 지급됨을 미리 알려드립니다.');
INSERT INTO ANNO (anno_no, title, contents)
VALUES (4, '봉사활동 신청방법', '봉사예약 페이지를 방문하여 원하시는 보호소를 선택 후, 달력에서 원하는 날짜를 선택하여 신청해 주세요. 한번 신청된 봉사도 취소 할 수 있습니다. 많은 관심 부탁드려요');

-- Adopt 테이블 - 후기글
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (1, 'bangry', 1, '귀여운 강아지네요', '강아지 한 마리를 봤는데 너무 귀여워요', 231, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (2, 'furkids', 1, '퍼키즈 방문해보세요', '다양한 강아지들이 있습니다', 23, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (3, 'irion', 2, '굿도그 봉사 후기올립니다~', '너무 귀여운 아이들이 있고 마음이 치유되는 기분이내요~ 아파트에서 강아지 못키우게해서 자주가서 아이들이랑 놀아줄꺼 같아요. 여러분도 강츄!!', 23, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, group_no, level_no, order_no) 
VALUES (4, 'furkids', 2, '퍼키즈 방문해보세요', '다양한 강아지들이 있습니다', 23, '2023-09-24', 0, 0, 0);

-- Adopt_img 테이블 - 보호소 이미지
INSERT INTO ADOPT_IMG (img_no, adopt_no, img, member_id, notice_no)
VALUES (1, 1, 'test-img.png', 'bangry', 1);

-- Care_img 테이블 - 보호소 이미지
INSERT INTO CARE_IMG (care_img_no, care_no, care_img, care_1_img, care_2_img, care_3_img)
VALUES (1, 1, 'test-img.png', 'test-1-img', 'test-2-img', 'test-3-img');

-- Dog 테이블 - 유기견
INSERT INTO DOG (dog_no, care_no, notice_date, find_place, age, weight, str_notice, end_notice, gender, surgery, etc, adopt_state, dog_kind)
VALUES (1, 1, '2022-09-06', '수원시 달통구 교회앞', '8개월', '5kg', '2023-09-01', '2023-09-30', '1', '1', '없음', '입양안됨', '비숑');

-- Dog_img 테이블 - 보호소 이미지
INSERT INTO DOG_IMG (dog_img_no, dog_no, dog_img, dog_1_img, dog_2_img, dog_3_img)
VALUES (1, 1, 'test-dog-img.png', 'test-dog-1-img', 'test-dog-2-img', 'test-dog-3-img');

-- Chat_room 테이블 - 채팅방 리스트
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (1, 'bangry', 'gooddog');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (2, 'furkids', 'chunhyangandpuppy');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (3, 'furkids', 'happypower');
INSERT INTO CHAT_ROOM (chat_room_no, member_id, care_id)
VALUES (4, 'irion', 'gooddog');

-- Chat 테이블 - 채팅
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (1, 1, 'bangry', null, '강아지는 언제 보러갈 수 있나요?', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (2, 1, null, 'gooddog', '내일 보러오셔도 될 것 같습니다', '2023-09-02');
INSERT INTO CHAT (chat_no, chat_room_no, member_id, care_id, chat_contents, write_date)
VALUES (3, 1, 'bangry', null, '알겠습니다. 그날 뵙겠습니다,', '2023-09-02');

-- Donahistory 테이블 - 후원내역
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

-- Reservation 테이블 - 봉사 예약
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




















