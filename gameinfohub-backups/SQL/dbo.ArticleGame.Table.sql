USE [GameArticles2]
GO
/****** Object:  Table [dbo].[ArticleGame]    Script Date: 7/7/2025 10:59:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleGame](
	[ArticleId] [int] NOT NULL,
	[GameId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC,
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleGame]  WITH CHECK ADD FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Article] ([Id])
GO
ALTER TABLE [dbo].[ArticleGame]  WITH CHECK ADD FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
GO
