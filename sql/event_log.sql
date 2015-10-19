SELECT * 
FROM EVENTLOG
WHERE EventCode in ('PLDLO', 'PLCHR', 'PLEUP')
and (
	EventDate > '2015-10-15'
	or (EventDate = '2015-10-16' and EventTime > '09:00:00')
)
;

SELECT
  Data
, Notes
, Status
, EventDate
, EventTime
, PatientID
, EncounterNum
, TestCode
, ProcessedStatus
, PostedToServer
, LaboratoryID
, UserID
, TechID
, StationID
, Application
, AppFunction
, AppBuild
, AppVersion
, EventType
, EventCode
, ProcessedDate
, ProcessedTime
, Priority
, ReceivedFromFacility
, PostedtoRS
, PostedtoPM
, PostedToPK
, PostedToINTF
, Misc1
, Misc2
, Misc3
, Misc4
, Misc5
FROM EVENTLOG
