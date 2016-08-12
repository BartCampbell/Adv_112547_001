CREATE TABLE [dbo].[tmpChase01]
(
[MEMBER_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEMBER_INDIVIDUAL_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[METAL_LEVEL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSR_INDICATOR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEM_FIRST_NAME] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEM_MIDDLE_INITIAL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEM_LAST_NAME] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEM_GENDER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MEM_DATE_OF_BIRTH] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ELIGIBILITY_START] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ELIGIBILITY_END] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUB_PROJECT_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUB_PROJECT_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_NPI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_TIN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_PIN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_PROVIDER_SPECIALTY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_FIRST_NAME] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_LAST_NAME] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESSLINE1] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADDRESSLINE2] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CITY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PHONE_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FAX_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAYER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_GRP_NAME] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MED_GRP_CONTACT] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REN_COUNTY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESIRED_REGION_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESIRED_DIVISION_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEGMENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HIOS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HPN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CHASE_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRIMARY_LOC_FLAG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProviderOffice_PK] [int] NULL,
[Provider_PK] [int] NULL,
[ProviderMaster_PK] [int] NULL
) ON [PRIMARY]
GO
