use smpetl;
drop table if exists RptReviewAudit;
CREATE TABLE RptReviewAudit ( 
				Encounter INT not null,
                RecordAddedDate DATE,
                RecordAddedTime Integer,
				PRIMARY KEY (Encounter, RecordAddedDate, RecordAddedTime)
);
select count(*) from RptReviewAudit;
truncate RptReviewAudit;

insert into RptReviewAudit values (1000000, '1800-12-28',1000);

select * from RptReviewAudit;

select RecordAddedDate d1
, RecordAddedDate d2
, RecordAddedTime t1
from RptReviewAudit
order by RecordAddedDate desc, RecordAddedTime desc
limit 1;