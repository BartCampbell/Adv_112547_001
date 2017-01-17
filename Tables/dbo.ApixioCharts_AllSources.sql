CREATE TABLE [dbo].[ApixioCharts_AllSources]
(
[PackageName] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[memberID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[chartid] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[filename] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_FileName] ON [dbo].[ApixioCharts_AllSources] ([filename]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_FileNameChart] ON [dbo].[ApixioCharts_AllSources] ([filename]) INCLUDE ([chartid]) ON [PRIMARY]
GO
