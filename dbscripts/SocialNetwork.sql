/****** Object:  Table [dbo].[Countries]    Script Date: 7/31/2020 4:10:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/31/2020 4:10:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](150) NOT NULL,
	[PassHash] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[CountryID] [int] NOT NULL,
	[EmailAdd] [nvarchar](255) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (1, N'Philippines')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (2, N'Afghanistan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (3, N'Albania')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (4, N'Algeria')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (5, N'Andorra')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (6, N'Angola')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (7, N'Antigua & Deps')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (8, N'Argentina')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (9, N'Armenia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (10, N'Australia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (11, N'Austria')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (12, N'Azerbaijan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (13, N'Bahamas')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (14, N'Bahrain')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (15, N'Bangladesh')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (16, N'Barbados')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (17, N'Belarus')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (18, N'Belgium')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (19, N'Belize')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (20, N'Benin')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (21, N'Bhutan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (22, N'Bolivia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (23, N'Bosnia Herzegovina')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (24, N'Botswana')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (25, N'Brazil')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (26, N'Brunei')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (27, N'Bulgaria')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (28, N'Burkina')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (29, N'Burundi')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (30, N'Cambodia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (31, N'Cameroon')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (32, N'Canada')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (33, N'Cape Verde')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (34, N'Central African Rep')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (35, N'Chad')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (36, N'Chile')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (37, N'China')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (38, N'Colombia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (39, N'Comoros')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (40, N'Congo')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (41, N'Congo {Democratic Rep}')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (42, N'Costa Rica')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (43, N'Croatia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (44, N'Cuba')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (45, N'Cyprus')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (46, N'Czech Republic')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (47, N'Denmark')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (48, N'Djibouti')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (49, N'Dominica')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (50, N'Dominican Republic')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (51, N'East Timor')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (52, N'Ecuador')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (53, N'Egypt')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (54, N'El Salvador')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (55, N'Equatorial Guinea')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (56, N'Eritrea')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (57, N'Estonia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (58, N'Ethiopia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (59, N'Fiji')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (60, N'Finland')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (61, N'France')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (62, N'Gabon')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (63, N'Gambia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (64, N'Georgia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (65, N'Germany')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (66, N'Ghana')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (67, N'Greece')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (68, N'Grenada')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (69, N'Guatemala')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (70, N'Guinea')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (71, N'Guinea-Bissau')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (72, N'Guyana')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (73, N'Haiti')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (74, N'Honduras')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (75, N'Hungary')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (76, N'Iceland')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (77, N'India')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (78, N'Indonesia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (79, N'Iran')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (80, N'Iraq')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (81, N'Ireland {Republic}')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (82, N'Israel')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (83, N'Italy')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (84, N'Ivory Coast')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (85, N'Jamaica')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (86, N'Japan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (87, N'Jordan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (88, N'Kazakhstan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (89, N'Kenya')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (90, N'Kiribati')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (91, N'Korea North')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (92, N'Korea South')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (93, N'Kosovo')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (94, N'Kuwait')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (95, N'Kyrgyzstan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (96, N'Laos')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (97, N'Latvia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (98, N'Lebanon')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (99, N'Lesotho')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (100, N'Liberia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (101, N'Libya')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (102, N'Liechtenstein')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (103, N'Lithuania')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (104, N'Luxembourg')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (105, N'Macedonia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (106, N'Madagascar')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (107, N'Malawi')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (108, N'Malaysia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (109, N'Maldives')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (110, N'Mali')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (111, N'Malta')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (112, N'Marshall Islands')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (113, N'Mauritania')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (114, N'Mauritius')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (115, N'Mexico')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (116, N'Micronesia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (117, N'Moldova')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (118, N'Monaco')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (119, N'Mongolia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (120, N'Montenegro')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (121, N'Morocco')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (122, N'Mozambique')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (123, N'Myanmar, {Burma}')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (124, N'Namibia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (125, N'Nauru')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (126, N'Nepal')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (127, N'Netherlands')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (128, N'New Zealand')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (129, N'Nicaragua')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (130, N'Niger')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (131, N'Nigeria')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (132, N'Norway')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (133, N'Oman')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (134, N'Pakistan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (135, N'Palau')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (136, N'Panama')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (137, N'Papua New Guinea')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (138, N'Paraguay')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (139, N'Peru')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (140, N'Poland')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (141, N'Portugal')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (142, N'Qatar')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (143, N'Romania')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (144, N'Russian Federation')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (145, N'Rwanda')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (146, N'St Kitts & Nevis')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (147, N'St Lucia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (148, N'Saint Vincent & the Grenadines')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (149, N'Samoa')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (150, N'San Marino')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (151, N'Sao Tome & Principe')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (152, N'Saudi Arabia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (153, N'Senegal')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (154, N'Serbia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (155, N'Seychelles')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (156, N'Sierra Leone')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (157, N'Singapore')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (158, N'Slovakia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (159, N'Slovenia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (160, N'Solomon Islands')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (161, N'Somalia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (162, N'South Africa')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (163, N'South Sudan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (164, N'Spain')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (165, N'Sri Lanka')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (166, N'Sudan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (167, N'Suriname')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (168, N'Swaziland')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (169, N'Sweden')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (170, N'Switzerland')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (171, N'Syria')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (172, N'Taiwan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (173, N'Tajikistan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (174, N'Tanzania')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (175, N'Thailand')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (176, N'Togo')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (177, N'Tonga')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (178, N'Trinidad & Tobago')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (179, N'Tunisia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (180, N'Turkey')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (181, N'Turkmenistan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (182, N'Tuvalu')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (183, N'Uganda')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (184, N'Ukraine')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (185, N'United Arab Emirates')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (186, N'United Kingdom')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (187, N'United States')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (188, N'Uruguay')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (189, N'Uzbekistan')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (190, N'Vanuatu')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (191, N'Vatican City')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (192, N'Venezuela')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (193, N'Vietnam')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (194, N'Yemen')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (195, N'Zambia')
GO
INSERT [dbo].[Countries] ([CountryID], [Country]) VALUES (196, N'Zimbabwe')
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UserID]  DEFAULT (newid()) FOR [UserID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries]
GO
