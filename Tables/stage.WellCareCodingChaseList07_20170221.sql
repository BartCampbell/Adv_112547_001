CREATE TABLE [stage].[WellCareCodingChaseList07_20170221]
(
[Chart ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LINE_OF_BUSINESS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEQ_PROV_ID] [int] NULL,
[SEQ_MEMB_ID] [int] NULL,
[First Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [datetime] NULL,
[HICN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEGMENT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChaseID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Suspect_PK] [int] NULL,
[CentauriProviderID] [int] NULL,
[ProviderMaster_PK] [int] NULL,
[Member_PK] [int] NULL,
[ProviderAddress] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project_PK] [int] NULL,
[ProviderOffice_PK] [int] NULL,
[Provider_PK] [int] NULL,
[ChaseStatus_PK] [int] NULL,
[Channel_PK] [int] NULL,
[ProjectGroup] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
