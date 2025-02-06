SELECT * FROM CovidCases
GO
SELECT * FROM CovidDeaths
GO
SELECT * FROM Jurisdiction
GO

SELECT Jurisdiction.Name, CovidDeaths.ReportedCovidDeaths
FROM Jurisdiction
INNER JOIN CovidDeaths
ON Upper(Jurisdiction.Name) = UPPER(CovidDeaths.JurisdictionID)
WHERE CovidDeaths.CalendarDate = '2020-10-31'
AND Jurisdiction.Population > 10000000;
GO
SELECT Jurisdiction.Name, CovidDeaths.ReportedCovidDeaths
FROM Jurisdiction
INNER JOIN CovidDeaths
ON Upper(Jurisdiction.Name) = UPPER(CovidDeaths.JurisdictionID);
GO
SELECT Jurisdiction.Name, CovidDeaths.ReportedCovidDeaths
FROM Jurisdiction
LEFT JOIN CovidDeaths
ON Jurisdiction.Name = CovidDeaths.JurisdictionID
WHERE CovidDeaths.CalendarDate = '2020-10-31'
AND Jurisdiction.Population > 10000000;
GO
SELECT Jurisdiction.JurisdictionID, Jurisdiction.Name, CovidDeaths.ReportedCovidDeaths
FROM Jurisdiction
LEFT JOIN CovidDeaths
ON Jurisdiction.JurisdictionID = CovidDeaths.JurisdictionID
WHERE Jurisdiction.Population > 10000000
AND CAST(CalendarDate AS DATE) = '2020-10-31';
GO
SELECT DISTINCT JurisdictionID
FROM Jurisdiction
ORDER BY JurisdictionID ASC;
GO
SELECT * FROM Jurisdiction
GO
SELECT DISTINCT JurisdictionID
FROM CovidDeaths;
GO
SELECT DISTINCT CalendarDate
FROM CovidDeaths
WHERE CalendarDate IS NOT NULL;
GO
SELECT DISTINCT JurisdictionID, CalendarDate
FROM CovidDeaths
WHERE CalendarDate = '2020-10-31';
GO
SELECT Jurisdiction.Name, CovidDeaths.ReportedCovidDeaths
FROM Jurisdiction
LEFT JOIN CovidDeaths
ON Jurisdiction.JurisdictionID = CovidDeaths.JurisdictionID
WHERE Jurisdiction.Population > 10000000
AND CAST(CalendarDate AS DATE) = '2020-10-31';
GO
SELECT * FROM CovidDeaths
GO
SELECT * FROM CovidCases
GO
SELECT * FROM Jurisdiction