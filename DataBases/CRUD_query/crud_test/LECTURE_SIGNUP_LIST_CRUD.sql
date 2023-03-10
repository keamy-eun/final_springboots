-- insert
insert into LECTURE 
(LECTURE_NUMBER,LECTURE_TITLE,UPLOAD_DATE,STUDENT_COUNT,LECTURER_NUMBER,MEMBER_ID,LECTURE_INTRO) 
values ('LECTURE_25', '영어문법초급02','2022-04-17',220,'LECTURER_06','ceromi123','영어문법능력을 향상시키는 기초 강좌'),
('LECTURE_26', '영어회화중급01','2022-12-10',1140,'LECTURER_06','ceromi123','영어회화능력을 향상시키는 중급자용 강좌');

-- select
select LECTURE_TITLE,LECTURE_INTRO  
from LECTURE ;

update LECTURE 
set LECTURE_INTRO = '중급자 또는 초급 심화를 위한 강좌',LECTURE_TITLE='영어회화중급01(초급심화)' 
where LECTURE_NUMBER = 'LECTURE_26' 
;

-- delete
delete from LECTURE where LECTURE_NUMBER = 'LECTURE_26';