CREATE TABLE [dbo].[WellCareChasesToCentauriChannel_20170117_All]
(
[OldChannel_PK] [int] NOT NULL,
[Suspect_PK] [bigint] NOT NULL,
[ChaseID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewChannel_PK] [int] NOT NULL,
[IsScanned] [bit] NULL
) ON [PRIMARY]
GO
