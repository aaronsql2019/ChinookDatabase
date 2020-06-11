﻿CREATE PROCEDURE [dbo].[sproc_GetTrackDetails]

(
	@TrackId int
)

AS
SELECT CAST((SELECT CAST((SELECT * FROM [Track]
WHERE
TrackId = @TrackId FOR JSON PATH) AS VARCHAR(MAX)) AS JSONDATA) AS VARCHAR(MAX)) AS JSONDATA