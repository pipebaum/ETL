use smpetl;
drop table if exists RptReviewAudit;
CREATE TABLE RptReviewAudit ( 
				Encounter INT not null,
                RecordAddedDate DATE,
                RecordAddedTime TIME,
				PRIMARY KEY (Encounter, RecordAddedDate, RecordAddedTime)
);