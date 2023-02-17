
insert into member 
(MEMBER_ID,PW,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD,MEMBER_LECTURE,MEMBER_SIGNUP_LECTURE_LIST,TEST_RESULT)
values('ceromi123','비번1234','세로미','강사','1995-01-04','dnjsrl014@hanmail.net','YES','NO','나의강의','강좌신청목록1',88),
('circle01','비번4321','동그라미','학생','2005-11-04','circle@hanmail.net','NO','NO','나의강의','강좌신청목록3',65),
('admin','비번7777','은정이','관리자','1885-08-04','admin@hanmail.net',NULL,NULL,NULL,NULL,NULL);
insert into LECTURER 
(LECTURER_NUMBER, MEMBER_ID) 
value ('LECTURER_06', 'ceromi123');

insert into LECTURE 
(LECTURE_NUMBER,LECTURE_TITLE,UPLOAD_DATE,STUDENT_COUNT,LECTURER_NUMBER,MEMBER_ID) 
value ('LECTURE_24', '영어회화초급01','2022-09-10',580,'LECTURER_06','ceromi123');

insert into question_list 
(QUESTION_UID,QUESTION,ORDERS) 
value ('Q01','선택하신 강의를 신청하게 된 계기가 무엇인가요?',1);
insert into question_list 
(QUESTION_UID,QUESTION,ORDERS) 
value ('Q01-1','(1번 질문에서 기타를 선택한 경우) 이유를 적어주세요',1-1);
insert into question_list 
(QUESTION_UID,QUESTION,ORDERS) 
value ('Q02','하루에 공부하는 평균 시간은 어느정도 되시나요?',2);
insert into question_list 
(QUESTION_UID,QUESTION,ORDERS) 
value ('Q03','강의를 수강하실 때 주로 어떤 기기를 사용하시나요?',3);
insert into question_list 
(QUESTION_UID,QUESTION,ORDERS) 
value ('Q04','수업에 대해 바라는 점이나 기타 궁금한 사항이 있다면 적어주세요',4);


INSERT INTO answer_list(ANSWER_UID,ANSWER,ORDERS,QUESTION_UID)
VALUES ('A01', '인터넷 광고를 보고', 2, 'Q01'), ('A01-1', NULL, NULL, 'Q01-1'),
 ('A2', '3시간 이상', 4, 'Q02'), ('A3', '스마트폰', 1, 'Q03'),
 ('A4', '보충강좌 있으면 좋을것 같아요', NULL, 'Q04');

insert into lecture_poll 
(QUESTION_UID,ANSWER_UID,LECTURE_NUMBER) 
value('Q01','A01','LECTURE_24');

insert into member_log 
(CERTIFICATION_KEY,MEMBER_ID,LOGIN_DATE,LOGIN_STATUS) 
values('C9483WFDJJ1','ceromi123',now(),'login'),
('UUGH831231','circle01',now(),'login'),
('IVO3W6DYY1','admin',now(),'logout');

insert into community
(COMMUNITY_NUMBER,COMMUNITY_NAME) 
values('C01','강좌게시판'),('C02','강사게시판'),('C03','학생게시판'),('C04','공지사항');

insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
value('POST48','강의추천','최치열샘 강의를 추천합니다','2',412,'ceromi123','C03');

insert into post_comment 
(COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER) 
value('CMN04','추천드려요','2023-11-11','ceromi123','POST48');
