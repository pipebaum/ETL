use smpetl;
drop table if exists RptReviewAudit;
CREATE TABLE RptReviewAudit ( 
				Encounter INT not null,
                RecordAddedDate DATE,
                RecordAddedTime INTEGER,
				ComboDate datetime,
				PRIMARY KEY (Encounter, RecordAddedDate, RecordAddedTime)
);
select count(*) from RptReviewAudit;
truncate RptReviewAudit;

insert into RptReviewAudit values (1000001, '1800-12-28', 9999,'2013-01-01 12:34:56');

select * from RptReviewAudit limit 10;

select RecordAddedDate d1
, RecordAddedDate d2
, RecordAddedTime t1
from RptReviewAudit
order by RecordAddedDate desc, RecordAddedTime desc
limit 1;

drop table eventlog;

CREATE TABLE eventlog ( 
				eventlog_pk INT not null AUTO_INCREMENT,
                EventDate INT,
                EventTime INT, 
                eventdateAsDate DATETIME, 
                LoadDate DATETIME,
				PRIMARY KEY (eventlog_pk)
);
