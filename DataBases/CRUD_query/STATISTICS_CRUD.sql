	-- statistics CRUD    
-- CREATE
INSERT INTO statistics (STATISTICS_DATE, MEMBER_COUNT, SIGNUP_LECTURE_COUNT, POST_COUNT)
VALUES ('STATISTICS_DATE', '1', '2', '3')
;
-- READ
SELECT * from statistics
;
-- UPDATE
UPDATE statistics 
SET STATISTICS_DATE = 'STATISTICS_DATE_CHANGE' 
WHERE MEMBER_COUNT = '1'
;
-- DELETE
DELETE FROM statistics
WHERE STATISTICS_DATE='STATISTICS_DATE_CHANGE'
;