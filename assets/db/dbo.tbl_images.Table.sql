USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_images]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_images] ADD  DEFAULT (NULL) FOR [thumbnail_url]
GO
ALTER TABLE [dbo].[tbl_images] ADD  CONSTRAINT [DF_tbl_images_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_images] ADD  CONSTRAINT [DF_tbl_images_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
