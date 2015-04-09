select
	CODE
,	DESCRIPTION
,	ABNORMAL
,	TEST
,	UPDATEDATE
,	UPDATETIME
from 
	RESCODES
-- Need cast to integer	
-- where
--	UPDATEDATE > Now() - 460 
