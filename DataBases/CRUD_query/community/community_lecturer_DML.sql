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