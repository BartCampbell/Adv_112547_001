CREATE TABLE [dbo].[Apixio_ScannedDocumentMetaData]
(
[Chase_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [ClusteredIndex-20170111-193427] ON [dbo].[Apixio_ScannedDocumentMetaData] ([Chase_ID]) ON [PRIMARY]
GO
