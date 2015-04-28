use smpetl;
SELECT 'DOCTORS', count(*)from doctors
union
SELECT 'ENCORDR', count(*)from encordr
union
SELECT 'ENCOUNTR', count(*)from encountr
union
SELECT 'FACILITY', count(*)from facility
union
SELECT  'INSURANC', count(*)from insuranc
union
SELECT 'ORDER', count(*) from orders
union
SELECT  'PATIENT', count(*)from patient
union
SELECT 'PROCEDUR', count(*)from procedur
union
SELECT 'PROFILE', count(*)from profile
union
SELECT 'RESCODES', count(*)from rescodes
ORDER BY 2 desc

