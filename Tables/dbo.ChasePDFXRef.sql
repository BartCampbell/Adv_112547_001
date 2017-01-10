CREATE TABLE [dbo].[ChasePDFXRef]
(
[ChaseID] [varchar] (8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Chart_File_Name] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Suspect_PK] [int] NULL,
[IsProcessed] [bit] NULL CONSTRAINT [DF_ChasePDFXRef_IsProcessed] DEFAULT ((0)),
[WellCareApixioFileID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChasePDFXRef] ADD CONSTRAINT [PK_ChasePDFXRef] PRIMARY KEY CLUSTERED  ([WellCareApixioFileID]) ON [PRIMARY]
GO
