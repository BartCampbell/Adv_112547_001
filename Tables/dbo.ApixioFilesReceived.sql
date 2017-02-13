CREATE TABLE [dbo].[ApixioFilesReceived]
(
[RecID] [int] NOT NULL IDENTITY(1, 1),
[Chart_File_Name] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChaseID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateReceived] [datetime] NULL CONSTRAINT [DF_ApixioFilesReceived_DateReceived] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApixioFilesReceived] ADD CONSTRAINT [PK_ApixioFilesReceived] PRIMARY KEY CLUSTERED  ([RecID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ChartID] ON [dbo].[ApixioFilesReceived] ([ChaseID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ChaseIDVendor] ON [dbo].[ApixioFilesReceived] ([ChaseID], [Vendor]) ON [PRIMARY]
GO
