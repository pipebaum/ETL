use smpetl;
-- distribution / activity in tables
select 
	o.dateX
,	o.numOrders
,	e.numEncordr
,	enc.numEncountr
, 	p.numPatient
from 
(
select count(*) numOrders, updatedate dateX from orders group by updatedate 
) o
left outer join (
select count(*) numEncordr, updatedate dateX from encordr group by updatedate 
) e on e.dateX = o.dateX
left outer join (
select count(*) numEncountr, updatedate dateX from encountr group by updatedate 
) enc on enc.dateX = o.dateX
left outer join (
select count(*) numPatient, updatedate dateX from patient group by updatedate 
) p on p.dateX = o.dateX
order by 1 desc
;

select distinct updatedate from orders order by 1 desc;
select count(*) numEncountr, updatedate dateX from encountr group by updatedate order by updatedate desc;
select count(*) numEncordr, updatedate dateX from encordr group by updatedate order by updatedate desc;
select count(*) numPatient, updatedate dateX from patient group by updatedate order by updatedate desc;
select count(*) numOrders, updatedate dateX from orders group by updatedate order by updatedate desc;
