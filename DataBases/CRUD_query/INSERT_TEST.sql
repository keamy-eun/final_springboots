
insert into MEMBER 
(MEMBER_ID,PW,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD,PRIVACY_INFO)
values('ceromi123','$2a$10$s0btR7hXpUMKABwaxQHPGOTM54YJQWlmQu8xOCF4KP22gl4beNBXe','세로미','ROLE_MANAGER','1995-01-04','dnjsrl014@hanmail.net','YES','NO','YES'),
('nas8808','$2a$10$jsjnlrBvLZfO69pdfGs5heSuLZ6Ej1HaAmR26PSIEoZcA8RaG58rO','남혜인','ROLE_USER','1997-11-15','hein55@hanmail.net','NO','NO','YES'),
('circle01','$2a$10$lCFpH5mEXXzPayax2./JtebIsS0HfxPmWJmNiAMYluFRXts8yztfa','동그라미','ROLE_USER','2005-11-04','circle@hanmail.net','NO','NO','YES'),
('admin','$2a$10$l/GnBscUpMTTTENg2xMGCOSVeIEr49u1ln2VjYR9Mah1rw0kZddvK','은정이','ROLE_ADMIN','1885-08-04','admin@hanmail.net',NULL,NULL,'YES'),
('nice443','$2a$10$zrTEeEHmpfuO48aV8a3CTO.QJpE4KXz1s0wdhdh4yQpQO88JIFtbu','은원기','ROLE_USER','1995-01-04','dnjsrl014@hanmail.net','YES','NO','YES'),
('neo108','$2a$10$TxpZp.9U4NjZC5iNzAVJpuR7LoGZO99eFrxK8Qa97cBB5yR/wi5zS','박달래','ROLE_USER','1997-11-15','hein55@hanmail.net','NO','NO','YES'),
('bkf99','$2a$10$guZzW7YRyP/u9B4izaVnHuR8nYnFMPOMGPsCks1/a5z1u84PFAS8y','진가은','ROLE_USER','2005-11-04','wfdde@hanmail.net','NO','NO','YES'),
('moodo01','$2a$10$kg13nyL0vX/lTzlFwVr5Mux2eYIiu5pcXNVNxZlX8ncXvZTa9V1X2','강세호','ROLE_USER','2005-11-04','vvrrg@hanmail.net','NO','NO','YES'),
('basie73','$2a$10$jbZRXivn33ttVbh5VxMLE.pnlPhdp0iBTxguQVn6bGS.4iCypEk8W','전나연','ROLE_USER','2005-11-04','conik@hanmail.net','NO','NO','YES'),
('woodiga1','$2a$10$/vRkgxHpYSXnJyEXp8qK/O2lChVEu8s.LssKfq9c6Ec9BWGQDhTha','한아름','ROLE_USER','2005-11-04','sokid@hanmail.net','NO','NO','YES'),
('jointo01','$2a$10$.iv0tDULY3H6up71LUTHROdvNNB8aaPLiuV.FAFCTkF0LXctx4qdm','우리미','ROLE_USER','1885-08-04','wnidk@hanmail.net',NULL,NULL,'YES');

insert into LECTURER 
(LECTURER_NUMBER, MEMBER_ID) 
value ('LECTURER_06', 'ceromi123');

insert into LECTURE 
(LECTURE_NUMBER,LECTURE_TITLE,UPLOAD_DATE,STUDENT_COUNT,LECTURER_NUMBER,LECTURE_INTRO,LECTURE_IMAGE) 
values ('LECTURE_24', '영어회화초급01','2022-09-10',580,'LECTURER_06','영어 단어를 외웠는데도 회화에 적용이 안 되나요? 영어로 계속해서 대화를 이끌어나가는 게 어려운가요?회화에 자주 쓰이는 단어만 골라서 외우고 싶으신가요? 영어 단어를 주제별로 공부하고 싶으신분. 영어회화초급반이 딱입니다!','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTljUWsm_Wv569Jt9KaPHID4gFCdzjxERUvdg&usqp=CAU'),
('LECTURE_12', '영어문법중급A','2023-01-11',410,'LECTURER_06','문법을 배우기엔 지겹고,회화를 배우려니 자신이 없으신 분들! 최소한의 문법으로 최대한의 회화 실력을 이끌어 드립니다. 문법에 재미를 느낄 수 있는 문법 중급 강좌','https://d2v80xjmx68n4w.cloudfront.net/gigs/w0wOQ1671533496.jpg'),
('LECTURE_13', '850점 토익챌린지','2023-02-11',14510,'LECTURER_06','650~750 사이 토익공부에 어려움을 느끼시는 분들! 주저말고 신청하세요 토익 만점자 도우너 선생님의 수업과 함께 단기간 점수상승의 기회! 학습한 영어 단어를 활용한 다양한 예문 소개','https://image.yes24.com/goods/110329834/XL'),
('LECTURE_14', '누구나 할수있는 8주 영어문법 마스터','2022-08-11',41880,'LECTURER_06','홍길동 선생님의 이해가 쏙쏙되는 강의를 들어보세요 수강생들 모두가 만족하는 강의로써 2달간 영어 문법을 듣고 기초적인 문법을 다져보세요 홍길동 선생님의 이해가 쏙쏙되는 강의를 들어보세요 아주 만족하실거에요~','https://d2v80xjmx68n4w.cloudfront.net/gigs/rB0Yk1598360242.jpg'),
('LECTURE_15', '평범한 직장인의 비즈니스 일상회화','2023-01-19',1810,'LECTURER_06','- 획일화된 비즈니스 상황에 집중된 강의에서 벗어나, 평범한 직장인이 맞닥뜨릴 수 있는 회사 관련 일상 회화를 배워 보는 강의 / 어렵고 적용하기 힘든 비즈니스 용어가 아닌 동료와의 관계, 회사 생활, 일상적인 업무에 관한 비즈니스 회화 강의','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOcI_9pLmnLf9Vez4Pz41u1uF5OLxM2liz7w&usqp=CAU'),
('LECTURE_16', '시추에이션 영작문','2022-07-25',41630,'LECTURER_06','★ 상황으로 쉽고 재밌게 배우는 영작문 강의! 직장, 여행, 일상회화, 인터뷰 상황에서 쓸 수 있는 다양한 문장을 영작해볼 수 있고 상황 별로 자주 사용하는 표현, 패턴을 기반으로 쉽고 효과적으로 문장을 영작할 수 있게됩니다. 영작 뿐 아니라 회화에도 활용할 수 있는 강의','https://t1.daumcdn.net/cfile/tistory/2668344B585505222E'),
('LECTURE_17', '나의 행동을 표현하는 모든 영어 1','2022-11-27',14610,'LECTURER_06','결재 서류를 올리다? QR코드를 찍다? 일상생활에서의 나의 행동을 사소하지만 영어로 어떻게 표현하는지 미처 알지 못했던 단어와 표현이 있으셨죠? 친구나 동료와 나의 평범한 일상을 영어로 이야기 할 수 있도록, 어휘력 업그레이드가 필요합니다.','https://en.pimg.jp/085/079/410/1/85079410.jpg');

insert into ENROLLMENT 
(LECTURE_NUMBER,MEMBER_ID,ENROLL_DATE,ENROLL_EXPIRED_DATE) 
values ('LECTURE_14','circle01',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),('LECTURE_15','circle01',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),('LECTURE_16','circle01',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),
('LECTURE_17','circle01',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),('LECTURE_24','nas8808',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),('LECTURE_12','nas8808',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),
('LECTURE_13','nas8808',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),('LECTURE_14','nas8808',now(),DATE_ADD(now(), INTERVAL 6 MONTH)),('LECTURE_15','nas8808',now(),DATE_ADD(now(), INTERVAL 6 MONTH));

insert into POLL_QUESTIONS 
(QUESTION_UID,QUESTION,ORDERS) 
values ('PQ01','선택하신 강의를 신청하게 된 계기가 무엇인가요?','1'),('PQ01_1','(1번 질문에서 기타를 선택한 경우) 이유를 적어주세요','1-1'),
('PQ02','하루에 공부하는 평균 시간은 어느정도 되시나요?','2'),('PQ03','강의를 수강하실 때 주로 어떤 기기를 사용하시나요?','3'),
('PQ04','수업에 대해 바라는 점이나 기타 궁금한 사항이 있다면 적어주세요','4');

INSERT INTO POLL_ANSWERS (ANSWER_UID,ANSWER,ORDERS,QUESTION_UID)
VALUES ('PA1-1', '지인의 추천으로', '1', 'PQ01'),('PA1-2', '인터넷 광고를 보고', '2', 'PQ01'),('PA1-3', 'SMS 광고를 보고', '3', 'PQ01'),('PA1-4', '수업이 마음에 들어서 재신청', '4', 'PQ01'),('PA1-5', '기타', '5', 'PQ01'),
 ('PA01-1', NULL, NULL, 'PQ01_1'),
 ('PA2-1', '30분 이하', '1', 'PQ02'),('PA2-2', '1시간 내외', '2', 'PQ02'),('PA2-3', '2시간 내외', '3', 'PQ02'),('PA2-4', '3시간 이상', '4', 'PQ02'),
 ('PA3-1', '스마트폰', '1', 'PQ03'),('PA3-2', '컴퓨터', '2', 'PQ03'),('PA3-3', '테블릿', '3', 'PQ03'),('PA3-4', '기타', '4', 'PQ03'),
 ('PA4', NULL, NULL, 'PQ04');
 

insert into MEMBER_LOG 
(CERTIFICATION_KEY,MEMBER_ID,LOGIN_DATE,LOGIN_STATUS) 
values('C9483WFDJJ1','ceromi123',now(),'login'),
('UUGH831231','circle01',now(),'login'),
('IVO3W6DYY1','admin',now(),'logout');

insert into COMMUNITY
(COMMUNITY_NUMBER,COMMUNITY_NAME) 
values('C01','강좌게시판'),('C02','강사게시판'),('C03','학생게시판'),('C04','공지사항'),('C05','강의후기게시판');

insert into COMMUNITY_POST 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
value('POST48','강의추천','최치열샘 강의를 추천합니다','2','2023-10-25',412,'ceromi123','C03'),
('POST49','시험을 준비하면서 3개의 다른 인터넷 강의를 결제해서 들어보았습니다. N3를 준비하면서 해커스 일본어를 N2를 준비하면서 일단기 인강을 이용했고 현재는 N2까지 합격한 상태로 올해 12월 N1합격을 준비하며 파고다 일본어 인강을 들었는데요, 나름 3개 회사의 인강을 들으며 개인적으로 느낀 장단점을 분석해보려고 합니다. (모두 어떠한 금전적인 지원도 받지 않은 지극히 주관적인 내 돈 내산 후기임을 앞서 밝힙니다.) Coverage : 일단기, 파고다 Good - N1까지 학습 가능 우선 N1부터 N5까지 있는 JLPT의 응시 난이도에 대하여 일단기와 파고다의 경우 N1까지 강의 패키지에 포함이 되어있지만 해커스의 경우 N2까지만 강의를 제공하고 있습니다.','시험공부의 가장 복병이던 문자/어휘 공략에 도움','1','2023-04-31',4212,'nas8808','C05'),
('POST50',' 2년 전 첫 토익에서 라수진 선생님의 를 듣고 만족한 경험이 있어, 이번에도 파고다를 선택했습니다. 저는 part5,6 이 특히나 약해서, 와 함께 를 동시에 한 번 더 들었습니다. 두 강의가 겹치는 내용이 많지만, 한 번 더 복습하고 보완하는 목적으로는 궁합이 아주 좋은 것 같습니다. [공부 방법] 저는 하루에 1~2 강의를 듣고, 그날 배운 것은 그날 외워버리겠다는 생각으로 복습에도 많은 공을 들였습니다. 그날 배운 것은 당일에 복습을 완료하고(방금 배운 거라 오래 걸리지 않아요), 동시에 누적 복습도 했습니다. 그러다 보니 시간이 갈수록 복습할 양도 많아지고 시간도 오래 걸리지만, 초반에 배운 내용들을 잊어버리지 않았습니다.',' 두번째 토익, 한달만에 RC 475 달성한 후기!!','0','2023-05-10',12,'circle01','C05'),
('POST51','코로나가 끝나가지만 적절한 스토리와 표현패턴들을 익혔고 인생첫 IH를 획득했습니다. 제가 5년간 IM2 획득이후 IH가 나오지 않고 있었는데, 펜데믹 관련된 스토리라인을 기반으로 한 본 강의를 추천받아 우여곡절끝에 드디어 IH가 나오게 되었습니다. 혹시 IH가 안 나올까봐 한번더봤는데 IH가 또나왔어요. 우선 제실력은 IH 인걸로! 다음에는 AL도전합니다! AL때는 IH보다 3배이상의 기량으로 봐야한다고 하니 마음 단단히 먹고 도전하려고 합니다. OPIc 준비도 준비지만 저 자신의 영어역량자체가 향상된듯한 기분도 들어 뿌듯합니다.',' 인생 첫, 두번째 IH 획득','0','2023-05-13',849,'circle01','C05'),
('POST52','처음에 목표점수 990로 잡고 진행했고, 첫 시험 985 두번째시험 990 바로 달성했습니다. 필수 강의 4세트를 모두 들었는데 강의 매우 좋았고 재밌었습니다. 파트별로 문법, 리스닝 전략, 리딩 푸는 방법/순서/전략 등을 핵심만 짚어주셨어요. 강의는 하루에 1-15개 정도 들었습니다. 제가 유독 약한 유형이 파트7이었습니다. 푸는 방법이나 전략이 조금 중요한데, 글에서 주목해서 봐야할 부분, 읽고 푸는 순서 등과 관련된 팁을 들을 수 있었습니다. 그리고 전략은.. 저는 파트 7에서 실수하기 싫어서, 리스닝을 치고, 파스7부터 거꾸로 문제를 풀어서 파트 5는 마지막에 빠르게 풀고 끝내는 걸로 했습니다.','토익 990만점 +성적표+공부전략 ','0','2023-05-27',882,'nas8808','C05'),
('POST53','을 시간은 짧고 또 기억력에 의존해야하는 부분이 있어서 항상 자신이 없었습니다. 그런데 강의 첫부분에 강신 선생님이 점수 채점방식을 설명해주시는 것을 들으니 쓰기파트에 대해 막연히 가지고 있던 두려움이 사라졌습니다. 제가 할 수 있는만큼 쓰면 합격선에 들 수 있겠다는 생각이 들었습니다. 짧은 강의차수에도 다양한 주제별로 요약을 할 수 있는 방법을 알려주셔서 많은 도움이 되었습니다.','정성 가득한 쓰기 전문 강의 추천합니다! ','2','2023-06-22',47,'nas8808','C05'),
('POST54','취업을 준비하던 와중에, 스피킹 성적이 필요했고 토익스피킹과 오픽 중에서 무엇을 선택할지 고민하다 토익스피킹을 준비하기로 결정했습니다. 여러 토익 스피킹 인터넷 강의를 찾아보았었지만 토익도 파고다 어학원 인강으로 좋은 성적을 받았었기 때문에, 토스 스피킹 시험도 파고다 어학원 인강으로 시작해보기로 결심했습니다. 토익은 어느정도 성적이 나왔었지만, 스피킹은 또 전혀 다른 영역이었습니다. 듣기는 되는데 입이 열리는데 가장 시간이 오래 걸린 것 같습니다. 혼자 집에서 연습하는 것도 입이 잘 안 떼졌던 것 같습니다. 그래도 차차쌤 따라서 매일 반복하니 슬슬 문장을 어떤식으로 조합해야하는지 감은 잡은 것 같습니다. 가장 마음에 들었던 부분은, 만능 템플릿이었습니다.','첫 스피킹 강의라 개념 잡는데 도움이 많이 되었습니다','0','2023-07-19',322,'nas8808','C05'),
('POST55','토익 스피킹 점수는 도대체 어떻게 내는 거야? 라고 궁금하거나 나는 스피킹은 영 잼병이다 하시는 분들은 제 후기를 보러 잘 오셨어요! 왜냐하면, 제가 딱 그랬었거든요.. 대학교 때부터 토익스피킹과의 악연이 시작되었어요. (그때에는 신발 사이즈가...) 너무 사담이 길었네요! 이번에 토익스피킹 시험준비를 하면서 어떤 강의를 들을까 고민하다가, 친구가 파고다 영어학원을 다니고 많이 늘었다는 얘기를 듣고 파고다 인강을 신청하게 됩니다! 그래서 첫날 강의를 딱 트는데, 와... 어쩜 이렇게 깔끔 깔쌈하게 강의를 잘 하시는거예요~!!','한달 만에 토익스피킹 AM 달성! ','1','2023-10-25',4485,'circle01','C05'),
('POST56','지방이라서 마땅한 토익 학원도 없었구요 그러다 그냥 응시한 토익에서는 그냥 덜 만족할만한 성적만을 받았고 그렇게 응시료와 시간만 날리고 있었습니다 그러다 인강을 듣게 되었을때는 이거다!하는 생각이 들었어요 특히 켈리정 강사님의 경우 오답best 선지를 리플레이 해주시면서 특유의 표정과 함께 수강생들이 낚일만한 선지를 딱!짚어주시면서 강의를 해주셨습니다. 저같은 경우 어려운 회차에서는 강의를 2회독하며 활용했습니다.','이번에 다른 수강생의 추천으 토익 인강 강의를 듣게 되었습니다','2','2023-11-09',132,'circle01','C05'),
('POST9','강의추천','최치열샘 강의를 추천합니다','2','2023-10-25',412,'ceromi123','C03'),
('POST1','시험을 준비하면서 3개의 다른 인터넷 강의를 결제해서 들어보았습니다. N3를 준비하면서 해커스 일본어를 N2를 준비하면서 일단기 인강을 이용했고 현재는 N2까지 합격한 상태로 올해 12월 N1합격을 준비하며 파고다 일본어 인강을 들었는데요, 나름 3개 회사의 인강을 들으며 개인적으로 느낀 장단점을 분석해보려고 합니다. (모두 어떠한 금전적인 지원도 받지 않은 지극히 주관적인 내 돈 내산 후기임을 앞서 밝힙니다.) Coverage : 일단기, 파고다 Good - N1까지 학습 가능 우선 N1부터 N5까지 있는 JLPT의 응시 난이도에 대하여 일단기와 파고다의 경우 N1까지 강의 패키지에 포함이 되어있지만 해커스의 경우 N2까지만 강의를 제공하고 있습니다.','시험공부의 가장 복병이던 문자/어휘 공략에 도움','1','2023-04-31',4212,'nas8808','C05'),
('POST2',' 2년 전 첫 토익에서 라수진 선생님의 를 듣고 만족한 경험이 있어, 이번에도 파고다를 선택했습니다. 저는 part5,6 이 특히나 약해서, 와 함께 를 동시에 한 번 더 들었습니다. 두 강의가 겹치는 내용이 많지만, 한 번 더 복습하고 보완하는 목적으로는 궁합이 아주 좋은 것 같습니다. [공부 방법] 저는 하루에 1~2 강의를 듣고, 그날 배운 것은 그날 외워버리겠다는 생각으로 복습에도 많은 공을 들였습니다. 그날 배운 것은 당일에 복습을 완료하고(방금 배운 거라 오래 걸리지 않아요), 동시에 누적 복습도 했습니다. 그러다 보니 시간이 갈수록 복습할 양도 많아지고 시간도 오래 걸리지만, 초반에 배운 내용들을 잊어버리지 않았습니다.',' 두번째 토익, 한달만에 RC 475 달성한 후기!!','0','2023-05-10',12,'circle01','C05'),
('POST3','코로나가 끝나가지만 적절한 스토리와 표현패턴들을 익혔고 인생첫 IH를 획득했습니다. 제가 5년간 IM2 획득이후 IH가 나오지 않고 있었는데, 펜데믹 관련된 스토리라인을 기반으로 한 본 강의를 추천받아 우여곡절끝에 드디어 IH가 나오게 되었습니다. 혹시 IH가 안 나올까봐 한번더봤는데 IH가 또나왔어요. 우선 제실력은 IH 인걸로! 다음에는 AL도전합니다! AL때는 IH보다 3배이상의 기량으로 봐야한다고 하니 마음 단단히 먹고 도전하려고 합니다. OPIc 준비도 준비지만 저 자신의 영어역량자체가 향상된듯한 기분도 들어 뿌듯합니다.',' 인생 첫, 두번째 IH 획득','0','2023-05-13',849,'circle01','C05'),
('POST4','처음에 목표점수 990로 잡고 진행했고, 첫 시험 985 두번째시험 990 바로 달성했습니다. 필수 강의 4세트를 모두 들었는데 강의 매우 좋았고 재밌었습니다. 파트별로 문법, 리스닝 전략, 리딩 푸는 방법/순서/전략 등을 핵심만 짚어주셨어요. 강의는 하루에 1-15개 정도 들었습니다. 제가 유독 약한 유형이 파트7이었습니다. 푸는 방법이나 전략이 조금 중요한데, 글에서 주목해서 봐야할 부분, 읽고 푸는 순서 등과 관련된 팁을 들을 수 있었습니다. 그리고 전략은.. 저는 파트 7에서 실수하기 싫어서, 리스닝을 치고, 파스7부터 거꾸로 문제를 풀어서 파트 5는 마지막에 빠르게 풀고 끝내는 걸로 했습니다.','토익 990만점 +성적표+공부전략 ','0','2023-05-27',882,'nas8808','C05'),
('POST5','을 시간은 짧고 또 기억력에 의존해야하는 부분이 있어서 항상 자신이 없었습니다. 그런데 강의 첫부분에 강신 선생님이 점수 채점방식을 설명해주시는 것을 들으니 쓰기파트에 대해 막연히 가지고 있던 두려움이 사라졌습니다. 제가 할 수 있는만큼 쓰면 합격선에 들 수 있겠다는 생각이 들었습니다. 짧은 강의차수에도 다양한 주제별로 요약을 할 수 있는 방법을 알려주셔서 많은 도움이 되었습니다.','정성 가득한 쓰기 전문 강의 추천합니다! ','2','2023-06-22',47,'nas8808','C05'),
('POST6','취업을 준비하던 와중에, 스피킹 성적이 필요했고 토익스피킹과 오픽 중에서 무엇을 선택할지 고민하다 토익스피킹을 준비하기로 결정했습니다. 여러 토익 스피킹 인터넷 강의를 찾아보았었지만 토익도 파고다 어학원 인강으로 좋은 성적을 받았었기 때문에, 토스 스피킹 시험도 파고다 어학원 인강으로 시작해보기로 결심했습니다. 토익은 어느정도 성적이 나왔었지만, 스피킹은 또 전혀 다른 영역이었습니다. 듣기는 되는데 입이 열리는데 가장 시간이 오래 걸린 것 같습니다. 혼자 집에서 연습하는 것도 입이 잘 안 떼졌던 것 같습니다. 그래도 차차쌤 따라서 매일 반복하니 슬슬 문장을 어떤식으로 조합해야하는지 감은 잡은 것 같습니다. 가장 마음에 들었던 부분은, 만능 템플릿이었습니다.','첫 스피킹 강의라 개념 잡는데 도움이 많이 되었습니다','0','2023-07-19',322,'nas8808','C05'),
('POST7','토익 스피킹 점수는 도대체 어떻게 내는 거야? 라고 궁금하거나 나는 스피킹은 영 잼병이다 하시는 분들은 제 후기를 보러 잘 오셨어요! 왜냐하면, 제가 딱 그랬었거든요.. 대학교 때부터 토익스피킹과의 악연이 시작되었어요. (그때에는 신발 사이즈가...) 너무 사담이 길었네요! 이번에 토익스피킹 시험준비를 하면서 어떤 강의를 들을까 고민하다가, 친구가 파고다 영어학원을 다니고 많이 늘었다는 얘기를 듣고 파고다 인강을 신청하게 됩니다! 그래서 첫날 강의를 딱 트는데, 와... 어쩜 이렇게 깔끔 깔쌈하게 강의를 잘 하시는거예요~!!','한달 만에 토익스피킹 AM 달성! ','1','2023-10-25',4485,'circle01','C05'),
('POST8','지방이라서 마땅한 토익 학원도 없었구요 그러다 그냥 응시한 토익에서는 그냥 덜 만족할만한 성적만을 받았고 그렇게 응시료와 시간만 날리고 있었습니다 그러다 인강을 듣게 되었을때는 이거다!하는 생각이 들었어요 특히 켈리정 강사님의 경우 오답best 선지를 리플레이 해주시면서 특유의 표정과 함께 수강생들이 낚일만한 선지를 딱!짚어주시면서 강의를 해주셨습니다. 저같은 경우 어려운 회차에서는 강의를 2회독하며 활용했습니다.','이번에 다른 수강생의 추천으 토익 인강 강의를 듣게 되었습니다','2','2023-11-09',132,'circle01','C05')
;

insert into POST_COMMENT 
(COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER) 
values ('CMN04','추천드려요!!','2023-11-11','ceromi123','POST48'),
('CMN10','내일 시험에서는 만점을!!','2022-10-14','circle01','POST48'),('CMN11','저도 이부분은 수정됐으면 좋겠습니다.','2022-08-17','nas8808','POST49'),
('CMN12','공감입니다 ㅜㅜ','2022-08-21','nas8808','POST50'),('CMN13','이 강의 저만알았음 좋겠음 ㅠ','2023-01-15','circle01','POST51'),
('CMN14','저는 어려웠어요;;','2022-12-81','circle01','POST52'),('CMN15','왜이러는지 모르겠어요..','2023-01-22','nas8808','POST53'),
('CMN16','새벽에 도움 주셔서 감사합니다','2022-06-22','nas8808','POST54'),('CMN17','거의 매일 듣고 있습니다^^','2023-11-27','circle01','POST55'),
('CMN18','저는 여전히 틀립니다 ㅠㅠ','2022-08-14','circle01','POST56'),('CMN19','앞으로 더 잘되시길 응원합니다~','2023-02-22','nas8808','POST56'),
('CMN20','문제가 너무 복잡하게 아닌가싶어요','2023-01-15','nas8808','POST55'),('CMN21','그건 스타일 차이인것 같아요.','2023-01-31','circle01','POST54'),
('CMN094','추천드려요!!','2023-11-11','ceromi123','POST1'),
('CMN110','내일 시험에서는 만점을!!','2022-10-14','circle01','POST2'),('CMN1331','저도 이부분은 수정됐으면 좋겠습니다.','2022-08-17','nas8808','POST1'),
('CMN112','공감입니다 ㅜㅜ','2022-08-21','nas8808','POST3'),('CMN1443','이 강의 저만알았음 좋겠음 ㅠ','2023-01-15','circle01','POST2'),
('CMN114','저는 어려웠어요;;','2022-12-81','circle01','POST4'),('CMN1555','왜이러는지 모르겠어요..','2023-01-22','nas8808','POST3'),
('CMN116','새벽에 도움 주셔서 감사합니다','2022-06-22','nas8808','POST5'),('CMN1117','거의 매일 듣고 있습니다^^','2023-11-27','circle01','POST4'),
('CMN1418','저는 여전히 틀립니다 ㅠㅠ','2022-08-14','circle01','POST6'),('CMN1229','앞으로 더 잘되시길 응원합니다~','2023-02-22','nas8808','POST5'),
('CMN1518','저는 여전히 틀립니다 ㅠㅠ','2022-08-14','circle01','POST7'),('CMN1339','앞으로 더 잘되시길 응원합니다~','2023-02-22','nas8808','POST7'),
('CMN168','저는 여전히 틀립니다 ㅠㅠ','2022-08-14','circle01','POST8'),('CMN1944','앞으로 더 잘되시길 응원합니다~','2023-02-22','nas8808','POST8'),
('CMN16778','저는 여전히 틀립니다 ㅠㅠ','2022-08-14','circle01','POST9'),('CMN1779','앞으로 더 잘되시길 응원합니다~','2023-02-22','nas8808','POST9'),
('CMN270','문제가 너무 복잡하게 아닌가싶어요','2023-01-15','nas8808','POST5'),('CMN2881','그건 스타일 차이인것 같아요.','2023-01-31','circle01','POST6');
;

insert into TEST_QUESTIONS 
(QUESTION_UID,QUESTION) 
values('TQ01','1.Mark your answer on your answer sheet'),('TQ02','2. Mark your answer on your answer sheet'),
('TQ03','3. What will the speakers mainly talk about?'),('TQ04','4. What does the woman say about the stories about change?'),
('TQ05','5. What is the womans main purpose in calling?'),('TQ06','6. Trebelers can earn reward points ______ than .'),
('TQ07','7. The doctors _____ to Mr. Ellsworth was that he should exercise more to keep his wight down');

INSERT INTO TEST_ANSWERS (ANSWER_UID, ANSWER, QUESTION_UID)
VALUES ('TA101', '(A)', 'TQ01'), ('TA102', '(B)', 'TQ01'), ('TA103', '(C)', 'TQ01'), ('TA104', '(D)', 'TQ01'),
('TA201', '(A)', 'TQ02'), ('TA202', '(B)', 'TQ02'), ('TA203', '(C)', 'TQ02'), ('TA204', '(D)', 'TQ02'),
('TA301', '(A)Mans political view', 'TQ03'), ('TA302', '(B)Mans future plan', 'TQ03'), ('TA303', '(C)Mans academic career', 'TQ03'), ('TA304', '(D)Mans professional backgroud', 'TQ03'),
('TA401', '(A)They might be true', 'TQ04'), ('TA402', '(B)They upset her', 'TQ04'), ('TA403', '(C)They suprised her', 'TQ04'), ('TA404', '(D)They suprised her', 'TQ04'),
('TA501', '(A)To arrange for the car', 'TQ05'), ('TA502', '(B)To tell the man', 'TQ05'), ('TA503', '(C)mans credit card number', 'TQ05'), ('TA504', '(D)the work will be finished', 'TQ05'),
('TA601', '(A)quick', 'TQ06'), ('TA602', '(B)quickly', 'TQ06'), ('TA603', '(C)more quickly', 'TQ06'), ('TA604', '(D)most quickly', 'TQ06'),
('TA701', '(A)method', 'TQ07'), ('TA702', '(B)concern', 'TQ07'), ('TA703', '(C)relief', 'TQ07'), ('TA704', '(D)advice', 'TQ07')
;

insert into SELFTEST_RESULT 
(MEMBER_ID,QUESTION_UID,ANSWER_UID) 
values('ceromi123','TQ01','TA101'),('ceromi123','TQ02','TA202'),('ceromi123','TQ03','TA303'),
('ceromi123','TQ04','TA404'),('ceromi123','TQ05','TA502'),('ceromi123','TQ06','TA601'),('ceromi123','TQ07','TA702');

-- 게시판 번호 FUNCTION
 DELIMITER $$
CREATE FUNCTION NEXTVAL(P_SEQ_NM VARCHAR(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
DECLARE RESULT_SEQ VARCHAR(50);
UPDATE TB_SEQ SET ID = LAST_INSERT_ID(ID+1)
WHERE SEQ_NM = P_SEQ_NM;
SET RESULT_SEQ = (SELECT CONCAT(P_SEQ_NM,LAST_INSERT_ID()));
RETURN RESULT_SEQ;
END $$

-- 댓글 번호 FUNCTION
 DELIMITER $$
CREATE FUNCTION NEXTVAL2(C_SEQ_NM VARCHAR(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
DECLARE RESULT_SEQ VARCHAR(50);
UPDATE COMMENT_NUM_SEQ SET ID = LAST_INSERT_ID(ID+1)
WHERE SEQ_NM = C_SEQ_NM;
SET RESULT_SEQ = (SELECT CONCAT(C_SEQ_NM,LAST_INSERT_ID()));
RETURN RESULT_SEQ;
END $$