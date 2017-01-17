SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--	a_ca_insertExtractedIndex @invoice, @id,	@file, @user
CREATE PROCEDURE [dbo].[a_ca_insertExtractedIndex] 
	@invoice tinyint,
	@id bigint,
	@file varchar(50),
	@user int
AS
BEGIN
	IF (@invoice = 0)
	BEGIN
-----------Transaction Starts-------------------
			
				INSERT INTO tblScannedData(Suspect_PK,DocumentType_PK,[FileName],User_PK,dtInsert,is_deleted) 
					VALUES(@id,1,@file,@user,GETDATE(),0)
				
-----------Transaction Starts-------------------

		IF EXISTS (SELECT * FROM tblSuspectLevelCoded WITH (NOLOCK) WHERE Suspect_PK=@id AND IsCompleted=1)			
		BEGIN			
-----------Transaction Starts-------------------
			
				UPDATE tblSuspectLevelCoded SET IsCompleted=0,ReceivedAdditionalPages=1 WHERE Suspect_PK=@id AND IsCompleted=1
			
-----------Transaction Starts-------------------
		END

		IF EXISTS (SELECT * FROM tblSuspect WITH (NOLOCK) WHERE Suspect_PK=@id AND Scanned_User_PK IS NULL)
		BEGIN			
-----------Transaction Starts-------------------
			
				Update tblSuspect SET IsScanned=1, Scanned_Date=GETDATE(), Scanned_User_PK = @user, ChaseStatus_PK=9 WHERE Suspect_PK=@id
				
			
-----------Transaction Starts-------------------
		END
	END
	ELSE
	BEGIN
-----------Transaction Starts-------------------
			
				INSERT INTO tblScannedDataInvoice(ProviderOfficeInvoice_PK,[FileName],User_PK,dtInsert,is_deleted)
					VALUES(@id,@file,@user,GETDATE(),0)
			
-----------Transaction Starts-------------------
	END
END

GO
