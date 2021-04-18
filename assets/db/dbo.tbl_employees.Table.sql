USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_employees]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employees](
	[id] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[title] [nvarchar](30) NULL,
	[title_of_courtesy] [nchar](10) NULL,
	[date_of_birth] [date] NULL,
	[hire_date] [datetime] NULL,
	[phone] [varchar](24) NULL,
	[thumbnail_url] [varchar](255) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_employees] ADD  CONSTRAINT [DF_tbl_employees_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_employees] ADD  CONSTRAINT [DF_tbl_employees_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
