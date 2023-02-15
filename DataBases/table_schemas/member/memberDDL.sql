
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
