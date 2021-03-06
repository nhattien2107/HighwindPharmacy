USE [OnlineShopDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](250) NOT NULL,
	[TaxCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Representative] [nvarchar](250) NULL,
	[Email] [nvarchar](200) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[manufacturerID] [nvarchar](50) NOT NULL,
	[manufacturerName] [nvarchar](max) NULL,
	[nation] [nvarchar](50) NULL,
 CONSTRAINT [PK_manufacturer] PRIMARY KEY CLUSTERED 
(
	[manufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicines](
	[MedicineID] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[DateOfManufacture] [smalldatetime] NULL,
	[TypeID] [nvarchar](50) NULL,
	[ManufacturerID] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Images] [nvarchar](200) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nation]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nation](
	[nationID] [nvarchar](50) NOT NULL,
	[nationName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Nation] PRIMARY KEY CLUSTERED 
(
	[nationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[MedicineID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderpro]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderpro](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [smalldatetime] NULL,
	[CustomerID] [int] NULL,
	[Status] [int] NULL,
	[StaffID] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [nvarchar](max) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Images] [nvarchar](200) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMedicines]    Script Date: 18-Jun-21 9:51:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMedicines](
	[typeID] [nvarchar](50) NOT NULL,
	[typeName] [nvarchar](max) NULL,
	[images] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (1, N'Hàng Tổ Khang', NULL, N'0909888777', N'102 Nguyen Van Troi', NULL, N'khoi0no1@gmail.com', N'customer', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (2, N'Nguyễn Thị Giang', NULL, N'0907555666', N'5 Le Hong Phong', NULL, N'ntgiang@gmail.com', N'ntgiang', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (3, N'Nguyễn Văn Hùng', NULL, N'0907555665', N'6 Tran Phu', NULL, N'nvhung@gmail.com', N'nvhung', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (4, N'Lê Thị Nga', NULL, N'0909888776', N'6 Tran Binh Trong', NULL, N'ltnga@gmail.com', N'ltnga', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (5, N'Trần Xuân Tiến', NULL, N'0906444333', N'9 Lac Long Quan', NULL, N'txtien@gmail.com', N'txtien', N'202cb962ac59075b964b07152d234b70')
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [TaxCode], [Phone], [Address], [Representative], [Email], [UserName], [PassWord]) VALUES (6, N'Nguyễn Xuân Khôi', NULL, N'0932199787', N'5 Âu Cơ Q.Tân Bình', NULL, N'aaaa@gmail.com', N'nxkhoi', N'202cb962ac59075b964b07152d234b70')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'1', N'Roche', N'1')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'10', N'Aavis Pharmaceuticals', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'11', N'Jiangsu Hengrui Medicine', N'4')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'12', N'Guangzhou Baiyunshan Pharmaceutical', N'4')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'13', N'Astellas Pharma', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'14', N'Takeda Pharmaceutical', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'15', N'Amgen', N'1')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'16', N'STELLAPHARM', N'5')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'17', N'Trang Ly Pharmaceutical', N'5')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'18', N'Abbott Laboratories', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'19', N'Daiichi Sankyo', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'2', N'Abraxis BioScience', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'20', N'Mitsubishi Tanabe Pharma', N'2')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'3', N'AryoGen', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'4', N'Capsugel', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'5', N'Catalent', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'6', N'ABER Pharmaceuticals', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'7', N'Sinopharm Group', N'4')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'8', N'Acadia Pharmaceuticals', N'3')
INSERT [dbo].[Manufacturer] ([manufacturerID], [manufacturerName], [nation]) VALUES (N'9', N'Shanghai Pharmaceuticals', N'4')
GO
SET IDENTITY_INSERT [dbo].[Medicines] ON 

INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (1, N'Ostelin Calcium & Vitamin D3 Tab X 250', N'Product Description & Features
Ostelin Calcium & Vitamin D3 is a combination supplement with naturally occurring calcium and vitamin D3. Calcium increases bone mineral density, assists normal healthy bone development in teenagers, and is essential in youth and throughout life to maximise and strengthen bones. Calcium may also assist in the prevention of osteoporosis when dietary intake is inadequate. Vitamin D is essential for calcium absorption, helps support muscle function and may help maintain a healthy immune system.
Ingredients/Material
Active: 12.5mcg colecalciferol (equivalent to Vitamin D3 500 IU), 1.5g calcium carbonate (equivalent to elemental calcium 600mg).
Directions For Use
Adults: 2 tablets daily or as directed by your healthcare professional.
Warnings and Disclaimers
Check with your healthcare professional if you are pregnant or breastfeeding or taking other medications for osteoporosis. Not recommended for children. Always read the label. Use only as directed. Vitamin supplements should not replace a balanced diet. Ostelin is recommended for adults only.
', CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'1', N'1', 28.95, N'Ostelin Calcium & Vitamin D3 Tab X 250.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (2, N'Herbs of Gold Vitamin C 1000 Plus Tab X 120', N'Product Description & Features
Herbs of Gold Vitamin C 1000 Plus Tablets
•	Herbs of Gold Vitamin C 1000 Plus Zinc & Bioflavonoids contains high-strength vitamin C to maintain immune system health.
•	Vitamin C is an important nutrient for humans that cannot by synthesised in the body.
•	Vitamin C 1000 Plus Zinc & Bioflavonoids provides 1g of vitamin C in a low acid form to support healthy immune system function.
•	Vitamin C and zinc support prostate and reproductive system health in males. They also maintain sperm health and motility.
•	Vitamin C supports blood vessel, blood capillary and bone health.
•	Vitamin C and zinc help connective tissue formation and maintain skin health.
•	Zinc is an important trace mineral that is involved in over 300 chemical reactions in the body. A diet high in plant foods can impact zinc absorption. Vitamin C 1000 Plus
•	Zinc & Bioflavonoids contains 8mg of zinc to support wound healing and metabolism of protein, carbohydrates and fats.
•	Vitamin C 1000 Plus Zinc & Bioflavonoids contains antioxidants that reduce free radicals in the body.
•	Vitamin C forms part of the antioxidant network, helping to regenerate vitamin E.
•	Vitamin C supports the absorption of dietary iron.
Ingredients/Material
Each tablet contains:
•	Calcium ascorbate dihydrate 605.3mg equiv. ascorbic acid (vitmain C) 500mg
•	Sodium ascorbate 562.4mg equiv. ascorbic acid (vitamin C) 500mg
•	TOTAL ASCORBIC ACID (VITAMIN C) 1g
•	Citrus bioflavonoids extract 50mg
•	Zinc amino acid chelate equiv. zinc 8mg
•	Rutoside (rutin) 5mg
•	Hesperidin 5mg
Does not contain egg, milk, peanut, soy, tree nuts, animal products, gluten, lactose or artificial colours, flavours or preservatives.
Directions For Use
Adults and children over 12 years - Take 1 tablet, one to three times daily, with food, or as directed by your healthcare practitioner.
Warnings and Disclaimers
•	Always read the label.
•	Follow the directions for use.
•	If symptoms persist, talk to your health professional.
', CAST(N'2020-01-02T00:00:00' AS SmallDateTime), N'1', N'1', 23.5, N'Herbs of Gold Vitamin C 1000 Plus Tab X 120.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (3, N'Quality Health High Strength Vitamin D 1000iu Tab X 250', N'Product Description & Features
Delivered as Vitamin D3, the active form that is produced naturally in the body. Vitamin D3 1000 IU supports efficient utilisation of calcium and phosphorous in the body, which supports bone health and the production of strong bones.
WHO IS QUALITY HEALTH HIGH STRENGTH VITAMIN D FOR?
•	People who wish to maintain strong, healthy bones and teeth. 
•	Elderly people who are more prone to bone weakness and falls.
Ingredients/Material
Dosage form: Tablets, film coated Quantity: 250
Active ingredients per tablet: Cholecalciferol (Vitamin D3 1000 IU) 25 micrograms Contains sulfites.
Directions For Use
Adults: 1 soft capsule daily with a food or as prescribed by your healthcare professional.  If symptoms persist consult your healthcare professional. Vitamins can only be of assistance if the dietary vitamin intake is inadequate.
Store below 25°C.
Warnings and Disclaimers
Adults: 1 soft capsule daily with a food or as prescribed by your healthcare professional.  If symptoms persist consult your healthcare professional. Vitamins can only be of assistance if the dietary vitamin intake is inadequate.
Store below 25°C.
', CAST(N'2020-01-03T00:00:00' AS SmallDateTime), N'1', N'1', 9.95, N'Quality Health High Strength Vitamin D 1000iu Tab X 250.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (4, N'Swisse Ultiboost High Strength Vitamin C Effervescent Tab X 60', N'Product Description & Features
Swisse High Strength Vitamin C Effervescent is a premium quality, great tasting effervescent formula containing vitamin C to support immune function, help reduce the severity and duration of cold symptoms, maintain skin health and provide healthy antioxidant activity.
Immune Function: Vitamin C supports a healthy immune system.
Cold Symptoms: Vitamin C helps to reduce the duration and severity of common cold symptoms.
Skin Health: Vitamin C plays an integral role in the formation and structure of collagen and elastin, which are essential for the maintenance of healthy, supple skin.
Antioxidant Support: Vitamin C provides antioxidant support to help protect against potential free radical damage.
Iron Absorption: Vitamin C facilitates the absorption of iron.
Swisse High Strength Vitamin C effervescent tablets have been formulated based on scientific evidence to conveniently support your health and wellbeing and are a great tasting alternative for those who have difficulty swallowing large tablets or capsules.
Ingredients/Material
Each Tablet Contains:
Vitamin C (ascorbic acid 1 g)
No added gluten, lactose, egg, preservatives, artificial colours and artificial flavours. Sweetened with sorbitol and sucralose. Suitable for vegetarians and vegans.
Directions For Use
Adult Dosage: One tablet daily, dissolved in water, or as directed by a healthcare professional.
Warnings and Disclaimers
Store below 25 degrees Celsius in a dry place. Always replace cap. Do not use if tamper evident seal is broken.
Vitamin supplements should not replace a balanced diet. If symptoms persist consult your healthcare practitioner. Adults only. The recommended daily dose of this medicine contains 338mg of sodium.
', CAST(N'2020-01-04T00:00:00' AS SmallDateTime), N'1', N'1', 5, N'Swisse Ultiboost High Strength Vitamin C Effervescent Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (5, N'Ostelin Vitamin D3 (1000IU) Cap X 250', N'Product Description & Features
Ostelin Vitamin D3 1000IU comes in a small, easy to swallow capsule that provides a daily dose of vitamin D3, the form that is naturally produced in the body. Vitamin D assists the body in calcium absorption and is required throughout life as it helps to maintain strong bones and support muscle function, which may reduce the risk of falls. Vitamin D requirements also increase in pregnant women due to calcium deposition and bone mineralisation in the developing baby. Many Australians do not achieve sufficient Vitamin D levels due to lack of sun exposure. Vitamin D supplementation may help maintain a healthy immune system.
Ingredients/Material
Active: Each capsule contains 25mcg colecalciferol (equivalent to Vitamin D3 1000 IU)
Directions For Use
Adults: 1 capsule daily with a meal or as directed by your healthcare professional.
Warnings and Disclaimers
Always read the label. Use only as directed. Vitamin supplements should not replace a balanced diet. Ostelin is recommended for adults only
', CAST(N'2020-01-05T00:00:00' AS SmallDateTime), N'1', N'1', 27.95, N'Ostelin Vitamin D3 (1000IU) Cap X 250.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (6, N'Blackmores Bio C Chewable 500mg Tab X 50', N'Product Description & Features
Gentle on the stomach, Blackmores Bio C® 500 Chewable supports healthy immune system function in adults and children.
You can catch a cold at any time of year and with over 200 viruses that can cause the common cold it’s hard to avoid. Adults can experience an average of 2-4 colds a year and children as many as 5-10 a year.

The immune system is the body’s natural defence mechanism against germs and a healthy lifestyle is a good way to support your immune system.

Vitamin C is referred to as an essential nutrient because the body cannot make it or extensively store it and must be obtained from food.

Be prepared with Blackmores BIO C® 500 Chewable which helps supports healthy immune function and reduces the severity and duration of common cold symptoms.

It is also an antioxidant and helps reduce free radicals formed in the body.

Take the Immune Health Check and find out how your immune system is going.

Ingredients/Material
Ascorbic acid (vitamin C) 225 mg, Sodium ascorbate (ascorbic acid, vitamin C 275 mg) 309.4 mg (total vitamin C 500 mg) Citrus bioflavonoids extract 10 mg.
Directions For Use
Adults – Chew 2 tablets with a meal, or as professionally prescribed.
Children 4-18 years – For immune health, chew 1 tablet with a meal or as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.
Warnings and Disclaimers
If you are pregnant or breastfeeding, talk to your health professional before use.
', CAST(N'2020-01-06T00:00:00' AS SmallDateTime), N'1', N'1', 6.95, N'Blackmores Bio C Chewable 500mg Tab X 50.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (7, N'BioCeuticals Vitamin E Cap X 60', N'Product Description & Features
Vitamin E Capsules deliver a potent combination of tocotrienols and tocopherols providing all eight naturally occuring vitamin E isomers. Tocotrienols may assist in the maintenance of a normal healthy LDL:HDL cholesterol ratio and in reducing oxidation of LDL cholesterol. Vitamin E Capsules help to support the cardiovascular system and normal blood pressure in healthy individuals. Vitamin E Capsules also provide antioxidants and help support cognitive health.
•	May assist in the maintenance of a healthy LDL:HDL cholesterol ratio and in reducing the oxidation of LDL cholesterol.
•	Provides antioxidant benefits, for protection against free radicals.
•	Helps to support:
o	Maintenance of normal blood pressure in healthy individuals
o	Maintenance of cardiovascular health
o	Cognitive function in healthy individuals.

Ingredients/Material
Each capsule contains:
Tocotrienols complex (palm) - EVNol™ - 120 mg

Tocopherols concentrate - mixed (low-alpha type) – 126 mg

Directions For Use
Adults: Take 1 capsule once or twice daily with food, or as directed by your healthcare practitioner.

Warnings and Disclaimers
•	If symptoms persist consult your healthcare professional.
•	Always read the label. Use only as directed.
•	Vitamin supplements should not replace a balanced diet.
•	If you have any pre-existing conditions, are on any medications, always talk to your health professional before use.
•	Some products should be ceased at least two weeks before any elective surgery, please confirm with your health professional.
', CAST(N'2020-01-07T00:00:00' AS SmallDateTime), N'1', N'1', 50.15, N'BioCeuticals Vitamin E Cap X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (8, N'Swisse Ultiboost Calcium + Vitamin D Tab X 150', N'Product Description & Features
Swisse Ultiboost Calcium + Vitamin D contains premium quality ingredients to help support healthy bones and teeth.
Swisse Ultiboost Calcium + Vitamin D contains a premium form of calcium (citrate) and naturally derived vitamin D3 for increased calcium absorption.
The human skeleton consists of 206 bones that provide a framework for the body to help maintain shape, protect vital organs and provide a place for muscles to attach. Bones also function as a site for mineral storage and blood cell formation.
Calcium requirements increase with age, gender, post menopause, a diet low in calcium, pregnancy and lactation. Swisse Ultiboost Calcium + Vitamin D helps to address dietary calcium deficiency. Vitamin D is included to help the absorption of calcium, as a diet deficient in calcium may contribute to osteoporosis in later life.

Ingredients/Material
EACH TABLET CONTAINS:
Calcium 333.33 mg (Calcium citrate 1.58 g)
Vitamin D3 333 IU (Cholecalciferol 8.3 mcg)
Directions For Use
If symptoms persist consult your healthcare professional. Vitamin supplements should not replace a balanced diet. No added gluten, lactose, egg, soy, and artificial flavours. Suitable for vegetarians.
ADULT DOSAGE:
Two-three tablets daily, during or immediately after a meal, or as directed by a healthcare professional.

Warnings and Disclaimers
•	If symptoms persist consult your healthcare professional.
•	Always read the label. Use only as directed.
•	Vitamin supplements should not replace a balanced diet.
•	If you have any pre-existing conditions, are on any medications, always talk to your health professional before use.
•	Some products should be ceased at least two weeks before any elective surgery, please confirm with your health professional.
', CAST(N'2020-01-08T00:00:00' AS SmallDateTime), N'1', N'1', 16.95, N'Swisse Ultiboost Calcium Vitamin D Tab X 150.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (9, N'Cenovis Vitamin C 500mg Sugarless Tab X 300', N'Product Description & Features
•	Helps reduce the severity and duration of the symptoms of colds
•	Supports the immune system
•	Assists minor wound healing and tissue repair
•	Helps maintain healthy gums
•	Antioxidant support
Cenovis Sugarless C may assist in the management of colds by reducing the severity and duration of symptoms. Vitamin C may also support the function of the immune system. Vitamin C helps maintain healthy gums and may assist in minor wound healing and tissue repair. It is an antioxidant which can act as a free radical scavenger. As Vitamin C is not stored in the body, regular intake is desirable.

Ingredients/Material
Total Vitamin C 500mg (from Ascorbic Acid 250mg and from Sodium Ascorbate 281mg equiv. to Ascorbic Acid 250mg)
No Added Yeast, gluten, lactose, sugar, artificial flavours, artificial preservatives or dairy products or animal-derived products.
Directions For Use
Recommended adult dosage: chew two tablets daily or as recommended by your healthcare professional. Not to be used in children under two years of age without medical advice. Chew before swallowing.
Warnings and Disclaimers
Always read the label. Use only as directed. If symptoms persist consult your healthcare professional. Vitamin supplements should not replace a balanced diet.
Chew before swallowing.
This product contains saccharin sodium. Not to be used in children under two years of age without medical advice.
Store below 25C
', CAST(N'2020-01-09T00:00:00' AS SmallDateTime), N'1', N'1', 18.95, N'Cenovis Vitamin C 500mg Sugarless Tab X 300.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (10, N'Cenovis Vitamin C 500mg Sugarless Tab X 100', N'Product Description & Features
Cenovis® Sugarless C 500 MG may assist in the treatment of colds by reducing the severity and duration of symptoms.
Vitamin C is an antioxidant that is required for tissue growth and repair, adrenal function and healthy gums. It protects against the harmful effects of pollution, infection and enhances immunity.
Essential in the formation of collagen and connective tissue, vitamin C protects against blood clotting and bruising, and promotes the healing of wounds and the production of antistress hormones.

Ingredients/Material
Vitamin C 500mg
from Ascorbic Acid 250mg
and Sodium Ascorbate 281.23mg
No Added yeast, wheat, gluten, lactose, animal and dairy products, microbial preservatives or egg.
Directions For Use
Dosage:
Adults only, chew one to two tablets dailyor as prescribed by your health care professional.
Warnings and Disclaimers
Always read the label. Use only as directed. If symptoms persist consult your healthcare professional. Vitamin supplements should not replace a balanced diet.
Chew before swallowing.
This product contains saccharin sodium. Not to be used in children under two years of age without medical advice.
Store below 25C
', CAST(N'2020-01-10T00:00:00' AS SmallDateTime), N'1', N'1', 6.95, N'Cenovis Vitamin C 500mg Sugarless Tab X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (11, N'Redoxon Immunity Triple Action Orange Effervescent Tab X 30', N'Product Description & Features
Redoxon Immunity Vitamin Orange Flavoured Effervescent Tablets 30 Pack
Redoxon® Immunity triple-action formula brings together the benefits of vitamin C, D and zinc, which play a significant role to support healthy immune function and can help enhance your general health.
Redoxon Immunity works with a 3-way action by combining vitamins C, D and Zinc to enhance the body''s three lines of immune defence. It helps the body cope with environmental stress associated with a modern lifestyle by supporting your immune system to help fight illness including cold and flu symptoms.
Your body is equipped with powerful natural defences - the immune system has many branches and ways of dealing with threats from the environment. You can take additional vitamins and minerals to help maintain your immune system.
That’s where Redoxon Immunity comes in with our combination product of high strength Vitamin C, plus vitamin D and Zinc, to help support your immune system. Your immune system works 24/7 and you can support its function by taking Redoxon Immunity daily.
•	Has a unique combination of Vitamin C, D and Zinc to support immunity.
•	Supports the immune system to fight illness and reduce free radicals formed in the body.
•	Take Redoxon Immunity daily to help reduce the occurrence of the common cold and help decrease the severity and duration of common cold symptoms.
•	Vitamin C helps your body maintain your immune system. Our bodies cannot make Vitamin C or store large amounts of Vitamin C so you may need additional support.
•	Vitamin D is formed from the action of UV sunlight on the skin but sometimes it is not possible to get your daily dose of Vitamin D so you can top up with Redoxon Immunity.
•	Zinc helps maintain your skin – the body''s first line of defence.
•	Great tasting fruity orange flavour.
•	Effervescent format.
•	Supports healthy immune function.

Ingredients/Material
Each Redoxon Immunity Tablet Contains: Vitamin C (Ascorbic Acid) 1000mg Vitamin D 400 IU (Colecalciferol) 10 micrograms Zinc (as Zinc citrate trihydrate) 10mg
Contains: Sucralose, sulfites, and 312mg sodium per tablet.
Directions For Use
Adults and children over 12 years, 1 tablet dissolved in a glass of water. Take daily or as directed by your healthcare professional.
Keep the tube tightly closed in a cool, dry place. Store below 25°C.

Warnings and Disclaimers
Always read the label. Contains Sulfites. Follow the directions for use. Vitamin supplements are not a substitute for a balanced diet.
Not to be used in children under 12 years of age without medical advice. If symptoms persist, talk to your health professional.
', CAST(N'2020-01-11T00:00:00' AS SmallDateTime), N'1', N'1', 14.95, N'Redoxon Immunity Triple Action Orange Effervescent Tab X 30.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (12, N'BioCeuticals Folinic Acid Bioactivated B9 Cap X 120', N'Product Description & Features
Folinic acid is an alternative form of folic acid that bypasses some of the steps in the conversion of folic acid to the active form, 5-methyltetrahydrofolate (5-MTHF). Folinic acid supports healthy red blood cell production, homocysteine metabolism, immune system function and foetal development.
•	Supports healthy methylation pathways in the body.
•	Supports healthy homocysteine metabolism.
•	Involved in the synthesis of S-adenosylmethionine (SAMe).
•	Helps form red blood cells.
•	Supports a healthy brain and nervous system function.
•	Helps support cognitive health, with healthy neural development, growth and repair.
•	Involved in growth and cellular replication, and contributes to normal growth of the foetus.
•	Vegetarian and vegan friendly.

Ingredients/Material
Each capsule contains:
Calcium folinate - 694mcg
equiv. folinic acid (activated vitamin B9) - 500mcg
Directions For Use
Adults: Take 1 capsule once daily or as directed by your health professional.

Warnings and Disclaimers
•	If symptoms persist talk to your health professional.
•	Do not exceed the stated dose except on medical advice.
•	If you have had a baby with neural tube defect/spina bifida – seek specific medical advice.
•	If you have any pre-existing conditions, are on any medications, always talk to your health professional before use.
•	Some products should be ceased at least two weeks before any elective surgery, please confirm with your health professional.
•	Vitamin supplements should not replace a balanced diet.
•	Always read the label. Use only as directed.
•	If you have any pre-existing conditions, are on any medications, always talk to your health professional before use.
•	Some products should be ceased at least two weeks before any elective surgery, please confirm with your health professional.
', CAST(N'2020-01-12T00:00:00' AS SmallDateTime), N'1', N'1', 32.5, N'BioCeuticals Folinic Acid Bioactivated B9 Cap X 120.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (13, N'BioCeuticals Vitamin D3 Cap X 240', N'Product Description & Features
Vitamin D3 plays an intrinsic role in calcium metabolism, the immune and nervous systems, and bone, heart and kidney health. The working group of the Australian and New Zealand Bone and Mineral Society, Endocrine Society of Australia and Osteoporosis Australia state that a significant number of Australians are deficient in vitamin D.
Features:
•	Nutritional support for the maintenance of healthy skeletal, cardiovascular and immune systems.
•	Vitamin D3 aids in healthy calcium absorption and metabolism.
•	Supplementation may help reduce the risk of falls in older adults which in turn may help reduce the risk of fractures.
•	Vitamin D3 is involved in healthy prostate cell differentiation.

Ingredients/Material
Each capsule contains:
Colecalciferol (vitamin D3) - 694mcg
equiv. vitamin D3 - 500mcg
Directions For Use
Adults: Take 1 capsule daily or as directed by your healthcare practitioner.
Warnings and Disclaimers
•	If symptoms persist consult your healthcare practitioner.
•	Vitamin supplements should not replace a balanced diet.
•	Always read label. Use only as directed.
', CAST(N'2020-01-13T00:00:00' AS SmallDateTime), N'1', N'1', 26.35, N'BioCeuticals Vitamin D3 Cap X 240.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (14, N'Swisse Ultiboost Vitamin D 1000 IU Cap X 400', N'Product Description & Features
Swisse Ultiboost Vitamin D is a premium quality formula containing 1000 IU of naturally derived vitamin D3 to support bone and teeth health.
Bone & Teeth Health: Supports the development and maintenance of healthy bones and teeth.
Increased Absorption: Vitamin D3 assists the absorption and utilisation of calcium, which helps maintain healthy bone density. Vitamin D3 is retained in the bloodstream more effectively when compared to vitamin D2 (synthetic).
Muscle Health: Vitamin D helps support muscle function.
Immune Health: Supports a healthy immune system.
The human skeleton consists of 206 bones that provide a framework for the body to help maintain shape, protect vital organs and provide a place for muscles to attach. Bones also function as a site for mineral storage and blood cell formation. Very few foods naturally contain adequate levels of vitamin D, so regular exposure to sunlight is required for the body to produce vitamin D3. Modern lifestyles often reduce the time exposed to sunlight, which increases the need to obtain vitamin D3 from other sources. Swisse Ultiboost Vitamin D has been formulated based on scientific evidence to provide a naturally derived source of vitamin D3 in a convenient, one-a-day dose.

Ingredients/Material
Each Capsule Contains:
Vitamin D3 (as cholecalciferol 25 mcg) 1000 IU
No Added lactose, gluten, yeast, egg, artificial flavours or artificial colours.
Directions For Use
Adult Dosage: One capsule daily, during or immediately after a meal, or as directed by a healthcare professional.
Warnings and Disclaimers
Store below 25 degrees Celsius. Do not use if cap seal is broken.
If symptoms persist consult your healthcare practitioner. Vitamin supplements should not replace a balanced diet.
', CAST(N'2020-01-14T00:00:00' AS SmallDateTime), N'1', N'1', 24.95, N'Swisse Ultiboost Vitamin D 1000 IU Cap X 400.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (15, N'Faulding Vitamin D 1000IU Cap X 500', N'Product Description & Features
Faulding® Remedies Vitamin D 1000IU aids in the absorption of calcium which supports the development and maintenance of strong, healthy bones. Vitamin D is mainly produced in our skin by a reaction that requires sunlight. People who limit their exposure to sunlight may have an increased need for vitamin D supplementation. Faulding® Remedies Vitamin D 1000IU may also assists with calcium absorption.
Ingredients/Material
Each Soft Gel Capsule contains:
Cholecalciferol (Vitamin D3 1000IU) 25µg
Free From
Gluten, dairy, yeast, lactose, artificial colours, artificial flavours, preservatives, sugar/sucrose, wheat, nuts, seafood, egg, salt, alcohol, wheat starch, parabens, sulphites/sulphur, mustard, garlic, mint, aspartame and aspirin.
Contains
Soy, animal products, gelatine.
Directions For Use
Adults, take 1 capsule daily with a meal or as directed by your healthcare professional.
Warnings and Disclaimers
Always read the label. Use only as directed and if symptoms persist please see your healthcare professional. Do not use if tamper evidence seal is missing, torn or broken. Keep out of reach of children. Vitamins can only be of assistance if the dietary vitamin intake is inadequate.
', CAST(N'2020-01-15T00:00:00' AS SmallDateTime), N'1', N'1', 26.95, N'Faulding Vitamin D 1000IU Cap X 500.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (16, N'Caruso''s Mega B Complex Tab X 60', N'Product Description & Features
Caruso''s Mega B Complex
Each member of the B vitamin family has a unique function and performs a special role in the body. B vitamins are utilised more by your body when you are under stress or exerting energy, and as your body can not store them, you need to replenish these B-vitamins every day. It is preferable to obtain the B vitamins from your diet, however, if this is inadequate, you may like to consider supplementing your diet with a B complex.
Health Indications:
•	Support for energy production and energy levels
•	Support for hair, skin and nail health
•	Support for nervous system health and function, and help with neurotransmitter synthesis
•	Support for a healthy stress response in the body
•	Support for immune system health and function
•	Maintenance of blood health, haemoglobin formation and red blood cell production
•	Support for healthy foetal development and healthy foetal Central Nervous System and brain development
•	Antioxidant
•	General health and wellbeing
Ingredients/Material
Active Ingredients: Each tablet contains:
Thiamine Hydrochloride (Vitamin B1) 56mg
   Equiv. to Thiamine 50mg
Riboflavin (Vitamin B2) 50mg
Nicotinamide (Vitamin B3) 100mg
Calcium Pantothenate (Vitamin B5) 54.58mg
   Equiv. to Pantothenic Acid 50mg
   Equiv. to Calcium 4.58mg
Pyridoxine Hydrochloride (Vitamin B6) 91.07mg
   Equiv. to Pyridoxine 75mg
Biotin (Vitamin B7) 2mg
Cyanocobalamin (Vitamin B12) 150mcg
Folic Acid 400mcg
Choline Bitartrate 121.56mg
   Equiv. to Choline 50mg
Inositol 50mg
Free from Sugar, dairy, lactose, gluten, wheat, yeast, starch, soy, nuts, animal products, preservatives and artificial flavours.

Directions For Use
Adults take 1 tablet a day with breakfast or as advised by your Healthcare Professional.
Warnings and Disclaimers
•	Always read the label and follow directions for use.
•	Vitamin supplements should not replace a healthy diet.Stop taking this medication if you experience tingling, burning or numbness and see your healthcare practitioner as soon as possible.Contains Vitamin B6.
•	Advise your doctor of any medicine you take during pregnancy, particularly in your first trimester
•	Take at least 2 hours away from pharmaceutical medication.
', CAST(N'2020-01-16T00:00:00' AS SmallDateTime), N'1', N'1', 16.5, N'Caruso''s Mega B Complex Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (17, N'Blackmores Bio C Chewable 500mg Tab X 200', N'Product Description & Features
Gentle on the stomach, Blackmores Bio C® 500 Chewable supports healthy immune system function in adults and children.
You can catch a cold at any time of year and with over 200 viruses that can cause the common cold it’s hard to avoid. Adults can experience an average of 2-4 colds a year and children as many as 5-10 a year.

The immune system is the body’s natural defence mechanism against germs and a healthy lifestyle is a good way to support your immune system.

Vitamin C is referred to as an essential nutrient because the body cannot make it or extensively store it and must be obtained from food.

Be prepared with Blackmores BIO C® 500 Chewable which helps supports healthy immune function and reduces the severity and duration of common cold symptoms.

It is also an antioxidant and helps reduce free radicals formed in the body.

Take the Immune Health Check and find out how your immune system is going.

Ingredients/Material
Ascorbic acid (vitamin C) 225 mg, Sodium ascorbate (ascorbic acid, vitamin C 275 mg) 309.4 mg (total vitamin C 500 mg) Citrus bioflavonoids extract 10 mg.
Directions For Use
Adults – Chew 2 tablets with a meal, or as professionally prescribed.
Children 4-18 years – For immune health, chew 1 tablet with a meal or as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.
Warnings and Disclaimers
If you are pregnant or breastfeeding, talk to your health professional before use.
', CAST(N'2020-01-17T00:00:00' AS SmallDateTime), N'1', N'1', 26.95, N'Blackmores Bio C Chewable 500mg Tab X 200.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (18, N'Nature''s Way Mega B Executive Stress Tab X 200', N'Product Description & Features
Nature''s Way Mega B Executive Stress Tablets
A high potency formulation with all the essential B Vitamins to support energy levels and stress relief.
Nature''s Way Mega B Executive Stress is a high potency Vitamin B Complex formulation for times of low energy, everyday stress and mental fatigue.
Energy and Stress
B Vitamins are needed to help support energy production and to relieve symptoms of stress and mental fatigue. A busy lifestyle, stress, lack of sleep, and alcohol consumption can deplete B Vitamin levels in the body and make you feel tired and run down. This is where Nature''s Way Mega B can help!
Healthy Skin and Hair
B Vitamins are essential for the proper functioning of cells which help support skin and hair health.

Ingredients/Material
Thiamine nitrate 50mg equiv. Thiamine (Vitamin B1) 40.5mg, Riboflavin (Vitamin B2) 10mg, Nicotinamide (Vitamin B3) 100mg, Calcium pantothenate 50mg equiv. Pantothenic acid (Vitamin B5) 45.8mg, Pyridoxine hydrochloride 25mg equiv. Pyridoxine (Vitamin B6) 20.5mg, Biotin (Vitamin B7) 20micrograms, Inositol 25mg, Folic acid (Vitamin B9) 150micrograms, Cyanocobalamin (Vitamin B12) 50micrograms, Mecobalamin (co-methylcobalamin – Active Vitamin B12) 100micrograms, Choline bitartrate 25mg
Directions For Use
Adults: Take 1 tablet daily with food or as advised by your health professional. 
Store below 25°C.

Warnings and Disclaimers
IVitamin and mineral supplements can only be of assistance if dietary intake is inadequate.
Vitamin and mineral supplements should not replace a balanced diet. If symptoms persist, talk to your health professional.
Contains soya bean products.
', CAST(N'2020-01-18T00:00:00' AS SmallDateTime), N'1', N'1', 17.95, N'Nature''s Way Mega B Executive Stress Tab X 200.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (19, N'Swisse Kids Immune Gummies X 60', N'Product Description & Features
Swisse Kids Immune Gummies are a premium quality formula to support immune system health and wellbeing. Made with natural colours and flavours and no artificial sweeteners, these great-tasting gummies are 99.9% sugar free and ideal for fussy eaters and growing children on the go.
•	Vitamin C and zinc support immune system function and help stimulate a healthy immune system response.
•	Vitamin C supports dietary iron absorption when dietary intake is inadequate.
•	Great tasting for fussy eaters.
•	No artificial sweeteners: Naturally sweetened with stevia, natural orange flavour.

Ingredients/Material
EACH GUMMY (PASTILLE) CONTAINS:
•	VITAMIN C (ascorbic acid) 80 mg
•	Zinc (from zinc sulfate monohydrate) 3 mg
•	CITRUS BIOFLAVONOIDS EXTRACT 5 mg
No added lactose, yeast, egg, soy, artificial colours or artificial flavours
Directions For Use
CHILD DOSAGE:
•	2–8 years: Chew 1 gummy daily, during or immediately after a meal.
•	9–12 years: Chew 2 gummies daily, during or immediately after a meal.
Or as directed by a healthcare professional. Do not swallow whole.
Store below 25°C in a cool, dry place.

Warnings and Disclaimers
•	Vitamin & mineral supplements should not replace a balanced diet.
•	This medicine contains maltitol & mannitol (Total: 2.7 g per maximun daily dose) and may have a laxative effect or cause diarrhoea.
•	Contains sulfites
', CAST(N'2020-01-19T00:00:00' AS SmallDateTime), N'1', N'1', 15.5, N'Swisse Kids Immune Gummies X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (20, N'Quality Health Vitamin B12 1000mcg Tab X 90', N'Product Description & Features
Premium quality, made in Australia. One a day. Supports energy, decreases muscle tiredness, supports nervous system.

Ingredients/Material
Vitamin B12 1000mcg
Directions For Use
Adults; take 1 tablet daily after food

Warnings and Disclaimers
Vitamins can only be of assistance if the dietary vitamin intake is inadequate. 
', CAST(N'2020-01-20T00:00:00' AS SmallDateTime), N'1', N'1', 10.95, N'Quality Health Vitamin B12 1000mcg Tab X 90.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (21, N'Blackmores B12 Rapi-Melt 1000mcg Tab X 60', N'Product Description & Features
Blackmores B12 Rapi Melt 1000 mcg is a great tasting melt which supports vitamin B12 within normal range in a convenient one-a-day dose and supports energy levels
•	Relieves tiredness
•	Supports cognitive function when dietary intake is inadequate
•	Supports general health and wellbeing

Ingredients/Material
Mecobalamin (co-methylcobalamin) 1 mg
Directions For Use
Adults – Take 1 tablet a day with a meal, or as professionally prescribed. Children under 18 years old – Only as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist, talk to your health profession. If you are pregnant or breastfeeding, talk to your health professional before use.
', CAST(N'2020-01-21T00:00:00' AS SmallDateTime), N'1', N'1', 14.95, N'Blackmores B12 Rapi-Melt 1000mcg Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (22, N'Herbs of Gold Activated B Complex Cap X 30', N'Product Description & Features
Herbs of Gold Activated B Complex Capsules
•	Herbs of Gold Activated B Complex contains activated B vitamins, including B2, B6, methylfolate (folate) and mecobalamin (B12), to help support energy production and assist in the maintenance of general wellbeing
•	Activated B Complex aids in the metabolism of carbohydrates.
•	Activated B Complex helps maintain nervous system function and supports a healthy stress response in the body and emotional wellbeing.
•	Activated B Complex contains B5 and the active form of B6 (pyridoxal 5-phosphate monohydrate) to support healthy adrenal gland function.
•	B vitamins support the health and production of red blood cells and supports cardiovascular system health.
•	Activated B Complex contains mecobalamin (co-methylcobalamin), the active form of vitamin B12. Other forms of vitamin B12, such as cyanocobalamin, need to be converted to co-methylcobalamin for use in the body.
•	Activated B Complex contains methylfolate (levomefolic acid), the active form of folate.
•	Methylfolate and vitamin B12 support memory and cognitive function. Methylfolate also helps reduce homocysteine levels.

Ingredients/Material
Each capsule contains:
•	Thiamine hydrochloride 25mg equiv. Thiamine (vitamin B1) 22.3mg
•	Riboflavin sodium phosphate 25mg equiv. Riboflavin (vitamin B2) 18.3mg
•	Nicotinamide 25mg
•	Calcium pantothenate 25mg equiv. Pantothenic acid (vitamin B5) 22.9mg
•	Pyridoxal 5-phosphate monohydrate 25mg equiv. Pyridoxine (vitamin B6) 15.4mg
•	Levomefolate glucosamine (Quatrefolic®) 842 micrograms equiv. Levomefolic acid (5-MTHF) 400mcg
•	Mecobalamin (co-methylcobalamin) (vitamin B12) 400 micrograms
Does not contain egg, milk, peanut, soy, tree nuts, animal products, gluten, lactose or artificial colours, flavours or preservatives
Directions For Use
Adults and children over 12 years – Take 1 capsule daily, with food, or as directed by your health professional.

Warnings and Disclaimers
•	Advise your doctor of any medicine you take during pregnancy, particularly in your first trimester.
•	Vitamin supplements should not replace a balanced diet.
•	Always read the label.
•	Follow the directions for use.
', CAST(N'2020-01-22T00:00:00' AS SmallDateTime), N'1', N'1', 17.5, N'Herbs of Gold Activated B Complex Cap X 30.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (23, N'Henry Blooms Ultra-B Complex Tab X 60', N'Product Description & Features
Henry Blooms Ultra-B Complex combines high strength B Vitamins with Choline, Inositol and Vitamin C. It contains nutrients which can be beneficial during times of stress, and to assist energy production and help reduce fatigue. Vegan friendly.
Henry Blooms Ultra-B Complex helps to:
•	Support energy production and levels
•	Relieve tiredness and fatigue
•	Support a healthy stress response in the body
•	Support nervous system function
•	Aid the metabolism of carbohydrates
•	Vitamin C acts as an antioxidant to reduce free radicals formed in the body and to support healthy immune system function

Ingredients/Material
Each tablet contains: Thiamine (Vitamin B1 from thiamine nitrate 75 mg) 60.8 mg, Riboflavin (Vitamin B2) 50 mg, Nicotinamide (Vitamin B3) 100 mg, Pantothenic acid (Vitamin B5 from Calcium pantothenate 81.8 mg) 75 mg, Pyridoxine (Vitamin B6 from pyridoxine hydrochloride 50 mg ) 41.1 mg, Biotin (Vitamin B7) 1 mg, Folic acid (Vitamin B9) 200 micrograms,  Cyanocobalamin (Vitamin B12) 100 micrograms, Inositol 25 mg, Choline bitartrate 25 mg, Ascorbic acid (Vitamin C) 100 mg.
Free from gluten, wheat, yeast, milk derivatives, lactose, flavours and preservatives. Contains soya bean products. Suitable for vegetarians and vegans.

Directions For Use
Adults: Take 1 tablet daily with food, or as directed by a healthcare practitioner.

Warnings and Disclaimers
If symptoms persist, talk to your health professional. Vitamin and/or mineral supplements should not replace a balanced diet.
', CAST(N'2020-01-23T00:00:00' AS SmallDateTime), N'1', N'1', 18.95, N'Henry Blooms Ultra-B Complex Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (24, N'Blackmores Executive B Stress Formula Tab X 62', N'Product Description & Features
A specifically formulated combination of nutrients which helps reduce the symptoms of stress.
Blackmores Executive B Stress Formula contains a combination of ingredients which are beneficial in times of ongoing stress. It can temporarily relieve the symptoms of stress and support energy production and the healthy function of the nervous system. Blackmores Executive B Stress Formula also contains nutrients which are necessary for the heathy functioning of adrenal glands and which can also support the body’s response to stress.
AUST L 153503

Ingredients/Material
Thiamine hydrochloride(vitamin B1 ) 75 mg, Riboflavin(vitamin B2) 10 mg, Nicotinamide 100 mg, Calcium pantothenate 75 mg, Pyridoxine hydrochloride (vitamin B6) 25 mg, Cyanocobalamin (Vitamin B12) 30 microgram, Vitamin H (Biotin) 20 microgram, Calcium ascorbate dihydrate 145 mg, Ascorbic Acid 130 mg (Total vitamin C 250 mg), d-alpha-tocopheryl Acid Succinate 41.3 mg, Magnesium phosphate 140 mg, Calcium phosphate 100 mg, Potassium phosphate monobasic 117.3 mg, Folic acid 150microgram, Avena sativa (oats) extract equiv. to dry seed 250 mg, Passiflora incarnata (passion flower) extract equiv. to dry herb 100 mg, Lecithin 50 mg, Choline bitartrate 25 mg, Inositol 25 mg.

Directions For Use
Adults - Take 1 tablet with breakfast and 1 tablet with lunch, or as professionally prescribed. Children under 12 years - Only as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist talk to your health professional. Supplements may only be of assistance if dietary intake is inadequate. This medicine may not be right for you. Read the warnings before purchase
Contains gluten. If you are pregnant or breastfeeding talk to your health professional before use.
', CAST(N'2020-01-24T00:00:00' AS SmallDateTime), N'1', N'1', 20.95, N'Blackmores Executive B Stress Formula Tab X 62.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (25, N'BioCeuticals Methyl B12 Chewable Tab X 60', N'Product Description & Features
Methylcobalamin is the bioavailable and metabolically active coenzyme form of vitamin B12, involved in the healthy function of the methylation pathway. Methylcobalamin can supplement dietary vitamin B12 intake.
Features:
•	Contains methylcobalamin, the form of B12 that is active in the human body, bypassing the conversion requirements of the cyanocobalamin form.
•	Sublingual tablet for oral delivery and absorption via passive diffusion across mucosal membranes.
•	Supplements dietary vitamin B12 intake.
•	Suitable for population groups at increased risk of vitamin B12 deficiency, including the elderly and vegetarians.
•	Flavour free, chewable tablet for sublingual absorption.

Ingredients/Material
Each sublingual tablet contains:
Mecobalamin (co-methylcobalamin) (active vitamin B12)  -  5000mcg
Directions For Use
Adults: Dissolve 1 tablet in mouth once daily or as directed by your healthcare practitioner.

Warnings and Disclaimers
•	If symptoms persist consult your healthcare practitioner.
•	Contains lactose (milk sugar).
•	Vitamin supplements should not replace a balanced diet.
•	Always read label. Use only as directed.
', CAST(N'2020-01-25T00:00:00' AS SmallDateTime), N'1', N'1', 24.45, N'BioCeuticals Methyl B12 Chewable Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (26, N'Ethical Nutrients Extra C Plus Zinc Immune Health Tab X 60', N'Product Description & Features
Ethical Nutrients Extra C Plus Zinc Immune Health Tablets
Ethical Nutrients Extra C Plus Zinc combats common cold infections, provides immune system support and combines preferred forms of Vitamin C with Bioflavonoids.
Extra C Plus Zinc combines zinc with bioflavonoids and high strength, preferred forms of vitamin C for common cold symptoms. Vitamin C and zinc are key nutrients for a strong and healthy immune system, while bioflavonoids are found naturally in citrus fruits. Preferred forms of Vitamin C are gentler on the stomach and teeth.

Ingredients/Material
Each tablet contains:
Calcium Ascorbate Dihydrate 605mg Equiv. Ascorbic Acid (Vitamin C) 500mg Sodium Ascorbate 562mg Equiv. Ascorbic Acid (Vitamin C) 500mg Total Ascorbic acid (Vitamin C) 1000mg Hesperidin 5mg Zinc amino acid chelate 40mg Equiv. Zinc 8mg Citrus bioflavonoids extract 50mg Rutoside 5mg
Directions For Use
For immune support: Take 1 tablet daily with food. To reduce the severity and duration of a cold: Take 2 tablets twice daily with food.
Store below 30°C.

Warnings and Disclaimers
Contains zinc which may be dangerous if taken in large amounts or for a long period. Vitamin and mineral supplements should not replace a balanced diet. If symptoms persist consult your healthcare professional. Do not use if cap and/or bottle seals are missing or broken. The maximum recommended daily dose (4 tablets) contains 279mg of sodium.
', CAST(N'2020-01-01T00:00:00' AS SmallDateTime), N'1', N'2', 21.5, N'Ethical Nutrients Extra C Plus Zinc Immune Health Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (27, N'Blackmores Bio C 1000mg Tab X 150', N'Product Description & Features
Blackmores Bio C® 1000 a potent one-a-day formula to give you a boost of vitamin C to reduce the severity and duration of common cold symptoms.
With over 200 viruses that can cause the common cold it’s hard to avoid catching a cold. Adults can experience an average of 2-4 colds a year. 

The immune system is the body’s natural defence mechanism against germs, a healthy lifestyle is a good way to support your immune system.

Vitamin C is referred to as an essential nutrient because the body cannot make it or extensively store it and must be obtained from food.

Vitamin C helps reduce the severity and duration of common cold symptoms due to its ability to support a healthy immune function.

It is an antioxidant and helps reduce free radicals formed in the body.

To relieve tiredness and help you recover from illness why not try Blackmores Immune + Recovery

Blackmores BIO C® 1000 is buffered with mineral ascorbates making it gentler on the stomach compared to ascorbic acid alone and contains rosehips and acerola which are sources of vitamin C.

A high potency one-a-day dose of vitamin C to help reduce the severity and duration of common cold symptoms.

Ingredients/Material
Ascorbic acid (vitamin C) 385 mg Calcium ascorbate dihydrate (ascorbic acid, vitamin C 315 mg) 381 mg Sodium ascorbate (ascorbic acid, vitamin C 300 mg) 339 mg (total vitamin C 1000 mg) Citrus bioflavonoids extract 25 mg Rutoside 50 mg Hesperidin 50 mg Rosa canina (rosehips) extract dry conc. 62.5 mg equiv. to dry fruit 250 mg Malpighia glabra (acerola) extract dry conc. 12.5 mg equiv. to dry fruit 50 mg.
Directions For Use
•	Adults – Take 1 tablet a day with a meal, or as professionally prescribed.
•	 Children under 18 years of age only as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist talk to your health professional. Supplements may only be of assistance if dietary intake is inadequate.
If you have any pre-existing conditions, or are on any medications always talk to your health professional before use.
', CAST(N'2020-01-02T00:00:00' AS SmallDateTime), N'1', N'2', 25.95, N'Blackmores Bio C 1000mg Tab X 150.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (28, N'Ostelin Calcium & Vitamin D3 Tab X 130', N'Product Description & Features
Ostelin Calcium & Vitamin D3 is a combination supplement with naturally occurring calcium and vitamin D3. Calcium increases bone mineral density, assists normal healthy bone development in teenagers, and is essential in youth and throughout life to maximise and strengthen bones. Calcium may also assist in the prevention of osteoporosis when dietary intake is inadequate. Vitamin D is essential for calcium absorption, helps support muscle function and may help maintain a healthy immune system.
Ingredients/Material
Active: 12.5mcg colecalciferol (equivalent to Vitamin D3 500 IU), 1.5g calcium carbonate (equivalent to elemental calcium 600mg). Pharmaceutical
Directions For Use
Adults: 2 tablets daily or as directed by your healthcare professional.

Warnings and Disclaimers
Check with your healthcare professional if you are pregnant or breastfeeding or taking other medications for osteoporosis. Not recommended for children. Always read the label. Use only as directed. Vitamin supplements should not replace a balanced diet. Ostelin is recommended for adults only.
', CAST(N'2020-01-03T00:00:00' AS SmallDateTime), N'1', N'2', 16.95, N'Ostelin Calcium & Vitamin D3 Tab X 130.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (29, N'Bioglan Vitamin D3 1000IU Cap X 250', N'Product Description & Features
Bioglan Vitamin D3 helps maintain muscle strength and strong bones as well as support, healthy teeth, immune function, and brain and nervous system health. Contains 250 soft capsules.
What is Bioglan Vitamin D3 for?
•	Many Australians, despite our sunny climate, have less than optimal Vitamin D levels due to a stronger awareness about sun protection, lack of sun exposure and an inadequate diet.
Who is Bioglan Vitamin D3 for?
•	People who wish to maintain strong, healthy bones and teeth. 
•	Those who have limited exposure to sunlight. 
•	Elderly people who are more prone to sedentary life styles. 
•	People with a diet that is lacking fat-soluble vitamins such as vitamin D3.
When should I take Bioglan Vitamin D3?
•	Can be taken daily or as directed by a healthcare professional to ensure adequate Vitamin D3 intake.
Why should I take Bioglan Vitamin D3?
•	Maintain muscle strength (particularly in the elderly).
•	Maintain strong bones. 
•	Support calcium absorption 
•	Support healthy teeth 
•	Support healthy immune system function 
•	Support brain and nervous system health

Ingredients/Material
Active ingredients per capsule:
Colecalciferol 25 micrograms -Equiv. vitamin D3 1000 IU.
Directions For Use
Adults and children 12 years+: Take one capsule daily with a meal, or as directed by your healthcare professional.
Children under 12 years: Use only as directed by a healthcare professional.
Store below 25°C.

Warnings and Disclaimers
•	Contains soya and sulfites.
•	Always read the label. Follow the directions for use. 
•	Vitamin supplements should not replace a balanced diet.
', CAST(N'2020-01-04T00:00:00' AS SmallDateTime), N'1', N'2', 12.99, N'Bioglan Vitamin D3 1000IU Cap X 250.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (30, N'GO Healthy Go Vitamin D3 1000IU Cap X 150', N'Product Description & Features
GO Healthy GO Vitamin D3 1000IU SoftGel Capsules support the development of strong healthy bones.
GO Vitamin D3 1,000IU contains Vitamin D which supports the development and maintenance of strong, healthy bones and teeth. It helps to maintain serum calcium and phosphorus levels. Helps calcium absorption, a diet deficient in calcium can lead to osteoporosis later in life. Vitamin D helps to maintain healthy bone density and also supports the health and function of the immune system, nervous system and cardiovascular system. Vitamin D is mainly produced in our skin by a reaction that requires sunlight. People who limit their exposure to sunlight may have an increased need for Vitamin D supplementation.
•	Plays a role in calcium balance in the body
•	Helps maintain bone mineral density
•	Builds and maintains strong, healthy bones
•	High Potency

Ingredients/Material
Each SoftGel Capsule contains: Colecalciferol (Vitamin D3 1,000IU)- 25mcg.
Contains no added corn, gluten.

Directions For Use
Adults: Take 1 SoftGel Capsule daily. Best taken with food or as directed by your Healthcare Professional. Take in conjunction with a healthy balanced diet.
Store below 30°C away from children.

Warnings and Disclaimers
Vitamins can only be of assistance if the dietary vitamin intake is inadequate. Always read the label. Take only as directed. If symptoms persist, consult your Healthcare Professional. Do not use if tamper evidence seal is missing, torn or broken.
Medicine Interactions: If taking prescription medication or if in doubt, consult your Healthcare Professional.
', CAST(N'2020-01-05T00:00:00' AS SmallDateTime), N'1', N'2', 15.95, N'GO Healthy Go Vitamin D3 1000IU Cap X 150.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (31, N'Caruso''s Natural Health Vitamin D3 1000IU Cap X 500', N'Product Description & Features
Caruso''s Vitamin D3 1000IU is a one-a-day capsule designed to support those who require additional Vitamin D support for the maintenance of healthy bones, muscles, the immune and cardiovascular systems. 
Vitamin D controls calcium levels in the blood and also assists in the metabolism and absorption in bone mineralisation. Vitamin D3 is important for bone and muscle development, immune support, cardiovascular function and maintaining heart health.
Vitamin D is absorbed in the skin through sunlight exposure and is then utilised throughout the body. Low vitamin D levels are therefore more commonly found in those people who have limited sunlight exposure, i.e. working indoors during the day. Caruso’s Vitamin D3 contains 1000IU of Vitamin D, providing a convenient one-a-day dose.

Caruso’s Vitamin D3 1000IU Health Indications:
•	Calcium absorption
•	Heart and cardiovascular system support
•	Immune system support
•	Muscle health
•	General health and wellbeing

Ingredients/Material
Each capsule contains:
Colecalciferol………………………………..…………25mcg
Equiv. to Vitamin D3 1000IU
Free from: dairy, lactose, gluten, wheat, yeast, corn, starch, nuts, preservatives, artificial colours and artificial flavours.

Directions For Use
Adults take 1 capsule daily with food or as advised by your health professional.

Warnings and Disclaimers
•	Always read the label. Follow the directions for use. If symptoms persist, worsen or change unexpectedly, talk to your health professional.
•	Contains soya
•	Contains sulfites
•	Phenylketonurics - this product contains phenylalanine
•	Vitamin supplements should not replace a balanced diet
•	Not suitable for children under the age of 18 years
•	Take at least 2 hours away from pharmaceutical medications.
', CAST(N'2020-01-06T00:00:00' AS SmallDateTime), N'1', N'2', 23.95, N'Caruso''s Natural Health Vitamin D3 1000IU Cap X 500.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (32, N'Henry Blooms VitaQIK Vitamin D3 & K2 Oral Spray 50ml', N'Product Description & Features
VitaQIK™ Liposomal Vitamin D3 & K2 uses liposomal technology sprayed under the tongue to immediately kick start absorption. Vitamin D3 and K2 work synergistically to support healthy bones, maintain healthy calcium balance and support healthy immune ad cardiovascular system functions.

Ingredients/Material
Each 2 mL dose contains:
Colecalciferol 25 micrograms
(Vit. D3 1000IU)
Menaquinone 7 10 micrograms
(Vit. K2)
Free from sugar, lactose, gluten, wheat, milk derivatives, animal products and artificial colours and flavours.
Vegan friendly.

Directions For Use
Adults: Shake well before use. Spray 2 mL (4 sprays) under the tongue once daily, or as directed by your health professional. Hold liquid under tongue for 5 seconds before swallowing.

Warnings and Disclaimers
Vitamin supplements should not replace a balanced diet. Store below 25 degress Celcius away from sunlight. Do not use if tamper evident seal is broken or missing.
Contains ethanol, potassium sorbate, sodium benzoate.
', CAST(N'2020-01-07T00:00:00' AS SmallDateTime), N'1', N'2', 10.95, N'Henry Blooms VitaQIK Vitamin D3 & K2 Oral Spray 50ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (33, N'Cenovis B Complex Tab X 150', N'Product Description & Features
•	Helps the maintenance or improvement of general well-being.
•	May help maintain healthy brain and cognitive function.
•	Helps maintain cardiovascular health.
•	Supports energy production.
Cenovis B Complex contains 7 essential B group vitamins that work together to support energy production and cardiovascular health. Vitamin B3 is essential for a healthy brain and nervous system, and works with Vitamins B1 and B2 to release energy in the body. Vitamin B1 is required for normal development, physical performance and well-being. Vitamin B6, B12 and Folic acid may help maintain healthy brain and cognitive function. Vitamin B12 is important for maintaining cardiovascular health.

Ingredients/Material
Vitamin B1 (Thiamine Nitrate) 15mg
Vitamin B2 (Riboflavine) 15mg
Vitamin B3 (Nicotinamide) 30mg
Vitamin B5 (Calcium Pantothenate) 8mg
Vitamin B6 (Pyridoxine Hydrochloride) 5mg
Vitamin B12 (Cyanocobalamin) 10mcg
Folic Acid 150mcg.

Directions For Use
Dosage
Adults take one to two tablets daily with food, children seven years and over take one tablet daily or as recommended by your healthcare professional. Not recommended for children under seven years of age.
Storage
Store below 30°C.

Warnings and Disclaimers
Contains sulfites. Not recommended for children under seven years of age. Vitamin supplements should not replace a balanced diet.
', CAST(N'2020-01-08T00:00:00' AS SmallDateTime), N'1', N'2', 10.85, N'Cenovis B Complex Tab X 150.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (34, N'Blackmores Mega B Complex Tab X 75', N'Product Description & Features
Blackmores Mega B Complex is a one a day dose, specific combination of B vitamins to support energy levels.
Blackmores Mega B Complex is a high potency formula with vitamin B. It supports energy levels so you can get the most out of your day.
•	Supports energy levels & a healthy stress response in the body
•	Supports skin health
•	Assists healthy red blood cell production
•	Supports general health and wellbeing

Ingredients/Material
Thiamine hydrochloride (vitamin B1) 50 mg, Riboflavin (vitamin B2) 30 mg, Nicotinamide (vitamin B3) 100 mg, Calcium pantothenate (pantothenic acid, vitamin B5 45.8 mg) 50 mg, Pyridoxine hydrochloride (pyridoxine, vitamin B6 41.1 mg) 50 mg, Cyanocobalamin (vitamin B12) 50 microgram, Biotin 50 microgram, Choline bitartrate 50 mg, Inositol 50 mg, Folic acid 300 microgram
Directions For Use
Adults – Take 1 tablet a day with a meal, or as professionally prescribed. Children under 18 years old – Only as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist, worsen or episodes become more frequently, talk to your medical practitioner. Not recommended for use during pregnancy and breastfeeding
', CAST(N'2020-01-09T00:00:00' AS SmallDateTime), N'1', N'2', 21.95, N'Blackmores Mega B Complex Tab X 75.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (35, N'Blackmores Vitamin B6 Tab X 40', N'Product Description & Features
May help to relieve pre-menstrual symptoms.
Blackmores Vitamin B6 is a one a day dose, formulated to help relieve symptoms of pre-menstrual tension in women.
Blackmores Vitamin B6 is a sustained release formula to supply the nutrients gradually over several hours. Convenient one-a-day dosage.

Vitamin B6 may be of benefit for the relief of pre-menstrual symptoms such as breast tenderness, mild fluid[GH1]  retention, irritability and fatigue.

Ingredients/Material
Active Ingredients: Pyridoxine hydrochloride 121.6 mg equiv. to pyridoxine (vitamin B6 100 mg)
Directions For Use
Adults - At the first sign of pre-menstrual symptoms and during menstruation, take 1 tablet (swallow whole) once a day. Take with food. For short-term use during menstruation only.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist talk to your health professional. Supplements may only be of assistance if dietary intake is inadequate.
Stop taking this medication if you experience tingling, burning or numbness and see your health practitioner as soon as possible.
', CAST(N'2020-01-10T00:00:00' AS SmallDateTime), N'1', N'2', 9.5, N'Blackmores Vitamin B6 Tab X 40.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (36, N'Pharmacy Action Vitamin D 1000IU Cap X 250', N'Product Description & Features
Helps keep muscles and bones strong

Each capsule contains:

Vitamin D3 1000 IU(Cholecalciferol 25 mcg)

* Free from Gluten, Lactose, Yeast, Sugar

Ingredients/Material
Active Ingredients: Pyridoxine hydrochloride 121.6 mg equiv. to pyridoxine (vitamin B6 100 mg)
Directions For Use
Adults - At the first sign of pre-menstrual symptoms and during menstruation, take 1 tablet (swallow whole) once a day. Take with food. For short-term use during menstruation only.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist talk to your health professional. Supplements may only be of assistance if dietary intake is inadequate.
Stop taking this medication if you experience tingling, burning or numbness and see your health practitioner as soon as possible.
', CAST(N'2020-01-11T00:00:00' AS SmallDateTime), N'1', N'2', 8.95, N'Pharmacy Action Vitamin D 1000IU Cap X 250.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (37, N'Nature''s Own Vitamin D3 Cap X 200', N'Product Description & Features
General Information
• Promotes calcium absorption and helps to form and maintain strong bones
• important for bone and muscle development, function, and preservation
• improving or maintaining adequate Vitamin D levels may have protective effects on long term health Many Australians have less than optimal Vitamin D levels due to lack of sun exposure. Nature''s Own Vitamin D3 mini capsules provide an easy way to supplement your daily dose of Vitamin D.

Ingredients/Material
Vitamin D3 1000IU (Cholecalciferol 25mcg) No added yeast, starch, gluten, lactose, sugar, artificial colours or flavours, artificial sweeteners or preservatives, or dairy products. Store below 25°C
Directions For Use
Take 1 capsule daily with food, or as recommended by your healthcare professional.

Warnings and Disclaimers
Vitamin supplements should not replace a balanced diet.
', CAST(N'2020-01-12T00:00:00' AS SmallDateTime), N'1', N'2', 13.95, N'Nature''s Own Vitamin D3 Cap X 200.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (38, N'Herbs of Gold Activated B Complex Cap X 60', N'Product Description & Features
Herbs of Gold Activated B Complex Capsules
•	Herbs of Gold Activated B Complex contains activated B vitamins, including B2, B6, methylfolate (folate) and mecobalamin (B12), to help support energy production and assist in the maintenance of general wellbeing
•	Activated B Complex aids in the metabolism of carbohydrates.
•	Activated B Complex helps maintain nervous system function and supports a healthy stress response in the body and emotional wellbeing.
•	Activated B Complex contains B5 and the active form of B6 (pyridoxal 5-phosphate monohydrate) to support healthy adrenal gland function.
•	B vitamins support the health and production of red blood cells and supports cardiovascular system health.
•	Activated B Complex contains mecobalamin (co-methylcobalamin), the active form of vitamin B12. Other forms of vitamin B12, such as cyanocobalamin, need to be converted to co-methylcobalamin for use in the body.
•	Activated B Complex contains methylfolate (levomefolic acid), the active form of folate.
•	Methylfolate and vitamin B12 support memory and cognitive function. Methylfolate also helps reduce homocysteine levels.

Ingredients/Material
Each capsule contains:
•	Thiamine hydrochloride 25mg equiv. Thiamine (vitamin B1) 22.3mg
•	Riboflavin sodium phosphate 25mg equiv. Riboflavin (vitamin B2) 18.3mg
•	Nicotinamide 25mg
•	Calcium pantothenate 25mg equiv. Pantothenic acid (vitamin B5) 22.9mg
•	Pyridoxal 5-phosphate monohydrate 25mg equiv. Pyridoxine (vitamin B6) 15.4mg
•	Levomefolate glucosamine (Quatrefolic®) 842 micrograms equiv. Levomefolic acid (5-MTHF) 400mcg
•	Mecobalamin (co-methylcobalamin) (vitamin B12) 400 micrograms
Does not contain egg, milk, peanut, soy, tree nuts, animal products, gluten, lactose or artificial colours, flavours or preservatives
Directions For Use
Adults and children over 12 years – Take 1 capsule daily, with food, or as directed by your health professional.

Warnings and Disclaimers
•	Advise your doctor of any medicine you take during pregnancy, particularly in your first trimester.
•	Vitamin supplements should not replace a balanced diet.
•	Always read the label.
•	Follow the directions for use.
', CAST(N'2020-01-13T00:00:00' AS SmallDateTime), N'1', N'2', 31.95, N'Herbs of Gold Activated B Complex Cap X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (39, N'Herbs of Gold B Sustained Release Tab X 120', N'Product Description & Features
Herbs of Gold B Sustained Release Tablets
•	Herbs of Gold B Sustained Release contains a combination of B vitamins to support energy production and a healthy stress response in the body.
•	B Sustained Release is a high-strength vitamin B complex formulated to release nutrients into the body over an 8-hour period.
•	B Sustained Release contains B vitamins that help to convert food into energy, and assist the metabolism of protein, carbohydrates and fats.
•	B Sustained Release assists the synthesis of neurotransmitters and supports nervous system function.
•	Vitamin B12 and folic acid assist healthy red blood cell production and support blood and cardiovascular system health. Vitamin B6 helps maintain haemoglobin formation.
•	B Sustained Release contains 400mcg of folic acid which, if taken daily for one month before conception and during the first trimester of pregnancy, helps prevent neural tube defects such as spina bifida and anencephaly.
•	B Sustained Release contains vitamin C, which is an antioxidant that reduces free radicals formed in the body and supports skin health.

Ingredients/Material
Each tablet contains:
•	Thiamine hydrochloride (vitamin B1) 100mg
•	Riboflavin (vitamin B2) 80mg
•	Nicotinamide 100mg
•	Calcium pantothenate 120mg equiv. Pantothenic acid (vitamin B5) 109.9mg
•	Pyridoxine hydrochloride 75mg equiv. Pyridoxine (vitamin B6) 61.7mg
•	Folic acid 400 micrograms
•	Cyanocobalamin (vitamin B12) 100 micrograms
•	Choline bitartrate 50mg
•	Inositol 50mg
•	Biotin 50 micrograms
•	Ascorbic acid (vitamin C) 200mg
Does not contain egg, milk, peanut, tree nuts, animal products, gluten, lactose or artificial colours, flavours or preservatives.

Directions For Use
Adults and children over 12 years - Take 1 tablet daily, with food, or as directed by your health professional.

Warnings and Disclaimers
•	Advise your doctor of any medicine you take during pregnancy, particularly in your first trimester.
•	Vitamin supplements should not replace a balanced diet.
•	Always read the label.
•	Follow the directions for use.
', CAST(N'2020-01-14T00:00:00' AS SmallDateTime), N'1', N'2', 35.95, N'Herbs of Gold B Sustained Release Tab X 120.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (40, N'Nature''s Own Super B Complex Tab X 75', N'Product Description & Features
Nature''s Own Super B Complex
Packed with all the B Vitamins for supporting energy levels
•	Supports energy levels by helping the body in the metabolism of carbohydrates, fats and proteins
•	Relieves tiredness
•	Supports function of the nervous system
•	Maintains cognitive function in healthy individuals
•	Maintains heart health, and a healthy immune system function

Ingredients/Material
Thiamine Nitrate (Vitamin B1) 50mg Nicotinamide (Vitamin B3) 100mg Riboflavine (Vitamin B2) 30mg Calcium Pantothenate (Vitamin B5) 50mg Pyridoxine Hydrochloride (Vitamin B6) 50mg Cyanocobalamin (Vitamin B12) 50micrograms Folic Acid 300micrograms Ascorbic Acid 100mg Choline Bitartrate 50micrograms Inositol 50micrograms Biotin 50micrograms
No added gluten, lactose, artificial colours or flavours, artificial sweeteners, or dairy products.
Directions For Use
Take 1 tablet daily with food or as recommended by your healthcare professional. If symptoms persist consult your healthcare professional. Vitamin supplements should not replace a balanced diet.
STORE BELOW 25°C.

Warnings and Disclaimers
•	Always read the label.
•	Follow the directions for use.
•	If symptoms persist, talk to your health professional.
', CAST(N'2020-01-15T00:00:00' AS SmallDateTime), N'1', N'2', 19.95, N'Nature Own Super B Complex Tab X 75.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (41, N'BioCeuticals Methyl-Max Cap X 60', N'Product Description & Features
Methyl-Max contains active vitamin B6, activated vitamin B9 (folinic acid), vitamin B12, riboflavin (B2) and serine; all required for functioning of the methylation pathways.Methyl-Max may help to maintain health of older individuals and pregnant women. Some older individuals may be at risk of developing vitamin B12 insufficiency and may benefit from supplementation.
•	May help to maintain normal healthy plasma homocysteine levels.
•	Helps to form red blood cells, and used as a blood tonic to help maintain normal blood.
•	May assist peripheral blood circulation.
•	Helps support cognitive health and may assist in the maintenance of normal healthy memory function.
•	Contributes to the normal growth of the foetus.
•	Vitamins B6, B9 and B12 are involved in the function of the liver.

Ingredients/Material
Each capsule contains:
Serine - 50mg
Pyridoxal-5-phosphate monohydrate (P5P) (active vitamin B6) - 31.3mg
Riboflavin (vitamin B2)  - 15mg
Cyanocobalamin (vitamin B12)  - 500mcg

Calcium folinate  -  694mcg

equiv. folinic acid (activated vitamin B9)  - 500mcg
Directions For Use
Take 1 tablet daily with food or as recommended by your healthcare professional. If symptoms persist consult your healthcare professional. Vitamin supplements should not replace a balanced diet.
STORE BELOW 25°C.

Warnings and Disclaimers
•	Always read the label.
•	Follow the directions for use.
•	If symptoms persist, talk to your health professional.
', CAST(N'2020-01-16T00:00:00' AS SmallDateTime), N'1', N'2', 25.95, N'BioCeuticals Methyl-Max Cap X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (42, N'Nature''s Own Ultra B 150 Forte Tab X 60', N'Product Description & Features
Nature’s Own Ultra B 150 Forte
High potency complex for supporting energy production with active form of Vitamin B12
•	Contains active form of B12 found in the human body, which is a coenzyme for metabolic reactions
•	High potency formula that supports energy production by helping the body in the metabolism of carbohydrates, fats and proteins
•	Relieves tiredness
•	Supports nervous system function
•	Maintains cognitive functions

Ingredients/Material
Thiamine nitrate (Vitamin B1) 150mg Riboflavine (Vitamin B2) 150mg Nicotinamide (Vitamin B3) 150mg Calcium pantothenate (Vitamin B5) 150mg Pyridoxine hydrochloride (Vitamin B6) 150mg Mecobalamin (Vitamin B12) 400micrograms Folic Acid 500micrograms Biotin 150micrograms Choline bitartrate 75mg Inositol 75mg
No added gluten, lactose, sugar, artificial colours or flavours, artificial sweeteners, dairy products or animal derived products.
Directions For Use
Take 1 tablet daily with food or as recommended by your healthcare professional. If symptoms persist, talk to your health professional. Vitamin supplements should not replace a balanced diet.
STORE BELOW 25°C.

Warnings and Disclaimers
•	Contains sulfites. Warning: large tablet size.
•	This medicine may not be right for you.
•	Read the warnings before purchase, in warnings section below.
•	Follow the directions for use.
•	If symptoms persist talk to your health professional.
', CAST(N'2020-01-17T00:00:00' AS SmallDateTime), N'1', N'2', 22.95, N'Nature''s Own Ultra B 150 Forte Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (43, N'Tru Niagen 300mg Cap X 30', N'Product Description & Features
Tru Niagen 300mg Cap X 30
We use NAD+ every day for basic functions like sleeping, breathing, eating, and drinking. But our NAD+ levels decline with age and metabolic stress which contributes to changes in health.
Tru Niagen® increases your NAD+, every time you take it supporting:
•	Tissue repair and regeneration
•	Energy levels
•	General health and wellbeing
Formulated without nuts or gluten, and does not contain caffeine. No animal by-products, no artificial colours or flavours
Ingredients/Material
300mg per capsule of NIAGEN® (nicotinamide riboside chloride)
Directions For Use
Take one capsule (300mg) every morning with or without food

Warnings and Disclaimers
•	Not recommened for use during pregnancy or during lactation.
•	Not for use for in children 18 or under
•	Vitamins and/or mineral supplements should not replace a balanced diet.
•	Always read the label. Follow the directions for use.

', CAST(N'2020-01-18T00:00:00' AS SmallDateTime), N'1', N'2', 67.95, N'Tru Niagen 300mg Cap X 30.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (44, N'Hydroxocobalamin Injection X 3 Ampoules', N'Product Description & Features
Hydroxcobalamin Injection
For treatment of Vitamin B12 deficiency.
Ingredients/Material
300mg per capsule of NIAGEN® (nicotinamide riboside chloride)
Directions For Use
Take one capsule (300mg) every morning with or without food

Warnings and Disclaimers
•	Not recommened for use during pregnancy or during lactation.
•	Not for use for in children 18 or under
•	Vitamins and/or mineral supplements should not replace a balanced diet.
•	Always read the label. Follow the directions for use.
', CAST(N'2020-01-19T00:00:00' AS SmallDateTime), N'1', N'2', 9.95, N'Hydroxocobalamin Injection X 3 Ampoules.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (45, N'Nature''s Way Kids Smart Vita Gummies Vitamin C + Zinc (99% Sugar Free) X 70', N'Product Description & Features
Nature''s Way Kids Smart Vita Gummies 99% Sugar Free Vitamin C + Zinc
To help support immune system health & wellbeing.
Kids Smart Vita Gummies Vitamin C + Zinc is a 99% sugar free formula, power packed with the goodness of vitamin C to reduce free radicals formed in the body. Combined with an essential mineral - zinc, which plays as important role in helping to support immune system health and maintain general health and wellbeing.
Just two gummies a day helps support Vitamin C and zinc levels in the body... and it tastes great!! 

Ingredients/Material
Each Pastille (gummie) contains: Ascorbic Acid (Vitamin C) 80mg Zinc (as Zinc Sulfate onohydrate) 2.5mg Contains gluten, sucralose and sulfites. Contains maltitol and sorbitol (Max. 3.22g per 2 pastilles) which may have a laxative effect or cause diarrhoea. Does not contain real fruit.
Directions For Use
•	Children 2+ years: Take two pastilles per day, or as advised by your healthcare professional.
•	Store below 25°C. Protect from direct heat and moisture.

Warnings and Disclaimers
•	Do not use if tamper evident seal if broken or missing.
•	Always read the label. Follow the directions for use. 
•	Vitamins and minerals can only be of assistance if dietary intake is inadequate. 
•	Contains gluten, sucralose and sulfites. 
•	Contains maltitol and sorbitol (Max. 3.22g per 2 pastilles) which may have a laxative effect or cause diarrhoea.
•	Does not contain real fruit.
', CAST(N'2020-01-20T00:00:00' AS SmallDateTime), N'1', N'2', 15.95, N'Natures Way Kids Smart Vita Gummies Vitamin C Zinc X 70.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (46, N'Goli Nutrition Apple Cider Vinegar Gummies X 60', N'Product Description & Features
Goli Gummy offers you all of the benefits of ACV without the unpleasant taste and side effects of vinegar. Each gummy is jampacked with flavour, superfoods and vitamins without any artificial flavouring, colouring or fillers.
MADE WITH REAL APPLES Goli Gummies are made with the mother, they’re also unfiltered, and raw. Goli Gummies offer you the benefits of Apple Cider Vinegar without the discomfort of the actual vinegar. You can substitute one shot of ACV for 2 gummies.
Key Benefits:
100% organic, vegan, gluten-free and with absolutely no fillers or artificial flavours, sweeteners or colouring.
•	Energize, Detox, Balance
•	Digestive Aid
•	Gut Health
•	Youthful Glowing Skin

Ingredients/Material
Apple Cider Vinegar, Organic Beetroot, organic pomegranate, Organic Tapioca Syrup, Water, Organic Cane Sugar, Pectin, Sodium Citrate, Citric Acid, Malic Acid, Natural flavour, organic carrot, organic apple, organic blackcurrent (For Colour and flavour)
Goli Does NOT contain: yeast, wheat, milk, eggs, gluten, soy, gelatin, peanuts, shellfish, dairy, artificial sweetner, articficial colours, artificial flavours, agave, artificial preservatives and salicylates.
Directions For Use
2 gummies = shot of ACV
For Optimal results we recommend 2-4 gummies per day, max 12 per day.

Warnings and Disclaimers
Consult a physician if pregnant or nursing, taking medication or have a medical condition.
', CAST(N'2020-01-21T00:00:00' AS SmallDateTime), N'1', N'2', 24.95, N'Goli Nutrition Apple Cider Vinegar Gummies X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (47, N'Blackmores BIO C 500 Sustained Release Tab X 200', N'Product Description & Features
Blackmores BIO C 500 Sustained Release delivers a gradual supply of vitamin C over 8 hours and supports immune system health. 
Blackmores BIO C® 500 Sustained Release supports immune system health and reduces the severity and duration of common cold symptoms. It is specially formulated to release a boost of vitamin C over a sustained 8 hour period.

The formula is buffered with mineral ascorbates to give you a vitamin C that’s gentle on the stomach and has added bioflavonoids thought to support the efficacy of vitamin C.

Ingredients/Material
ACTIVE INGREDIENTS
Ascorbic acid (vitamin C) 280 mg Calcium ascorbate dihydrate (ascorbic acid, vitamin C 220 mg) 266 mg (Total vitamin C 500 mg) Citrus bioflavonoids extract 25 mg Hesperidin 25 mg Rutoside 50 mg Rosa canina (rosehips) extract dry conc. 41.7 mg equiv. to dry fruit 250 mg
Directions For Use
Adults: For Immune system health: Take 1 tablet once a day, or as professionally prescribed. Take with food. To reduce the duration and severity of common cold symptoms: Take 1 tablet two times a day, or as professionally prescribed. Take with food.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
This medicine may not be right for you. Read the warnings before purchase.
Always read the label. Follow the directions for use. IIf symptoms persist, worsen or change talk to your health professional. Supplements may only be of assistance if dietary intake is inadequate.
', CAST(N'2020-01-22T00:00:00' AS SmallDateTime), N'1', N'2', 35.95, N'Blackmores BIO C 500 Sustained Release Tab X 200.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (48, N'Blackmores Vitamin D3 1000IU Cap X 60', N'Product Description & Features
Blackmores Vitamin D3 1000 IU is available in a convenient one a day dose to support healthy bones.
Blackmores Vitamin D3 1000 IU can assist in building and maintaining healthy bones. Vitamin D3 helps the absorption of calcium and supports healthy muscles.

Blackmores Vitamin D3 1000IU is a one a day dose of Vitamin D3 to help calcium absorption and support healthy bones. A diet deficient in calcium can lead to osteoporosis in later life.

Ingredients/Material
Colecalciferol (vitamin D3 1000 IU) 25 microgram.
Directions For Use
Adults - Take 1 capsule a day with a meal or as professionally prescribed. Children under 18 years - Only as professionally prescribed.
Store below 30°C in a dry place away from direct sunlight.

Warnings and Disclaimers
Always read the label. Follow the directions for use. If symptoms persist, talk to your health professional. Supplements may only be of assistance if dietary intake is inadequate. Contains soya bean products and sulfites
', CAST(N'2020-01-23T00:00:00' AS SmallDateTime), N'1', N'2', 7.95, N'Blackmores Vitamin D3 1000IU Cap X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (49, N'Swisse Ultiboost Daily Immune Support Tab X 60', N'Product Description & Features
Swisse Ultiboost Daily Immune Support is a premium quality formula to help maintain a healthy immune system year-round.
•	Immune Support: Zinc and vitamin C support healthy immune system function.
•	Immune Support: Zinc and vitamin C support healthy immune system function.
•	Common Cold Symptoms: Vitamin C helps reduce duration and severity of common cold symptoms.
Suitable for vegetarians and vegans

Ingredients/Material
EACH TABLET CONTAINS:
•	OLIVE LEAF (Olea europaea extract 55.56 mg) equiv. dry leaf (standardised to contain oleuropein 11.1 mg) 250 mg (min.)
•	VITAMIN C (ascorbic acid from calcium ascorbate dihydrate) 500 mg
•	Zinc (from zinc sulfate monohydrate) 25 mg
•	MAGNESIUM (from magnesium aspartate dihydrate) 18.75 mg
•	COPPER (from cupric sulfate pentahydrate) 1 mg
•	CITRUS BIOFLAVONOIDS EXTRACT 20 mg
No added lactose, gluten, yeast, egg, soy, artificial flavours or colours.
Directions For Use
ADULT DOSAGE:
•	General Immune Support: One tablet daily.
•	Common Cold Symptoms: Two tablets daily.
Or as directed by a healthcare professional. Take during or immediately after a main meal.
Store below 25°C.

Warnings and Disclaimers
•	Contains sulfites
•	For adult use only.
•	Contains zinc which may be dangerous if taken in large amounts or for a long period.
•	Vitamin & mineral supplements should not replace a balanced diet.
•	If symptoms persist consult your healthcare professional.
', CAST(N'2020-01-24T00:00:00' AS SmallDateTime), N'1', N'2', 11.95, N'Swisse Ultiboost Daily Immune Support Tab X 60.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (50, N'Nutralife ESTER-C + Bioflavonoids Tab 1000mg X 100', N'Product Description & Features
Vitamin C is essential for the proper function of the immune system and may aid in decreasing the duration of colds when taken regularly.
Nutralife ESTER-C + Bioflavonoids Tab 1000mg X 100:
•	Provides 24 hour immune support
•	May aid in decreasing the duration of colds when taken regularly
Ester-C® is a researched form of Vitamin C that supports natural immunity. Ester-C® may lead to a more sustained retention of Vitamin C in the white blood cells than ascorbic acid•. It is a non-acidic form of Vitamin C and may be better tolerated than standard Vitamin C in people who are sensitive to acidic foods."

Ingredients/Material
Each tablet provides
Ester-C® 1000mg:
Calcium ascorbate dihydrate 977mg
Equiv. Vitamin C (Ascorbic acid) 766mg
Calcium L-threonate 12mg
Calcium carbonate 11mg
Citrus bioflavonoids extract 100mg
Equiv. Hesperidin 35mg
Tabletting aids.
Directions For Use
Adults and children over 12 years: Take 1 tablet 3 times daily, or as directed by your healthcare professional.

Warnings and Disclaimers
Not to be used in children under two years of age without medical advice. Vitamin supplements should not replace a balanced diet.
', CAST(N'2020-01-25T00:00:00' AS SmallDateTime), N'1', N'2', 19.95, N'Nutralife ESTER-C Bioflavonoids Tab 1000mg X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (51, N'Pharmacy Health Paracetamol 500mg Tab X 100', N'Product Description & Features
Pharmacy Health Paracetamol 500mg Tab X 100
Pain relief that is gentle on the stomach

Ingredients/Material
Paracetamol 500mg
Directions For Use
Adults and children over 12 years: Take 1 tablet 3 times daily, or as directed by your healthcare professional.

Warnings and Disclaimers
Not to be used in children under two years of age without medical advice. Vitamin supplements should not replace a balanced diet.
', CAST(N'2020-02-01T00:00:00' AS SmallDateTime), N'2', N'3', 2.5, N'Pharmacy Health Paracetamol 500mg Tab X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (52, N'Panamax Tab X 100', N'Product Description & Features
Panamax Tab X 100
For effective relief of:
•	Arthritis pain
•	Headache
•	Muscular pain
•	Reduces fever

Ingredients/Material
Paracetamol 500mg
Directions For Use
Place tablet(s) in mouth and swallow down with water.
12 years old to Adult: 1-2 tablets every 4-6 hours with water as required (maximum 8 tablets in 24 hours)
7 to 12 years old: 1 tablet every 4 to 6 hours with water as required (maximum 4 tablets in 24 hours)

Warnings and Disclaimers
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-02T00:00:00' AS SmallDateTime), N'2', N'3', 2.95, N'Panamax Tab X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (53, N'Pharmacy Action Ibuprofen 200mg Tab X 96', N'Product Description & Features
Pharmacy Action Ibuprofen 200mg Tablets: provide effective temporary relief of pain and discomfort associated with migraine and tension headaches, muscular aches, dental pain, aches and pains associated with colds and flu, period pain and arthritic pain.
Reduces fever. Ibuprofen tablets have anti-inflammatory properties which provide temporary relief from acute pain where inflammation is present.

Ingredients/Material
Each tablet contains Ibuprofen 200mg
Directions For Use
Adults and children over 12 years:
•	1 or 2 tablets initially, then 1 - 2 tablets every four to six hours as necessary
•	Take with fluid
•	Dosage should not exceed 6 tablets in 24 hours
Children 7 to 12 (22 to 41kg):
•	One tablet to be taken with fluid every six to eight hours, when required, up to four times daily
•	Maximum dose of 4 tablets in 24 hours

Warnings and Disclaimers
If you get an allergic reaction, stop taking and see your doctor immediately.
DO NOT USE:
•	If you have a stomach ulcer or other stomach disorder
•	Kidney or heart problems
•	If you are allergic to ibuprofen or other anti-inflammatory medicines
•	For more than a few days at a time (Unless a doctor has told you to)
•	If you have asthma (Unless a doctor has told you to)
•	In children under 7 years of age (Unless a doctor has told you to)
•	With other medicines containing ibuprofen, aspirin or other anti-inflammatory medicines or with medicines you are taking regularly (Unless a doctor or pharmacist told you to)
•	During the first six months of pregnancy, except on doctor''s advice
•	At all during the last 3 months of pregnancy
Do not exceed the recommended dose. Excessive or prolonged use can be harmful and can increase the risk of heart attack, stroke or liver damage.
', CAST(N'2020-02-03T00:00:00' AS SmallDateTime), N'2', N'3', 4.95, N'Pharmacy Action Ibuprofen 200mg Tab X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (54, N'Trust Ibuprofen 200mg Tab X 96', N'Product Description & Features
Effective temporary relief of pain and inflammation

Ingredients/Material
Ibuprofen 200mg
Directions For Use
This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.

Warnings and Disclaimers
If you get an allergic reaction, stop taking and see your doctor immediately.
DO NOT USE:
•	If you have a stomach ulcer or other stomach disorder
•	Kidney or heart problems
•	If you are allergic to ibuprofen or other anti-inflammatory medicines
•	For more than a few days at a time (Unless a doctor has told you to)
•	If you have asthma (Unless a doctor has told you to)
•	In children under 7 years of age (Unless a doctor has told you to)
•	With other medicines containing ibuprofen, aspirin or other anti-inflammatory medicines or with medicines you are taking regularly (Unless a doctor or pharmacist told you to)
•	During the first six months of pregnancy, except on doctor''s advice
•	At all during the last 3 months of pregnancy
Do not exceed the recommended dose. Excessive or prolonged use can be harmful and can increase the risk of heart attack, stroke or liver damage.
', CAST(N'2020-02-04T00:00:00' AS SmallDateTime), N'2', N'3', 4.95, N'Trust Ibuprofen 200mg Tab X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (55, N'Advil Liquid Cap X 20', N'Product Description & Features
Advil Liquid Cap X 20 relieves pain fast.
Advil provides temporary relief of pain and discomfort from:
•	Headache
•	Back Pain
•	Muscle Pain
•	Period Pain
•	Dental Pain
•	Arthritis Pain
•	Sore Throat Pain
•	Cold & Flu
Advil reduces fever.
Easy to swallow.
Ingredients/Material
Ibuprofen 200mg
Contains sulfites, soya bean products, and potassium (17.7 mg per capsule)
Directions For Use
- For use by Adults and Children from 12 years and over.
- Begin by taking 1 or 2 capsules, swallowed whole with water.
- One capsule will often be adequate for mild pain, but for more severe pain you may require two capsules.
- Repeat dose if necessary after 4 to 6 hours.
- Do not exceed 6 capsules in 24 hours.
- Store below 25°C
Warnings and Disclaimers
Do not use this product:
- If you are allergic to ibuprofen, aspirin or other anti-inflammatory medicine, pain reliever/fever reducer or any other component of this product.
- If you are pregnant, or trying to become pregnant.
- If you have a current or past history of stomach ulcer/bleeding/disorders.
- If you have impaired kidney function or heart failure.
- If the foil seal is broken. Unless your doctor has told you do not use this product:
- If you have asthma, high blood pressure, heart or liver disease.
- If you are breast feeding.
- With other medicines containing ibuprofen, aspirin, other anti-inflammatory medicines, blood thinners or any other medicines you take regularly.
- If you are taking aspirin for heart attack or stroke as ibuprofen may decrease this benefit of aspirin.
- If you are 65 years or over or under a doctor''s care for any serious condition.
While using this product:
- Stop use and ask your doctor immediately if you see an allergic reaction including skin reddening, rash or blisters or if pain or fever gets worse or lasts for more than a few days.
- Stop use and ask the doctor if you see blood in your vomit or have bloody or black stools.
- Do not use for more than a few days at a time unless a doctor has told you to.
- Do not exceed the recommended dose.
- Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage.
- Side effects may be minimised by using the smallest dose for the shortest duration of time.
- In case of accidental overdose, stop use and contact immediately the Poisons Information Centre (Australia 13 11 26, New Zealand 0800 764 766). Contains sugar, benzoates, hydroxybenzoates, sulfites and soya beans or soya bean products.
- Keep out of reach of children.
- Always read the label.
- Do not use if you have a stomach ulcer, impaired kidney function, heart failure, are allergic to antiinflammatory medicines, or if pregnant or trying to become pregnant.
- Contains benzoates, hydroxybenzoates, sulfites and soya.
- Follow the directions for use. If symptoms persist, talk to your health professional. Incorrect use could be harmful.
', CAST(N'2020-02-05T00:00:00' AS SmallDateTime), N'2', N'3', 4.95, N'Advil Liquid Cap X 20.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (56, N'Chemists'' Own Cold & Flu Relief Day + Night PE Tab X 24', N'Product Description & Features
Chemists'' Own Cold & Flu Relief Day + Night PE Tablets
Effective temporary day & night relief from cold & flu symptoms
Ingredients/Material
Ibuprofen 200mg
Contains sulfites, soya bean products, and potassium (17.7 mg per capsule)
Directions For Use
- For use by Adults and Children from 12 years and over.
- Begin by taking 1 or 2 capsules, swallowed whole with water.
- One capsule will often be adequate for mild pain, but for more severe pain you may require two capsules.
- Repeat dose if necessary after 4 to 6 hours.
- Do not exceed 6 capsules in 24 hours.
- Store below 25°C
Warnings and Disclaimers
This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-06T00:00:00' AS SmallDateTime), N'2', N'3', 3.95, N'Chemists Own Cold & Flu Relief Day Night PE Tab X 24.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (57, N'Rafen Tab X 50
', N'Product Description & Features
Rafen Tab X 50  Temporary relief of pain where inflammation is present
•	Headache
•	Tension headache
•	Migraine headache
•	Back pain
•	Lower back pain
•	Dental pain
•	Period pain
•	Muscular and rheumatic pain
•	Cold and flu pain
•	Body aches
•	Strains and sports injuries
•	Fever and Sinus pain

Ingredients/Material
Ibuprofen 200mg
Directions For Use
Adults and children over 12 years: Initially take two tablets then if necessary one or two tablets every four hours. Do not exceed 6 tablets in any 24 hours.
• Not to be used in children under 12 years of age.
Warnings and Disclaimers
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-07T00:00:00' AS SmallDateTime), N'2', N'3', 3.95, N'Rafen Tab X 50
.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (58, N'Nurofen Cold & Flu PE Tab X 12', N'Product Description & Features
Nurofen Cold & Flu PE provides fast effective temporary relief of the major symptons associated with cold and flu without causing drowsiness including
•	Headache
•	Sore Throat
•	Sinus Pain
•	Body Aches & Pains
•	Runny Nose
•	Blocked Nose
•	Fever

Ingredients/Material
Buprofen 200mg. Phenylephrine Hydrochloride 5mg.
Directions For Use
Take with water. Adults and children from 12 years: 2 tablets every 4-6 hours as necessary (maximum 6 tablets in 24 hours). Do not give Nurofen Cold & Flu PE tablets to children under 12 years.
Store below 25°C.

Warnings and Disclaimers
Do not exceed the recommended dose. Excessive use can be harmful and can increase the risk of heart attack, stroke or liver damage. This product may cause sleeplessness. 
Do not use if: - you have a stomach ulcer, or other stomach disorders, kidney, liver or heart problems. - you are allergic to ibuprofen, aspirin or other anti-inflammatory medicines. - during the lost 3 months of pregnancy. - in children under 12 years of age. Unless a doctor has told you to, do not use: - if you have high blood pressure or are receiving regular treatment with other medications, in particular antidepressants. - for more than 3 days at a time. - if you have asthma. - if you have taken other medicines for cold are flu. - if you are taking other medicines containing Ibuprofen, aspirin or other anti-inflammatory medicines. - if you are trying to become pregnant or during the first 6 months of pregnancy. - in children suffering from chickenpox (varicella). - in children suffering from dehydration through diarrhoea and/or vomiting. - if you are aged 65 years or older. Stop use and see your doctor immediately if: you have an allergic reaction.
', CAST(N'2020-02-08T00:00:00' AS SmallDateTime), N'2', N'3', 7.95, N'Nurofen Cold & Flu PE Tab X 12.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (59, N'Nurofen Quickzorb Pain Relief Caplets X 24', N'Product Description & Features
Nurofen Quickzorb Ibuprofen Lysine pain relief caplets have an advanced formula for fast absorption.
When you suffer from headache, you need a pain reliever that will sort it out quick. For quick, effective pain relief choose Nurofen Quickzorb. 
Nurofen Quickzorb Caplets have an advanced formula that it’s absorbed quickly. They are easy to swallow.
Nurofen Quickzorb is effective in the temporary relief of pain and/or inflammation associated with:
•	headache
•	migraine headache
•	tension headache
•	muscular pain
•	cold & flu symptoms
•	period pain
•	dental pain
•	sinus pain
•	back pain
•	arthritic pain
•	reduces fever

Ingredients/Material
Ibuprofen Lysine 342mg (equiv. Ibuprofen 200mg).
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers
Do not use if: - You have a stomach ulcer, or other stomach disorders, kidney, liver or heart problems. - You are allergic to ibuprofen, aspirin or other anti-inflammatory medicines. - During the last 3 months of pregnancy. Unless a doctor has told you to, do not use: - For more than 3 days at a time. - If you have asthma. - If you are taking other medicines containing ibuprofen, aspirin or anti-inflammatory medicines. - If you are trying to become pregnant or during the first 6 months of pregnancy. - In children suffering form vomiting. - If you are taking medication regularly. - If you are aged 65 years or over. - In children under 7 years of age. Stop use and see your doctor immediately if: - You have an allergic reaction.
Do not exceed the recommended dose. Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage.
Keep out of reach of children. Do not use if the blister foil is broken on first opening.
', CAST(N'2020-02-09T00:00:00' AS SmallDateTime), N'2', N'3', 5.95, N'Nurofen Quickzorb Pain Relief Caplets X 24.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (60, N'ApoHealth Paracetamol 500mg Caplets X 100', N'Product Description & Features
APOHEALTH Paracetamol Pain Relief is used for effective relief of pain and fever.
Ingredients/Material
Active Ingredient(s)
•	Paracetamol 500mg
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers
This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-10T00:00:00' AS SmallDateTime), N'2', N'3', 3.95, N'ApoHealth Paracetamol 500mg Caplets X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (61, N'Chemists'' Own Ibuprofen 200mg Tab X 48', N'Product Description & Features
For effective relief of pain associated with acute pain where inflammation is present.
Does not contain: Preservatives, artifical colours, gluten, artificial flavours, yeast wheat or soy
Ingredients/Material
Ibuprofen 200mg
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers
This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-11T00:00:00' AS SmallDateTime), N'2', N'3', 3.95, N'Chemists'' Own Ibuprofen 200mg Tab X 48.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (62, N'ApoHealth Ibuprofen 200mg Tab X 96', N'Product Description & Features
APOHEALTH Ibuprofen provides relief of pain and inflammation including discomfort associated with migraine and tension headaches, muscular aches, dental pain, period pain, aches and pains associated with colds and flu, arthritic pain and reduces fever.

Ingredients/Material
Active Ingredient(s)
•	Ibuprofen 200 mg
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers
- This medicine may not be right for you. Read the label before purchase.
- Follow the directions for use. Incorrect use could be harmful.
- If symptoms persist, talk to your health professional.
- Do not use if you have a stomach ulcer, impaired kidney  function, heart failure, are allergic to anti-inflammatory medicines, or in the last 3 months of pregnancy.
', CAST(N'2020-02-12T00:00:00' AS SmallDateTime), N'2', N'3', 5.5, N'ApoHealth Ibuprofen 200mg Tab X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (63, N'Chemists'' Own Period Pain Relief Tab X 24', N'Product Description & Features
For the relief of pain and discomfort associated with menstrual cramps.
•	Non-Drowsy
•	Does not contain: gluten, yeast, sugar, wheat or lactose

Ingredients/Material
Naproxen Sodium 275mg
Directions For Use
Take 2 tablets with or shortly after food at the first sign of period pain or menstrual bleeding to relieve period pain up to 8 hours followed by 1 tablet every 6 to 8 hours as required. DO NOT exceed 5 tablets in 24hours.

Warnings and Disclaimers
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-13T00:00:00' AS SmallDateTime), N'2', N'3', 5.95, N'Chemists'' Own Period Pain Relief Tab X 24.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (64, N'Nurofen Caplets X 96', N'Product Description & Features
Nurofen Caplets have an effective relief from pain.
What this medicine is used for:
For the temporary relief of pain and/or inflammation associated with:
•	Headache.
•	Migraine headache.
•	Tension headache.
•	Back pain.
•	Muscular pain.
•	Cold & flu symptoms.
•	Period pain.
•	Dental pain.
•	Sinus pain.
•	Arthritic pain.
Reduces fever

Ingredients/Material
Ibuprofen 200mg
Directions For Use
Take with water. Adults and children from 12 years: 2 caplets, then 1 or 2 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
Do not exceed the recommended dose. Excessive use can be harmful and can increase the risk of heart attack, stroke or liver damage. Do not use if: - you have a stomach ulcer, or other stomach disorders, kidney, liver or heart problems. - you are allergic to ibuprofen, aspirin or other anti-inflammatory medicines. - during the last 3 months of pregnancy. Unless a doctor has told you to, do not use: - for more than 3 days at a time. - if you have asthma. - if you are taking other medicines containing ibuprofen, aspirin or other anti-inflammatory medicines. - if you are trying to become pregnant or during the first 6 months of pregnancy. - in children suffering from chickenpox (varicella). - in children suffering from dehydration through diarrhoea and/or vomiting. - if you are taking medicine regularly. - if you are aged 65 years or older. - in children under 7 years of age. Stop use and see your doctor immediately if: you have an allergic reaction.
', CAST(N'2020-02-14T00:00:00' AS SmallDateTime), N'2', N'3', 18.95, N'Nurofen Caplets X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (65, N'Cartia Tab X 168', N'Product Description & Features
Cartia Tab x 168 helps thin the blood to reduce clotting. Taken every day, Cartia helps to reduce the risk of heart attack and stroke in patients with known cardiovascular and cerebrovascular disease.
Aspirin is generally released in the stomach and may cause irritation to the stomach lining. Cartia has a special Duentric® coating designed to release the aspirin lower in the intestine which helps to minimise stomach irritation.
Ingredients/Material
Aspirin 100mg
Directions For Use
It is important to take Cartia at the same time everyday. The blister packs are conveniently marked with a calendar to help you keep track of your daily dose.
Adults: 1 tablet daily or as professionally prescribed.
Do not break the tablet. Swallow the tablet whole with water. Do not double up if you happen to miss a dose.

Warnings and Disclaimers
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-15T00:00:00' AS SmallDateTime), N'2', N'3', 14.95, N'Cartia Tab X 168.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (66, N'Maxigesic Tab X 12 (Paracetamol and Ibuprofen)', N'Product Description & Features
Maxigesic Tab X 12 (Paracetamol and Ibuprofen) is a world-first specific combination of Paracetamol 500mg and Ibuprofen 150mg. Maxigesic is the only combination analgesic that provides the maximum daily dose of Paracetamol 4000mg and Ibuprofen 1200mg, if required.
Ingredients/Material
Maxigesic contains 500 mg of paracetamol and 150 mg of ibuprofen in each tablet.
Directions For Use
Adults and Children over 12 years: Take one to two tablets with a large glass of water. Repeat dose every six hours as required, up to a maximum of 8 tablets in 24 hours. Maxigesic is not recommended for children under 12.

Warnings and Disclaimers
To be used by adults only- not suitable for kids or infants
Do not use if you have  a stomach ulcer, impaired kidney function, heart failure, allergic to anti-inflammatory medicines, pregnant or trying to become pregnant.
', CAST(N'2020-02-16T00:00:00' AS SmallDateTime), N'2', N'3', 5.95, N'Maxigesic Tab X 12 (Paracetamol and Ibuprofen).png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (67, N'Panadol Extra Cap X 40', N'Product Description & Features
Panadol Extra Cap X 40  with Optizorb Formulation contains a clinically proven combination of ingredients for fighting tough pain.
When you want tough pain relief, choose Panadol Extra with Optizorb, from Australia’s Most Trusted Pain Relief Brand*
Each caplet contains paracetamol and caffeine, with advanced Optizorb technology to relive tough pain. It is  designed to fight five types of tough pain:
•	Migraine headache,
•	Period pain,
•	Tension headache,
•	Muscle aches and pains,
•	Dental pain/toothache.
Get tough on tough pain. Choose Panadol Extra with Optizorb Caplets for relief of tough pain.
Panadol Extra with Optizorb (pain relief caplets) doesn’t contain ibuprofen, gluten, lactose or sugar.
Ingredients/Material
Each caplet contains Paracetamol 500mg & Caffeine 65mg.
Contains :Hydroxybenzoates as preservatives.
Directions For Use
12 years - Adult: Take 2 caplets every 4-6 hours with water as required (Maximum 8 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers
Do not use Panadol Extra with Optizorb: 
- If you are allergic to paracetamol, caffeine or hydroxybenzoates.
- If using other medicines containing paracetamol or caffeine
- For children below age 12 - For more than 48 hours for children aged 12-17 except on medical advice
- For more than a few days at a time in adults except on medical advice
- If pregnant, except on medical advice
- If any of the seals on this packaging are broken - If the package use-by date has expired
- Until you read the enclosed leaflet carefully Ask a doctor before use
- If you have liver or kidney problems
- If you are taking warfarin (a medicine used to thin the blood)
- If you are breastfeeding Stop use and see your doctor immediately if You have an allergic skin reaction, shortness of breath or wheezing after taking Panadol. These reactions are very rare.
Limit the use of caffeine-containing products (including tea and coffee) when taking these caplets.
One dose of Panadol Extra contains 130mg of caffeine - this is about 2 cups of instant coffee. Caffeine may cause sleeplessness if it is taken within several hours before going to bed. 
While using Panadol Extra with Optizorb (pain relief caplets): If an overdose is taken or suspected, ring the Poisons Information Centre (AUST: 13 11 26; NZ: 0800 764 766) or go to the hospital immediately, even if you feel well because of the risk of delayed, serious liver damage if left untreated.
Pharmacy Medicine. Keep out of reach of children.
Does not contain gluten, lactose or sugar
', CAST(N'2020-02-17T00:00:00' AS SmallDateTime), N'2', N'3', 10.95, N'Panadol Extra Cap X 40.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (68, N'Codral PE Day & Night Tab X 48', N'Product Description & Features
Codral PE Day & Night Tablets 48 Pack
New Formula Codral Day & Night is ideal for headaches and fever, blocked/runny nose and body aches & pains. Contains 36 Day capsules and 12 Night capsules.

Effective Day & Night time Relief of:
•	Headaches and fever
•	Blocked nose/runny nose
•	Body aches and pains
The symptoms of cold & flu usually start when you first get a runny nose, followed by watery eyes. Next a stuffy nose and then congestion sets in. And if you’re really unlucky, the sneezing and coughing may start. These symptoms normally last 3-10 days. Use Codral Day & Night new formula for cold and flu
Ingredients/Material
•	Day: Paracetamol 500mg Phenylephrine Hydrochloride 5mg
•	Night: Paracetamol 500mg Phenylephrine Hydrochloride 5mg Chlorpheniramine Maleate 2mg
Directions For Use
Day: 2 red tablets as necessary
Night: 2 orange tablets
Maximum of 6 day & 2 night tablets in 24 hours.
Adults to stop after 3 days. Children after 48 hours, except on medical advice.

Warnings and Disclaimers
Warning: Do not use: - For children below 12 years - If you are hypersensitive to any of the ingredients - If you have taken paracetamol - If you are taking antidepressants - If you have taken antihistamines - If blister foil is broken Phenylephrine may cause sleeplessness in some people. Night medication may cause drowsiness. If affected do not drive a vehicle or operate Machinery.
If symptoms persist, worsens, or new synptoms appear, see your doctor. Discontinue use and see a docotr at the first sign of a skin reaction or any other sign of hypersensitivity.
', CAST(N'2020-02-18T00:00:00' AS SmallDateTime), N'2', N'3', 17.95, N'Codral PE Day & Night Tab X 48.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (69, N'Voltaren Rapid 12.5mg Liquid Cap X 20', N'Product Description & Features
Voltaren Rapid 12.5mg Liquid Cap X 20 are a fast-absorbing liquid capsule, working quickly to help relieve your pain.
Indication: Voltaren Rapid 12.5 liquid capsules provide temporary relief of muscular and rheumatic pain, backache, period pain, headache, dental pain, fever and symptoms of colds & flu, including aches and sore throat pain.
How it works: Voltaren Rapid 12.5 liquid capsules contain the non-steroidal anti-inflammatory drug (NSAID), diclofenac. Diclofenac works to relieve pain and reduce inflammation (swelling). The soft gel capsules are liquid-filled and are absorbed fast.

Ingredients/Material
Diclofenac Potassium 12.5mg
Directions For Use
Swallow liquid capsules whole with water.
Adults and children over 14 years: take an initial dose of 2 liquid capsules when symptoms arise. If needed, continue with 1 or 2 liquid capsules every 4 to 6 hours. Do not take more than 6 liquid capsules per day.

Warnings and Disclaimers
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-19T00:00:00' AS SmallDateTime), N'2', N'3', 8.5, N'Voltaren Rapid 12.5mg Liquid Cap X 20.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (70, N'Nurofen For Children 5-12 Years (Strawberry Flavour) 200ml', N'Product Description & Features
Nurofen for Children 5-12 Years is a concentrated formula providing effective pain & fast fever relief for your growing child.
Since 1999, Australian parents have trusted Nurofen for Children to help their kids with pain and fever as they grow up. Nurofen for Children starts providing effective relief from fever in just 15 minutes and lasts up to 8 hours*. It contains ibuprofen to effectively relieve common childhood pains such as:
•	Cold and flu sumptoms
•	Teething pain & toothaches
•	Earaches
•	Sore throats
•	Headaches
•	Minor aches, sprains and strains
The concentrated formula means easier, lower-volume dosing and every bottle comes with an easy-to-use dosing syringe. It’s also sugar free and colour free, and comes in strawberry and orange flavours.

Ingredients/Material
Ibuprofen liquid 200mg per 5mL
Directions For Use
Shake the bottle well and use the syringe provided to measure the dose accurately. Push the syringe firmly into the neck of the bottle. Turn the bottle upside down and gently pull the plunger down, drawing the liquid into the syringe. Turn the bottle right way up and gently twist the syringe to remove. To dose your child, press the plunger slowly down to gently release the liquid. After use replace the cap and wash the separated syringe parts in warm water and allow to dry (do not boil).

Read dosage instructions carefully before use. Age*: • 3‒6 months (average weight 6‒8kg), dose: 1.5‒2.0mL • 6‒12 months (average weight 8‒10kg), dose: 2.0‒2.5mL • 1‒3 years (average weight 10‒14kg), dose: 2.5‒3.5mL • 3‒5 years (average weight 14‒18kg), dose: 3.5‒4.5mL • 5‒7 years (average weight 18‒22kg), dose: 4.5‒5.5mL • 7‒9 years (average weight 22‒28kg), dose: 5.5‒7.0mL • 9‒12 years (average weight 28‒40kg), dose: 7.0‒10mL Repeat dose every 6‒8 hours as necessary (max 3 doses in 24 hours). *Do not give to babies under 3 months. Seek medical advice before giving to children under 12 months. Do not exceed the stated dose. For short-term use only. If your child''s symptoms persist for more than 48 hours consult your doctor. Children should take plenty of fluids. Do not use if the cap seal is not intact on first opening of the bottle. Maximum Dose in 24 Hours: Maximum 3 doses.

Store below 25°C.


Warnings and Disclaimers

Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
*Do not give to babies under 3 months. Seek medical advice before giving to children under 12 months. Repeat dose every 6 to 8 hours as necessary (maximum 3 doses in 24 hours). Do not exceed the stated dose. Excessive use can be harmful. This product is for short term use only. If your child''s symptoms persist for more than 48 hours consult your doctor. Children should take plenty of fluids.
', CAST(N'2020-02-20T00:00:00' AS SmallDateTime), N'2', N'3', 24.95, N'Nurofen For Children 5-12 Years (Strawberry Flavour) 200ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (71, N'Panadol 5-12 Years Colourfree (Strawberry) 100ml', N'Product Description & Features
Panadol 5-12 Years Colourfree (Strawberry) 100ml is fast effective, temporary relief from fever and pain associated with:
•	Teething
•	Immunisation
•	Earache
•	Headache
•	Cold & Flu Symptoms

Ingredients/Material
•	Paracetamol 48mg/ml,
•	Hydroxybenzoates,
•	Sorbitol  115mg/ml,
•	Maltitol  371mg/ml (which may have a laxative effect or cause diarrhoea)
No artificial colours.
Directions For Use
- Please read and retain the carton.
- Shake the bottle well.
- Use the measuring cup provided to accurately measure.
- Pour correct dose into the cup based on the dosage table below.
- Calculate correct dose based on the child''s weight. If weight is unknown, use the child''s age.
•	Age: 1-2 Yrs Average Weight : 10-12 kg Dose   :  3-4ml
•	Age: 2-3 Yrs Average Weight: 12-14 kg Dose    :  4ml
•	Age: 3-4 Yrs Average Weight: 14-16 kg Dose    :  4-5ml
•	Age: 4-5 Yrs Average Weight: 16-18 kg Dose    :  5-6ml
•	Age: 5-6 Yrs Average Weight: 18-20 kg Dose    :  6ml
•	Age: 6-7 Yrs Average Weight: 20-22 kg Dose    :  6-7ml
•	Age: 7-8 Yrs Average Weight: 22-25 kg Dose    :  7-8ml
•	Age: 8-9 Yrs Average Weight: 25-28kg Dose     :  8-9ml
•	Age: 9-10 Yrs Average Weight: 28-32 kg Dose   : 9-10ml
•	Age: 10-11 Yrs Average Weight: 32-36 kg Dose : 10-11ml
•	Age: 11-12 Yrs Average Weight: 36-41 kg Dose : 11-13ml
- Repeat 4-6 hourly if required (maximum 4 times within 24 hours)
- Can be given with water or fruit juice if preferred by your child.
Using the convenient dosing device: 
1. Push the plunger fully in to close the dosing device; then insert it firmly into the neck of the bottle.
2. Turn the bottle upside down and gently pull the correct dose for your child. The correct dose is at the point where the widest sides of the plunger meets the correct mL mark on the barrel of the dosing device (i.e. where the liquid ends.)
3. Turn the bottle upright and remove the device from the neck of the bottle by gently twisting it.
4. After using Children''s Panadol: 
- Hand wash dosing device.
- Wipe the neck of the bottle clean.
- Push the cap down and turn it to close cap tightly, then turn backwards until you hear clicking sounds.
- Store below 30°C but do not refrigerate.


Warnings and Disclaimers

Do not use Children''s Panadol:
- If your child is using other medicines containing paracetamol, except on medical advice.
- For more than 48 hrs at a time, except on medical advice.
- If any of the seals on this package are broken. 
- If the package use-by date has expired.
- Keep out of reach of children.
Check with your doctor before use if your child:
- Has liver or kidney problems.
- Weighs less than 10kg or more than 41kg.
Stop use and tell your doctor if your child:
- Has an allergic skin reaction, shortness of breath or wheezing after taking Children''s Panadol.
If an overdose is taken or suspected, ring the Poisons Information Centre (Australia 131 126) or go to the hospital immediately even if your child feels well because of the risk of delayed, serious liver damage if left untreated.
', CAST(N'2020-02-21T00:00:00' AS SmallDateTime), N'2', N'3', 13.95, N'Panadol 5-12 Years Colourfree (Strawberry) 100ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (72, N'Pharmacy Action Period Pain Relief Tab X 24', N'Product Description & Features
Pharmacy Action Period Pain Relief Tablets: for the relief of discomfort and pain associated with menstrual cramps.

Ingredients/Material
Each tablet contains Naproxen Sodium 275mg
Directions For Use
Take 2 tablets (with food) at the first sign of period pain or menstrual bleeding, followed by 1 tablet after 6 to 8 hours as necessary.

Warnings and Disclaimers

•	DO NOT exceed 5 tablets in a 24 hour period
•	Do not use more than a few days at a time unless a doctor has told you to
Excessive or prolonged use can be harmful and increase the risk of heart attack, stroke or liver damage. If you get an allergic reaction, stop taking and see your doctor immediately.
This preparation is for the relief of minor and temporary ailments and should be used strictly as directed. If symptoms persist, see your doctor.
DO NOT USE:
•	If you have a stomach ulcer
•	If you have impaired kidney function
•	If you have heart failure
•	If you are allergic to naproxen, or other anti-inflammatory medicines
•	During the first 6 months of pregnancy except on doctors advice
•	At all during the last 3 months of pregnancy
•	If any of the seals on this package are broken
•	If you have asthma (Unless a doctor has told you to)
•	If you are taking other medicines containing naproxen, asprin or other anti-inflammatory medicines or with medicines that you are taking regularly (Unless a doctor or pharmacist has told you to)
', CAST(N'2020-02-22T00:00:00' AS SmallDateTime), N'2', N'3', 3.95, N'Pharmacy Action Period Pain Relief Tab X 24.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (73, N'Advil Liquid Cap X 90', N'Product Description & Features
Advil Liquid Cap x 90 contain a liquid form of ibuprofen inside a soft capsule shell. Because it is a liquid, it is absorbed into your system fast, providing relief.
Advil Liquid Capsules are indicated to relieve pain from headaches, backaches, muscle aches, period pain, dental pain, minor arthritis pain, and aches & pains of the common cold and fever.
Advil Liquid Capsules are absorbed 2X FASTER vs. standard Nurofen Tablets.
Clinical studies also confirm that Advil Liquid Capsules can provide faster & stronger relief than regular paracetamol tablets for tough headaches.

Ingredients/Material
Ibuprofen 200mg
Directions For Use
Begin by taking 1-2 capsules, swallowed whole with water.
One capsule will often be adequate for mild pain, but for more severe pain you may require two capsules. Repeat dose if necessary after 4-6 hours. Do not exceed 6 capsules in 24 hours.
• Not to be used in children under 12 years of age.

Warnings and Disclaimers

Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-23T00:00:00' AS SmallDateTime), N'2', N'3', 18.5, N'Advil Liquid Cap X 90.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (74, N'Pharmacy Health Diarrhoea Relief Tab X 20', N'Product Description & Features
Pharmacy Health Diarrhoea Relief Tab X 20
Effective reief of acute diarrhoea

Ingredients/Material
Ibuprofen 200mg
Directions For Use
Begin by taking 1-2 capsules, swallowed whole with water.
One capsule will often be adequate for mild pain, but for more severe pain you may require two capsules. Repeat dose if necessary after 4-6 hours. Do not exceed 6 capsules in 24 hours.
• Not to be used in children under 12 years of age.

Warnings and Disclaimers

Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-24T00:00:00' AS SmallDateTime), N'2', N'3', 6.55, N'Pharmacy Health Diarrhoea Relief Tab X 20.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (75, N'Mersynofen Paracetamol & Ibuprofen Tabs X 12', N'Product Description & Features
Dual-action Mersynofen combines the strength of two ingredients in a single tablet for clinically proven pain relief. Non-drowsy.
Mersynofen is indicated for the temporary relief of acute (short term) pain and/or inflammation associated with headache, migraine headache, tension headache, sinus pain, toothache, dental pain, backache, muscular aches and pains, period pain, sore throat, tennis elbow, rheumatic pain, and the aches and pains associated with colds and flu.

Ingredients/Material
•	Ibuprofen 200mg and paracetamol 500mg film coated tablets
•	Does not contain gluten, lactose or sucrose.
Directions For Use
•	Adults under 65 and children from 12 years: 1 tablet every 8 hours as necessary (maximum 3 tablets in 24 hours).
•	Adults: do not take Mersynofen for more than 3 days at a time.
•	Adolescents (12 to 17 years): do not take Mersynofen for more than 2 days at a time.
•	Do not exceed the recommended dose. Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage.

Warnings and Disclaimers

Do not use if you :
•	Are aged 65 years or over, or under 12 years
•	Have asthma
•	Are pregnant or breastfeeding
•	Have, or have had, a stomach ulcer or other stomach disorders
•	Have impaired kidney or liver function, or heart problems
•	Are a heavy drinker
•	Are allergic to paracetamol, ibuprofen, aspirin or other
•	anti-inflammatory medicines
•	Are using other products containing paracetamol, ibuprofen, aspirin or other anti-inflammatory medicines
Do not take, unless advised by a doctor
•	With other medicines you are taking regularly
•	If you have bleeding problems
While using this product
•	If an overdose is taken or suspected ring the Poison Information
•	Centre (Australia 13 11 26) or go to hospital straight away even if you feel well because of the risk of delayed, serious liver damage.
•	This preparation is for the relief of minor and temporary ailments and should be used strictly as directed.
•	If you get an allergic reaction stop taking and see your doctor immediately.
Contraindications:
•	Hypersensitivity to active ingredients, excipients, aspirin or NSAIDs
•	GI disorders
•	impaired hepatic or renal function
•	heart failure
•	asthma, pregnancy
•	predisposition to renal failure
•	concomitant use with NSAID or other paracetamol containing products
•	patients aged 65 yrs and over
•	children under 12.
Precautions:
•	Non-cirrhotic alcoholic liver disease
•	diabetes
•	history of bronchial asthma or allergic disease
•	hypertension
•	ischaemic heart disease
•	peripheral arterial disease
•	cerebrovascular disease, concomitant use with medications that increase risk of ulceration/bleeding
•	systemic lupus erythematosus
•	connective tissue disease disorders
•	in women attempting to conceive.
Do not use if you have  a stomach ulcer, impaired kidney function, heart failure, allergic to anti-inflammatory medicines, pregnant or trying to become pregnant.
', CAST(N'2020-02-25T00:00:00' AS SmallDateTime), N'2', N'3', 5.5, N'Mersynofen Paracetamol & Ibuprofen Tabs X 12.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (76, N'Nurofen Zavance Liquid Cap X 80', N'Product Description & Features
Nurofen Zavance Liquid Capsules are absorbed faster than standard Nurofen.
Nurofen Zavance is fast and effective in the temporary relief of pain and/or inflammation associated with:
•	Headache
•	Migraine Headache
•	Tension Headache
•	Muscular Pain
•	Cold & Flu Symptoms
•	Period Pain
•	Dental Pain
•	Sinus Pain
•	Back Pain
•	Arthritic Pain
•	Reduces Fever

Ingredients/Material
Ibuprofen 200mg. Sorbitol.
Directions For Use
Take with water. Do not chew. Adults and children from 12 years: 2 capsules, then 1 or 2 capsules every 4 to 6 hours as necessary (maximum 6 capsules in 24 hours).
Store below 25°C.

Warnings and Disclaimers

Do not give Nurofen Zavance liquid capsules to children under 12 years. Nurofen for Children products are available.
Before Use - seek medical advice if: - You suffer from asthma or are taking other medicines containing ibuprofen, aspirin or other anti-inflammatory medicines. - You are taking medication regularly or are 65 years or over. - Children suffering from dehydration through diarrhoea and/or vomiting. Do not take: - If the blister foil is broken on first opening. - If you have a stomach ulcer or other stomach disorders, kidney or heart problems. - If you are allergic to ibuprofen, aspirin or other anti-inflammatory medicines. If you have an allergic reaction, stop taking and see your doctor immediately. - During the first 6 months of pregnancy, except on your doctor''s advice. Do not use at all during the last 3 months of pregnancy. - For more than 3 days at a time, except with your doctor''s advice. Do not exceed the recommended dose. Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage.
', CAST(N'2020-02-01T00:00:00' AS SmallDateTime), N'2', N'4', 18.95, N'Nurofen Zavance Liquid Cap X 80.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (77, N'Nurofen Quickzorb Pain Relief Caplets X 96', N'Product Description & Features
Nurofen Quickzorb Ibuprofen Lysine pain relief caplets have an advanced formula for fast absorption.
When you suffer from headache, you need a pain reliever that will sort it out quick. For quick, effective pain relief choose Nurofen Quickzorb. 
Nurofen Quickzorb Caplets have an advanced formula that it’s absorbed quickly. They are easy to swallow.
Nurofen Quickzorb is effective in the temporary relief of pain and/or inflammation associated with:
•	headache
•	migraine headache
•	tension headache
•	muscular pain
•	cold & flu symptoms
•	period pain
•	dental pain
•	sinus pain
•	back pain
•	arthritic pain
•	reduces fever

Ingredients/Material
Ibuprofen Lysine 342mg (equiv. Ibuprofen 200mg).
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers

Do not use if: - You have a stomach ulcer, or other stomach disorders, kidney, liver or heart problems. - You are allergic to ibuprofen, aspirin or other anti-inflammatory medicines. - During the last 3 months of pregnancy. Unless a doctor has told you to, do not use: - For more than 3 days at a time. - If you have asthma. - If you are taking other medicines containing ibuprofen, aspirin or anti-inflammatory medicines. - If you are trying to become pregnant or during the first 6 months of pregnancy. - In children suffering form vomiting. - If you are taking medication regularly. - If you are aged 65 years or over. - In children under 7 years of age. Stop use and see your doctor immediately if: - You have an allergic reaction.
Do not exceed the recommended dose. Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage.
Keep out of reach of children. Do not use if the blister foil is broken on first opening.
', CAST(N'2020-02-02T00:00:00' AS SmallDateTime), N'2', N'4', 23.95, N'Nurofen Quickzorb Pain Relief Caplets X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (78, N'ApoHealth Ibuprofen 200mg Soft Gel Cap X 40', N'Product Description & Features
APOHEALTH Ibuprofen Soft Gel Capsules provides relief of pain and inflammation including discomfort associated with migraine and tension headaches, muscular aches, dental pain, period pain, aches and pains associated with colds and flu, arthritic pain and reduces fever.

Ingredients/Material
Active Ingredient(s)
•	Ibuprofen 200 mg
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers

- This medicine may not be right for you. Read the label before purchase.
- Follow the directions for use. Incorrect use could be harmful.
- If symptoms persist, talk to your health professional.
- Do not use if you have a stomach ulcer, impaired kidney  function, heart failure, are allergic to anti-inflammatory medicines, or in the last 3 months of pregnancy.
', CAST(N'2020-02-03T00:00:00' AS SmallDateTime), N'2', N'4', 5.95, N'ApoHealth Ibuprofen 200mg Soft Gel Cap X 40.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (79, N'Pharmacy Action Cold & Flu Relief Day & Night PE Tab X 48', N'Product Description & Features
Pharmacy Action Cold & Flu Relief Day & Night PE Tablets
Temporary relief from the following cold and flu symptoms:
•	Nasal congestion
•	Sinus pain
•	Runny nose
•	Headache
•	Body aches and pains
•	Reduces fever

Ingredients/Material
Day Tablets:
•	Paracetamol 500mg
•	Phenylephrine hydrochloride 5mg
Night Tablets:
•	Paracetamol 500mg
•	Phenylephrine hydrochloride 5mg
•	Chlorphenamine maleate 2 mg
Directions For Use
Swallow the tablets with a full glass of water. Take the tablets on an empty stomach (at least half an hour before food or two hours after food). They will be absorbed more quickly if you take them on an empty stomach. Adults and children from 12 years: 2 caplets, then 1 or 3 caplets every 4 to 6 hours as necessary (maximum 6 caplets in 24 hours). Children (7 to 12 years): 1 caplet every 6 to 8 hours as necessary (maximum 4 caplets in 24 hours).
Store below 25°C.

Warnings and Disclaimers

Always read the label, use only as directed. Incorrect use may be harmful.
', CAST(N'2020-02-04T00:00:00' AS SmallDateTime), N'2', N'4', 7.95, N'Pharmacy Action Cold & Flu Relief Day & Night PE Tab X 48.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (80, N'Advil Rapid Release Tab X 96', N'Product Description & Features
Advil Rapid Release Tab X 96 are absorbed up to 2x faster than Standard Advil Tablets and provides temporary relief from pain.
Advil Rapid Release provides temporary relief of pain, discomfort and/or inflammation associated with:
•	Headache
•	Migraine Headache
•	Tension Headache
•	Period Pain
•	Sore Throat Pain
•	Back Pain
•	Dental Pain
•	Cold & Flu Symptoms
•	Muscle Pain
•	Arthritis Pain

Ingredients/Material
Ibuprofen sodium dihydrate 256mg (equivalent to ibuprofen 200mg).
Contains : Sucralose, sulfites, sodium. Each tablet contains 22.3mg of sodium (take into account if on a low sodium diet).
Directions For Use
- For use by Adults and Children from 12 years and over. 1 or 2 tablets swallowed whole with water.
- Repeat dose if necessary after 4 to 6 hours.
- Do not exceed 6 tablets in 24 hours. Do not give to children under 12 years.
-Store below 25°C.

Warnings and Disclaimers

Do not use this product:
- If you are allergic to aspirin, ibuprofen or other anti-inflammatory medicines, pain reliever / fever reducer or any other component of this product
-  If you are pregnant, or trying to become pregnant
- If you have a current or past history of stomach ulcer / bleeding / disorders
- If you have impaired kidney function or heart failure
- In children under 12 years Unless your doctor has told you do not use this product:
- If you have asthma, high blood pressure, heart or liver disease
- If you are breast feeding
- With other medicines containing ibuprofen, aspirin, other anti-inflammatory medicines, blood thinners or any other medicines you take regularly
- If you are taking aspirin for heart attack or stroke as ibuprofen may decrease this benefit of aspirin
- If you are 65 years or over or under a doctor’s care for any serious condition.
While using this product:
- Stop use and ask your doctor immediately if you see an allergic reaction including skin reddening, rash or blisters or if pain or fever gets worse or lasts for more than a few days
- Stop use and ask the doctor if you see blood in your vomit or have bloody or black stools.
- Long term and continuous use may increase the risk of heart attack or stroke
- Do not use for more than a few days at a time unless a doctor has told you to.
- Do not exceed the recommended dose.
- Excessive use can be harmful and increase the risk of heart attack, stroke and liver damage
- Side effects may be minimised by using the smallest dose for the shortest duration of time
- In case of accidental overdose, stop use and contact immediately the Poisons Information Centre (Australia 13 11 26, New Zealand 0800 764 766)
- Always read the label. Do not use if you have a stomach ulcer, impaired kidney function, heart failure, are allergic to antiinflammatory medicines, or if pregnant or trying to become pregnant.
', CAST(N'2020-02-05T00:00:00' AS SmallDateTime), N'2', N'4', 14.08, N'Advil Rapid Release Tab X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (81, N'Chemists'' Own Paracetamol Extra Tab X 40', N'Product Description & Features
Chemists'' Own Paracetamol Extra for effective temporary relief of pain

Ingredients/Material
Paracetamol 500mg & Caffeine 65mg
Directions For Use
- For use by Adults and Children from 12 years and over. 1 or 2 tablets swallowed whole with water.
- Repeat dose if necessary after 4 to 6 hours.
- Do not exceed 6 tablets in 24 hours. Do not give to children under 12 years.
-Store below 25°C.

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-06T00:00:00' AS SmallDateTime), N'2', N'4', 5.95, N'Chemists'' Own Paracetamol Extra Tab X 40.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (82, N'Nurofen For Children 3 Months -5 Years (Orange Flavour) 200ml', N'Product Description & Features
Nurofen for Children 3 Months to 5 years is a pleasant tasting liquid medicine providing effective pain & fast fever relief for your little one.
Since 1999, Australian parents have trusted Nurofen for Children to help their kids with pain and fever as they grow up. Nurofen for Children starts providing effective relief from fever in just 15 minutes and lasts up to 8 hours*. It contains ibuprofen to effectively relieve common childhood pains such as:
•	Cold and flu sumptoms
•	Teething pain & toothaches
•	Earaches 
•	Sore throats
•	Headaches
•	Minor aches, sprains and strains
It’s sugar free and colour free, comes in pleasant strawberry and orange flavours, and each bottle comes with an easy-to-use dosing syringe

Ingredients/Material
Contains 100 mg of ibuprofen per 5mL dose.
Contains sodium chloride, sodium saccharin and wheat starch. Sugar-free. Colour-free. Contains no aspirin, alcohol or aspartame. 60mL (maximum daily dose) contains 26.5g maltitol. Products containing maltitol may have a laxative effect or cause diarrhoea.
Directions For Use
Shake the bottle well and use the syringe provided to measure the dose accurately. Push the syringe firmly into the neck of the bottle. Turn the bottle upside down and gently pull the plunger down, drawing the liquid into the syringe. Turn the bottle right way up and gently twist the syringe to remove. To dose your child, press the plunger slowly down to gently release the liquid. After use replace the cap and wash the separated syringe parts in warm water and allow to dry (do not boil).
Read dosage instructions carefully before use. Age*: • 3‒6 months (average weight 6‒8kg), dose: 3-4mL • 6‒12 months (average weight 8‒10kg), dose: 4-5mL • 1‒3 years (average weight 10‒14kg), dose: 5-7mL • 3‒5 years (average weight 14‒18kg), dose: 7-9mL • 5‒7 years (average weight 18‒22kg), dose: 9-11mL • 7‒9 years (average weight 22‒28kg), dose: 11-14mL • 9‒12 years (average weight 28‒40kg), dose: 14-20mL Repeat dose every 6‒8 hours as necessary (max 3 doses in 24 hours). *Do not give to babies under 3 months. Seek medical advice before giving to children under 12 months. Do not exceed the stated dose. For short-term use only. If your child''s symptoms persist for more than 48 hours consult your doctor. Children should take plenty of fluids. Do not use if the cap seal is not intact on first opening of the bottle. Maximum Dose in 24 Hours: Maximum 3 doses.
Store below 25°C.

Warnings and Disclaimers

For the temporary relief of pain and fever. This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
Not for use in babies under 3 months of age. Do not exceed the recommended dose. Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage. If your child''s symptoms worsen or persist consult your doctor. Do not use if: • you or your child has a stomach ulcer, or other stomach disorders, kidney, liver or heart problems. • allergic to ibuprofen, aspirin or other anti-inflammatory medicines. Stop use and see your doctor immediately if you have an allergic reaction • you are in the last 3 months of pregnancy Unless a doctor has told you to, do not use: • if taking other medicines containing ibuprofen or other anti-inflammatory medicines or other medications. • if your child is under 12 months of age • for more than 3 days at a time • if you or your child have asthma • if you are trying to become pregnant or during the first 6 months of pregnancy • in children suffering from chickenpox (varicella) • in children suffering from dehydration through diarrhoea and/or vomiting • if you are aged 65 years or over
Pharmacy medicine. Keep out of reach of children. Use only if cap seal is intact at first opening. Check the child resistant cap mechanism is engaged after use by tightening cap until cap clicks when opening is attempted.
', CAST(N'2020-02-07T00:00:00' AS SmallDateTime), N'2', N'4', 18.95, N'Nurofen For Children 3 Months -5 Years (Orange Flavour) 200ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (83, N'Panadol 5-12 Years Colourfree (Strawberry) 200ml', N'Product Description & Features
Panadol 5-12 Years Colourfree (Strawberry) 200ml  helps reduces fever and fast pain relief.
Use Children''s Panadol for:
Fast effective temporary relief from fever and pain associated with:
•	Teething
•	Immunisation
•	Earache
•	Headache
•	Cold & Flu Symptoms

Ingredients/Material
•	Paracetamol 48mg/ml,
•	Hydroxybenzoates,
•	Sorbitol  115mg/ml,
•	Maltitol  371mg/ml (which may have a laxative effect or cause diarrhoea)
Directions For Use
- Please read and retain the carton.
- Shake the bottle well.
- Use the measuring cup provided to accurately measure.
- Pour correct dose into the cup based on the dosage table below. - Calculate correct dose based on the child''s weight. If weight is unknown, use the child''s age.
•	Age: 1-2 Yrs Average Weight : 10-12 kg Dose    :  3-4ml
•	Age: 2-3 Yrs Average Weight: 12-14 kg Dose     :  4ml
•	Age: 3-4 Yrs Average Weight: 14-16 kg Dose     :  4-5ml
•	Age: 4-5 Yrs Average Weight: 16-18 kg Dose     :  5-6ml
•	Age: 5-6 Yrs Average Weight: 18-20 kg Dose     :  6ml
•	Age: 6-7 Yrs Average Weight: 20-22 kg Dose     :  6-7ml
•	Age: 7-8 Yrs Average Weight: 22-25 kg Dose     :  7-8ml
•	Age: 8-9 Yrs Average Weight: 25-28kg Dose      :  8-9ml
•	Age: 9-10 Yrs Average Weight: 28-32 kg Dose   : 9-10ml
•	Age: 10-11 Yrs Average Weight: 32-36 kg Dose : 10-11ml
•	Age: 11-12 Yrs Average Weight: 36-41 kg Dose : 11-13ml
•	Repeat 4-6 hourly if required (maximum 4 times within 24 hours)
•	Can be given with water or fruit juice if preferred by your child.
After using Children''s Panadol: - Hand wash dosing device.
- Wipe the neck of the bottle clean
- Push the cap down and turn it to close cap tightly, then turn backwards until you hear clicking sounds.
- Store below 30°C but do not refrigerate.

Warnings and Disclaimers

Do not use Children''s Panadol:
- If your child is using other medicines containing paracetamol, except on medical advice.
- For more than 48 hrs at a time, except on medical advice.
- If any of the seals on this package are broken. 
- If the package use-by date has expired.
- Keep out of reach of children.
Check with your doctor before use if your child:
- Has liver or kidney problems.
- Weighs less than 10kg or more than 41kg.
Stop use and tell your doctor if your child:
- Has an allergic skin reaction, shortness of breath or wheezing after taking Children''s Panadol.
If an overdose is taken or suspected, ring the Poisons Information Centre (Australia 131 126) or go to the hospital immediately even if your child feels well because of the risk of delayed, serious liver damage if left untreated.
', CAST(N'2020-02-08T00:00:00' AS SmallDateTime), N'2', N'4', 19.95, N'Panadol 5-12 Years Colourfree (Strawberry) 200ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (84, N'Pharmacy Action Hayfever & Sinus Pain Relief PE Tab X 24', N'Product Description & Features
Hayfever & Sinus Pain PE – Pharmacy Action
Contains:
• paracetamol 500mg
• phenylephrine hydrochloride 5mg
• chlorpheniramine maleate 2mg

Ingredients/Material
•	Paracetamol 48mg/ml,
•	Hydroxybenzoates,
•	Sorbitol  115mg/ml,
•	Maltitol  371mg/ml (which may have a laxative effect or cause diarrhoea)
Directions For Use
- Please read and retain the carton.
- Shake the bottle well.
- Use the measuring cup provided to accurately measure.
- Pour correct dose into the cup based on the dosage table below. - Calculate correct dose based on the child''s weight. If weight is unknown, use the child''s age.
•	Age: 1-2 Yrs Average Weight : 10-12 kg Dose    :  3-4ml
•	Age: 2-3 Yrs Average Weight: 12-14 kg Dose     :  4ml
•	Age: 3-4 Yrs Average Weight: 14-16 kg Dose     :  4-5ml
•	Age: 4-5 Yrs Average Weight: 16-18 kg Dose     :  5-6ml
•	Age: 5-6 Yrs Average Weight: 18-20 kg Dose     :  6ml
•	Age: 6-7 Yrs Average Weight: 20-22 kg Dose     :  6-7ml
•	Age: 7-8 Yrs Average Weight: 22-25 kg Dose     :  7-8ml
•	Age: 8-9 Yrs Average Weight: 25-28kg Dose      :  8-9ml
•	Age: 9-10 Yrs Average Weight: 28-32 kg Dose   : 9-10ml
•	Age: 10-11 Yrs Average Weight: 32-36 kg Dose : 10-11ml
•	Age: 11-12 Yrs Average Weight: 36-41 kg Dose : 11-13ml
•	Repeat 4-6 hourly if required (maximum 4 times within 24 hours)
•	Can be given with water or fruit juice if preferred by your child.
After using Children''s Panadol: - Hand wash dosing device.
- Wipe the neck of the bottle clean
- Push the cap down and turn it to close cap tightly, then turn backwards until you hear clicking sounds.
- Store below 30°C but do not refrigerate.

Warnings and Disclaimers

Do not use Children''s Panadol:
- If your child is using other medicines containing paracetamol, except on medical advice.
- For more than 48 hrs at a time, except on medical advice.
- If any of the seals on this package are broken. 
- If the package use-by date has expired.
- Keep out of reach of children.
Check with your doctor before use if your child:
- Has liver or kidney problems.
- Weighs less than 10kg or more than 41kg.
Stop use and tell your doctor if your child:
- Has an allergic skin reaction, shortness of breath or wheezing after taking Children''s Panadol.
If an overdose is taken or suspected, ring the Poisons Information Centre (Australia 131 126) or go to the hospital immediately even if your child feels well because of the risk of delayed, serious liver damage if left untreated.
', CAST(N'2020-02-09T00:00:00' AS SmallDateTime), N'2', N'4', 6.95, N'Pharmacy Action Hayfever & Sinus Pain Relief PE Tab X 24.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (85, N'Panadol 1-5 Years Colourfree (Orange) 100ml', N'Product Description & Features
Panadol 1-5 Years Colourfree (Orange) 100ml is used for fast and effective relief from fever and pain Tough on fever, gentle on little tummies.
Children''s Panadol is Australia’s leading brand for children''s pain relief. The active ingredient in Children’s Panadol is paracetamol. Nothing is more effective for children''s pain and fever.  It can start to reduce fever in just 15 minutes. 
Use Children''s Panadol for fast and effective relief from fever and pain associated with:
•	Teething
•	Headaches
•	Immunisation
•	Cold & Flu symptoms
•	Earaches
It is Colour free, great tasting flavours, accurate, easy to use dosing device,Sugar free,No artificial colours, PET bottle with neck insert for easy dosing (BPA free) A choice of strawberry or orange

Ingredients/Material
Paracetamol 24mg/ml, Hydroxybenzoates, 115mg/ml Sorbitol and 371mg/ml of Maltitol (which may have a laxative effect or cause diarrhoea)
Directions For Use
Using the convenient dosing device: 
1. Push the plunger fully in to close the dosing device; then insert it firmly into the neck of the bottle.
2. Turn the bottle upside down and gently pull the correct dose for your child. The correct dose is at the point where the widest sides of the plunger meets the correct mL mark on the barrel of the dosing device (i.e. where the liquid ends.)
3. Turn the bottle upright and remove the device from the neck of the bottle by gently twisting it.
4. After using Children''s Panadol: 
- Hand wash dosing device.
- Wipe the neck of the bottle clean.
- Push the cap down and turn it to close cap tightly, then turn backwards until you hear clicking sounds.

Warnings and Disclaimers

Do not use Children''s Panadol If your child is :
-Using other medicines containing paracetamol, except on medical advice.
-For more than 48 hours at a time, except on medical advice. 
-If any of the seals on this package are broken. 
-If the package use-by date has expired.
Check with your doctor before use if your child:
-Has liver or kidney problems.
-Weighs less than 10kg or more than 41kg.
Stop use and tell your doctor if your child:
-Has an allergic skin reaction, shortness of breath or wheezing after taking Children''s Panadol.
Keep to the recommended dosage.
Keep out of reach of children.
', CAST(N'2020-02-10T00:00:00' AS SmallDateTime), N'2', N'4', 12.95, N'Panadol 1-5 Years Colourfree (Orange) 100ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (86, N'Pharmacy Action Paracetamol & Ibuprofen Pain Relief Tab X 12', N'Product Description & Features
Double Action Pain Relief.
Free from Lactose, Sugars

Ingredients/Material
Each tablet contains: Paracetamol 500mg, Ibuprofen 200mg
Directions For Use
Using the convenient dosing device: 
1. Push the plunger fully in to close the dosing device; then insert it firmly into the neck of the bottle.
2. Turn the bottle upside down and gently pull the correct dose for your child. The correct dose is at the point where the widest sides of the plunger meets the correct mL mark on the barrel of the dosing device (i.e. where the liquid ends.)
3. Turn the bottle upright and remove the device from the neck of the bottle by gently twisting it.
4. After using Children''s Panadol: 
- Hand wash dosing device.
- Wipe the neck of the bottle clean.
- Push the cap down and turn it to close cap tightly, then turn backwards until you hear clicking sounds.

Warnings and Disclaimers

If you get an allergic reaction, stop taking and see your doctor immediately.
Do not exceed the recommended dose. Excessive or prolonged use can be harmful and can increase the risk of heart attack, stroke or liver damage.
Do not use if you have  a stomach ulcer, impaired kidney function, heart failure, allergic to anti-inflammatory medicines, pregnant or trying to become pregnant.
', CAST(N'2020-02-11T00:00:00' AS SmallDateTime), N'2', N'4', 2.5, N'Pharmacy Action Paracetamol & Ibuprofen Pain Relief Tab X 12.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (87, N'Pharmacy Health Paracetamol & Caffeine Tab X 20', N'Product Description & Features
Pharmacy Health Paracetamol & Caffeine Tablets
Effective pain relief
Ingredients/Material
Each tablet contains Paracetamol 500mg, Caffeine 65mg

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-12T00:00:00' AS SmallDateTime), N'2', N'4', 2.95, N'Pharmacy Health Paracetamol & Caffeine Tab X 20.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (88, N'Panamax Elixir Double Strength 200ml', N'Product Description & Features
Panamax Elixir Double Strength 200ml
For the effective relief of pain & fever in children. Also suitable for adults.
Features: Free from sugar, alcohol and aspirin. Raspberry flavour.
Ingredients/Material
Paracetamol 240mg/5mL
Directions For Use
Children:
•	5 to 6 years: (18 - 20 kg) 6 mL;
•	6 to 8 years: (20 to 25 kg) 6 to 8 mL;
•	8 to 10 years: (25 - 32 kg) 8 to 10 mL;
•	10 to 12 years: (32 - 41 kg) 10 to 12 mL.
Do not give more than 4 doses in 24 hours.
Adults:
•	10 to 20 mL
This dosage may be repeated every 4 to 6 hours if necessary up to 4 times in 24 hours. Do not take more than 80 mL per day. Panamax 240 Elixir is not recommended for children under 5 years of age. It can be given in water if necessary."

Warnings and Disclaimers

Children: Do not give Panamax for more than 48 hours unless a doctor has told you to.
Adults: Do not take for more than a few days at a time unless your doctor tells you to.
Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-13T00:00:00' AS SmallDateTime), N'2', N'4', 4.95, N'Panamax Elixir Double Strength 200ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (89, N'Voltaren Rapid 12.5mg Tab X 20
', N'Product Description & Features
Voltaren Rapid 12.5mg Tab X 20 provide temporary relief of muscular and rheumatic pain, backache, period pain, headache, dental pain, fever and symptoms of colds & flu, including aches and sore throat pain.

Ingredients/Material
Diclofenac Potassium 12.5mg
Directions For Use
Swallow tablets whole with water.
Adults and children over 14 years: take an initial dose of 2 tablets when symptoms arise. If needed, continue with 1 or 2 tablets every 4 to 6 hours. Do not take more than 6 tablets per day.

Warnings and Disclaimers

Always read the label. Use only as directed.
If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-14T00:00:00' AS SmallDateTime), N'2', N'4', 8.95, N'Voltaren Rapid 12.5mg Tab X 20
.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (90, N'Panadol Children 1-5 Years Colourfree (Strawberry) 200ml', N'Product Description & Features
Panadol 1-5 Years Colourfree (Strawberry) 200ml is used for fast and effective relief from fever and pain. Tough on fever, gentle on little tummies.
Children''s Panadol is Australia’s leading brand for children''s pain relief. The active ingredient in Children’s Panadol is paracetamol. Nothing is more effective for children''s pain and fever.  It can start to reduce fever in just 15 minutes. 
Use Children''s Panadol for fast and effective relief from fever and pain associated with:
•	Teething
•	Headaches
•	Immunisation
•	Cold & Flu symptoms
•	Earaches
It is Colour free,  has great tasting flavours, accurate, Sugar free,No artificial colours, PET bottle with neck insert for easy dosing (BPA free) A choice of strawberry or orange

Ingredients/Material
•	Paracetamol 24 mg/ml,
•	Hydroxybenzoates, 115 mg/ml of sorbitol and
•	Maltitol 371 mg/mL  (which may have a laxative effect or cause diarrhoea)

Directions For Use
Dosage:
•	Age: 1-2 Yrs, Average Weight: 10-12 kg  : 6-8 ml
•	Age: 2-3 Yrs, Average Weight: 12-14 kg, : 8-9 ml
•	Age: 3-4 Yrs, Average Weight: 14-16 kg  : 9-10 ml
•	Age: 4-5 Yrs, Average Weight: 16-18 kg  : 10-11 ml
- Please read and retain the carton.
- Shake the bottle thoroughly before use.
- Calculate correct dose based on the child''s weight.
- If weight is unknown, use the child''s age.
- Use the measuring device provided to accurately measure.
- Measure correct dose based on the dosage table below.
- Can be given with water or fruit juice if preferred by your child.
- Store below 30°C but do not refrigerate.
Using the convenient dosing device: 
1. Push the plunger fully in to close the dosing device; then insert it firmly into the neck of the bottle.
2. Turn the bottle upside down and gently pull the correct dose for your child. The correct dose is at the point where the widest sides of the plunger meets the correct mL mark on the barrel of the dosing device (i.e. where the liquid ends.)
3. Turn the bottle upright and remove the device from the neck of the bottle by gently twisting it.
4. After using Children''s Panadol: 
- Hand wash dosing device.
- Wipe the neck of the bottle clean.
- Push the cap down and turn it to close cap tightly, then turn backwards until you hear clicking sounds.

Warnings and Disclaimers

Do not use Children''s Panadol If your child is :
-Using other medicines containing paracetamol, except on medical advice.
-For more than 48 hours at a time, except on medical advice. 
-If any of the seals on this package are broken. 
-If the package use-by date has expired.
Check with your doctor before use if your child:
-Has liver or kidney problems.
-Weighs less than 10kg or more than 41kg.
Stop use and tell your doctor if your child:
-Has an allergic skin reaction, shortness of breath or wheezing after taking   Children''s Panadol.
Keep to the recommended dosage.
Keep out of reach of children.
', CAST(N'2020-02-15T00:00:00' AS SmallDateTime), N'2', N'4', 13.95, N'Panadol Children 1-5 Years Colourfree (Strawberry) 200ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (91, N'Chemists'' Own Ibuprofen 200mg Tab X 96', N'Product Description & Features
For effective relief of pain associated with acute pain where inflammation is present.
Does not contain: Preservatives, artifical colours, gluten, artificial flavours, yeast wheat or soy

Ingredients/Material
Ibuprofen 200mg

Directions For Use
Dosage:
•	Age: 1-2 Yrs, Average Weight: 10-12 kg  : 6-8 ml
•	Age: 2-3 Yrs, Average Weight: 12-14 kg, : 8-9 ml
•	Age: 3-4 Yrs, Average Weight: 14-16 kg  : 9-10 ml
•	Age: 4-5 Yrs, Average Weight: 16-18 kg  : 10-11 ml
- Please read and retain the carton.
- Shake the bottle thoroughly before use.
- Calculate correct dose based on the child''s weight.
- If weight is unknown, use the child''s age.
- Use the measuring device provided to accurately measure.
- Measure correct dose based on the dosage table below.
- Can be given with water or fruit juice if preferred by your child.
- Store below 30°C but do not refrigerate.
Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-16T00:00:00' AS SmallDateTime), N'2', N'4', 6.95, N'Chemists'' Own Ibuprofen 200mg Tab X 96.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (92, N'Panadol Tab X 100', N'Product Description & Features
Panadol Tab X 100  are fast effective temporary relief of pain and discomfort, it is effective on pain and gentle on stomachs.
Panadol Tablets are  effective temporary relief of pain and discomfort associated with:
•	Headache/Tension headache.
•	Migraine headache.
•	Muscular aches. 
•	Arthritis/Osteoarthritis.
•	Period pain. 
•	Cold & flu symptoms. 
Reduces fever.
Ingredients/Material
Paracetamol 500mg
Contains Potassium Sorbate as a Preservative
Does not contain gluten, lactose or sugar.

Directions For Use
Dosage :
Age: 12- Adult, Tablets: 1-2, every 4-6 hrs with water as required (maximum 8 tablets in 24 hrs).
Age: 7-12, Tablets: 1/2-1, every 4-6 hrs with water as required (maximum 4 tablets in 24 hrs).

Warnings and Disclaimers

Do not use Panadol:
- If you are allergic to paracetamol.
- If using other medicines containing paracetamol.
- For children below age 7, except on medical advice.
- For more than 48 hours for children aged 7-17 except on medical advice.
- For more than a few days at a time in adults except on medical advice.
- If any of the seals on this packaging are broken.
- If the package use - by date below has expired.
- Until you read the enclosed leaflet carefully.
Ask a doctor before use:
- If you have liver or kidney problems.
- If you are taking warfarin (a medicine used to thin the blood). Stop use and see your doctor immediately if: You have an allergic skin reaction, shortness of breath or wheezing after taking Panadol.
While using this product: If an overdose is taken or suspected, ring the Poisons Information Centre (Aust: 13 11 26; NZ 0800 764 766) or go to the hospital immediately, even if you feel well because of the risk of delayed, serious liver damage if left untreated. Keep to the recommended dose. Contains potassium sorbate as a preservative.
Keep out of reach of children.
Use only if seals are intact.
', CAST(N'2020-02-17T00:00:00' AS SmallDateTime), N'2', N'4', 13.5, N'Panadol Tab X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (93, N'Pharmacy Health Ibuprofen 200mg Liquid Cap X 100', N'Product Description & Features
For the temporary fast relief of pain and inflammation
Ingredients/Material
Each capsule contains Ibuprofen 200mg

Directions For Use
Dosage :
Age: 12- Adult, Tablets: 1-2, every 4-6 hrs with water as required (maximum 8 tablets in 24 hrs).
Age: 7-12, Tablets: 1/2-1, every 4-6 hrs with water as required (maximum 4 tablets in 24 hrs).

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-18T00:00:00' AS SmallDateTime), N'2', N'4', 9.5, N'Pharmacy Health Ibuprofen 200mg Liquid Cap X 100.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (94, N'Chemists'' Own IbuVance 200mg Tab X 24', N'Product Description & Features
Effective temporary relief of pain and inflammation
Indications:
•	Headache
•	Fever
•	Migraine headache
•	Tension headache
•	Muscular pain
•	Cold & Flu symptoms
•	Period pain
•	Dental pain
•	Sinus pain
•	Back pain
•	Arthritic pain
•	Gluten, wheat & lactose free
•	No preservatives

Ingredients/Material
Ibuprofen (as Sodium Dihydrate) 200mg

Directions For Use
Dosage :
Age: 12- Adult, Tablets: 1-2, every 4-6 hrs with water as required (maximum 8 tablets in 24 hrs).
Age: 7-12, Tablets: 1/2-1, every 4-6 hrs with water as required (maximum 4 tablets in 24 hrs).

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-19T00:00:00' AS SmallDateTime), N'2', N'4', 5.5, N'Chemists'' Own IbuVance 200mg Tab X 24.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (95, N'Pharmacy Action Ibuprofen 200mg Tab X 48', N'Product Description & Features
Pharmacy Action Ibuprofen 200mg Tablets: provide effective temporary relief of pain and discomfort associated with migraine and tension headaches, muscular aches, dental pain, aches and pains associated with colds and flu, period pain and arthritic pain.
Reduces fever. Ibuprofen tablets have anti-inflammatory properties which provide temporary relief from acute pain where inflammation is present.

Ingredients/Material
Each tablet contains Ibuprofen 200mg

Directions For Use
Adults and children over 12 years:
•	1 or 2 tablets initially, then 1 - 2 tablets every four to six hours as necessary
•	Take with fluid
•	Dosage should not exceed 6 tablets in 24 hours
Children 7 to 12 (22 to 41kg):
•	One tablet to be taken with fluid every six to eight hours, when required, up to four times daily
•	Maximum dose of 4 tablets in 24 hours

Warnings and Disclaimers

If you get an allergic reaction, stop taking and see your doctor immediately.
DO NOT USE:
•	If you have a stomach ulcer or other stomach disorder
•	Kidney or heart problems
•	If you are allergic to ibuprofen or other anti-inflammatory medicines
•	For more than a few days at a time (Unless a doctor has told you to)
•	If you have asthma (Unless a doctor has told you to)
•	In children under 7 years of age (Unless a doctor has told you to)
•	With other medicines containing ibuprofen, aspirin or other anti-inflammatory medicines or with medicines you are taking regularly (Unless a doctor or pharmacist told you to)
•	During the first six months of pregnancy, except on doctor''s advice
•	At all during the last 3 months of pregnancy
Do not exceed the recommended dose. Excessive or prolonged use can be harmful and can increase the risk of heart attack, stroke or liver damage.
', CAST(N'2020-02-20T00:00:00' AS SmallDateTime), N'2', N'4', 2.5, N'Pharmacy Action Ibuprofen 200mg Tab X 48.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (96, N'Dymadon Paracetamol For Kids 2-12 Years Strawberry Flavour 200ml', N'Product Description & Features
Dymadon is a children''s liquid paracetamol suspension for the temporary relief of pain and fever in babies and kids.
•	Gentle, temporary relief from the pain and fever associated with headache, earache, immunisation, toothache and the symptoms of cold and flu.
•	Dymadon paracetamol comes in a great tasting orange or strawberry flavour.
•	Dymadon Strawberry flavour is colour and sugar free.

Ingredients/Material
Each 5 ml of oral liquid suspension contains paracetamol 250mg

Directions For Use
•	Refer to pack for dosing instructions
•	Store below 25°C

Warnings and Disclaimers

•	Always read the label. Use only as directed.
•	If symptoms persist see your Health Care Professional.
', CAST(N'2020-02-21T00:00:00' AS SmallDateTime), N'2', N'4', 15.95, N'Dymadon Paracetamol For Kids 2-12 Years Strawberry Flavour 200ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (97, N'Pharmacy Health Ibuprofen 200mg Tab X 48', N'Product Description & Features
For the temporary relief of pain and inflammation

Ingredients/Material
Each tablet contains Ibuprofen 200mg

Directions For Use
•	Refer to pack for dosing instructions
•	Store below 25°C

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-22T00:00:00' AS SmallDateTime), N'2', N'4', 2.95, N'Pharmacy Health Ibuprofen 200mg Tab X 48.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (98, N'Chemists'' Own Ibuprofen 200mg Liquid Cap X 20', N'Product Description & Features
Chemists'' Own Ibuprofen 200mg Liquid Capsules
For effective relief of pain and inflammation
Ingredients/Material
Ibuprofen 200mg

Directions For Use
•	Refer to pack for dosing instructions
•	Store below 25°C

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. Incorrect use could be harmful. If symptoms persist, talk to your health professional.
', CAST(N'2020-02-23T00:00:00' AS SmallDateTime), N'2', N'4', 3.5, N'Chemists'' Own Ibuprofen 200mg Liquid Cap X 20.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (99, N'Panadol With Optizorb Formulation Tab X 50', N'Product Description & Features
Panadol Optizorb formulation Tab x 50  Provides temporary effective relief of pain and discomfort. Provide advanced absorption compared with regular Panadol tablets.
It contains a patented delivery system which allows it to deliver paracetamol more efficiently to the body for pain relief while remaining gentle on stomachs.

Panadol with Optizorb Tablets provide temporary , effective relief of pain and discomfort associated with:
•	Headaches/tension headache,
•	Toothache/dental pain,
•	Cold & flu symptoms,
•	Migraine headaches,
•	Muscular aches,
•	Arthritis/osteoarthritis,
•	Backache,
•	Period pain.
Panadol with Optizorb Pain Relief Tablets also reduce fever. It is Gentle on stomachs.
Ingredients/Material
Each tablets contains Paracetamol 500mg.
Contains hydroxybenzoates as preservatives. 
Does not contain gluten, lactose or sugar.

Directions For Use
Dosage:
Age : 7-12, Tablets: 1/2 - 1,  Every 4-6hrs with water as required (Maximum 4 tablets in 24 hrs).
Age : 12 - Adult, Tablets: 1-2, Every 4-6hrs with water as required (Maximum 8 tablets in 24 hrs).
Store below 30°C.

Warnings and Disclaimers

Do not use Panadol
- If you are allergic to paracetamol or hydroxybenzoates.
- If using other medicines containing paracetamol.
- For children below age 7, except on medical advice.
- For more than 48 hours for children aged 7-17 except on medical advice.
- For more than a few days at a time in adults except on medical advice.
- If any of the seals on this packaging are broken.
- If the package use-by date below has expired.
- Until you read the enclosed leaflet carefully.
Ask a doctor before use:
- If you have liver or kidney problems.
- If you are taking warfarin (a medicine used to thin the blood).
Stop use and see your doctor immediately:
-If You have an allergic skin reaction.
-If  shortness of breath or wheezing after taking Panadol.
Keep to the recommended dose.
Keep out of reach of children.
Always read the label.
Use only as directed. For the temporary relief of pain and fever.
Incorrect use could be harmful. Consult your healthcare professional if symptoms persist
Use only if seals are intact. 2 way safety seal system.
- Carton safety seals.
- Heat sealed blister.
Firstaid : 
While using this product If an overdose is taken or suspected, ring the Poisons Information Centre (AUST: 13 11 26; NZ 0800 764 766) or go to the hospital immediately, even if you feel well because of the risk of delayed, serious liver damage if left untreated.
', CAST(N'2020-02-24T00:00:00' AS SmallDateTime), N'2', N'4', 3.25, N'Panadol With Optizorb Formulation Tab X 50.png')
GO
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (100, N'Advil Infants Pain & Fever Relief Drops 40ml', N'Product Description & Features
Advil Infants Pain & Fever Suspension provides relief of pain & reduces fever.
Pharmacy Medicine.
Advil Infant 3 months - 2 years Grape Flavoured Suspension is a great tasting colour free suspension that provides temporary relief from pain and reduces fever, including fever associated with immunisation. 
Advil Infant 3 months - 2 years reduces fever for up to 8 hours, and provides temporary relief of pain associated with:
Earache.
•	Teething.
•	Cold and Flu.
•	Headache.
•	Minor Aches.
•	Sore Throat.
•	Sprains and Strains.

Ingredients/Material
Each 1ml of oral liquid contains Ibuprofen in suspension 40mg.
Contains : Benzoates, hydroxybenzoates, sulfites, sugars. 

Directions For Use
Refer to product packaging for dosage chart
Store below 25°C.

Warnings and Disclaimers

Do not use this product:
- In infants under 3 months and/or weighing less than 6 kg.
- If tamper evident seal is broken or missing.
- If your child has a current or past history of a stomach ulcer or bleeding disorder.
- If your child has impaired kidney function or heart failure.
- If your child is allergic to ibuprofen, aspirin or other anti-inflammatory medicines or any other components of this product.
- If you are pregnant, or trying to become pregnant. Ask your doctor before use if:
- Your child suffers from asthma, urticaria or rhinitis.
- Your child has indigestion, stomach pain, high blood pressure, heart or liver disease.
- Your child has not been taking fluids or has lost fluids due to vomiting or diarrhoea.
- Your child is taking other medicines regularly or medicines containing ibuprofen, aspirin or other anti-inflammatory ingredients or blood thinners.
- Your child is taking aspirin for heart attack or stroke because ibuprofen may decrease this benefit of aspirin.
- Your child is under doctor''s care for a serious condition.
- You are breastfeeding. While using this product:
Stop use and ask your doctor immediately if you see an allergic reaction including skin reddening, rash or blisters or if pain or fever gets worse or lasts for more than a few days.
- Stop use and ask your doctor immediately if you see blood in the vomit or bloody or black stools.
- Do not use for more than a few days at a time unless a doctor has told you to.
- Do not exceed the recommended dose. Excessive use can be harmful and increase the risk of heart attack, stroke or liver damage.
- Side effects may be minimised by using for the shortest duration necessary.
- If an overdose is taken or suspected, ring the Poisons Information Centre (Australia 13 11 26, New Zealand 0800 764 7661, discontinue use & seek professional advice immediately. Contains: Benzoates, hydroxybenzoates, sulfites, sugars.
Always read the label.
Do not use if you have a stomach ulcer, impaired kidney function, heart failure, are allergic to antiinflammatory medicines, or if pregnant or trying to become pregnant. Contains benzoates, hydroxbenzoates and sulfites. Follow the directions for use. If symptoms persist, talk to your health professional. Incorrect use could be harmful.
Keep out of reach of Children.
', CAST(N'2020-02-25T00:00:00' AS SmallDateTime), N'2', N'4', 5.41, N'Advil Infants Pain & Fever Relief Drops 40ml.png')
INSERT [dbo].[Medicines] ([MedicineID], [MedicineName], [Description], [DateOfManufacture], [TypeID], [ManufacturerID], [Price], [Images]) VALUES (101, N'Chemists'' Own C-Zine 10mg Tab X 50', N'Product Description & Features
Relieves the symptoms of hayfever and allergies.
•	Rapid acting
•	24-hour control
•	Does not contain: Sucrose, gluten, glucose, artificial colours or preservatives

Ingredients/Material
Cetirizine Hydrochloride 10mg 

Directions For Use
Refer to product packaging for dosage chart
Store below 25°C.

Warnings and Disclaimers

This medicine may not be right for you. Read the label before purchase. Follow the directions for use. If symptoms persist, talk to your health professional.
', CAST(N'2020-03-01T00:00:00' AS SmallDateTime), N'3', N'5', 8.95, N'Chemists'' Own C-Zine 10mg Tab X 50.png')
SET IDENTITY_INSERT [dbo].[Medicines] OFF
GO
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'1', N'Korea')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'2', N'Japan')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'3', N'United States')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'4', N'China')
INSERT [dbo].[Nation] ([nationID], [nationName]) VALUES (N'5', N'Viet Nam')
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffID], [StaffName], [TaxCode], [Phone], [Address], [Email], [Username], [Password], [Images]) VALUES (1, N'Nguyễn Văn Hùng', N'111111', N'0909888777', N'102 Nguyen Van Troi', N'nvhung@gmail.com', N'staff', N'202cb962ac59075b964b07152d234b70', N'p1.jpeg')
INSERT [dbo].[Staff] ([StaffID], [StaffName], [TaxCode], [Phone], [Address], [Email], [Username], [Password], [Images]) VALUES (2, N'Nguyễn Thị Giang', N'111112', N'0907555666', N'5 Le Hong Phong', N'ntgiang@gmail.com', N'ntgiang', N'202cb962ac59075b964b07152d234b70', N'p2.jpg')
INSERT [dbo].[Staff] ([StaffID], [StaffName], [TaxCode], [Phone], [Address], [Email], [Username], [Password], [Images]) VALUES (3, N'Nguyễn Văn Hùng', N'111113', N'0907555665', N'6 Tran Phu', N'nvhung@gmail.com', N'nvhung', N'202cb962ac59075b964b07152d234b70', N'p3.jpg')
INSERT [dbo].[Staff] ([StaffID], [StaffName], [TaxCode], [Phone], [Address], [Email], [Username], [Password], [Images]) VALUES (4, N'Lê Thị Nga', N'111114', N'0909888776', N'6 Tran Binh Trong', N'ltnga@gmail.com', N'ltnga', N'202cb962ac59075b964b07152d234b70', N'p4.jpg')
INSERT [dbo].[Staff] ([StaffID], [StaffName], [TaxCode], [Phone], [Address], [Email], [Username], [Password], [Images]) VALUES (5, N'Trần Xuân Tiến', N'111115', N'0906444333', N'9 Lac Long Quan', N'txtien@gmail.com', N'txtien', N'202cb962ac59075b964b07152d234b70', N'p5.jpg')
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
INSERT [dbo].[TypeMedicines] ([typeID], [typeName], [images]) VALUES (N'1', N'Vitamin', N'vitamin.png')
INSERT [dbo].[TypeMedicines] ([typeID], [typeName], [images]) VALUES (N'2', N'Fever & Pain Relief', N'fever&painrelief.png')
INSERT [dbo].[TypeMedicines] ([typeID], [typeName], [images]) VALUES (N'3', N'Allergies & Sinus', N'allergies&sinus.png')
INSERT [dbo].[TypeMedicines] ([typeID], [typeName], [images]) VALUES (N'4', N'COVID-19 Essentials', N'cold,cough&flu.png')
INSERT [dbo].[TypeMedicines] ([typeID], [typeName], [images]) VALUES (N'5', N'Skin Conditions', N'skinconditions.png')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Customer]    Script Date: 18-Jun-21 9:51:34 AM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [IX_Customer] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_Nation] FOREIGN KEY([nation])
REFERENCES [dbo].[Nation] ([nationID])
GO
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_Nation]
GO
ALTER TABLE [dbo].[Medicines]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([manufacturerID])
GO
ALTER TABLE [dbo].[Medicines] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Medicines]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeMedicines] ([typeID])
GO
ALTER TABLE [dbo].[Medicines] CHECK CONSTRAINT [FK_Product_Type]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orderpro] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([MedicineID])
REFERENCES [dbo].[Medicines] ([MedicineID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Orderpro]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Orderpro] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orderpro]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Orderpro] CHECK CONSTRAINT [FK_Order_Staff]
GO
