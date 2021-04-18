USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_address]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_address](
	[id] [int] NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[ward_id] [int] NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_address] ADD  CONSTRAINT [DF_tbl_address_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_address] ADD  CONSTRAINT [DF_tbl_address_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
