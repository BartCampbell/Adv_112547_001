CREATE TABLE [stage].[WellCareChasesToCentauriChannel_CIOX_WithChaseID]
(
[ChaseID] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FILE_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQUEST_ID] [float] NULL,
[FILE_DATE] [datetime] NULL,
[FILE_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Matched] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
