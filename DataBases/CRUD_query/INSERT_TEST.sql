
insert into member 
(MEMBER_ID,PW,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD,PRIVACY_INFO)
values('ceromi123','비번1234','세로미','강사','1995-01-04','dnjsrl014@hanmail.net','YES','NO','YES'),
('circle01','비번4321','동그라미','학생','2005-11-04','circle@hanmail.net','NO','NO','YES'),
('admin','비번7777','은정이','관리자','1885-08-04','admin@hanmail.net',NULL,NULL,'YES');

insert into LECTURER 
(LECTURER_NUMBER, MEMBER_ID) 
value ('LECTURER_06', 'ceromi123');

insert into LECTURE 
(LECTURE_NUMBER,LECTURE_TITLE,UPLOAD_DATE,STUDENT_COUNT,LECTURER_NUMBER,MEMBER_ID,LECTURE_INTRO) 
value ('LECTURE_24', '영어회화초급01','2022-09-10',580,'LECTURER_06','ceromi123','영어회화능력을 향상시키는 기초 강좌');

insert into POLL_QUESTIONS 
(QUESTION_UID,QUESTION,ORDERS) 
values ('PQ01','선택하신 강의를 신청하게 된 계기가 무엇인가요?',1),('PQ01-1','(1번 질문에서 기타를 선택한 경우) 이유를 적어주세요',1-1),
('PQ02','하루에 공부하는 평균 시간은 어느정도 되시나요?',2),('PQ03','강의를 수강하실 때 주로 어떤 기기를 사용하시나요?',3),
('PQ04','수업에 대해 바라는 점이나 기타 궁금한 사항이 있다면 적어주세요',4);

INSERT INTO POLL_ANSWERS (ANSWER_UID,ANSWER,ORDERS,QUESTION_UID)
VALUES ('PA1-1', '지인의 추천으로', 1, 'PQ01'),('PA1-2', '인터넷 광고를 보고', 2, 'PQ01'),('PA1-3', 'SMS 광고를 보고', 3, 'PQ01'),('PA1-4', '수업이 마음에 들어서 재신청', 4, 'PQ01'),('PA1-5', '기타', 5, 'PQ01'),
 ('PA01-1', NULL, NULL, 'PQ01-1'),
 ('PA2-1', '30분 이하', 1, 'PQ02'),('PA2-2', '1시간 내외', 2, 'PQ02'),('PA2-3', '2시간 내외', 3, 'PQ02'),('PA2-4', '3시간 이상', 4, 'PQ02'),
 ('PA3-1', '스마트폰', 1, 'PQ03'),('PA3-2', '컴퓨터', 2, 'PQ03'),('PA3-3', '테블릿', 3, 'PQ03'),('PA3-4', '기타', 4, 'PQ03'),
 ('PA4', NULL, NULL, 'PQ04');
 
INSERT INTO poll_qa (QUESTION_UID,ANSWER_UID) 
VALUES ('PQ01','PA1-1'),('PQ01','PA1-2'),('PQ01','PA1-3'),('PQ01','PA1-4'),('PQ01','PA1-5'),
('PQ01-1','PA01-1'),
('PQ02','PA2-1'),('PQ02','PA2-2'),('PQ02','PA2-3'),('PQ02','PA2-4'),
('PQ03','PA3-1'),('PQ03','PA3-2'),('PQ03','PA3-3'),('PQ03','PA3-4'),
('PQ04','PA4');


insert into member_log 
(CERTIFICATION_KEY,MEMBER_ID,LOGIN_DATE,LOGIN_STATUS) 
values('C9483WFDJJ1','ceromi123',now(),'login'),
('UUGH831231','circle01',now(),'login'),
('IVO3W6DYY1','admin',now(),'logout');

insert into community
(COMMUNITY_NUMBER,COMMUNITY_NAME) 
values('C01','강좌게시판'),('C02','강사게시판'),('C03','학생게시판'),('C04','공지사항'),('C05','강의후기게시판');

insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
value('POST48','강의추천','최치열샘 강의를 추천합니다','2','2023-10-25',412,'ceromi123','C03');

insert into post_comment 
(COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER) 
value('CMN04','추천드려요','2023-11-11','ceromi123','POST48');

insert into test_questions 
(QUESTION_UID,QUESTION) 
values('TQ01','1.Mark your answer on your answer sheet'),('TQ02','2. Mark your answer on your answer sheet'),
('TQ03','3. What will the speakers mainly talk about?'),('TQ04','4. What does the woman say about the stories about change?'),
('TQ05','5. What is the womans main purpose in calling?'),('TQ06','6. Trebelers can earn reward points ______ than .'),
('TQ07','7. The doctors _____ to Mr. Ellsworth was that he should exercise more to keep his wight down');

insert into test_answers 
(ANSWER_UID,ANSWER)
value ('TA01','A'),('TA02','D'),('TA03','D'),('TA04','B'),('TA05','A'),('TA06','C'),('TA07','D');

insert into selftest_result 
(MEMBER_ID,QUESTION_UID,ANSWER_UID) 
values('ceromi123','TQ01','TA01'),('ceromi123','TQ02','TA02'),('ceromi123','TQ03','TA03'),
('ceromi123','TQ04','TA04'),('ceromi123','TQ05','TA05'),('ceromi123','TQ06','TA06'),('ceromi123','TQ07','TA07');
