USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_suppliers]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[city] [nvarchar](50) NULL,
	[contact_number] [varchar](50) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_manufacturers_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_manufacturers_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
