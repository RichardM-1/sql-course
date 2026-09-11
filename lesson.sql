/*
Example lesson stub
*/
SELECT   ps.PatientId,
         ps.Hospital,
         ps.Ward,
         ps.AdmittedDate,
         ps.DischargeDate,
         DATEADD(Month, 3, ps.DischargeDate) AS AppointmentDate,
         DATEADD(Week, -2, ps.AdmittedDate) AS ReminderDate,
         PS.Ethnicity
FROM     PatientStay AS ps
WHERE    ps.Hospital IN ('Kingston', 'PRUH')
         AND (ps.ward LIKE '%Surgery'
              OR ps.Ward LIKE '%o%')
         AND -- AND ps.Ethnicity IS NULL
         ps.AdmittedDate <= '2024-02-28'
ORDER BY ps.Hospital, ps.Ward

-- SELECT DISTINCT ps.hospital FROM patientstay ps
SELECT   ps.Hospital,
         ps.ward,
         COUNT(*) AS NumberOfPatients,
         SUM(ps.Tariff) AS TotalTariff,
         CONCAT('£', SUM(ps.Tariff)) AS FormattedTariff
FROM     PatientStay AS ps
GROUP BY ps.hospital, ps.Ward