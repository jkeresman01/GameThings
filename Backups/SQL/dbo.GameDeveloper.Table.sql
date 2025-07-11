USE [GameArticles2]
GO
/****** Object:  Table [dbo].[GameDeveloper]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameDeveloper](
	[GameId] [int] NOT NULL,
	[DeveloperId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GameId] ASC,
	[DeveloperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GameDeveloper]  WITH CHECK ADD FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[Developer] ([Id])
GO
ALTER TABLE [dbo].[GameDeveloper]  WITH CHECK ADD FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
GO
