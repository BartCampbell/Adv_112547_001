CREATE TABLE [dbo].[ChannelChange_20170127_bak]
(
[Suspect_PK] [bigint] NOT NULL,
[OldChannel_PK] [int] NULL,
[OldChannel] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NewChannel_PK] [int] NOT NULL,
[NewChannel] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
