CREATE TABLE [dbo].[ApixioMasterChartList]
(
[ChartId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChartName] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20170309-121425] ON [dbo].[ApixioMasterChartList] ([ChartId]) ON [PRIMARY]
GO
