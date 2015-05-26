use smpetl;

select 'doctor', 11, count(*)
from doctors
where updatedate > '2015-03-15'
union all
select 'encordr', 93 , count(*)
from encordr
where updatedate > '2015-04-08'
or (updatetime > '15:44:32' and updatedate = '2015-04-08')
union all
select 'encountr', 36 , count(*)
from encountr
where updatedate > '2015-04-08'
or (updatetime > '15:44:32' and updatedate = '2015-04-08')
union all
select 'facility', 17, count(*)
from facility
where updatedate > '2015-03-15'
union all
select 'insuranc', 15, count(*)
from insuranc
where updatedate > '2013-09-23'
or (updatetime > '14:45:00' and updatedate = '2013-09-23')
union all
select 'orders', 103, count(*)
from orders
where updatedate > '2015-04-08'
or (updatetime > '19:40:00' and updatedate = '2015-04-08')
union all
select 'patient', 24, count(*)
from patient
where updatedate > '2015-04-08'
or (updatetime > '17:00:00' and updatedate = '2015-04-08')
union all
select 'procedur', 5, count(*)
from procedur
where updatedate > '2015-04-02'
union all
select 'profile', 4, count(*)
from profile
where updatedate > '2015-03-15'
union all
select 'rescodes', 9, count(*)
from rescodes
where updatedate > '2014-08-12';

-- select updatedate, updatetime from procedur order by 1 desc, 2 desc;