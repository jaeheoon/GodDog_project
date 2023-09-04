--테스트를 위한 더미데이터 생성

-- Adress 테이블
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (1, '서울특별시', '노원구', '상계동', '서울특별시 노원구 노해로');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (2, '경기도', '양주시', '옥정동', '경기도 양주시 옥정동로');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (3, '대구광역시', '수성구', '범어동', '대구광역시 수성구 범어로');
INSERT INTO ADRESS (adress_no, do, gu, dong, new_adress)
VALUES (4, '수원시', '영통구', '이의동', '수원시 영통구 이의로');

-- Care 테이블 - 보호소
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end)
VALUES (1, 3, '퍼키즈', '대구광역시 수성구 범어로 175', '010-1234-5678', '매주 목요일', 30, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00');
INSERT INTO CARE (care_no, adress_no, name, adress, tel, closeday, mans, week_open, week_close, week_adopt_str, week_adopt_end, weekend_open, weekend_close, weekend_adopt_str, weekend_adopt_end)
VALUES (2, 4, '이리온', '수원시 영통구 이의동 1275-7 이석 빌딩 2층', '010-1234-5678', '매주 목요일', 40, '09:00', '18:00', '10:00','17:00','09:00','20:00','10:00','19:00');

-- Member 테이블
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, status, lev)
VALUES ('admin', '1111', '관리자', '1982-05-24', '2023-05-23', 1, '617 화랑빌딩 7F', 'admin@gmail.com', '010-1234-5678', '0', 0);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, status, lev)
VALUES ('bangry', '1111', '홍재헌', '1999-01-23', '2023-09-04', 2, '이젠아파트 101동', 'bangry@gmail.com', '010-1234-5678', '1', 0);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, status, lev, care_no)
VALUES ('furkids', '1111', '퍼키즈', '1970-01-23', '2023-06-14', 3, '175', 'furkids@gmail.com', '010-1234-5678', '2', 0, 1);
INSERT INTO MEMBER (member_id, passwd, name, birthday, regdate, adress_no, adress, email, tel, status, lev, care_no)
VALUES ('irion', '1111', '이리온', '1987-04-23', '2023-01-29', 4, '1275-7, 이석빌딩 2층', 'irion@gmail.com', '010-1234-5678', '2', 0, 2);

-- Notice 테이블 - 게시판
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (1, '자유게시판', '자유게시판입니다');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (2, '만땅 자료실', '자료 공유실입니다');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (3, '공지사항', '공지사항 게시판입니다');
INSERT INTO NOTICE (notice_no, title, contents)
VALUES (4, '묻고 답하기', '질의응답 게시판입니다');

-- Anno - 공지사항
INSERT INTO ANNO (anno_no, title, contents)
VALUES (1, '2023-08-08 홈페이지 점검 안내', '홈페이지 점검 예정이오니 확인 부탁드립니다');

-- Adopt 테이블 - 후기글
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, ref, ref_step, ref_level) 
VALUES (1, 'bangry', 1, '귀여운 강아지네요', '강아지 한 마리를 봤는데 너무 귀여워요', 231, '2023-09-24', 0, 0, 0);
INSERT INTO ADOPT (adopt_no, member_id, notice_no, title, contents, count, write_date, ref, ref_step, ref_level) 
VALUES (2, 'furkids', 1, '퍼키즈 방문해보세요', '다양한 강아지들이 있습니다', 23, '2023-09-24', 0, 0, 0);

-- Care_img 테이블 - 보호소 이미지
INSERT INTO CARE_IMG (care_img_no, care_no, care_img, care_1_img, care_2_img, care_3_img)
VALUES (1, 1, 'test-img.png', 'test-1-img', 'test-2-img', 'test-3-img');

-- Dog_kind 테이블 - 견종
INSERT INTO DOG_KIND (dog_kind_no, care_no, kind)
VALUES (1, 1, '웰시코기');

-- Dog 테이블 - 유기견
INSERT INTO DOG (dog_no, dog_kind_no, care_no, notice_date, find_place, age, weight, str_notice, end_notice, status, gender, surgery, etc, adopt_state)
VALUES (1, 1, 1, '2022-09-06', '수원시 달통구 교회앞', '8개월', '5kg', '2023-09-01', '2023-09-30', '1', '1', '1', '없음', '입양안됨');

-- Dog_img 테이블 - 보호소 이미지
INSERT INTO DOG_IMG (dog_img_no, dog_no, dog_img, dog_1_img, dog_2_img, dog_3_img)
VALUES (1, 1, 'test-dog-img.png', 'test-dog-1-img', 'test-dog-2-img', 'test-dog-3-img');

-- Chat 테이블 - 채팅
INSERT INTO CHAT (chat_no, member_id, chat_contents, write_date, care_no)
VALUES (1, 'bangry', '강아지는 언제 보러갈 수 있나요?', '2023-09-02', 1);

-- Donahistory 테이블 - 후원내역
INSERT INTO DONAHISTORY (donahistory_no, donation_date, member_id)
VALUES (1, '2023-09-03', 'bangry');

-- Donation 테이블 - 후원
INSERT INTO DONATION (donation_no, donahistory_no, donation)
VALUES (1, 1, 100000);

-- Reservation 테이블 - 예약
INSERT INTO RESERVATION (reservation_no, member_id, care_no, regdate)
VALUES (1, 'bangry', 1, '2023-09-01 09:00');

-- Volunhistory 테이블 - 봉사내역
INSERT INTO VOLUNHISTORY (volunhistory_no, volun_date, member_id)
VALUES (1, '2023-09-01', 'bangry');

-- Volunteer 테이블 - 봉사
INSERT INTO VOLUNTEER (volunteer_no, volunhistory_no, people)
VALUES (1, 1, 7);




commit;

rollback;




















