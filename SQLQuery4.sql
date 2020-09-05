/*Nombre: Esther Alcantara Matricula: 19-EIIN-1-036 Seccion:0541*/
/*Nombre: Yohana Montero   Matricula: 19-EIIN-1-054 Seccion:0541*/
/*Nombre: Selenny Bocio M. Matricula: 19-EIIN-1-023 Seccion:0541*/


USE [master]
GO
/****** Object:  Database [SeyExpress]    Script Date: 19/08/2020 11:57:26 ******/
CREATE DATABASE [SeyExpress]
GO
USE [SeyExpress]
GO
/****** Object:  Table [dbo].[ClienteId]    Script Date: 19/08/2020 11:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteId](
[ClienteId] [int] NOT NULL,
[Nombre] [varchar](60) NULL,
[Cedula] [varchar](11) NULL,
[LocalId] [int] NULL,
[FechaNacimiento] [datetime] NULL,
[Sexo] [char](1) NULL,
[Direccion] [varchar](250) NULL,
[Telefono] [varchar](13) NULL,
 CONSTRAINT [PK_ClienteId] PRIMARY KEY CLUSTERED
(
[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EncargadoId]    Script Date: 19/08/2020 11:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EncargadoId](
[EncargadoId] [int] NOT NULL,
[Nombre] [varchar](60) NULL,
[Direccion] [varchar](250) NULL,
[Sexo] [char](1) NULL,
[Telefono] [varchar](13) NULL,
[Email] [varchar](50) NULL,
 CONSTRAINT [PK_EncargadoId] PRIMARY KEY CLUSTERED
(
[EncargadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MercanciasId]    Script Date: 19/08/2020 11:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MercanciasId](
[MercanciasId] [int] NOT NULL,
[Nombres] [varchar](50) NULL,
[localId] [int] NULL,
[EncargadoId] [int] NULL,
 CONSTRAINT [PK_MercanciasId] PRIMARY KEY CLUSTERED
(
[MercanciasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrecioId]    Script Date: 19/08/2020 11:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrecioId](
[PrecioId] [int] NOT NULL,
[MercanciasId] [int] NULL,
[ClienteId] [int] NULL,
[EncargadoId] [int] NULL,
[Precio1] [float] NULL,
[Precio2] [float] NULL,
[Precio3] [float] NULL,
[CargoEnvio] [int] NULL,
 CONSTRAINT [PK_PrecioId] PRIMARY KEY CLUSTERED
(
[PrecioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeyExpress]    Script Date: 19/11/2018 11:57:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeyExpress](
[LocalId] [int] NOT NULL,
[Nombre] [varchar](50) NULL,
[Horario] [varchar](20) NULL,
 CONSTRAINT [PK_SeyExpress] PRIMARY KEY CLUSTERED
(
[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (1, N'Lucy Montero', N'09300897244', 1, CAST(0x0000834800000000 AS DateTime), N'F', N'Piedra blanca de Haina calle mendoza numero 7', N'8092532236')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (2, N'Cristian Arias ', N'09371713454', 1, CAST(0x000084D000000000 AS DateTime), N'M', N'Calle el eden numero 7 herrera ', N'8296758400')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (3, N'Eduardo Rubio', N'20598007685', 1, CAST(0x0000806800000000 AS DateTime), N'M', N'Sancristobal calle central numero 2', N'8097672229')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (4, N'Sorangel Santana ', N'40877685789', 1, CAST(0x0000814400000000 AS DateTime), N'F', N'calle la altagracia herrera numero 8', N'8497658899')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (5, N'Juan Arias', N'40255647824', 1, CAST(0x0000816100000000 AS DateTime), N'M', N'calle el eden numero 7 haina ', N'8497786542')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (6, N'Ronald Diaz', N'09300765434', 1, CAST(0x00007E6A00000000 AS DateTime), N'M', N'calle central numero 77 villa mella ', N'8099876808')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (7, N'Adonis Gomez ', N'09300898764', 1, CAST(0x0000804D00000000 AS DateTime), N'M', N'monte adentro villa francisco numero 2', N'8296345123')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (8, N'Luisa Perdomo ', N'40265743829', 1, CAST(0x000088D500000000 AS DateTime), N'F', N'Av. independencia invi Km 8 ', N'8097658433')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (9, N'Nicole Rosado ', N'40298755436', 1, CAST(0x000080BB00000000 AS DateTime), N'F', N'Av. duarte calle atalalla numero 7', N'8099987879')
INSERT [dbo].[ClienteId] ([ClienteId], [Nombre], [Cedula], [LocalId], [FechaNacimiento], [Sexo], [Direccion], [Telefono]) VALUES (10, N'Cristal Frias ', N'09876785090', 1, CAST(0x000083AD00000000 AS DateTime), N'F', N'haina balcequillo calle oveler numero 33', N'8094536745')
INSERT [dbo].[EncargadoId] ([EncargadoId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (1, N'Esther Alcantara ', N'Calle circumbalacion caribe haina numero 4', N'M', N'8094943240', N'adoni2407@gmail.com')
INSERT [dbo].[EncargadoId] ([EncargadoId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (2, N'Selenny Bocio ', N'Av.independencia Km 7 calle el rosal  numero 2', N'M', N'8295858806', N'aramis2407@gmail.com')
INSERT [dbo].[EncargadoId] ([EncargadoId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (3, N'Johana Alcantara', N'los mamelle calle cristal ', N'M', N'8097765433', N'jalcantara123@gmail.com')
INSERT [dbo].[EncargadoId] ([EncargadoId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (4, N'Altagracia Perdomo', N'Av.jardines del este distrito nacional ', N'F', N'8497765453', N'altagraciapz7@gmail.com')
INSERT [dbo].[EncargadoId] ([EncargadoId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (5, N'katty Herrera', N'centro de haina las colinas numero 19', N'F', N'8097986800', N'kattyherrera23@gmail.com')
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (1, N'Electrodomesticos', 1, 1)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (2, N'Materiales de Ferreteria', 1, 2)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (3, N'Textil', 1, 4)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (4, N'Alimentos', 1, 3)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (5, N'Plasticos ', 1, 4)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (6, N'Combustible ', 1, 5)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (7, N'Materiales informaticos ', 1, 2)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (8, N'Materiales gastables ', 1, 2)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (9, N'Objetos Metalicos ', 1, 5)
INSERT [dbo].[MercanciasId] ([MercanciasId], [Nombres], [localId], [EncargadoId]) VALUES (10, N'Piezas de vehiculos', 1, 5)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (1, 1, 1, 1, 550, 700, 1000, 250)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (2, 2, 2, 2, 550, 750, 1050, 300)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (3, 3, 8, 4, 550, 700, 1000, 250)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (4, 4, 7, 3, 550, 700, 1000, 300)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (5, 5, 4, 4, 500, 750, 1050, 300)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (6, 6, 3, 5, 550, 700, 1000, 250)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (7, 7, 5, 2, 300, 500, 760, 200)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (8, 8, 6, 2, 400, 600, 700, 300)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (9, 9, 9, 5, 600, 700, 1000, 250)
INSERT [dbo].[PrecioId] ([PrecioId], [MercanciasId], [ClienteId], [EncargadoId], [Precio1], [Precio2], [Precio3], [CargoEnvio]) VALUES (10, 10, 10, 5, 500, 700, 1050, 300)
INSERT [dbo].[SeyExpress] ([LocalId], [Nombre], [Horario]) VALUES (1, N'Carretera Sanchez km 13 haina ', N'8:00 am a 5:00 pm')
ALTER TABLE [dbo].[ClienteId]  WITH CHECK ADD  CONSTRAINT [FK_ClienteId_SeyExpress] FOREIGN KEY([LocalId])
REFERENCES [dbo].[SeyExpress] ([LocalId])
GO
ALTER TABLE [dbo].[ClienteId] CHECK CONSTRAINT [FK_ClienteId_SeyExpress]
GO
ALTER TABLE [dbo].[MercanciasId]  WITH CHECK ADD  CONSTRAINT [FK_MercanciasId_EncargadoId] FOREIGN KEY([EncargadoId])
REFERENCES [dbo].[EncargadoId] ([EncargadoId])
GO
ALTER TABLE [dbo].[MercanciasId] CHECK CONSTRAINT [FK_MercanciasId_EncargadoId]
GO
ALTER TABLE [dbo].[MercanciasId]  WITH CHECK ADD  CONSTRAINT [FK_MercanciasId_SeyExpress] FOREIGN KEY([localId])
REFERENCES [dbo].[SeyExpress] ([LocalId])
GO
ALTER TABLE [dbo].[MercanciasId] CHECK CONSTRAINT [FK_MercanciasId_SeyExpress]
GO
ALTER TABLE [dbo].[PrecioId]  WITH CHECK ADD  CONSTRAINT [FK_PrecioId_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[ClienteId] ([ClienteId])
GO
ALTER TABLE [dbo].[PrecioId] CHECK CONSTRAINT [FK_PrecioId_ClienteId]
GO
ALTER TABLE [dbo].[PrecioId]  WITH CHECK ADD  CONSTRAINT [FK_PrecioId_EncargadoId] FOREIGN KEY([EncargadoId])
REFERENCES [dbo].[EncargadoId] ([EncargadoId])
GO
ALTER TABLE [dbo].[PrecioId] CHECK CONSTRAINT [FK_PrecioId_EncargadoId]
GO
ALTER TABLE [dbo].[PrecioId]  WITH CHECK ADD  CONSTRAINT [FK_PrecioId_MercanciasId] FOREIGN KEY([MercanciasId])
REFERENCES [dbo].[MercanciasId] ([MercanciasId])
GO
ALTER TABLE [dbo].[PrecioId] CHECK CONSTRAINT [FK_PrecioId_MercanciasId]
GO
USE [master]
GO
ALTER DATABASE [SeyExpress] SET  READ_WRITE
GO

