CREATE TABLE [dbo].[tblScannedData]
(
[ScannedData_PK] [bigint] NOT NULL IDENTITY(1, 1),
[Suspect_PK] [bigint] NULL,
[DocumentType_PK] [tinyint] NULL,
[FileName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[User_PK] [smallint] NULL,
[dtInsert] [smalldatetime] NULL,
[is_deleted] [bit] NULL CONSTRAINT [DF__tblScanne__is_de__59E54FE7] DEFAULT ((0)),
[CodedStatus] [tinyint] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblScannedData] ADD CONSTRAINT [PK_tblScannedData] PRIMARY KEY CLUSTERED  ([ScannedData_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_DocTypePK] ON [dbo].[tblScannedData] ([DocumentType_PK]) INCLUDE ([is_deleted], [Suspect_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20170116-101011] ON [dbo].[tblScannedData] ([dtInsert]) INCLUDE ([CodedStatus], [DocumentType_PK], [FileName], [is_deleted], [ScannedData_PK], [Suspect_PK], [User_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20170116-100425] ON [dbo].[tblScannedData] ([dtInsert]) INCLUDE ([Suspect_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_FileName] ON [dbo].[tblScannedData] ([FileName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_IsDeleted] ON [dbo].[tblScannedData] ([is_deleted], [DocumentType_PK]) INCLUDE ([Suspect_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tblScannedData_Suspect] ON [dbo].[tblScannedData] ([Suspect_PK]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_SuspectIsDeleted] ON [dbo].[tblScannedData] ([Suspect_PK], [is_deleted]) ON [PRIMARY]
GO
