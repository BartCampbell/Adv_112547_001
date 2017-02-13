CREATE TABLE [stage].[WellCareCodingChaseList06_20170207]
(
[Chart ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEQ_MBR ID] [float] NULL,
[FIRST] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LAST] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [datetime] NULL,
[GENDER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV FIRST NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV LAST NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentauriProviderID] [int] NULL,
[Member_PK] [int] NULL,
[ProviderMaster_PK] [int] NULL,
[ProviderAddress] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project_PK] [int] NULL,
[ProviderOffice_PK] [int] NULL,
[Provider_PK] [int] NULL,
[Suspect_PK] [int] NULL,
[ChaseStatus_PK] [int] NULL,
[Channel_PK] [int] NULL,
[ProjectGroup] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
