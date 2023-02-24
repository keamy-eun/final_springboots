-- CREATE
INSERT INTO member (MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD)
VALUES ("abc123","mike","학생","1994-03-10","abc123@gmail.com",'YES','NO')
;
INSERT INTO member (MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD)
VALUES ("jsu1212","junsuk","강사","1992-01-13","jsu1212@gmail.com",'NO','YES')
;
-- test 데이터 늘리기용
insert into member 
(MEMBER_ID,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD) 
select concat(ANSWER_UID, now()), '테스트Name','테스트POSITION','테스트BIRTH','테스트EMAIL', 'NO', 'YES' 
from POLL_ANSWERS
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