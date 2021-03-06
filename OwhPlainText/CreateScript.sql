
USE [ohw]
GO
/****** Object:  Table [dbo].[PlainText]    Script Date: 08/15/2015 08:31:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlainText]') AND type in (N'U'))
DROP TABLE [dbo].[PlainText]
GO
/****** Object:  Table [dbo].[PlainText]    Script Date: 08/15/2015 08:31:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlainText]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PlainText](
	[Id] [uniqueidentifier] NOT NULL,
	[Benutzername] [nvarchar](50) NOT NULL,
	[Passwort] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PlainText] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[PlainText] ([Id], [Benutzername], [Passwort]) VALUES (N'1ff62dd8-9951-4773-81d6-28349ba387a1', N'Peter', N'Tüte')
GO
INSERT [dbo].[PlainText] ([Id], [Benutzername], [Passwort]) VALUES (N'5530ee86-60c5-48c2-b542-2f901c9dd858', N'Günther', N'Gans')
GO
INSERT [dbo].[PlainText] ([Id], [Benutzername], [Passwort]) VALUES (N'8311f27e-c94b-4365-9bf7-6cb885282672', N'Hans', N'Wurst')
GO
INSERT [dbo].[PlainText] ([Id], [Benutzername], [Passwort]) VALUES (N'41c4b028-14a3-4dd7-8c39-7377d8838c05', N'Hans', N'Hacker')
GO
INSERT [dbo].[PlainText] ([Id], [Benutzername], [Passwort]) VALUES (N'a0869afd-14e0-4ff8-9264-c89fc5078348', N'RZA', N'OwnsYou')
GO