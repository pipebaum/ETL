use smpetl;

delete from doctors 
where updatedate > '2015-03-15';

delete from encordr
where updatetime > '15:44:32'
and updatedate >= '2015-04-08';

delete from encountr
where updatetime > '15:44:32'
and updatedate >= '2015-04-08';

delete from facility
where updatedate > '2015-03-15';

delete from INSURANC 
where updatetime > '14:45:00'
and updatedate >= '2013-09-23';

delete from orders
where updatedate > '2015-03-15';

delete from patient 
where updatedate > '2015-04-07'
and updatetime > '17:00:00';

delete from procedur 
where updatedate > '2015-04-07';

delete from profile 
where updatedate > '2015-03-15';

delete from rescodes
where updatedate > '2014-08-12';

