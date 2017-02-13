CREATE TABLE [stage].[WellCareBactesChase2_FROMLISA20170201]
(
[Chart ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[First Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prov ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NPI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV FIRST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV LAST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Provider Specialty] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS 2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CITY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location ID ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GROUP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOBUsed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Existing] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExistingProvider] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExistingProviderAdd] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewAddress] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewZip] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneUSed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAXUSed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentuariProviderID] [bigint] NULL,
[Member_PK] [bigint] NULL,
[Provider_PK] [bigint] NULL,
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL,
[OldCentauriProviderID] [int] NULL,
[pkey] [int] NOT NULL IDENTITY(1, 1),
[dupe] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
