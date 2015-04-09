select
	PROCEDR
,	ENCOUNTER
,	STATUS
,	STAT
,	CREATED_BY
,	SPECIMEN
,	UPDATEDATE
,	UPDATETIME
from 
	ENCORDR
-- need to figure out a cast to integer here
-- where
--	UPDATEDATE > Now() - 460 