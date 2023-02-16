-- CREATE
INSERT INTO community_lecture (POST_NUMBER,POST_TITLE,MEMBER_ID,POSTING_DATE,VIEW_COUNT,PAGE_NUMBER,COMMUNITY_NUMBER)
VALUES ('000022','안녕하세요 가입인사 드립니다','abc123',sysdate(),'37','1','HUN')
;

-- READ 
SELECT * FROM community_lecture;

-- UPDATE
UPDATE community_lecture 
SET POST_TITLE = '안녕안녕하세요 가입인사드립니다' 
WHERE COMMUNITY_NUMBER = 'HUN'
;

-- DELETE
DELETE FROM community_lecture
WHERE COMMUNITY_NUMBER='HUN'
;