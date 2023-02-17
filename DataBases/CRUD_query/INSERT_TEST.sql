
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
value ('Q01','선택하신 강의를 신청하게 된 계기가 무엇인가요?','1');

insert into answer_list 
(ANSWER_UID,ANSWER,ORDERS,QUESTION_UID) 
value('A01','영어회화가 약해요',NULL,'Q01');

insert into lecture_poll 
(QUESTION_UID,ANSWER_UID,LECTURE_NUMBER) 
value('Q01','A01','LECTURE_24');

insert into member_log 
(CERTIFICATION_KEY,MEMBER_ID,LOGIN_DATE,LOGIN_STATUS) 
values('C9483WFDJJ1','ceromi123',now(),'login'),
('UUGH831231','circle01',now(),'login'),
('IVO3W6DYY1','admin',now(),'logout');

insert into community
(POST_NUMBER,POST_TITLE,MEMBER_ID,POSTING_DATE,VIEW_COUNT,PAGE_NUMBER,COMMUNITY_NUMBER) 
value('POST49글번호','글제목보기','ceromi123','2023-08-07',412,5,'CM03');

insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
value('POST48','강의추천','최치열샘 강의를 추천합니다','2',412,'ceromi123','CM03');



