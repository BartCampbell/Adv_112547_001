SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prGetAllImageDirs]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT DISTINCT t1.Project_PK, t1.Provider_PK, t1.Suspect_PK FROM dbo.tblSuspect t1
WHERE t1.IsScanned=1 AND t1.Suspect_PK IN 
(SELECT suspect_pk FROM dbo.tblScannedData WHERE is_deleted=0)


END
GO
