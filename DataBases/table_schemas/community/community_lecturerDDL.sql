
CREATE TABLE community_lecturer
(
  COMMUNITY_NUMBER   VARCHAR(100) NULL     COMMENT '게시판번호',
  POST_NUMBER        VARCHAR(100) NULL     COMMENT '게시글번호',
  TITLE              VARCHAR(100) NULL     COMMENT '제목',
  POSTING_MEMBER     VARCHAR(100) NULL     COMMENT '작성자',
  POSTING_DATE       VARCHAR(100) NULL     COMMENT '작성일',
  VIEW_COUNT         INTEGER      NULL     COMMENT '조회수',
  PAGE_NUMBER        INTEGER      NULL     COMMENT '페이지번호'
) COMMENT '강사게시판';
