
CREATE TABLE admin_member
(
  USER_LIST_CHECKBOX VARCHAR(10)  NULL     COMMENT '유저목록체크박스',
  MEMBER_UID         VARCHAR(100) NULL     COMMENT '유저고유번호',
  NAME               VARCHAR(100) NULL     COMMENT '이름',
  POSITION           VARCHAR(100) NULL     COMMENT '등급',
  BIRTH              VARCHAR(100) NULL     COMMENT '생년월일',
  EMAIL              VARCHAR(100) NULL     COMMENT '이메일주소',
  SMS_AD             VARCHAR(10)  NULL     COMMENT 'SMS광고수신',
  EMAIL_AD           VARCHAR(10)  NULL     COMMENT 'Email광고수신'
) COMMENT '회원관리';
