CREATE TABLE [stage].[WellCareCentauriORHSChase20170504]
(
[chart Id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEQ_MEMB_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member First ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member Last ] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider Name] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type_0001] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Add_1] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Add_2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Zip] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentuariProviderID] [bigint] NULL,
[Member_PK] [bigint] NULL,
[Provider_PK] [bigint] NULL,
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL,
[CentauriLocationID] [int] NULL,
[Used] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
