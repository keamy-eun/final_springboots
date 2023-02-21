 -- mypage_signup_lecturelist
-- CREATE 
INSERT INTO 수강신청리스트 (LECTURE_TITLE, MEMBER_NAME)
VALUES ('직장인비즈니스중국어', '도우너')
;
INSERT INTO 수강신청리스트 (LECTURE_TITLE, MEMBER_NAME)
VALUES ('누구나 할수있는 8주 영어문법 마스터', '고희동')
;
-- READ
SELECT lecture.LECTURE_TITLE, MEMBER.MEMBER_NAME
FROM LECTURE
INNER JOIN MEMBER
ON member.MEMBER_ID = lecture.MEMBER_ID
;
-- UPDATE   
UPDATE 수강신청리스트 
SET LECTURE_TITLE = '850점 토익 챌린지' 
WHERE MEMBER_ID = '1'   -- 도우너의 멤버ID
;
UPDATE 수강신청리스트 
SET LECTURE_TITLE = '쉽고 빠른 영어 독해 마스터' 
WHERE MEMBER_ID = '2'   --  고희동의 멤버ID
;
-- DELETE
DELETE FROM 수강신청리스트
WHERE LECTURE_NUMBER='1'
;
DELETE FROM 수강신청리스트
WHERE LECTURE_NUMBER='2'
;


-- mypage_selfTestResult
-- CREATE
INSERT INTO mypage_selfTestResult (MEMBER_NAME, MEMBER_TEST_SCORE, QUESTION_UID)
VALUES ('홍길동', '720', '사물에 관련된 영어표현')
;
-- READ
SELECT  mypage_selfTestResult.MEMBER_NAME, mypage_selfTestResult.MEMBER_TEST_SCORE, TEST_QUESTIONS.QUESTION_UID
FROM mypage_selfTestResult
INNER JOIN TEST_QUESTIONS
ON mypage_selfTestResult.QUESTION_UID = TEST_QUESTIONS.QUESTION_UID
;
-- UPDATE
UPDATE mypage_selfTestResult 
SET MEMBER_TEST_SCORE = '750'  -- 기존 720에서 750으로 변경
WHERE MEMBER_ID = 'm1'
;
-- DELETE
DELETE FROM mypage_selfTestResult
WHERE MEMBER_ID='m1'
;


-- mypage_selfTest
-- CREATE
INSERT INTO mypage_selfTest (TEST_QUESTION, TEST_ANSWER)
VALUES ('1. Mark your answer on your answer sheet', '(A)')
;
-- READ
SELECT  TEST_QUESTION, TEST_ANSWER  --  + 나중에 이미지
FROM mypage_selfTest
;
-- UPDATE
UPDATE mypage_selfTest 
SET TEST_ANSWER = '(1)' 
WHERE TEST_QUESTION = '1. Mark your answer on your answer sheet'
;
-- DELETE
DELETE FROM mypage_selfTest
WHERE TEST_QUESTION='1. Mark your answer on your answer sheet'
;


-- mypage_member_edit
-- CREATE  

-- READ
SELECT  MEMBER_NAME, MEMBER_ID, PW, EMAIL_ID, BIRTH, SMS_AD, EMAIL_AD
FROM member
;
-- UPDATE
UPDATE member 
SET MEMBER_NAME = '네모'    -- 동그라미 -> 네모
WHERE MEMBER_ID = 'circle00'
;
-- DELETE
DELETE FROM member
WHERE MEMBER_ID='circle00'
;


-- mypage_Lecture
-- CREATE
INSERT INTO mypage_Lecture (POST_NUMBER, COMMUNITY_TITLE, MEMBER_NAME, COMMUNITY_DATE, VIEW_COUNT)
VALUES  ('1', '[강좌 추천]길동선생님의 영어문법강좌 강추합니다 [23]', '희동이', '2023-01-02', '52')
;
-- READ
SELECT  community_post.POST_NUMBER, community_post.COMMUNITY_TITLE, community_post.COMMUNITY_CONTENT, member.MEMBER_NAME, community_post.COMMUNITY_DATE, community_post.VIEW_COUNT
FROM community_post
INNER JOIN member
ON community_post.MEMBER_ID = member.MEMBER_ID
;
-- UPDATE
UPDATE community_post 
SET COMMUNITY_TITLE = '[질문]used to의 사용법을 잘 모르겠어요 [4]'    -- 제목 변경
WHERE POST_NUMBER = '1'
;
-- DELETE
DELETE FROM community_post
WHERE POST_NUMBER='1'
;


-- main page
-- CREATE
-- READ
SELECT  community_post.COMMUNITY_TITLE, community_post.COMMUNITY_CONTENT   -- + 이미지
FROM community_post
;
-- UPDATE
	

-- CREATE
INSERT INTO member (MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD)
VALUES ("abc123","mike","USER","1994-03-10","abc123@gmail.com",true,true)
;
INSERT INTO member (MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD)
VALUES ("jsu1212","junsuk","ADMIN","1992-01-13","jsu1212@gmail.com",false,true)
;

-- READ 
SELECT * FROM member;

-- UPDATE
UPDATE member
SET EMAIL = 'abc123@naver.com' 
WHERE MEMBER_ID = 'abc123'
;

-- DELETE
DELETE FROM member
WHERE MEMBER_ID='jsu1212'
;

-- CREATE
INSERT INTO member (MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD)
VALUES ("abc123","mike","USER","1994-03-10","abc123@gmail.com",true,true)
;
INSERT INTO member (MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD)
VALUES ("jsu1212","junsuk","ADMIN","1992-01-13","jsu1212@gmail.com",false,true)
;

-- READ 
SELECT * FROM member;

-- UPDATE
UPDATE member
SET EMAIL = 'abc123@naver.com' 
WHERE MEMBER_ID = 'abc123'
;

-- DELETE
DELETE FROM member
WHERE MEMBER_ID='jsu1212'
;

-- CREATE
INSERT INTO community_post (POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER)
VALUES ("223","오늘 배워볼 내용은....","오늘의 문법공부 첫번째","문법요약.pdf",sysdate(),215,"abc123","STUDENT03")
;
INSERT INTO post_comment (COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER)
VALUES ("653","오늘도 좋은 정보 감사합니다",sysdate(),"abc123","223")
;
INSERT INTO community_post (POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER)
VALUES ("224","오늘 배워볼 영단어는 무엇일까요?...","오늘의 영어단어 외우기","영어단어장.pdf",sysdate(),215,"jsu1212","STUDENT03")
;
INSERT INTO post_comment (COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER)
VALUES ("652","잘 외웠는지 모르겠네요...",sysdate(),"abc123","223")
;
INSERT INTO post_comment (COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER)
VALUES ("654","영단어 외울수록 재미있어요",sysdate(),"jsu1212","223")
;


-- READ 
-- 게시판과 유저
SELECT *
FROM community_post
inner join member where community_post.MEMBER_ID = member.MEMBER_ID
;
-- 게시판 종류와 게시판내용
SELECT * 
FROM community_post
inner join community where community_post.COMMUNITY_NUMBER = community.COMMUNITY_NUMBER
;
-- 댓글과 게시판 내용
SELECT * 
FROM community_post
inner join post_comment where community_post.POST_NUMBER = post_comment.POST_NUMBER
;
--  전체
SELECT * FROM community_post;
SELECT * FROM post_comment;


-- UPDATE
UPDATE community_post
SET COMMUNITY_TITLE = '매일매일 영단어' 
WHERE POST_NUMBER = '223'
;
UPDATE post_comment
SET COMMENT_NUMBER = '654' 
WHERE COMMENT_CONTENT = '(수정됨) 이게 맞는지 모르겠습니다'
;

-- DELETE
DELETE FROM community_post
WHERE COMMUNITY_TITLE='매일매일 영단어'
;
-- DELETE
DELETE FROM post_comment
WHERE COMMENT_NUMBER='654'
;

-- COMMUNITY_POSTWRITE
-- insert
insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
values('POST51','강의추천1','한국샘 강의를 추천합니다','1','2023-10-25',412,'ceromi123','C03'),
('POST52','강의추천3','지리샘 강의를 추천합니다','1','2023-11-07',412,'ceromi123','C03');

-- select
select COMMUNITY_POST.COMMUNITY_TITLE, COMMUNITY.COMMUNITY_NAME,  COMMUNITY_POST.FILE_ATTACHIMENT, COMMUNITY_POST.COMMUNITY_CONTENT
from COMMUNITY_POST 
INNER JOIN COMMUNITY ON COMMUNITY_POST.COMMUNITY_NUMBER = COMMUNITY.COMMUNITY_NUMBER;

-- update
update community_post 
set COMMUNITY_CONTENT = '추천드린 강좌 내용을 수정합니다.',FILE_ATTACHIMENT='1' 
where POST_NUMBER = 'POST51' 
;

-- delete
delete from community_post where POST_NUMBER = 'POST51';

-- COMMUNITY_STUDENT
-- insert
insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
values('POST51','강의추천1','한국샘 강의를 추천합니다','1','2023-10-25',412,'ceromi123','C03'),
('POST52','강의추천3','지리샘 강의를 추천합니다','1','2023-11-07',412,'ceromi123','C03');

insert into post_comment 
(COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER) 
values('CMN07','굿굿','2023-11-12','ceromi123','POST51'),
('CMN08','추천드려요!!!','2023-11-11','ceromi123','POST51');

-- select
select COMMUNITY_POST.POST_NUMBER, COMMUNITY_POST.COMMUNITY_TITLE,(select count(*) from post_comment where post_number = COMMUNITY_POST.POST_NUMBER), COMMUNITY_POST.MEMBER_ID, COMMUNITY_POST.COMMUNITY_DATE, COMMUNITY_POST.VIEW_COUNT 
from COMMUNITY_POST 
INNER JOIN post_comment ON COMMUNITY_POST.POST_NUMBER = post_comment.POST_NUMBER;

-- update
update community_post 
set COMMUNITY_CONTENT = '추천드린 강좌 내용을 수정합니다.',FILE_ATTACHIMENT='1' 
where POST_NUMBER = 'POST51' 
;

-- delete
delete from community_post where POST_NUMBER = 'POST51';


-- LECTURE_REVIEW
-- insert
insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
values('POST25','초급자가 보기에도 어렵지 않았어요','강의가 너무 친절해요','3','2023-10-28',233,'ceromi123','C05'),
('POST47','최상위권을 위한 딱 맞는 강좌인거같아요.','난이도 굿굿','1','2023-06-07',1412,'circle01','C05');

-- select
select COMMUNITY_POST.POST_NUMBER, COMMUNITY_POST.COMMUNITY_TITLE,(select count(*) from post_comment where post_number = COMMUNITY_POST.POST_NUMBER), COMMUNITY_POST.MEMBER_ID, COMMUNITY_POST.COMMUNITY_DATE, COMMUNITY_POST.VIEW_COUNT 
from COMMUNITY_POST 
INNER JOIN post_comment ON COMMUNITY_POST.POST_NUMBER = post_comment.POST_NUMBER;

update community_post 
set COMMUNITY_CONTENT = '추천드린 강좌 내용을 수정합니다.',FILE_ATTACHIMENT='4' 
where POST_NUMBER = 'POST51' 
;

-- delete
delete from community_post where POST_NUMBER = 'POST51';

-- LECTURE_SIGNUP
-- insert
insert into POLL_QUESTIONS 
(QUESTION_UID,QUESTION,ORDERS) 
value ('PQ06','특이사항이 있나요?',1);
INSERT INTO POLL_ANSWERS (ANSWER_UID,ANSWER,ORDERS,QUESTION_UID)
VALUES ('PA6-5', '특이사항', 1, 'PQ01');

-- select
select poll_answers.ORDERS, poll_questions.QUESTION, poll_answers.ANSWER 
from poll_questions 
INNER JOIN poll_answers ON poll_questions.QUESTION_UID = poll_answers.QUESTION_UID
ORDER BY poll_answers.ORDERS ASC ;

update poll_questions
set QUESTION = '선택하신 강의를 신청하게 된 계기와 이유 무엇인가요?' 
where QUESTION_UID = 'PQ01'  
;
update poll_answers
set ANSWER = '강의 내용이 좋아서'  
where QUESTION_UID = 'PA1-4'  
;

-- delete
delete from poll_answers where ANSWER_UID = 'PA1-4';
delete from poll_questions where QUESTION_UID = 'PQ01';

-- LECTURE_SIGNUP_LIST
-- insert
insert into LECTURE 
(LECTURE_NUMBER,LECTURE_TITLE,UPLOAD_DATE,STUDENT_COUNT,LECTURER_NUMBER,MEMBER_ID,LECTURE_INTRO) 
values ('LECTURE_25', '영어문법초급02','2022-04-17',220,'LECTURER_06','ceromi123','영어문법능력을 향상시키는 기초 강좌'),
('LECTURE_26', '영어회화중급01','2022-12-10',1140,'LECTURER_06','ceromi123','영어회화능력을 향상시키는 중급자용 강좌');

-- select
select LECTURE_TITLE,LECTURE_INTRO  
from LECTURE ;

update LECTURE 
set LECTURE_INTRO = '중급자 또는 초급 심화를 위한 강좌',LECTURE_TITLE='영어회화중급01(초급심화)' 
where LECTURE_NUMBER = 'LECTURE_26' 
;

-- delete
delete from LECTURE where LECTURE_NUMBER = 'LECTURE_26';


-- MAIN_SIGNUP
-- insert
insert into member 
(MEMBER_ID,PW,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD,PRIVACY_INFO)
value('haruharu01','비번1234','하루','학생','2010-11-22','haruzzang14@hanmail.net','YES','NO','YES');

-- select
select * 
from member
where MEMBER_ID = 'haruharu01' ;

update member 
set SMS_AD = 'NO',PRIVACY_INFO='NO' 
where MEMBER_ID = 'haruharu01'  
;

-- delete
delete from member where MEMBER_ID = 'haruharu01' ;