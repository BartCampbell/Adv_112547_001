CREATE TABLE [stage].[Wellcare_Altegra2017SMSL_20170317]
(
[Product] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentCompany] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LocationGroupId] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChartID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Resolution] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DocumentStatus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Measure] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[H_Contract_Number] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DocumentPageCount] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientMemberID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberLastName] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberFirstName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberDOB] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressLine1] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressLine2] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Zipcode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Phone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fax] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ClientPrvID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderLastName] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderFirstName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberCompliant] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PendStatus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewAddress] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewZip] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneUSed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAXUSed] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CentuariProviderID] [bigint] NULL,
[Member_PK] [bigint] NULL,
[Provider_PK] [bigint] NULL,
[ProviderMaster_PK] [bigint] NULL,
[ProviderOffice_PK] [bigint] NULL,
[projectid] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO