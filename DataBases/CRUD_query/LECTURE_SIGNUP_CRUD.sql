-- insert
insert into POLL_QUESTIONS 
(QUESTION_UID,QUESTION,ORDERS) 
value ('PQ06','특이사항이 있나요?',1);
INSERT INTO POLL_ANSWERS (ANSWER_UID,ANSWER,ORDERS,QUESTION_UID)
VALUES ('PA6-5', '특이사항', 1, 'PQ01');

-- select
select poll_answers.ORDERS, poll_questions.QUESTION, poll_answers.ANSWER 
from poll_questions 
INNER JOIN poll_answers ON poll_questions.QUESTION_UID = poll_answers.QUESTION_UID
ORDER BY poll_answers.ORDERS ASC ;

update poll_questions
set QUESTION = '선택하신 강의를 신청하게 된 계기와 이유 무엇인가요?' 
where QUESTION_UID = 'PQ01'  
;
update poll_answers
set ANSWER = '강의 내용이 좋아서'  
where QUESTION_UID = 'PA1-4'  
;

-- delete
delete from poll_answers where ANSWER_UID = 'PA1-4';
delete from poll_questions where QUESTION_UID = 'PQ01';