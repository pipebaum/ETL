SELECT 'DOCTORS', count(*)from DOCTORS
union
SELECT 'ENCORDR', count(*)from ENCORDR
union
SELECT 'ENCOUNTR', count(*)from ENCOUNTR
union
SELECT 'FACILITY', count(*)from FACILITY
union
SELECT  'INSURANC', count(*)from PATIENT
union
SELECT 'ORDER', count(*)from "ORDER"
union
SELECT  'PATIENT', count(*)from PATIENT
union
SELECT 'PROCEDUR', count(*)from PROCEDUR
union
SELECT 'PROFILE', count(*)from PROFILE
union
SELECT 'RESCODES', count(*)from RESCODES
ORDER BY 2 desc

