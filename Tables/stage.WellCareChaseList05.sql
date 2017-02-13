CREATE TABLE [stage].[WellCareChaseList05]
(
[ChaseID] [float] NULL,
[ProvID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [float] NULL,
[MemberLastName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberFirstName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [datetime2] (3) NULL,
[ProviderLastName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentauriProviderID] [bigint] NULL,
[ProviderAddress] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project_PK] [int] NULL,
[Member_PK] [int] NULL,
[ProviderMaster_PK] [int] NULL,
[ProviderOffice_PK] [int] NULL,
[Provider_PK] [int] NULL,
[Suspect_PK] [int] NULL,
[ChaseStatus_PK] [int] NULL,
[Channel_PK] [int] NULL,
[ProjectGroup] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
