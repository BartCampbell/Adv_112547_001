CREATE TABLE [dbo].[DoNotExport]
(
[ChaseID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [ClusteredIndex-20170111-193334] ON [dbo].[DoNotExport] ([ChaseID]) ON [PRIMARY]
GO
