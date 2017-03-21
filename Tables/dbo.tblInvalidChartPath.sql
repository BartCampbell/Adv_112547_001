CREATE TABLE [dbo].[tblInvalidChartPath]
(
[RecID] [int] NOT NULL IDENTITY(1, 1),
[InvalidPath] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Suspect_PK] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblInvalidChartPath] ADD CONSTRAINT [PK_tblInvalidChartPath] PRIMARY KEY CLUSTERED  ([RecID]) ON [PRIMARY]
GO
