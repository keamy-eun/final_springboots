
CREATE TABLE LECTURE_SIGNUP
(
  POLL_QUESTION VARCHAR(100) NULL     COMMENT '설문질문',
  POLL_ANSWER   VARCHAR(100) NULL     COMMENT '설문답변',
  MEMBER_UID    VARCHAR(100) NULL     COMMENT '회원UID'
) COMMENT '강좌신청';