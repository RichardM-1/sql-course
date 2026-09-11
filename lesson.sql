/*
Example lesson stub
*/
SELECT ps.PatientId,
       ps.Hospital,
       ps.Ward,
       ps.AdmittedDate,
       ps.DischargeDate
FROM   PatientStay AS ps
WHERE  ps.Hospital IN ('Kingston', 'PRUH')
       AND ps.Ward LIKE '%S%';


-- SELECT DISTINCT ps.hospital FROM patientstay ps