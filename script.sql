USE [master]
GO
/****** Object:  Database [Chatter]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE DATABASE [Chatter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Chatter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Chatter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Chatter_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Chatter] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Chatter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Chatter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Chatter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Chatter] SET ARITHABORT OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Chatter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Chatter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Chatter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Chatter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Chatter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Chatter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Chatter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Chatter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Chatter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Chatter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Chatter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Chatter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Chatter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Chatter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Chatter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Chatter] SET  MULTI_USER 
GO
ALTER DATABASE [Chatter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Chatter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Chatter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Chatter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Chatter] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Chatter]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chat]    Script Date: 3/27/2018 12:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Message] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201803271630374_InitialCreate', N'ChatterProject.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E5FA0FF41D053BB48AD5C7606B3813D45EA24DDA0930BC699C1BE0D688976D4912855A2D204457F591FFA93F62FECA144C9E24D175BB19DA240118BE4770E0F3F92878787F3BF3FFF1AFFF01406D6234E523F2213FB6874685B98B891E793E5C4CEE8E2FB77F60FEFBFF9C7F8C20B9FACCF65BD13560F5A9274623F501A9F3A4EEA3EE010A5A3D07793288D1674E446A183BCC8393E3CFCB77374E46080B001CBB2C61F3342FD10E73FE0E734222E8E698682EBC8C341CABF43C92C47B56E5088D318B978624F1F10A538B94BA25FB04B474503DB3A0B7C04CACC70B0B02D4448441105554F3FA5784693882C67317C40C1FD738CA1DE020529E65D385D55EFDA9BC363D61B67D5B08472B39446614FC0A3136E1E476EBE9691EDCA7C60C00B30347D66BDCE8D38B1AF3C9C7FFA1805600059E0E9344858E5897D5D89384BE31B4C4765C35101799900DC6F51F27554473CB03AB73BA8E8743C3A64FF1D58D32CA059822704673441C1817597CD03DFFD193FDF475F31999C1CCD1727EFDEBC45DEC9DB7FE19337F59E425FA19EF0013E014D629C806E7851F5DFB61CB19D2337AC9AD5DA1456012EC1CCB0AD6BF4F40193257D803973FCCEB62EFD27EC955F38B93E111F261234A249063F6FB22040F30057E54EA34CF6FF06A9C76FDE0E22F5063DFACB7CE825F930711298571F719097A60F7E5C4C2F61BCBFF06A974914B2DF22BF8AD22FB3284B5CD699C858E51E254B4C45EDC6CE8ABC9D28CDA086A77589BAFFD4669AAAF4D656651D5A67269422B63D1B4A7D5F566E67C69DC5310C5E4E2D669126C269F7AB910400FC10AAAD0874D49540043AF6775E0F2F42E407032C881DA4803BB2F0931057BDFC3102FA21D25BE73B94A6B01E78FF41E94383EAF0E700AACFB09B2540D3194561FCE2D2EE1E22826FB270CED8BF3D59830DCDFD6FD1257269945C10D66A63BC0F91FB35CAE805F1CE11C59FA85B02B29FF77ED81D601075CE5C17A7E92590197BD308BCED12F08AD093E3DE706C8DDAB543320D901FEA3D126935FD52565D7925FA1A8A6762A8A6F34E9A54FD102D7DD24DD5B2AA59D5A246ABAABC5A5F551958374D794DB3A27985563D8B5A83F97BF9080DEFF0E5B0FBEFF16DB6799BD6829A1967B042E29F30C1092C63DE5DEEA390D50874593776E12CE4C3C784BEF8DE944BFA8C826C68516BCD867C11187E36E4B0FB3F1B7235E1F3A3EF31AFA4C331A8AC0CF09DEAEB4F58ED734ED26CDBD341E8E6B6856F670D304D97B3348D5C3F9F059A00180F5F88FA830F67B5C7328ADEC8F110E81810DD675B1E7C81BED932A96EC9390E30C5D6995B0408A7287591A79A113AE4F550ACDC51358AADE222A272FF546402D371C21A2176084A61A6FA84AAD3C227AE1FA3A0D54A52CB8E5B18EB7B25432E39C731264C60AB25BA08D787419802951C6950DA2C34766A8C6B26A2C16B358D799B0BBB1A77253AB1154EB6F8CE065E72FFED4588D96CB12D90B3D9245D143086F47641507E56E94A00F9E0B26F04954E4C068272976A2B04152DB603828A267975042D8EA85DC75F3AAFEE1B3DC583F2F6B7F54673ED809B823DF68C9A85EF096D28B4C0894ACFF3392BC44F547338033DF9F92CE5AEAE4C11063EC3540CD9ACFC5DAD1FEA3483C8246A025C11AD05945F062A40CA84EAA15C19CB6BD48E7B113D60CBB85B232C5FFB25D81A0754ECFAA568ADA2F9EA542667A7D347D5B38A0D0AC93B1D166A381A42C88B97D8F10E4631C56555C374F185FB78C3B58EF1C16830508BE76A3052D999C1AD5452B3DD4A3A87AC8F4BB6919524F7C960A5B233835B8973B4DD481AA7A0875BB09189C42D7CA0C956463AAADDA62A1B3B45BA14FF30760C7955E36B14C73E59D6F2ACF8176BC693ACBE9FF54F3D0A0B0CC74D35194895B695241A256889A552100D9A5EFA494ACF114573C4E23C532F54AA69F756C3F25F8AAC6F9FEA2096FB40599BFDCD63BCDA2B7C61BB55FD110E73099D0C99539347D23514D037B758EA1B0A50A209DE4FA3200B89D9C732B72EAEF0EAED8B2F2AC2D891F4577C28C5608AA72B5ABFD3D8A8F362B871AABC98F5C7CA0C61B278E983D66D6EF24BCD286598AA8E620A5DED6CEC4CEE4CDFF1929DC5FEC3D58AF032B38B67A8D401F8A79E18B5240705AC56D61D55CC43A9638A25DD11A564933AA454D443CB7A4A89A064BD602D3C8345F535BA4B509348EAE86A6977644D3A491D5A53BC06B64667B9AC3BAA26E3A40EAC29EE8EBD4A3F91D7D13DDEBF8C47984D36B0E2A0BBD90E66C078994571980DB0769F5F07AA7DEE89C56FEC1530FE7D2F09653CED6D42A822C4B119A10C18E6F547B80C17979FC61B7C33A670C32D2CF14D37FC66BC7EB47D517228E73DB94A25BD3AF749E7BB313F6B75785C231FBE8A2AB6559A11B6F7E794E270C42A8C66BF06D3C0C76C312F2B5C23E22F704A8BAC0EFBF8F0E8587A9CB33F0F659C34F502CD59D5F45A461CB32D2468914794B80F2851D32536784CB2025522D157C4C34F13FBF7BCD5691ED4607FE59F0FACABF413F17FCDA0E03EC9B0F5879AFE394C727D87E71C95A27FBC8A7712DD4D7EF5DF2F45D303EB3681E9746A1D4A865E67F8C5D713BDB4299A6EA0CDDA6F2A5EEF6C139E2A6851A5D9B2FECB84B94F077995506AF96D889EBEEBAB9AF6E5C146889AD70543E10D6242D3EB8175B08C2F073CF849F39703FD3AAB7F49B08E6AC657043EE90F26BF21E8BE0C952D77B80F69CE4CDB5892723BB7E6606F9490B9EBBD4949D5DE68A2ABE9D83DE0064DB9DECC457965A9CC836D9D9A4CE5C1B077C9FB174F4FDE978CE495D3BEDB44E46DE61E37DC2CFDAD528EF720494E93F4B3FBC4E26D73CD1404DEF3ECCC7EE9C37B4636BECDEF3E4978DB64330588F79C6CBD5281F78C6BBBDA3F77CCB4CE5BE8CE137BD51C25C3658E2E8ADC96B85B84DCE1F83F8F8004854759BCB7D4678A3565B9B6085C55310B35A7A8C9829589A3C8556A348BEDD757BEE1377696D769166B48EC6C92CDD7FF46D9BC4EB36C43BAE42E528EB5098BBA34F09675AC298FEA35A5180B3D69C9686FF3591B6FE65F5346F1204611668FE176F9F524100F629221A74E8F8461F5A218F6CEDABFD508FB77EA2F5710EC5F6E24D81576CDAACE155944E5E62D695456912234D798220FB6D4B384FA0BE452286601E8FCC1781ED463D72073EC5D91DB8CC619852EE3701E08012FE60434C9CFB3A2459DC7B731FB950ED10550D36781FB5BF263E6075EA5F7A52626648060DE050FF7B2B1A42CECBB7CAE906E22D211889BAF728AEE7118070096DE92197AC4EBE806F4FB8097C87D5E45004D20ED03219A7D7CEEA36582C29463ACDAC34FE0B0173EBDFF3F9E72AD29B2540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a044b805-39f4-4989-b713-6685bea03b8c', N'pete@done.com', 0, N'APWaj6gRRXjIGbb5UzKHAHkV/eXtHN/+yzoDGOMjxf3NEKc2oqvffRRjQkv3eaxHyg==', N'a65d5640-8b90-443d-9540-7de2bea4b76f', NULL, 0, 0, NULL, 1, 0, N'pete@done.com')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/27/2018 12:33:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Chatter] SET  READ_WRITE 
GO
