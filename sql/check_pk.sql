use horizon_duplicate;

alter table encountr add primary key (number);
alter table encordr add primary key (ENCOUNTER, PROCEDR, CREATED_BY); -- errors duplicate value
alter table facility add primary key (id);
alter table insuranc add primary key (code);  -- errors duplicate key
alter table profile add primary key (id, PROCEDR); -- errors duplicate key
alter table rescodes add primary key (code);
alter table procedur add primary key (alpha); -- errors duplicate key
alter table orders add primary key (res_alpha, res_num); -- errors duplicate key
alter table patient add primary key (id);
alter table doctors add primary key (id);  

select count(*) from encountr where number is null;
select count(*) from encordr where PROCEDR is null;
select count(*) from facility where id is null;
select count(*) from insuranc where code is null;
select count(*) from profile where id is null;
select count(*) from rescodes where code is null;
select count(*) from procedur where alpha is null;
select count(*) from orders where res_alpha is null or res_num is null;
select count(*) from patient where id is null;
select count(*) from doctors where id is null;

-- records with duplicates
select ENCOUNTER, PROCEDR, created_by, count(*) from encordr group by ENCOUNTER, PROCEDR, created_by having count(*) > 1 order by 2 desc; -- 79 records various reasons
select res_alpha, res_num, count(*) from orders group by res_alpha, res_num having count(*) > 1 order by 2 desc; -- lots mostly with res_alpha blank


select * from procedur order by alpha, status;
select * from insuranc order by code;

truncate table insuranc;

select code, length(code), count(*) from insuranc group by code having count(*) > 1; 



