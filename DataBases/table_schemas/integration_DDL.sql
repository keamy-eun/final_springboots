
CREATE TABLE ANSWER_LIST
(
  ANSWER_UID   VARCHAR(100) NOT NULL COMMENT '답항대표값',
  ANSWER       VARCHAR(100) NULL     COMMENT '답항내용',
  ORDERS       INTEGER      NULL     COMMENT '번호',
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문항대표값',
  PRIMARY KEY (ANSWER_UID)
) COMMENT '답항리스트';

CREATE TABLE COMMUNITY
(
  COMMUNITY_NUMBER VARCHAR(100) NOT NULL COMMENT '게시판번호',
  COMMUNITY_NAME   VARCHAR(100) NULL     COMMENT '게시판이름',
  PRIMARY KEY (COMMUNITY_NUMBER)
) COMMENT '게시판';

CREATE TABLE COMMUNITY_POST
(
  POST_NUMBER       VARCHAR(100) NOT NULL COMMENT '게시글번호',
  COMMUNITY_CONTENT VARCHAR(100) NULL     COMMENT '게시글내용',
  COMMUNITY_TITLE   VARCHAR(100) NULL     COMMENT '게시글제목',
  FILE_ATTACHIMENT  VARCHAR(100) NULL     COMMENT '첨부파일',
  VIEW_COUNT        INTEGER      NULL     COMMENT '조회수',
  MEMBER_ID         VARCHAR(100) NOT NULL COMMENT '아이디',
  COMMUNITY_NUMBER  VARCHAR(100) NOT NULL COMMENT '게시판번호',
  PRIMARY KEY (POST_NUMBER)
) COMMENT '게시글';

CREATE TABLE LECTURE
(
  LECTURE_NUMBER  VARCHAR(100) NOT NULL COMMENT '강의번호',
  LECTURE_TITLE   VARCHAR(100) NULL     COMMENT '제목',
  UPLOAD_DATE     VARCHAR(100) NULL     COMMENT '등록일',
  STUDENT_COUNT   INTEGER      NULL     COMMENT '수강생수',
  LECTURER_NUMBER VARCHAR(100) NOT NULL COMMENT '강사번호',
  MEMBER_ID       VARCHAR(100) NOT NULL COMMENT '회원아이디',
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
  MEMBER_ID                  VARCHAR(100) NOT NULL COMMENT '아이디',
  PW                         VARCHAR(100) NULL     COMMENT '비밀번호',
  MEMBER_NAME                VARCHAR(100) NULL     COMMENT '이름',
  POSITION                   VARCHAR(100) NULL     COMMENT '권한',
  BIRTH                      VARCHAR(100) NULL     COMMENT '생년월일',
  EMAIL                      VARCHAR(100) NULL     COMMENT '이메일주소',
  SMS_AD                     VARCHAR(100) NULL     COMMENT 'SMS광고수신',
  EMAIL_AD                   VARCHAR(100) NULL     COMMENT '이메일광고수신',
  MEMBER_LECTURE             VARCHAR(100) NULL     COMMENT '나의강의',
  MEMBER_SIGNUP_LECTURE_LIST VARCHAR(100) NULL     COMMENT '수강신청내역',
  TEST_RESULT                INTEGER      NULL     COMMENT '테스트결과',
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

CREATE TABLE MYPAGE_SELFTEST
(
  TEST_QUESTION_UID VARCHAR(100) NOT NULL COMMENT '시험문항UID',
  TEST_QUESTION     VARCHAR(100) NULL     COMMENT '시험문항',
  TEST_ANSWER_UID   VARCHAR(100) NULL     COMMENT '시험답변UID',
  TEST_ANSWER       VARCHAR(100) NULL     COMMENT '시험답변',
  MEMBER_ID         VARCHAR(100) NOT NULL COMMENT '회원아이디',
  PRIMARY KEY (TEST_QUESTION_UID)
) COMMENT '자기실력테스트';

CREATE TABLE MYPAGE_SELFTEST_RESULT
(
  MEMBER_ID           VARCHAR(100) NOT NULL COMMENT '회원아이디',
  WRONG_QUESTION_UID  VARCHAR(100) NULL     COMMENT '틀린문제번호',
  WRONG_QUESTION_TYPE VARCHAR(100) NULL     COMMENT '틀린문제유형',
  MEMBER_NAME         VARCHAR(100) NULL     COMMENT '회원이름',
  MEMBER_TEST_SCORE   INTEGER      NULL     COMMENT '회원시험점수',
  TEST_QUESTION_UID   VARCHAR(100) NOT NULL COMMENT '시험문항UID'
) COMMENT '자기실력테스트결과';

CREATE TABLE POST_COMMENT
(
  COMMENT_NUMBER  VARCHAR(100) NOT NULL COMMENT '댓글번호',
  COMMENT_CONTENT VARCHAR(100) NULL     COMMENT '댓글내용',
  POST_DATE       VARCHAR(100) NULL     COMMENT '작성일',
  MEMBER_ID       VARCHAR(100) NOT NULL COMMENT '작성자아이디',
  POST_NUMBER     VARCHAR(100) NOT NULL COMMENT '게시글번호',
  PRIMARY KEY (COMMENT_NUMBER)
) COMMENT '댓글';

CREATE TABLE QUESTION_LIST
(
  QUESTION_UID VARCHAR(100) NOT NULL COMMENT '문항대표값',
  QUESTION     VARCHAR(100) NULL     COMMENT '문항내용',
  ORDERS       INTEGER      NULL     COMMENT '번호',
  PRIMARY KEY (QUESTION_UID)
) COMMENT '문항리스트';

CREATE TABLE STATISTICS
(
  STATISTICS_DATE      VARCHAR(100) NOT NULL COMMENT '통계날짜',
  MEMBER_COUNT         INTEGER      NULL     COMMENT '회원수',
  SIGNUP_LECTURE_COUNT INTEGER      NULL     COMMENT '수강신청수',
  POST_COUNT           INTEGER      NULL     COMMENT '글작성수',
  PRIMARY KEY (STATISTICS_DATE)
) COMMENT '통계관리';

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

ALTER TABLE MEMBER_LOG
  ADD CONSTRAINT FK_MEMBER_TO_MEMBER_LOG
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE MYPAGE_SELFTEST_RESULT
  ADD CONSTRAINT FK_MYPAGE_SELFTEST_TO_MYPAGE_SELFTEST_RESULT
    FOREIGN KEY (TEST_QUESTION_UID)
    REFERENCES MYPAGE_SELFTEST (TEST_QUESTION_UID);

ALTER TABLE MYPAGE_SELFTEST
  ADD CONSTRAINT FK_MEMBER_TO_MYPAGE_SELFTEST
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE LECTURE
  ADD CONSTRAINT FK_LECTURER_TO_LECTURE
    FOREIGN KEY (LECTURER_NUMBER)
    REFERENCES LECTURER (LECTURER_NUMBER);

ALTER TABLE LECTURE
  ADD CONSTRAINT FK_MEMBER_TO_LECTURE
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE LECTURER
  ADD CONSTRAINT FK_MEMBER_TO_LECTURER
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE LECTURE_POLL
  ADD CONSTRAINT FK_QUESTION_LIST_TO_LECTURE_POLL
    FOREIGN KEY (QUESTION_UID)
    REFERENCES QUESTION_LIST (QUESTION_UID);

ALTER TABLE LECTURE_POLL
  ADD CONSTRAINT FK_ANSWER_LIST_TO_LECTURE_POLL
    FOREIGN KEY (ANSWER_UID)
    REFERENCES ANSWER_LIST (ANSWER_UID);

ALTER TABLE LECTURE_POLL
  ADD CONSTRAINT FK_LECTURE_TO_LECTURE_POLL
    FOREIGN KEY (LECTURE_NUMBER)
    REFERENCES LECTURE (LECTURE_NUMBER);

ALTER TABLE ANSWER_LIST
  ADD CONSTRAINT FK_QUESTION_LIST_TO_ANSWER_LIST
    FOREIGN KEY (QUESTION_UID)
    REFERENCES QUESTION_LIST (QUESTION_UID);

ALTER TABLE COMMUNITY_POST
  ADD CONSTRAINT FK_COMMUNITY_TO_COMMUNITY_POST
    FOREIGN KEY (COMMUNITY_NUMBER)
    REFERENCES COMMUNITY (COMMUNITY_NUMBER);