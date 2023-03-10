-- insert
insert into member 
(MEMBER_ID,PW,MEMBER_NAME,POSITION,BIRTH,EMAIL,SMS_AD,EMAIL_AD,PRIVACY_INFO)
value('haruharu01','비번1234','하루','학생','2010-11-22','haruzzang14@hanmail.net','YES','NO','YES');

-- select
select * 
from member
where MEMBER_ID = 'haruharu01' ;

update member 
set SMS_AD = 'NO',PRIVACY_INFO='NO' 
where MEMBER_ID = 'haruharu01'  
;

-- delete
delete from member where MEMBER_ID = 'haruharu01' ;