CREATE TABLE [dbo].[tblContactNotesOffice_BK_20170109]
(
[Project_PK] [smallint] NULL,
[Office_PK] [bigint] NULL,
[ContactNote_PK] [smallint] NULL,
[ContactNoteText] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdated_User_PK] [smallint] NULL,
[LastUpdated_Date] [smalldatetime] NULL,
[contact_num] [tinyint] NULL,
[followup] [date] NULL,
[IsResponded] [bit] NULL,
[IsViewedByScheduler] [bit] NULL,
[MergedProviderOffice_PK] [bigint] NULL,
[FirstPK] [int] NULL,
[LastPK] [int] NULL
) ON [PRIMARY]
GO
