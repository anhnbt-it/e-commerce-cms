USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_product_attributes]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_attributes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[attribute_id] [int] NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_product_attributes] ADD  CONSTRAINT [DF_tbl_product_attributes_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_product_attributes] ADD  CONSTRAINT [DF_tbl_product_attributes_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_product_attributes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_product_attributes_tbl_attributes] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[tbl_attributes] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes] CHECK CONSTRAINT [FK_tbl_product_attributes_tbl_attributes]
GO
ALTER TABLE [dbo].[tbl_product_attributes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_product_attributes_tbl_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes] CHECK CONSTRAINT [FK_tbl_product_attributes_tbl_products]
GO
