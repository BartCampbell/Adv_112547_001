CREATE TABLE [stage].[WellCareGradyChaseList20170417]
(
[Chart ID ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEQ_MEMB_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member HICN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NAME] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider Name] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type_0001] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Add_1] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Add_2] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Zip] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLastName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberFirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentuariProviderID] [bigint] NULL,
[Member_PK] [bigint] NULL,
[Provider_PK] [bigint] NULL,
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL,
[Chase_ID] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
