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
-- INSERT INTO mypage_selfTestResult (MEMBER_NAME, MEMBER_TEST_SCORE, QUESTION_UID)
-- VALUES ('홍길동', '720', '사물에 관련된 영어표현')
;
-- READ
SELECT  *
FROM mypage_selfTestResult
INNER JOIN TEST_QUESTIONS
ON mypage_selfTestResult.QUESTION_UID = TEST_QUESTIONS.QUESTION_UID
;
-- UPDATE
UPDATE mypage_selfTestResult 
SET MEMBER_TEST_SCORE = '750'  -- 기존 720에서 750으로 변경
WHERE MEMBER_ID = 'ceromi123'
;
-- DELETE
DELETE FROM mypage_selfTestResult
WHERE MEMBER_ID='ceromi123	'
;


	-- mypage_selfTest
-- CREATE
INSERT INTO TEST_QUESTIONS (QUESTION_UID, QUESTION)
VALUES ('TQ08', '8. hi!! _ name is hun')
;
INSERT INTO TEST_ANSWERS (ANSWER_UID, ANSWER, QUESTION_UID)
VALUES ('TA101', '(A)', 'TQ01'), ('TA102', '(B)', 'TQ01'), ('TA103', '(C)', 'TQ01'), ('TA104', '(D)', 'TQ01'),
('TA201', '(A)', 'TQ02'), ('TA202', '(B)', 'TQ02'), ('TA203', '(C)', 'TQ02'), ('TA204', '(D)', 'TQ02'),
('TA301', '(A)Mans political view', 'TQ03'), ('TA302', '(B)Mans future plan', 'TQ03'), ('TA303', '(C)Mans academic career', 'TQ03'), ('TA304', '(D)Mans professional backgroud', 'TQ03'),
('TA401', '(A)They might be true', 'TQ04'), ('TA402', '(B)They upset her', 'TQ04'), ('TA403', '(C)They suprised her', 'TQ04'), ('TA404', '(D)They suprised her', 'TQ04'),
('TA501', '(A)To arrange for the car', 'TQ05'), ('TA502', '(B)To tell the man', 'TQ05'), ('TA503', '(C)mans credit card number', 'TQ05'), ('TA504', '(D)the work will be finished', 'TQ05'),
('TA601', '(A)quick', 'TQ06'), ('TA602', '(B)quickly', 'TQ06'), ('TA603', '(C)more quickly', 'TQ06'), ('TA604', '(D)most quickly', 'TQ06'),
('TA701', '(A)method', 'TQ07'), ('TA702', '(B)concern', 'TQ07'), ('TA703', '(C)relief', 'TQ07'), ('TA704', '(D)advice', 'TQ07')
;
-- READ
SELECT  *
FROM TEST_QUESTIONS
INNER JOIN TEST_ANSWERS
-- WHERE TEST_QUESTIONS.QUESTION_UID = TEST_ANSWERS.QUESTION_UID
;
SELECT  *
FROM TEST_QUESTIONS
;
SELECT *
FROM TEST_ANSWERS
;
-- UPDATE
UPDATE TEST_QUESTIONS 
SET QUESTION = '7. The students _____ to Mr. Ellsworth was that he should exercise more to keep his wight down'
-- 그냥 doctor을 student로만 바꿔둠
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
	