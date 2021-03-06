use smpetl;

delete from doctors 
where updatedate > '2015-03-15';

delete from encordr
where updatedate > '2015-04-08'
or (updatetime > '15:44:32' and updatedate = '2015-04-08');

delete from encountr
where updatedate > '2015-04-08'
or (updatetime > '15:44:32' and updatedate = '2015-04-08');

delete from facility
where updatedate > '2015-03-15';

delete from insuranc 
where updatedate > '2013-09-23'
or (updatetime > '14:45:00' and updatedate = '2013-09-23');

delete from orders
where updatedate > '2015-04-08'
or (updatetime > '19:40:00' and updatedate = '2015-04-08');

delete from patient 
where updatedate > '2015-04-08'
or (updatetime > '17:00:00' and updatedate = '2015-04-08');

delete from procedur 
where status = 1
and updatedate > '2015-04-02';

delete from profile 
where updatedate > '2015-03-15';

delete from rescodes
where updatedate > '2014-08-12';

