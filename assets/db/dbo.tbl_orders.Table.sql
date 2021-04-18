USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_orders]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[amount] [money] NOT NULL,
	[status] [varchar](15) NULL,
	[order_date] [datetime] NULL,
	[required_date] [datetime] NULL,
	[created_at] [date] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
