-- insert
insert into community_post 
(POST_NUMBER,COMMUNITY_CONTENT,COMMUNITY_TITLE,FILE_ATTACHIMENT,COMMUNITY_DATE,VIEW_COUNT,MEMBER_ID,COMMUNITY_NUMBER) 
values('POST25','초급자가 보기에도 어렵지 않았어요','강의가 너무 친절해요','3','2023-10-28',233,'ceromi123','C05'),
('POST47','최상위권을 위한 딱 맞는 강좌인거같아요.','난이도 굿굿','1','2023-06-07',1412,'circle01','C05');

-- select
select COMMUNITY_POST.POST_NUMBER, COMMUNITY_POST.COMMUNITY_TITLE,(select count(*) from post_comment where post_number = COMMUNITY_POST.POST_NUMBER), COMMUNITY_POST.MEMBER_ID, COMMUNITY_POST.COMMUNITY_DATE, COMMUNITY_POST.VIEW_COUNT 
from COMMUNITY_POST 
INNER JOIN post_comment ON COMMUNITY_POST.POST_NUMBER = post_comment.POST_NUMBER;

update community_post 
set COMMUNITY_CONTENT = '추천드린 강좌 내용을 수정합니다.',FILE_ATTACHIMENT='4' 
where POST_NUMBER = 'POST51' 
;

-- delete
delete from community_post where POST_NUMBER = 'POST51';