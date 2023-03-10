-- insert
insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
values('POST51','강의추천1','한국샘 강의를 추천합니다','1','2023-10-25',412,'ceromi123','C03'),
('POST52','강의추천3','지리샘 강의를 추천합니다','1','2023-11-07',412,'ceromi123','C03');

insert into post_comment 
(COMMENT_NUMBER,COMMENT_CONTENT,POST_DATE,MEMBER_ID,POST_NUMBER) 
values('CMN07','굿굿','2023-11-12','ceromi123','POST51'),
('CMN08','추천드려요!!!','2023-11-11','ceromi123','POST51');

-- select
select COMMUNITY_POST.POST_NUMBER, COMMUNITY_POST.COMMUNITY_TITLE,(select count(*) from post_comment where post_number = COMMUNITY_POST.POST_NUMBER), COMMUNITY_POST.MEMBER_ID, COMMUNITY_POST.COMMUNITY_DATE, COMMUNITY_POST.VIEW_COUNT 
from COMMUNITY_POST 
INNER JOIN post_comment ON COMMUNITY_POST.POST_NUMBER = post_comment.POST_NUMBER;

-- update
update community_post 
set COMMUNITY_CONTENT = '추천드린 강좌 내용을 수정합니다.',FILE_ATTACHIMENT='1' 
where POST_NUMBER = 'POST51' 
;

-- delete
delete from community_post where POST_NUMBER = 'POST51';