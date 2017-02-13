CREATE TABLE [stage].[WellCare_ChaseList_04_MemberOnly]
(
[ChaseID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberFirstName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLastName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProjectGroup] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderUsed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderAddress] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project_PK] [int] NULL,
[Member_PK] [int] NULL,
[ProviderMaster_PK] [int] NULL,
[ProviderOffice_PK] [int] NULL,
[Provider_PK] [int] NULL,
[Suspect_PK] [int] NULL,
[ChaseStatus_PK] [int] NULL,
[Channel_PK] [int] NULL
) ON [PRIMARY]
GO
