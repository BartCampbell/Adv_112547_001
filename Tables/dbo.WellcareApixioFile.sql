CREATE TABLE [dbo].[WellcareApixioFile]
(
[WellcareApixioFileID] [int] NULL,
[Extract_Date] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Chart_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Client_Member_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_Last_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Member_First_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOB] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Client_Provider_ID] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prov_Last_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Prov_First_name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Resolution] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Chart_File_Name] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Approx_Page_Count] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Project_Code] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReceivedDate] [datetime] NULL,
[Suspect_PK] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsProcessed] [bit] NULL,
[IsInProcess] [bit] NULL CONSTRAINT [DF_WellcareApixioFile_IsInProcess] DEFAULT ((0))
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_SuspectPK] ON [dbo].[WellcareApixioFile] ([Suspect_PK]) INCLUDE ([Chart_File_Name], [IsProcessed]) ON [PRIMARY]
GO
