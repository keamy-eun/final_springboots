-- CREATE
INSERT INTO lecture_review (SEARCH_WORD,POST_NUMBER,POST_TITLE,POST_REVIEW_COUNT,MEMBER_ID,POSTING_DATE,VIEW_COUNT,PAGE_NUMBER,COMMUNITY_NUMBER)
VALUES (null,'000022','안녕하세요 가입인사 드립니다','2','abc123',sysdate(),'37','1','HUN')
;

-- READ 
SELECT * FROM lecture_review;

-- UPDATE
UPDATE lecture_review 
SET POST_TITLE = '안녕안녕하세요 가입인사드립니다' 
WHERE COMMUNITY_NUMBER = 'HUN'
;

-- DELETE
DELETE FROM lecture_review
WHERE COMMUNITY_NUMBER='HUN'
;