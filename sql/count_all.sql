SELECT 'DOCTORS', count(*)from DOCTORS WHERE UPDATEDATE > Now() - 460
union
SELECT 'ENCORDR', count(*)from ENCORDR
union
SELECT 'ENCOUNTR', count(*)from ENCOUNTR
union
SELECT 'FACILITY', count(*)from FACILITY
union
SELECT  'INSURANC', count(*)from PATIENT
union
SELECT 'ORDER', count(*)from "ORDER" WHERE UPDATEDATE > Now() - 460
union
SELECT  'PATIENT', count(*)from PATIENT
union
SELECT 'PROCEDUR', count(*)from PROCEDUR
union
SELECT 'PROFILE', count(*)from PROFILE
union
SELECT 'RESCODES', count(*)from RESCODES
ORDER BY 2 desc

