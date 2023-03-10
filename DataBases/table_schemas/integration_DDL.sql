
CREATE TABLE COMMENT_NUM_SEQ
(
  ID     INTEGER      NOT NULL COMMENT 'INT부분',
  SEQ_NM VARCHAR(100) NOT NULL COMMENT 'STRING부분 '
);

CREATE TABLE COMMUNITY
(
  COMMUNITY_NUMBER VARCHAR(100) NOT NULL COMMENT '게시판번호',
  COMMUNITY_NAME   VARCHAR(100) NULL     COMMENT '게시판이름',
  PRIMARY KEY (COMMUNITY_NUMBER)
) COMMENT '게시판';

CREATE TABLE COMMUNITY_POST
(
  POST_NUMBER       VARCHAR(100) NOT NULL COMMENT '게시글번호',
  COMMUNITY_CONTENT MEDIUMTEXT   NULL     COMMENT '게시글내용',
  COMMUNITY_TITLE   VARCHAR(100) NULL     COMMENT '게시글제목',
  FILE_ATTACHIMENT  VARCHAR(100) NULL     COMMENT '첨부파일',
  COMMUNITY_DATE    VARCHAR(100) NULL     COMMENT '작성일',
  VIEW_COUNT        INTEGER      NULL     COMMENT '조회수',
  MEMBER_ID         VARCHAR(100) NOT NULL COMMENT '아이디',
  COMMUNITY_NUMBER  VARCHAR(100) NOT NULL COMMENT '게시판번호',
  COMMENT_CONTENT   VARCHAR(100) NULL     COMMENT '댓글 내용',
  COMMENT_DATE      VARCHAR(100) NULL     COMMENT '댓글 작성일',
  PRIMARY KEY (POST_NUMBER)
) COMMENT '게시글';

CREATE TABLE ENROLLMENT
(
  LECTURE_NUMBER      VARCHAR(100) NOT NULL COMMENT '강의번호',
  MEMBER_ID           VARCHAR(100) NOT NULL COMMENT '아이디',
  ENROLL_DATE         VARCHAR(100) NULL     COMMENT '수강신청일',
  ENROLL_EXPIRED_DATE VARCHAR(100) NULL     COMMENT '수강종료일'
) COMMENT '수강신청';

CREATE TABLE LECTURE
(
  LECTURE_NUMBER  VARCHAR(100) NOT NULL COMMENT '강의번호',
  LECTURE_TITLE   VARCHAR(100) NULL     COMMENT '제목',
  UPLOAD_DATE     VARCHAR(100) NULL     COMMENT '등록일',
  STUDENT_COUNT   INTEGER      NULL     COMMENT '수강생수',
  LECTURER_NUMBER VARCHAR(100) NOT NULL COMMENT '강사번호',
  LECTURE_INTRO   VARCHAR(200) NULL     COMMENT '강좌소개',
  LECTURE_IMAGE   VARCHAR(200) NULL     COMMENT '강좌이미지',
  PRIMARY KEY (LECTURE_NUMBER)
) COMMENT '강좌';

CREATE TABLE LECTURE_POLL
(
  QUESTION_UID   VARCHAR(100) NOT NULL COMMENT '문항대표값',
  ANSWER_UID     VARCHAR(100) NOT NULL COMMENT '답항대표값',
  LECTURE_NUMBER VARCHAR(100) NOT NULL COMMENT '강의번호'
) COMMENT '강좌설문조사';

CREATE TABLE LECTURER
(
  LECTURER_NUMBER VARCHAR(100) NOT NULL COMMENT '강사번호',
  MEMBER_ID       VARCHAR(100) NOT NULL COMMENT '아이디',
  PRIMARY KEY (LECTURER_NUMBER)
) COMMENT '강사';

CREATE TABLE MEMBER
(
  MEMBER_ID    VARCHAR(100) NOT NULL COMMENT '아이디',
  PW           VARCHAR(100) NULL     COMMENT '비밀번호',
  MEMBER_NAME  VARCHAR(100) NULL     COMMENT '이름',
  POSITION     VARCHAR(100) NULL     COMMENT '권한',
  BIRTH        VARCHAR(100) NULL     COMMENT '생년월일',
  EMAIL        VARCHAR(100) NULL     COMMENT '이메일주소',
  SMS_AD       VARCHAR(100) NULL     COMMENT 'SMS광고수신',
  EMAIL_AD     VARCHAR(100) NULL     COMMENT '이메일광고수신',
  PRIVACY_INFO VARCHAR(100) NULL     COMMENT '개인정보동의',
  PRIMARY KEY (MEMBER_ID)
) COMMENT '사용자';

CREATE TABLE MEMBER_LOG
(
  CERTIFICATION_KEY VARCHAR(100) NOT NULL COMMENT '인증키',
  MEMBER_ID         VARCHAR(100) NOT NULL COMMENT '아이디',
  LOGIN_DATE        VARCHAR(100) NULL     COMMENT '로그인시간',
  LOGIN_STATUS      VARCHAR(100) NULL     COMMENT '로그인상태',
  PRIMARY KEY (CERTIFICATION_KEY)
) COMMENT '로그인';

CREATE TABLE POLL_ANSWERS
(
  ANSWER_UID   VARCHAR(100) NOT NULL COMMENT '답항대표값',
  ANSWER       VARCHAR(100) NULL     COMMENT '답항내용',
  ORDERS       VARCHAR(10)  NULL     COMMENT '번호',
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문항대표값',
  PRIMARY KEY (ANSWER_UID)
) COMMENT '설문답항';

CREATE TABLE POLL_QUESTIONS
(
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문항대표값',
  QUESTION     VARCHAR(100) NULL     COMMENT '문항내용',
  ORDERS       VARCHAR(100) NULL     COMMENT '번호',
  PRIMARY KEY (QUESTION_UID)
) COMMENT '설문문항';

CREATE TABLE POLL_RESPONSE
(
  PQ01      VARCHAR(100) NULL     COMMENT 'PQ01답',
  PQ01_1    VARCHAR(100) NULL     COMMENT 'PQ01-1답',
  PQ02      VARCHAR(100) NULL     COMMENT 'PQ02답',
  PQ03      VARCHAR(100) NULL     COMMENT 'PQ03답',
  PQ04      VARCHAR(100) NULL     COMMENT 'PQ04답',
  POLL_DATE VARCHAR(100) NULL     COMMENT '설문날짜'
) COMMENT '실제응답내용';

CREATE TABLE POST_COMMENT
(
  COMMENT_NUMBER  VARCHAR(100) NOT NULL COMMENT '댓글번호',
  COMMENT_CONTENT VARCHAR(255) NULL     COMMENT '댓글내용',
  POST_DATE       VARCHAR(100) NULL     COMMENT '작성일',
  POST_NUMBER     VARCHAR(100) NOT NULL COMMENT '게시글번호',
  MEMBER_ID       VARCHAR(100) NOT NULL COMMENT '작성자아이디',
  PRIMARY KEY (COMMENT_NUMBER)
) COMMENT '댓글';

CREATE TABLE SELFTEST_RESULT
(
  MEMBER_ID    VARCHAR(100) NOT NULL COMMENT '아이디',
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문제UID',
  ANSWER_UID   VARCHAR(100) NOT NULL COMMENT '답항UID'
) COMMENT '자기실력테스트결과';

CREATE TABLE STATISTICS
(
  STATISTICS_DATE      VARCHAR(100) NOT NULL COMMENT '통계날짜',
  MEMBER_COUNT         INTEGER      NULL     COMMENT '회원수',
  SIGNUP_LECTURE_COUNT INTEGER      NULL     COMMENT '수강신청수',
  POST_COUNT           INTEGER      NULL     COMMENT '글작성수',
  PRIMARY KEY (STATISTICS_DATE)
) COMMENT '통계관리';

CREATE TABLE TB_SEQ
(
  ID     INTEGER      NOT NULL COMMENT 'INT부분',
  SEQ_NM VARCHAR(100) NOT NULL COMMENT 'STRING부분'
) COMMENT '게시판번호증가테이블';

CREATE TABLE TEST_ANSWERS
(
  ANSWER_UID   VARCHAR(100) NOT NULL COMMENT '답항UID',
  ANSWER       VARCHAR(100) NULL     COMMENT '답항내용',
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문제UID',
  PRIMARY KEY (ANSWER_UID)
) COMMENT '문제답항';

CREATE TABLE TEST_QUESTIONS
(
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문제UID',
  QUESTION     VARCHAR(100) NULL     COMMENT '문제내용',
  PRIMARY KEY (QUESTION_UID)
) COMMENT '문제문항';

ALTER TABLE COMMUNITY_POST
  ADD CONSTRAINT FK_MEMBER_TO_COMMUNITY_POST
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE POST_COMMENT
  ADD CONSTRAINT FK_MEMBER_TO_POST_COMMENT
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE POST_COMMENT
  ADD CONSTRAINT FK_COMMUNITY_POST_TO_POST_COMMENT
    FOREIGN KEY (POST_NUMBER)
    REFERENCES COMMUNITY_POST (POST_NUMBER);

ALTER TABLE LECTURE
  ADD CONSTRAINT FK_LECTURER_TO_LECTURE
    FOREIGN KEY (LECTURER_NUMBER)
    REFERENCES LECTURER (LECTURER_NUMBER);

ALTER TABLE LECTURER
  ADD CONSTRAINT FK_MEMBER_TO_LECTURER
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE LECTURE_POLL
  ADD CONSTRAINT FK_POLL_QUESTIONS_TO_LECTURE_POLL
    FOREIGN KEY (QUESTION_UID)
    REFERENCES POLL_QUESTIONS (QUESTION_UID);

ALTER TABLE LECTURE_POLL
  ADD CONSTRAINT FK_POLL_ANSWERS_TO_LECTURE_POLL
    FOREIGN KEY (ANSWER_UID)
    REFERENCES POLL_ANSWERS (ANSWER_UID);

ALTER TABLE LECTURE_POLL
  ADD CONSTRAINT FK_LECTURE_TO_LECTURE_POLL
    FOREIGN KEY (LECTURE_NUMBER)
    REFERENCES LECTURE (LECTURE_NUMBER);

ALTER TABLE POLL_ANSWERS
  ADD CONSTRAINT FK_POLL_QUESTIONS_TO_POLL_ANSWERS
    FOREIGN KEY (QUESTION_UID)
    REFERENCES POLL_QUESTIONS (QUESTION_UID);

ALTER TABLE COMMUNITY_POST
  ADD CONSTRAINT FK_COMMUNITY_TO_COMMUNITY_POST
    FOREIGN KEY (COMMUNITY_NUMBER)
    REFERENCES COMMUNITY (COMMUNITY_NUMBER);

ALTER TABLE SELFTEST_RESULT
  ADD CONSTRAINT FK_MEMBER_TO_SELFTEST_RESULT
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE SELFTEST_RESULT
  ADD CONSTRAINT FK_TEST_QUESTIONS_TO_SELFTEST_RESULT
    FOREIGN KEY (QUESTION_UID)
    REFERENCES TEST_QUESTIONS (QUESTION_UID);

ALTER TABLE SELFTEST_RESULT
  ADD CONSTRAINT FK_TEST_ANSWERS_TO_SELFTEST_RESULT
    FOREIGN KEY (ANSWER_UID)
    REFERENCES TEST_ANSWERS (ANSWER_UID);

ALTER TABLE ENROLLMENT
  ADD CONSTRAINT FK_LECTURE_TO_ENROLLMENT
    FOREIGN KEY (LECTURE_NUMBER)
    REFERENCES LECTURE (LECTURE_NUMBER);

ALTER TABLE ENROLLMENT
  ADD CONSTRAINT FK_MEMBER_TO_ENROLLMENT
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE TEST_ANSWERS
  ADD CONSTRAINT FK_TEST_QUESTIONS_TO_TEST_ANSWERS
    FOREIGN KEY (QUESTION_UID)
    REFERENCES TEST_QUESTIONS (QUESTION_UID);

ALTER TABLE MEMBER_LOG
  ADD CONSTRAINT FK_MEMBER_TO_MEMBER_LOG
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);
