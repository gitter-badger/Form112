USE [Form112]
GO
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201508281226214_InitialCreate', N'Form112.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C6D6FE33612FE7EC0FD07419F7A87D48A9DDBC55E60B7489DB817DCE605EB6CD16F0B5AA21D61254A95A834C1A1BFAC1FFA93FA176E28516F7CD18BADD84EB1C0222287CF0C874372381CFACFDFFF987EFFEC7BC6138E62372033733C3A350D4CECC071C966662674FDED07F3FBEFFEFEB7E995E33F1B3FE574678C0E5A9278663E521A9E5B566C3F621FC523DFB5A3200ED6746407BE859CC09A9C9EFEDB1A8F2D0C10266019C6F45342A8EBE3F4033EE701B1714813E4DD040EF6625E0E35CB14D5B8453E8E4364E399B908227F3C9E8C324AD3B8F05C04522CB1B7360D444840110519CF3FC77849A3806C96211420EFE125C440B7465E8CB9ECE72579D76E9C4E5837ACB2610E6527310DFC9E80E333AE174B6CBE9576CD426FA0B92BD0307D61BD4EB53733AF1D9C167D0A3C5080C8F07CEE458C7866DE142C2EE2F016D351DE7094412E2280FB3588BE8EAA882746E77627851D4D46A7ECDF89314F3C9A447846704223E49D18F7C9CA73EDFFE29787E02B26B3B3F16A7DF6E1DD7BE49CBDFF173E7B57ED29F415E86A0550741F05218E4036BC2EFA6F1A56BD9D25362C9A55DA645A015B8229611A37E8F923261BFA089365F2C13416EE3376F2126E5C9F890B33081AD12881CFDBC4F3D0CAC345BDD5C893FDDFC075F2EEFD205C6FD193BB49875EE00F13278279F5097B696DFCE886D9F4AA8DF7174EB688029F7DD7ED2BABFDB20C92C8669D09B4240F28DA605A976E6A95C6DBC9A419D4F0669DA31EBF69334965F35692B20E6D33137216FB9E0DB9BCAFCBB7B3C55D84210C5E6A5A4C234D0657DFA84642CB1383D7972633EE6A3204BAF2575E01AF7CE47A032C811DB880E7B176231F17BDFC21008343A4B7CCF7288E610570FE83E2C706D1E1CF01445F623B89C0309714F9E1AB73BB7F0C08BE4DFC15B3F7FDF11A6C681E7E0D16C8A641744558AB9DF13E06F6D720A157C4B944147FA6760EC83E1F5CBF3BC020E25CD8368EE305183376E60138D639E035A16793DE706C713AB40B32F790EBAB7D106119FD9293967E889A42F24534642A7FA449D48FC1C625DD44CD49F5A26614ADA272B2BEA232B06E92724ABDA02941AB9C19D5601E5E3A42C3BB7829ECF1FB78BB6DDEBAB5A0A2C625AC90F8474C7004CB98738F28C5112947A0CBBA710867211D3EC6F4D5F7A694D34FC84B8666B5D56C481781E167430A7BFCB32115138A9F5C8779251D0E3E3931C077A2579FA9DAE79C20D9BEA743AD9BFB66BE9F3540375D2EE238B0DD741628425E3C6051971F7C38A33D7A91F5468C8040C7C0D05DB6E54109F4CD148DEA8E5C620F536C5CD85948708E621B39B21AA1434E0FC1F21D5521581909A90BF74F8927583A8E5823C40E4131CC549750795AB8C47643E4B56A4968D9710B637D2F7888359738C484316CD54417E6EAC00713A0E0230C4A9B86A656C5E29A0D51E3B5EAC6BCCD852DC75D8A47ECC5265B7C678D5D72FFED550CB359637B30CE66957411401BC43B8481F2B34A5703100F2EC766A0C2894963A0DCA5DA8B81D635760003ADABE4CD19687644ED3AFEC279F5D8CCB37E50DEFFB6DEA8AE03D8664D1F47669A99EF096D28B4C0916C9E972B56899FA9E2700672F2F359CC5D5DD14418F812D37AC8A6F477957EA8D50C221A51136069682DA0FCFA4F029226540FE1F2585EA374DC8BE8019BC7DD1A61F9DA2FC0566C40C6AE5E835608F597A5A271763A7D143D2BAC4132F24E87850A8EC220C4C5ABDEF10E4AD1C56565C574F185FB78C3958EF1C16850508BE7AA5152DE99C1B5949B66BB96540E591F976C272D09EE93464B796706D712B7D17625299C821E6EC14E2AAA6FE1034DB63CD251EC3645DDD4CA32A378C1D4D2A4504D6F5018BA645349A9E225C632CBA79A7FBBEC9F6CE46718961D2B728E0A690B4E3488D0060BB5C01A245DB8514C2F11452BC4E23C73C797C8947BAB66F9CF5956B74F7910F37D20A7667F672D844BFBDA3E2B3B22BCFD027AE7336F260DA12BC65EDDDC60E96DC84391226A3F0FBCC4277AE74ADF3ABBBBABB6CF4A6484A925C82F394F92A62417B7AEF64E83224F880106A8F05BB61F243D844ED5B9D75955B6CE13D5A3E481A92A8A2E5875B041D339309D074AF40BFB8F532BC2EBCC279E8C5205E0453D312AF90C1258A5AE3B6A3DE5A48A59AFE98E28E495542185AA1E5256B3476A42562BB6C2D368544DD19D839C2F5245976BBB232B3247AAD08AEA2DB015328B75DD5115C9255560457577EC32D3445C408F78C7D29E56B6DAB2B2C3EC6E7B9606E37556C361B6BCCA9D7D15A852DC138BDFCA4B60BCFC282D497BA2DBCA92B2F8C56E96A4C1D0AF38B59BEEFA82D3783DAFC7AC5D5FD716F5A6EB7B3D5E3F7B7D55AB900E732249C1BD38D40987B7293F48B53F92914E56198969E46A840DFD25A6D81F3182D1F2176FEEB9982DDF39C10D22EE1AC7344BD93027A7E389F0D6E678DEBD5871EC788A83A8EEF14B7DCCF6907D459E50643FA248CE85D8E16D48092A8599AF89839F67E6FFD256E769C482FD95169F18D7F167E2FE9240C5439460E33739B773985CF9E683D591BE6CE8AED5EB9FBF644D4F8CBB0866CCB9712AE8729B11AEBF77E8254DD6740769B67E05F1762754EDA98112559810DBBF2C58B974905705B994DFF8E8F91F7D4553BE1CD80951F13A6028BC4154A8CBFEDF064B9BF9EFC0274D33FFFB7556FD12601BD1B4AF005CD21F4C7C03D07D19CA5B1E70AB519C87F6B124A57A6ECDA1DE29A1F2D07B93946ABDD34497D3A97BC0ED9032BD8565BCB16CE3C176474532F160D88734ED57CF203E96A4E1329DE3B0B9C2FB4C0F6EB80AFA4B65051F411E9B222FE7F0B9BFFBB6355D0CF7C81328FB65F81E99B1F16CADC3E7F1EEDBD87461DE2337B65ED9BA47666B87DA3F0F6C699DB7D083E7DECA69449ABB18552CB82DB7360B9CC3097F158011641E65F624529DCCD59488DAC2B024D133D56791898CA58923F195289AD9F6EB2BDFF01B3BCB699AD96A722F9B78F3F5BF9137A769E6ADC9683C4456B032A75095A9DDB28E35253EBDA52CE05A4F5A92CEDB7CD6C68BF5B794F43B88526AB3477347FC76727C0751C99053A7474EAF7CDD0B7B67E5971361FF8EDD4D09C17E479160BBB66B1634D7641DE49BB720514E2244686E30450E6CA9171175D7C8A650CD62CCE99BEE346EC76E3A56D8B92677090D130A5DC6FECAAB05BC9813D0C43F4D5CAECB3CBD0BD39F2719A20B20A6CB62F377E487C4F59C42EE852226A48160DE058FE8B2B1A42CB2BB7929906E03D21188ABAF708A1EB01F7A0016DF91257AC2DBC806E6F7116F90FD5246007520ED035157FBF4D2459B08F931C728DBC327D8B0E33F7FF77F71DFED7940540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'91515eb9-f291-45d4-a99b-1252240306f6', N'adrianacaro04@hotmail.com', 0, N'ACnkJTdIhvRBGo2s/r6MoGEC79qIKxbFjhxP/Jqf/O+fgHYRjvtGHnvDKvoOGf0iiA==', N'aa6d34fa-0305-486b-ae0b-3250e251a784', NULL, 0, 0, NULL, 1, 0, N'adrianacaro04@hotmail.com')
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

CREATE TABLE Commentaires (
IdCommentaire int not null IDENTITY,
IdCroisiere int not null,
IdReponseA int ,
Commentaire varchar (300) not null,
NomCommentaire varchar (50) not null,
DateCommentaire datetime not null,
CONSTRAINT Pk_Commentaires PRIMARY KEY (IdCommentaire)
);  

CREATE INDEX idx_Commentaires ON Commentaires ( IdReponseA );

ALTER TABLE Commentaires ADD CONSTRAINT fk_commentaires_commentaires FOREIGN KEY ( IdReponseA ) REFERENCES Commentaires( IdCommentaire ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Commentaires ADD CONSTRAINT fk_commentaires_croisieres FOREIGN KEY ( IdCroisiere ) REFERENCES Croisieres( IdCroisiere ) ON DELETE NO ACTION ON UPDATE NO ACTION;


CREATE TABLE ProduitTracking ( 
	IdProduitTracking int not null IDENTITY,
	IdProduit         int NOT NULL ,
	DatePT datetime not null,
	CONSTRAINT Pk_ProduitTracking PRIMARY KEY ( IdProduitTracking )
 );

CREATE TABLE Adresses ( 
	IdAdresse            int NOT NULL   IDENTITY,
	Ligne1               varchar(36) NOT NULL   ,
	Ligne2               varchar(36)    ,
	Ligne3               varchar(36)    ,
	CodePostal           varchar(10)    ,
	IdPays               char(3)  not null ,
	CONSTRAINT Pk_Adresses PRIMARY KEY ( IdAdresse )
 );

CREATE INDEX idx_Adresses ON Adresses ( IdPays );

ALTER TABLE Adresses ADD CONSTRAINT fk_adresses_pays FOREIGN KEY ( IdPays ) REFERENCES Pays( CodeIso3 ) ON DELETE NO ACTION ON UPDATE NO ACTION;


CREATE TABLE [dbo].[Utilisateurs](
	[IdUtilisateur] [int] IDENTITY(1,1) NOT NULL,
	[DateInscription] [datetime2](7) NOT NULL,
	[LastConnection] [datetime2](7) NULL,
	[Id] nvarchar(128) NOT NULL,
	Nom                  nvarchar(40) NOT NULL   ,
	Prenom                  nvarchar(40) NOT NULL   ,
	IdCroisiere    int NULL,
	IdAdresse int null, 
 CONSTRAINT [Pk_Utilisateur] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Utilisateurs]  WITH CHECK ADD  CONSTRAINT [fk_utilisateurs_aspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO

ALTER TABLE [dbo].[Utilisateurs] CHECK CONSTRAINT [fk_utilisateurs_aspNetUsers]
GO

ALTER TABLE [dbo].[Utilisateurs]  WITH CHECK ADD  CONSTRAINT [fk_utilisateurs_croisieres] FOREIGN KEY([IdCroisiere])
REFERENCES [dbo].[Croisieres] ([IdCroisiere])
GO

ALTER TABLE [dbo].[Utilisateurs] CHECK CONSTRAINT [fk_utilisateurs_croisieres]
GO

ALTER TABLE [dbo].[Utilisateurs]  WITH CHECK ADD  CONSTRAINT [fk_utilisateurs_adresses] FOREIGN KEY([IdAdresse])
REFERENCES [dbo].[Adresses] ([IdAdresse])
GO

ALTER TABLE [dbo].[Utilisateurs] CHECK CONSTRAINT [fk_utilisateurs_adresses]
GO