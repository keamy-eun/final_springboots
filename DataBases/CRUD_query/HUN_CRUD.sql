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
-- UPDATE   --UPDATE하는 곳이 아닌것같다..
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
INSERT INTO TEST_ANSWERS (ANSWER_UID, ANSWER)
VALUES ('TA01', '(A)'), ('TA01', '(B)'), ('TA01', '(C)'), ('TA01', '(D)'),
('TA02', '(A)'), ('TA02', '(B)'), ('TA02', '(C)'), ('TA02', '(D)'),
('TA03', '(A)Mans political view'), ('TA03', '(B)Mans future plan'), ('TA03', '(C)Mans academic career'), ('TA03', '(D)Mans professional backgroud'),
('TA04', '(A)They might be true'), ('TA04', '(B)They upset her'), ('TA04', '(C)They suprised her'), ('TA04', '(D)They suprised her'),
('TA05', '(A)To arrange for the car'), ('TA05', '(B)To tell the man'), ('TA05', '(C)mans credit card number'), ('TA05', '(D)the work will be finished'),
('TA06', '(A)quick'), ('TA06', '(B)quickly'), ('TA06', '(C)more quickly'), ('TA06', '(D)most quickly'),
('TA07', '(A)method'), ('TA07', '(B)concern'), ('TA07', '(C)relief'), ('TA07', '(D)advice')
;
-- READ
SELECT  *
FROM TEST_QUESTIONS
INNER JOIN TEST_ANSWERS
-- WHERE TEST_QUESTIONS.QUESTION_UID = TEST_ANSWERS.QUESTION_UID
;
-- UPDATE
UPDATE TEST_QUESTIONS 
SET QUESTION = '7. The students _____ to Mr. Ellsworth was that he should exercise more to keep his wight down'
--  그냥 doctor을 student로만 바꿔둠
WHERE QUESTION_UID = 'TQ07'
;
-- DELETE
DELETE FROM TEST_ANSWERS
WHERE ANSWER_UID='TA07'
;


	-- mypage_member_edit
-- CREATE  -- 개인정보 수정인데 CREATE가 필요할까..

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
-- CREATE 가 필요할까..
-- READ
SELECT  community_post.COMMUNITY_TITLE, community_post.COMMUNITY_CONTENT   -- + 이미지
FROM community_post
;
-- UPDATE
-- UPDATE도...
-- DELETE
-- DELETE도...
	