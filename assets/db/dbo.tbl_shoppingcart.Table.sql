USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_shoppingcart]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shoppingcart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [money] NULL,
	[quantity] [int] NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_shopping_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_shoppingcart] ADD  CONSTRAINT [DF_tbl_shopping_cart_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_shoppingcart] ADD  CONSTRAINT [DF_tbl_shopping_cart_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_shoppingcart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_shopping_cart_tbl_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
ALTER TABLE [dbo].[tbl_shoppingcart] CHECK CONSTRAINT [FK_tbl_shopping_cart_tbl_customers]
GO
ALTER TABLE [dbo].[tbl_shoppingcart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_shopping_cart_tbl_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
ALTER TABLE [dbo].[tbl_shoppingcart] CHECK CONSTRAINT [FK_tbl_shopping_cart_tbl_products]
GO
