/****** Object:  Database [ProjectDB]    Script Date: 27-11-2023 12:49:19 ******/
CREATE DATABASE [ProjectDB]   WITH CATALOG_COLLATION = DATABASE_DEFAULT;
GO
ALTER DATABASE [ProjectDB] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectDB] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 27-11-2023 12:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[AssignmentID] [int] NOT NULL,
	[ProjectCode] [varchar](20) NOT NULL,
	[EmployeeNo] [varchar](20) NOT NULL,
	[AssignmentDate] [date] NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC,
	[EmployeeNo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 27-11-2023 12:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeNo] [varchar](20) NOT NULL,
	[Firstname] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Salary] [float] NULL,
	[Password] [varchar](30) NULL,
	[EmployeeType] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeNo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 27-11-2023 12:49:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectCode] [varchar](20) NOT NULL,
	[ProjectName] [varchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Duration] [int] NULL,
	[EstimatedCost] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectCode] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (1, N'PR123', N'EM1115', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (1, N'PR123', N'EM1334', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (1, N'PR123', N'EM2259', CAST(N'2023-08-28' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (2, N'PR125', N'EM1115', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (2, N'PR125', N'EM2983', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (2, N'PR125', N'EM7774', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (3, N'PR200', N'EM1115', CAST(N'2023-10-25' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (3, N'PR125', N'EM2438', CAST(N'2023-10-25' AS Date))
INSERT [dbo].[Assignment] ([AssignmentID], [ProjectCode], [EmployeeNo], [AssignmentDate]) VALUES (3, N'PR125', N'EM4104', CAST(N'2023-10-25' AS Date))
GO
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM1115', N'Ollie', N'English', 15989.58, N'pass.246', N'admin')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM1334', N'Klarrisa', N'Ivermee', 11195.61, N'pass.246', N'user')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM2259', N'Rafe', N'Barratt', 19960.15, N'pass.246', N'user')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM2438', N'Gabriela', N'Fossick', 12231.18, N'pass.246', N'admin')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM2607', N'Lorne', N'Durban', 12747.1, N'pass.246', N'user')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM2640', N'Abdel', N'Layborn', 15875.49, N'pass.246', N'user')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM2983', N'Ashby', N'Sawdon', 14447.53, N'pass.246', N'user')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM3001', N'Almeda', N'Lethbrig', 12773.27, N'pass.246', N'admin')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM4104', N'Elvis', N'Pomery', 12373.9, N'pass.246', N'user')
INSERT [dbo].[Employee] ([EmployeeNo], [Firstname], [Lastname], [Salary], [Password], [EmployeeType]) VALUES (N'EM7774', N'Tomasine', N'Carne', 20688.46, N'pass.246', N'user')
GO
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'dfgh', N'dfgsdfg', CAST(N'2023-08-28' AS Date), CAST(N'2023-09-27' AS Date), 22, 26400)
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'dfghj', N'sdfgh', CAST(N'2023-09-25' AS Date), CAST(N'2023-10-27' AS Date), 24, 19200)
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'PR123', N'Momentum', CAST(N'2023-08-28' AS Date), CAST(N'2023-11-30' AS Date), 68, 108800)
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'PR125', N'Anglo', CAST(N'2023-08-07' AS Date), CAST(N'2023-10-31' AS Date), 61, 48800)
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'PR200', N'Impala', CAST(N'2023-10-20' AS Date), CAST(N'2023-11-30' AS Date), 29, 18560)
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'PR20000', N'Test Project', CAST(N'2023-11-06' AS Date), CAST(N'2023-11-30' AS Date), 18, 14400)
INSERT [dbo].[Project] ([ProjectCode], [ProjectName], [StartDate], [EndDate], [Duration], [EstimatedCost]) VALUES (N'PR7500', N'Monday', CAST(N'2023-09-11' AS Date), CAST(N'2023-11-28' AS Date), 56, 67200)
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD FOREIGN KEY([EmployeeNo])
REFERENCES [dbo].[Employee] ([EmployeeNo])
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD FOREIGN KEY([ProjectCode])
REFERENCES [dbo].[Project] ([ProjectCode])
GO
ALTER DATABASE [ProjectDB] SET  READ_WRITE 
GO
