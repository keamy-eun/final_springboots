
insert into member 
(MEMBER_ID,PW,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD,PRIVACY_INFO)
values('ceromi123','비번1234','세로미','강사','1995-01-04','dnjsrl014@hanmail.net','YES','NO','YES'),
('nas8808','비번1234','남혜인','학생','1997-11-15','hein55@hanmail.net','NO','NO','YES'),
('circle01','비번4321','동그라미','학생','2005-11-04','circle@hanmail.net','NO','NO','YES'),
('admin','비번7777','은정이','관리자','1885-08-04','admin@hanmail.net',NULL,NULL,'YES');

insert into LECTURER 
(LECTURER_NUMBER, MEMBER_ID) 
value ('LECTURER_06', 'ceromi123');

insert into LECTURE 
(LECTURE_NUMBER,LECTURE_TITLE,UPLOAD_DATE,STUDENT_COUNT,LECTURER_NUMBER,LECTURE_INTRO,LECTURE_IMAGE) 
values ('LECTURE_24', '영어회화초급01','2022-09-10',580,'LECTURER_06','영어 단어를 외웠는데도 회화에 적용이 안 되나요? 영어로 계속해서 대화를 이끌어나가는 게 어려운가요?회화에 자주 쓰이는 단어만 골라서 외우고 싶으신가요? 영어 단어를 주제별로 공부하고 싶으신분. 영어회화초급반이 딱입니다!','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg'),
('LECTURE_12', '영어문법중급A','2023-01-11',410,'LECTURER_06','문법을 배우기엔 지겹고,회화를 배우려니 자신이 없으신 분들! 최소한의 문법으로 최대한의 회화 실력을 이끌어 드립니다. 문법에 재미를 느낄 수 있는 문법 중급 강좌','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg'),
('LECTURE_13', '850점 토익챌린지','2023-02-11',14510,'LECTURER_06','650~750 사이 토익공부에 어려움을 느끼시는 분들! 주저말고 신청하세요 토익 만점자 도우너 선생님의 수업과 함께 단기간 점수상승의 기회! 학습한 영어 단어를 활용한 다양한 예문 소개','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg'),
('LECTURE_14', '누구나 할수있는 8주 영어문법 마스터','2022-08-11',41880,'LECTURER_06','홍길동 선생님의 이해가 쏙쏙되는 강의를 들어보세요 수강생들 모두가 만족하는 강의로써 2달간 영어 문법을 듣고 기초적인 문법을 다져보세요 홍길동 선생님의 이해가 쏙쏙되는 강의를 들어보세요 아주 만족하실거에요~','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg'),
('LECTURE_15', '평범한 직장인의 비즈니스 일상회화','2023-01-19',1810,'LECTURER_06','- 획일화된 비즈니스 상황에 집중된 강의에서 벗어나, 평범한 직장인이 맞닥뜨릴 수 있는 회사 관련 일상 회화를 배워 보는 강의 / 어렵고 적용하기 힘든 비즈니스 용어가 아닌 동료와의 관계, 회사 생활, 일상적인 업무에 관한 비즈니스 회화 강의','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg'),
('LECTURE_16', '시추에이션 영작문','2022-07-25',41630,'LECTURER_06','★ 상황으로 쉽고 재밌게 배우는 영작문 강의! 직장, 여행, 일상회화, 인터뷰 상황에서 쓸 수 있는 다양한 문장을 영작해볼 수 있고 상황 별로 자주 사용하는 표현, 패턴을 기반으로 쉽고 효과적으로 문장을 영작할 수 있게됩니다. 영작 뿐 아니라 회화에도 활용할 수 있는 강의','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg'),
('LECTURE_17', '나의 행동을 표현하는 모든 영어 1','2022-11-27',14610,'LECTURER_06','결재 서류를 올리다? QR코드를 찍다? 일상생활에서의 나의 행동을 사소하지만 영어로 어떻게 표현하는지 미처 알지 못했던 단어와 표현이 있으셨죠? 친구나 동료와 나의 평범한 일상을 영어로 이야기 할 수 있도록, 어휘력 업그레이드가 필요합니다.','https://img.lovepik.com/photo/50050/9741.jpg_wh860.jpg');

insert into enrollment 
(LECTURE_NUMBER,MEMBER_ID,ENROLL_DATE,ENROLL_CANCEL) 
values ('LECTURE_14','circle01',now(),'CANCELED'),('LECTURE_15','circle01',now(),'NOT CANCELED'),('LECTURE_16','circle01',now(),'NOT CANCELED'),
('LECTURE_17','circle01',now(),'NOT CANCELED'),('LECTURE_24','nas8808',now(),'NOT CANCELED'),('LECTURE_12','nas8808',now(),'NOT CANCELED'),
('LECTURE_13','nas8808',now(),'CANCELED'),('LECTURE_14','nas8808',now(),'CANCELED'),('LECTURE_15','nas8808',now(),'NOT CANCELED');


insert into POLL_QUESTIONS 
(QUESTION_UID,QUESTION,ORDERS) 
values ('PQ01','선택하신 강의를 신청하게 된 계기가 무엇인가요?','1'),('PQ01_1','(1번 질문에서 기타를 선택한 경우) 이유를 적어주세요','1-1'),
('PQ02','하루에 공부하는 평균 시간은 어느정도 되시나요?','2'),('PQ03','강의를 수강하실 때 주로 어떤 기기를 사용하시나요?','3'),
('PQ04','수업에 대해 바라는 점이나 기타 궁금한 사항이 있다면 적어주세요','4');

INSERT INTO POLL_ANSWERS (ANSWER_UID,ANSWER,ORDERS,QUESTION_UID)
VALUES ('PA1-1', '지인의 추천으로', '1', 'PQ01'),('PA1-2', '인터넷 광고를 보고', '2', 'PQ01'),('PA1-3', 'SMS 광고를 보고', '3', 'PQ01'),('PA1-4', '수업이 마음에 들어서 재신청', '4', 'PQ01'),('PA1-5', '기타', '5', 'PQ01'),
 ('PA01-1', NULL, NULL, 'PQ01_1'),
 ('PA2-1', '30분 이하', '1', 'PQ02'),('PA2-2', '1시간 내외', '2', 'PQ02'),('PA2-3', '2시간 내외', '3', 'PQ02'),('PA2-4', '3시간 이상', '4', 'PQ02'),
 ('PA3-1', '스마트폰', '1', 'PQ03'),('PA3-2', '컴퓨터', '2', 'PQ03'),('PA3-3', '테블릿', '3', 'PQ03'),('PA3-4', '기타', '4', 'PQ03'),
 ('PA4', NULL, NULL, 'PQ04');
 

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
