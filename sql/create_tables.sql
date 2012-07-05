USE [hbblog]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/04/2012 21:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[HashedPassword] [nvarchar](50) NULL,
	[LastLogin] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[Token] [nvarchar](255) NULL,
	[IsBanned] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 07/04/2012 21:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[body] [nvarchar](max) NULL,
	[summary] [nvarchar](max) NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_pages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_pages_created_at]    Script Date: 07/04/2012 21:14:11 ******/
ALTER TABLE [dbo].[posts] ADD  CONSTRAINT [DF_pages_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
/****** Object:  Default [DF_Users_CreatedAt]    Script Date: 07/04/2012 21:14:11 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF_Users_UpdatedAt]    Script Date: 07/04/2012 21:14:11 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UpdatedAt]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
/****** Object:  Default [DF_Users_IsBanned]    Script Date: 07/04/2012 21:14:11 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsBanned]  DEFAULT ((0)) FOR [IsBanned]
GO
