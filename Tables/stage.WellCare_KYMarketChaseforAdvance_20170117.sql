CREATE TABLE [stage].[WellCare_KYMarketChaseforAdvance_20170117]
(
[Chart ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Contract Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[match to master ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Altegra LID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Altegra Project] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HICN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member ID2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[First Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[conca] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[gen] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prov ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV LAST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROV FIRST] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESS 2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CITY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAX] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GROUP] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PROJECT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOBUsed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewAddress] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewZip] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdvanceAddress] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdvanceZIP] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressUsed] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIPUSed] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneUSed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAXUSed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdvancePhone] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdvanceFax] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentuariProviderID] [bigint] NULL,
[Member_PK] [bigint] NULL,
[Provider_PK] [bigint] NULL,
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL,
[ExistingProviderAdd] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExistingProvider] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exclude] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
