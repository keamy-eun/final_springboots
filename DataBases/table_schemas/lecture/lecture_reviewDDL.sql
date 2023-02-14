
CREATE TABLE LECTURE_REVIEW
(
  SEARCH_WORD       VARCHAR(100) NULL     COMMENT '검색어(수업후기게시판)',
  POST_NUMBER       VARCHAR(100) NULL     COMMENT '글번호(수업후기게시판)',
  POST_TITLE        VARCHAR(100) NULL     COMMENT '제목(수업후기게시판)',
  POST_REVIEW_COUNT INTEGER      NULL     COMMENT '게시글리뷰수(수업후기게시판)',
  POSTING_USER      VARCHAR(100) NULL     COMMENT '작성자(수업후기게시판)',
  POSTING_DATE      VARCHAR(100) NULL     COMMENT '작성일(수업후기게시판)',
  VIEW_COUNT        INTEGER      NULL     COMMENT '조회수(수업후기게시판)',
  PAGE_NUMBER       INTEGER      NULL     COMMENT '페이지번호(수업후기게시판)'
) COMMENT '수업 후기 게시판';
