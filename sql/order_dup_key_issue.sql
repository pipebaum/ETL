use smpetl;
select count(*) from new_orders;

select  ENCOUNTER,	PROCEDR, PROFILE, STATUS, SheduledLab, RESULTTYPE, RES_ALPHA, RES_NUM, TEST_DATE,	POST_TIME,	TEST_STATUS, STAT, REPORTABLE,	UPDATEDATE,	UPDATETIME, NOTES
from new_orders order by 1,2,3,4,5;

select 0, ENCOUNTER,	PROCEDR, PROFILE, STATUS, SheduledLab, RESULTTYPE, RES_ALPHA, RES_NUM, TEST_DATE,	POST_TIME,	TEST_STATUS, STAT, REPORTABLE,	UPDATEDATE,	UPDATETIME, NOTES
from orders where encounter = 15064135 
AND PROCEDR = 'RA'
AND PROFILE=''
union all
select order_cnt, ENCOUNTER,	PROCEDR, PROFILE, STATUS, SheduledLab, RESULTTYPE, RES_ALPHA, RES_NUM, TEST_DATE,	POST_TIME,	TEST_STATUS, STAT, REPORTABLE,	UPDATEDATE,	UPDATETIME, NOTES
from new_orders where encounter = 15064150 
AND PROCEDR = 'CA'
AND PROFILE='BMP';


select ENCOUNTER,	PROCEDR, PROFILE, STATUS, SheduledLab, RESULTTYPE, RES_ALPHA, RES_NUM, TEST_DATE,	POST_TIME,	TEST_STATUS, STAT, REPORTABLE,	UPDATEDATE,	UPDATETIME, NOTES
from orders where encounter = 15064455 
AND PROCEDR = 'FE'
AND PROFILE='TIBCP';
'15064135-RA    -      -P-MAIN      -<10                 -10.00'
'15064455-FE    -TIBCP -G-MAIN      -                    -0.00'
'15064455-FE    -TIBCP -G-MAIN      -                    -0.00'





select count(*) from doctors;

select  
	'o', ENCOUNTER,	PROCEDR, PROFILE, STATUS, RES_ALPHA, RES_NUM, RESULTTYPE, NOTES, TEST_DATE,	POST_TIME,	TEST_STATUS,	STAT,	REPORTABLE,	UPDATEDATE,	UPDATETIME,
	Length(ENCOUNTER),	Length(PROCEDR), Length(PROFILE), Length(STATUS), Length(RES_ALPHA), Length(RES_NUM), Length(RESULTTYPE), Length(NOTES), Length(TEST_DATE),	Length(POST_TIME),	Length(TEST_STATUS),	Length(STAT),	Length(REPORTABLE),	Length(UPDATEDATE),	Length(UPDATETIME)
from orders where encounter = '15062723' and procedr like 'BUN%'
union all
select  
	'no', ENCOUNTER,	PROCEDR, PROFILE, STATUS, RES_ALPHA, RES_NUM, RESULTTYPE, NOTES, TEST_DATE,	POST_TIME,	TEST_STATUS,	STAT,	REPORTABLE,	UPDATEDATE,	UPDATETIME,
	Length(ENCOUNTER),	Length(PROCEDR), Length(PROFILE), Length(STATUS), Length(RES_ALPHA), Length(RES_NUM), Length(RESULTTYPE), Length(NOTES), Length(TEST_DATE),	Length(POST_TIME),	Length(TEST_STATUS),	Length(STAT),	Length(REPORTABLE),	Length(UPDATEDATE),	Length(UPDATETIME)
from new_orders where encounter = '15062723' and procedr like 'BUN%';

-- 15062961-CREAT -CMP   -V-                    -1\
-- 15062703-BASO  -CBCD  -P-                    -0

select * from patient where id = 504849;
select * from encountr order by updatedate desc, updatetime desc limit 20;
alter table orders drop primary key, add primary key(ENCOUNTER, PROCEDR, PROFILE, STATUS, SheduledLab, RES_ALPHA, RES_NUM );

alter table orders add primary key(ENCOUNTER, PROCEDR, PROFILE, STATUS, SheduledLab, RES_ALPHA, RES_NUM );

alter table new_orders modify RES_NUM DECIMAL (10,2);
-- 