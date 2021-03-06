USE master
GO
IF EXISTS(SELECT * FROM SYSDATABASES WHERE NAME='OSMS')
DROP DATABASE OSMS
GO
CREATE DATABASE  [OSMS]
GO
USE [OSMS]
GO
/****** Object:  Table [dbo].[Approver]    Script Date: 2019/8/15 下午 11:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approver](
	[Id] [uniqueidentifier] NOT NULL,
	[JobCode] [varchar](100) NOT NULL,
	[AreaLeve] [int] NOT NULL,
	[Discrible] [nvarchar](100) NULL,
	[Order] [int] NOT NULL,
	[ProcessItemId] [uniqueidentifier] NULL,
	[ExecuteMethod] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entry]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entry](
	[Id] [uniqueidentifier] NOT NULL,
	[StaffName] [nvarchar](500) NOT NULL,
	[Sex] [bit] NOT NULL,
	[BirthDay] [date] NULL,
	[MaritalStatus] [bit] NULL,
	[Height] [decimal](5, 2) NULL,
	[HighestEducation] [int] NULL,
	[Major] [nvarchar](500) NULL,
	[ForeginLanguageAptitude] [nvarchar](500) NULL,
	[IDNumber] [varchar](20) NULL,
	[NativePlace] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Tel] [char](20) NULL,
	[HaseMedicalHistory] [bit] NULL,
	[MedicalHistoryComment] [nvarchar](500) NULL,
	[HobbiesAndSpeciality] [nvarchar](500) NULL,
	[EducationalExperience1StartDate] [date] NULL,
	[EducationalExperience1EndDate] [date] NULL,
	[EducationalExperience1SchoolName] [nvarchar](500) NULL,
	[EducationalExperience1Major] [nvarchar](500) NULL,
	[EducationalExperience1Certificate] [nvarchar](500) NULL,
	[EducationalExperience2StartDate] [date] NULL,
	[EducationalExperience2EndDate] [date] NULL,
	[EducationalExperience2SchoolName] [nvarchar](500) NULL,
	[EducationalExperience2Major] [nvarchar](500) NULL,
	[EducationalExperience2Certificate] [nvarchar](500) NULL,
	[EducationalExperience3StartDate] [date] NULL,
	[EducationalExperience3EndDate] [date] NULL,
	[EducationalExperience3SchoolName] [nvarchar](500) NULL,
	[EducationalExperience3Major] [nvarchar](500) NULL,
	[EducationalExperience3Certificate] [nvarchar](500) NULL,
	[EducationalExperience4StartDate] [date] NULL,
	[EducationalExperience4EndDate] [date] NULL,
	[EducationalExperience4SchoolName] [nvarchar](500) NULL,
	[EducationalExperience4Major] [nvarchar](500) NULL,
	[EducationalExperience4Certificate] [nvarchar](500) NULL,
	[FamilyStatus1Name] [nvarchar](500) NULL,
	[FamilyStatus1Appellation] [nvarchar](500) NULL,
	[FamilyStatus1Company] [nvarchar](500) NULL,
	[FamilyStatus1Tel] [varchar](20) NULL,
	[FamilyStatus2Name] [nvarchar](500) NULL,
	[FamilyStatus2Appellation] [nvarchar](500) NULL,
	[FamilyStatus2Company] [nvarchar](500) NULL,
	[FamilyStatus2Tel] [varchar](20) NULL,
	[EmergencyContactName] [nvarchar](500) NULL,
	[EmergencyContactTel] [varchar](20) NULL,
	[EmergencyContactEelationShipWithMe] [nvarchar](500) NULL,
	[WorkExperience1CompanyName] [nvarchar](500) NULL,
	[WorkExperience1Job] [nvarchar](500) NULL,
	[WorkExperience1StartDate] [date] NULL,
	[WorkExperience1EndDate] [date] NULL,
	[WorkExperience1Pay] [nvarchar](50) NULL,
	[WorkExperience1LeavingReasons] [nvarchar](100) NULL,
	[WorkExperience2CompanyName] [nvarchar](500) NULL,
	[WorkExperience2Job] [nvarchar](500) NULL,
	[WorkExperience2StartDate] [date] NULL,
	[WorkExperience2EndDate] [date] NULL,
	[WorkExperience2Pay] [nvarchar](50) NULL,
	[WorkExperience2LeavingReasons] [nvarchar](100) NULL,
	[WorkExperience3CompanyName] [nvarchar](500) NULL,
	[WorkExperience3Job] [nvarchar](500) NULL,
	[WorkExperience3StartDate] [date] NULL,
	[WorkExperience3EndDate] [date] NULL,
	[WorkExperience3Pay] [nvarchar](50) NULL,
	[WorkExperience3LeavingReasons] [nvarchar](100) NULL,
	[WorkExperience4CompanyName] [nvarchar](500) NULL,
	[WorkExperience4Job] [nvarchar](500) NULL,
	[WorkExperience4StartDate] [date] NULL,
	[WorkExperience4EndDate] [date] NULL,
	[WorkExperience4Pay] [nvarchar](50) NULL,
	[WorkExperience4LeavingReasons] [nvarchar](100) NULL,
	[JobId] [uniqueidentifier] NULL,
	[Title] [nvarchar](50) NULL,
	[Organization_Id] [uniqueidentifier] NULL,
	[SupervisorComments] [nvarchar](500) NULL,
	[ProbationarySalary] [nvarchar](50) NULL,
	[CorrectSalary] [nvarchar](50) NULL,
	[WorkNumber] [nvarchar](50) NULL,
	[EntryDate] [date] NULL,
	[BirthCertificatePhoto] [nvarchar](200) NULL,
	[RegistrationPhoto] [nvarchar](200) NULL,
	[BankCardNumber] [nvarchar](200) NULL,
	[CreateStaffeId] [uniqueidentifier] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[No] [varchar](50) NULL,
	[StaffNo] [nvarchar](100) NULL,
	[IsDel] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[UpdateTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
	[IsDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LeaveOffice]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveOffice](
	[Id] [uniqueidentifier] NOT NULL,
	[No] [nvarchar](100) NULL,
	[StaffName] [nvarchar](100) NULL,
	[JobId] [uniqueidentifier] NOT NULL,
	[LeaveType] [char](1) NULL,
	[ApplyDate] [date] NULL,
	[Reason] [nvarchar](500) NULL,
	[ExplanationHandover] [nvarchar](500) NULL,
	[HandoverSatffId] [uniqueidentifier] NULL,
	[ApplyPersonId] [uniqueidentifier] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[IsDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OilMaterialOrder]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OilMaterialOrder](
	[Id] [uniqueidentifier] NOT NULL,
	[No] [nvarchar](100) NOT NULL,
	[ApplyPersonId] [uniqueidentifier] NOT NULL,
	[ApplyDate] [date] NULL,
	[Remark] [nvarchar](500) NULL,
	[IsDel] [bit] NOT NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OilMaterialOrderDetail]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OilMaterialOrderDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[OilSpec] [nvarchar](100) NULL,
	[Volume] [decimal](18, 2) NULL,
	[Surplus] [decimal](18, 2) NULL,
	[DayAvg] [decimal](18, 2) NULL,
	[NeedAmount] [decimal](18, 2) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[IsDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationStructure]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationStructure](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Leve] [int] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[IsDel] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessItem]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessItem](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](100) NOT NULL,
	[Discrible] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessStepRecord]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessStepRecord](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[RecordRemarks] [nvarchar](500) NULL,
	[StepOrder] [int] NOT NULL,
	[WaitForExecutionStaffId] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[WhetherToExecute] [bit] NOT NULL,
	[No] [nvarchar](50) NOT NULL,
	[RefOrderId] [uniqueidentifier] NOT NULL,
	[Result] [bit] NOT NULL,
	[ExecuteMethod] [nvarchar](4000) NULL,
	[Discrible] [nvarchar](400) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Code] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleResourceModule]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleResourceModule](
	[RoleId] [uniqueidentifier] NOT NULL,
	[ResourceModuleId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [uniqueidentifier] NOT NULL,
	[No] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Sex] [bit] NULL,
	[BirthDay] [date] NULL,
	[NativePlace] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Password] [nvarchar](1000) NULL,
	[Email] [nvarchar](50) NULL,
	[Tel] [nvarchar](20) NULL,
	[Status] [char](1) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[JobId] [uniqueidentifier] NULL,
	[OrgID] [uniqueidentifier] NULL,
	[IsHSEGroup] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffRole]    Script Date: 2019/8/15 下午 11:29:22 ******/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffRole](
	[StaffId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemResourceModule]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemResourceModule](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Code] [nvarchar](500) NOT NULL,
	[Url] [nvarchar](1000) NULL,
	[Type] [int] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'b6f01cad-c811-482c-b638-062aa7de7e28', N'FuelFillingWorker', 3, N'油站员工', 0, N'e9f4b5aa-60ce-4592-9cdd-167d4fa21ee3', N'')
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'eaeb3c9e-ee36-487a-b462-2aac81eca87f', N'FinancialManager', 1, N'大区财务经理', 3, N'7bb5a65c-c31c-4993-9ce2-12d8babfadb3', N'')
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'12f4dd24-1e20-4f3b-8d99-2c8d1fa36a62', N'PersonnelMatters', 2, N'区域人事', 1, N'cad0b1fd-01bc-440b-a626-aae8d7bce7e2', N'FillEntryInfo')
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'097db435-39fc-47bf-b8bc-785d33a89668', N'ExecutiveDirector', 2, N'区域主管', 1, N'7bb5a65c-c31c-4993-9ce2-12d8babfadb3', N'')
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'cf116a3b-23e5-4cc2-a58c-7c8222cde18d', N'FinancialManager', 2, N'区域财务经理', 2, N'7bb5a65c-c31c-4993-9ce2-12d8babfadb3', NULL)
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'ff6ca053-cfbf-4900-a901-a80e0ed9e0ec', N'PersonnelManager', 1, N'大区人事经理', 3, N'cad0b1fd-01bc-440b-a626-aae8d7bce7e2', N'InputStaffInfo')
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'c7d72506-f048-4451-a648-b1b2d594990b', N'PersonnelManager', 2, N'区域人事经理', 2, N'cad0b1fd-01bc-440b-a626-aae8d7bce7e2', NULL)
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'da2445ac-5549-430f-96ff-b5edc5af2407', N'PersonnelMatters', 2, N'区域人事', 2, N'e9f4b5aa-60ce-4592-9cdd-167d4fa21ee3', NULL)
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'21a0ab05-443c-443d-9a0e-bcb9ca363e2d', N'OilStationManager', 3, N'油站经理', 1, N'e9f4b5aa-60ce-4592-9cdd-167d4fa21ee3', NULL)
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'9c10866f-20fe-41b4-b58f-c971b1b7e8ea', N'PersonnelManager', 1, N'大区人事经理', 4, N'e9f4b5aa-60ce-4592-9cdd-167d4fa21ee3', N'UpdateStaffStatus')
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'892e70d4-ecd6-4b72-b421-d0531c9b061e', N'PersonnelManager', 2, N'区域人事经理', 3, N'e9f4b5aa-60ce-4592-9cdd-167d4fa21ee3', NULL)
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'ab27b768-e48d-44fb-b95e-de3512cf0698', N'OilStationManager', 3, N'油站经理', 0, N'cad0b1fd-01bc-440b-a626-aae8d7bce7e2', NULL)
GO
INSERT [dbo].[Approver] ([Id], [JobCode], [AreaLeve], [Discrible], [Order], [ProcessItemId], [ExecuteMethod]) VALUES (N'a873decb-dac5-4ebf-80ab-efde6d41a185', N'OilStationManager', 3, N'油站经理', 0, N'7bb5a65c-c31c-4993-9ce2-12d8babfadb3', NULL)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'9c7e1102-9507-4bab-8a69-0b2db3b0a922', N'hgughj', 1, CAST(N'1990-01-01' AS Date), 1, CAST(111.00 AS Decimal(5, 2)), 0, N'33', N'33', N'333', N'33', N'33', N'333', N'333                 ', 0, N'', N'333', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'333', N'36547c44-50ba-44e2-b926-a50fb119e971', N'', N'5454', N'60000', NULL, CAST(N'2018-05-17' AS Date), NULL, NULL, N'', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-17T12:14:04.943' AS DateTime), CAST(N'2018-05-17T12:14:04.943' AS DateTime), N'RZSQ141705000001', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'83c22139-72b0-4b35-9d34-25c83edd1b4b', N'hhh', 1, CAST(N'1990-01-01' AS Date), 1, CAST(222.00 AS Decimal(5, 2)), 0, N'222', N'222', N'42108319900409531X', N'湖北荆州', N'xx', N'961923680@qq.com', N'15172391030         ', 0, N'', N'', CAST(N'2018-05-16' AS Date), CAST(N'2018-05-09' AS Date), N'45343', N'1321', N'01201', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'253', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'222', N'5b90d68e-0bb3-4592-9b44-bf97c6e42ee9', N'', N'3000', N'5000', NULL, CAST(N'2018-05-21' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_36.jpg', N'../FileContent/下载_47.jpg', N'', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-21T12:23:19.897' AS DateTime), CAST(N'2018-05-21T12:23:19.897' AS DateTime), N'RZSQ180521000001', NULL, 1)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'08c0d38f-95e0-436e-a036-2bbb82c9759b', N'4444', 1, CAST(N'1990-01-01' AS Date), 1, CAST(44.00 AS Decimal(5, 2)), 0, N'44', N'44', N'4', N'4', N'4', N'44', N'44                  ', 0, N'44', N'', CAST(N'2018-04-30' AS Date), CAST(N'2018-05-09' AS Date), N'44', N'444', N'444', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N've', N'frf', N'rg', N'gt', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ffb9236b-6ce8-42b1-9840-2e8b973535c1', N'4', N'00000000-0000-0000-0000-000000000000', N'', N'tgt', N'tgtt', NULL, CAST(N'2018-05-04' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_31.jpg', N'../FileContent/下载_41.jpg', N'tgt', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-04T17:29:42.597' AS DateTime), CAST(N'2018-05-04T17:29:42.597' AS DateTime), N'SBSQ767889898', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'6bcd897c-304b-4394-950c-668bcaa17a88', N'hh', 1, CAST(N'1990-01-01' AS Date), 1, CAST(22.00 AS Decimal(5, 2)), 0, N'eee', N'22', N'4216+4136', N'44', N'444', N'961923@qq.com', N'22                  ', 0, N'', N'87878', CAST(N'2018-05-08' AS Date), CAST(N'2018-05-07' AS Date), N'444', N'', N'', CAST(N'2018-05-22' AS Date), CAST(N'2018-06-05' AS Date), N'44', N'', N'', CAST(N'2018-05-08' AS Date), CAST(N'2018-05-07' AS Date), N'44', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'7b84fd02-567e-4c63-9d03-eae484049269', N'e', N'00000000-0000-0000-0000-000000000000', N'', N'111', N'111', NULL, CAST(N'2018-05-07' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_34.jpg', N'../FileContent/下载_43.jpg', N'25+656', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-07T09:31:29.347' AS DateTime), CAST(N'2018-05-07T09:34:35.457' AS DateTime), N'SBSQ767889898', N'4854564564', 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'9e48886b-b0be-4d42-816e-8bed650af9ad', N'张三', 1, CAST(N'1990-01-01' AS Date), 1, CAST(168.00 AS Decimal(5, 2)), 0, N'计算机专业', N'222', N'22', N'22', N'22', N'961923680@qq.com', N'165416545           ', 0, N'hnoijhpoj', N'iohihio', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'222', N'36547c44-50ba-44e2-b926-a50fb119e971', N'', N'11111', N'11111', NULL, CAST(N'2018-05-14' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_35.jpg', N'../FileContent/下载_46.jpg', N'256596', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-14T17:24:34.673' AS DateTime), CAST(N'2018-05-14T17:24:34.673' AS DateTime), N'RZSQ241434000001', N'5655654656', 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'd92be6e1-cd1c-46ad-a1e7-9a53163b6b7d', N'张三', 1, CAST(N'1990-01-01' AS Date), 1, CAST(111.00 AS Decimal(5, 2)), 0, N'111', N'11', N'42108319900409531X', N'11', N'11', N'961923680@qq.com', N'15926580708         ', 0, N'', N'', CAST(N'2018-05-21' AS Date), CAST(N'2018-05-22' AS Date), N'22', N'22', N'22', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'11', N'079489ae-f194-45c0-9776-a7d53ee2b588', N'', N'2000', N'3000', NULL, CAST(N'2018-05-21' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_37.jpg', N'../FileContent/下载_48.jpg', N'', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-21T14:05:36.810' AS DateTime), CAST(N'2018-05-21T14:05:36.810' AS DateTime), N'RZSQ180521000001', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'd7aa819f-4095-4067-8969-9b4dcda58921', N'798789', 1, CAST(N'1990-01-01' AS Date), 1, CAST(122.00 AS Decimal(5, 2)), 0, N'*/*-/', N'88', N'888', N'888', N'88', N'961923680@qq.com', N'88                  ', 0, N'2', N'22', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'558', N'36547c44-50ba-44e2-b926-a50fb119e971', N'', N'999', N'999', NULL, CAST(N'2018-05-08' AS Date), NULL, NULL, N'', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-08T11:12:21.510' AS DateTime), CAST(N'2018-05-08T15:14:49.997' AS DateTime), N'RZSQ120821000001', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'cf609a38-b5a4-4315-86c1-9ded6e916deb', N'山下七郎', 1, CAST(N'1990-01-01' AS Date), 1, CAST(111.00 AS Decimal(5, 2)), 2, N'xx专业', N'一般', N'42108319900409531X', N'湖北', N'qqq', N'961923680@qq.com', N'15172391030         ', 0, N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'hhh', N'77653fa7-05e2-4330-b7e6-3d925c44dc11', N'', N'2500', N'3500', NULL, CAST(N'2018-05-25' AS Date), NULL, NULL, N'', N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T10:33:52.283' AS DateTime), CAST(N'2018-05-25T10:33:52.283' AS DateTime), N'RZSQ20180525000001', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'1e37bbf7-5e33-433f-a4d7-ac4c11f38ff8', N'山下奉文', 1, CAST(N'1990-01-01' AS Date), 1, CAST(168.00 AS Decimal(5, 2)), 3, N'土木工程', N'13132', N'42108319900409531X', N'21212121', N'12132132', N'chentianyacty@163.com', N'15926580708         ', 0, N'', N'6+65+65', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'4545', N'77653fa7-05e2-4330-b7e6-3d925c44dc11', N'', N'4500', N'6000', NULL, CAST(N'2018-05-24' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_39.jpg', N'../FileContent/下载_50.jpg', N'8796+85968598', N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-24T17:12:52.967' AS DateTime), CAST(N'2018-05-24T17:12:52.967' AS DateTime), N'RZSQ20180524000001', N'797979799', 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'3942b99f-d51b-4ab7-bf5c-b54a2c6d3963', N'www', 1, CAST(N'1990-01-01' AS Date), 1, CAST(111.00 AS Decimal(5, 2)), 0, N'上海', N'222', N'42108319900409531X', N'武汉', N'gijgv', N'961923680@qq.com', N'15172391030         ', 0, N'', N'eeee', CAST(N'2018-05-29' AS Date), CAST(N'2018-05-14' AS Date), N'222', N'222', N'222', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'222', N'22', N'222', N'14517239103', N'222', N'222', N'222', N'15172391030', N'', N'15172391030', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'222', N'5de6db65-a581-44c6-ba51-011b9fd33960', N'', N'111', N'22222', NULL, CAST(N'2018-05-21' AS Date), NULL, NULL, N'', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-21T12:02:19.507' AS DateTime), CAST(N'2018-05-21T12:02:19.507' AS DateTime), N'RZSQ180521000001', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'2be65952-860c-49d5-aaa6-b8a6ef6e3adb', N'张三', 1, CAST(N'1990-01-01' AS Date), 1, CAST(168.00 AS Decimal(5, 2)), 2, N'专业A', N'良好', N'432108319900409531X', N'湖北荆州', N'XX', N'chentianyacty@163.com', N'159656456           ', 0, N'', N'465456478', CAST(N'2018-05-01' AS Date), CAST(N'2018-05-09' AS Date), N'eee', N'eee', N'cd', CAST(N'2018-05-30' AS Date), CAST(N'2018-04-30' AS Date), N'ced', N'de', N'de', CAST(N'2018-05-01' AS Date), CAST(N'2018-05-09' AS Date), N'cd', N'3d', N'3', CAST(N'2018-04-16' AS Date), CAST(N'2018-05-29' AS Date), N'cd', N'de', N'44', N'r4r', N'r4', N'XX武汉CHSX', N'vv', N'r44', N'r4', N'vv', N'vv', N'vv', N'vvv', N'4444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'f8cc2093-a1e1-4a63-a529-40ab96934c9c', N'XX工程师', N'00000000-0000-0000-0000-000000000000', N'444', N'5000', N'6000', NULL, CAST(N'2018-05-14' AS Date), N'../FileContent/6159252dd42a28341a4b23c45eb5c9ea14cebf0b_32.jpg', N'../FileContent/下载_42.jpg', N'654645', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-07T09:20:25.590' AS DateTime), CAST(N'2018-05-14T10:11:03.097' AS DateTime), N'SBSQ767889898', NULL, 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'c5f82ded-c62b-45fa-a36c-f3815475f41e', N'wwww', 1, CAST(N'1990-01-01' AS Date), 1, CAST(168.00 AS Decimal(5, 2)), 4, N'XX专业', N'一般', N'42108319900409531X', N'湖北荆州', N'1524654', N'961923680@qq.com', N'15926580708         ', 0, N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'416545', N'77653fa7-05e2-4330-b7e6-3d925c44dc11', N'', N'3000', N'4000', NULL, CAST(N'2018-05-25' AS Date), NULL, NULL, N'', N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-25T09:23:24.017' AS DateTime), CAST(N'2018-05-25T09:23:24.017' AS DateTime), N'RZSQ20180525000001', N'7907897', 0)
GO
INSERT [dbo].[Entry] ([Id], [StaffName], [Sex], [BirthDay], [MaritalStatus], [Height], [HighestEducation], [Major], [ForeginLanguageAptitude], [IDNumber], [NativePlace], [Address], [Email], [Tel], [HaseMedicalHistory], [MedicalHistoryComment], [HobbiesAndSpeciality], [EducationalExperience1StartDate], [EducationalExperience1EndDate], [EducationalExperience1SchoolName], [EducationalExperience1Major], [EducationalExperience1Certificate], [EducationalExperience2StartDate], [EducationalExperience2EndDate], [EducationalExperience2SchoolName], [EducationalExperience2Major], [EducationalExperience2Certificate], [EducationalExperience3StartDate], [EducationalExperience3EndDate], [EducationalExperience3SchoolName], [EducationalExperience3Major], [EducationalExperience3Certificate], [EducationalExperience4StartDate], [EducationalExperience4EndDate], [EducationalExperience4SchoolName], [EducationalExperience4Major], [EducationalExperience4Certificate], [FamilyStatus1Name], [FamilyStatus1Appellation], [FamilyStatus1Company], [FamilyStatus1Tel], [FamilyStatus2Name], [FamilyStatus2Appellation], [FamilyStatus2Company], [FamilyStatus2Tel], [EmergencyContactName], [EmergencyContactTel], [EmergencyContactEelationShipWithMe], [WorkExperience1CompanyName], [WorkExperience1Job], [WorkExperience1StartDate], [WorkExperience1EndDate], [WorkExperience1Pay], [WorkExperience1LeavingReasons], [WorkExperience2CompanyName], [WorkExperience2Job], [WorkExperience2StartDate], [WorkExperience2EndDate], [WorkExperience2Pay], [WorkExperience2LeavingReasons], [WorkExperience3CompanyName], [WorkExperience3Job], [WorkExperience3StartDate], [WorkExperience3EndDate], [WorkExperience3Pay], [WorkExperience3LeavingReasons], [WorkExperience4CompanyName], [WorkExperience4Job], [WorkExperience4StartDate], [WorkExperience4EndDate], [WorkExperience4Pay], [WorkExperience4LeavingReasons], [JobId], [Title], [Organization_Id], [SupervisorComments], [ProbationarySalary], [CorrectSalary], [WorkNumber], [EntryDate], [BirthCertificatePhoto], [RegistrationPhoto], [BankCardNumber], [CreateStaffeId], [CreateTime], [UpdateTime], [No], [StaffNo], [IsDel]) VALUES (N'bc37da24-3fff-413b-941e-fcd7fc9976fb', N'7tguigouigt', 1, CAST(N'1990-01-01' AS Date), 1, CAST(11.00 AS Decimal(5, 2)), 1, N'111', N'111', N'11', N'11', N'11', N'1', N'11                  ', 0, N'', N'111', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', NULL, NULL, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'111', N'00000000-0000-0000-0000-000000000000', N'', N'2355', N'5000', NULL, CAST(N'2018-05-17' AS Date), NULL, NULL, N'', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-17T12:12:17.930' AS DateTime), CAST(N'2018-05-17T12:12:17.930' AS DateTime), N'RZSQ121717000001', NULL, 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'b8e1686d-b793-4774-8db6-0271888e74ef', N'IT专员', N'ITZHUANYUAN', CAST(N'2018-04-25T16:34:34.633' AS DateTime), CAST(N'2018-04-25T16:34:34.633' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'5e5589a9-70c2-431e-8089-14c03c2b1784', N'经理', N'JINGLI6668787', CAST(N'2018-04-25T16:24:07.983' AS DateTime), CAST(N'2018-04-25T16:24:07.983' AS DateTime), 1)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'ffb9236b-6ce8-42b1-9840-2e8b973535c1', N'副总经理', N'FUZHONG', CAST(N'2018-04-25T16:35:33.100' AS DateTime), CAST(N'2018-04-25T16:35:33.100' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'c10997a8-9fa1-4415-b2d2-37e2b4b9599d', N'财务主管', N'CAIWU55', CAST(N'2018-04-25T16:24:21.850' AS DateTime), CAST(N'2018-04-25T16:24:21.850' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'f8cc2093-a1e1-4a63-a529-40ab96934c9c', N'文员', N'wenyuan', CAST(N'2018-04-25T16:29:52.590' AS DateTime), CAST(N'2018-04-25T16:29:52.590' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'8903b995-cc42-4e27-8192-52e22458e2e1', N'维修员', N'WEIXIUYUAN', CAST(N'2018-04-25T16:32:10.653' AS DateTime), CAST(N'2018-04-25T16:32:10.653' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'da0309b1-685a-4463-abd6-535deccf820f', N'959598', N'959598', CAST(N'2018-04-26T15:12:03.760' AS DateTime), CAST(N'2018-04-26T15:12:03.760' AS DateTime), 1)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'dce69dae-14ce-46ce-b047-58bd30b59b57', N'总经理', N'ZJL', CAST(N'2018-05-24T10:02:49.913' AS DateTime), CAST(N'2018-05-24T10:02:49.913' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'affdd951-4f9c-4f2e-84ea-6a28b7b508f8', N'总监', N'ZHONGJIANG', CAST(N'2018-04-25T16:36:05.907' AS DateTime), CAST(N'2018-04-25T16:36:05.907' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'a7bd81ea-7430-435e-a9c4-6fbde1db6685', N'giuggui', N'eee', CAST(N'2018-05-21T16:36:55.127' AS DateTime), CAST(N'2018-05-21T16:36:55.127' AS DateTime), 1)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'e301d668-0a52-4d42-8e07-78ca934af49d', N'加油员', N'ADDOILPERSONAL55', CAST(N'2018-04-25T16:24:13.750' AS DateTime), CAST(N'2018-04-25T16:24:13.750' AS DateTime), 1)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'人事经理', N'PersonnelManager', CAST(N'2018-05-07T15:49:18.933' AS DateTime), CAST(N'2018-05-07T15:49:18.933' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'e5ca02c3-d267-4fc4-afbd-d4955045f81b', N'人事经理', N'RENSHI', CAST(N'2018-04-25T16:30:53.183' AS DateTime), CAST(N'2018-04-25T16:30:53.183' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'd54aa26a-90f3-48d6-ada8-db3e066c86e2', N'油站经理', N'OilStationManager', CAST(N'2018-05-07T15:42:21.450' AS DateTime), CAST(N'2018-05-07T15:42:21.450' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'b3af0d8a-7f22-408a-b6d1-dfed79faa87d', N'主管', N'ExecutiveDirector', CAST(N'2018-05-18T15:27:15.227' AS DateTime), CAST(N'2018-05-18T15:27:15.227' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'278115bd-60d1-4b21-b0ba-ea0674f47eca', N'财务经理', N'FinancialManager', CAST(N'2018-05-18T15:27:38.927' AS DateTime), CAST(N'2018-05-18T15:27:38.927' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'7b84fd02-567e-4c63-9d03-eae484049269', N'人事', N'PersonnelMatters', CAST(N'2018-05-07T15:46:59.133' AS DateTime), CAST(N'2018-05-07T15:46:59.133' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'油站员工', N'FuelFillingWorker', CAST(N'2018-05-24T13:59:55.473' AS DateTime), CAST(N'2018-05-24T13:59:55.473' AS DateTime), 0)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'51bcefde-fb37-4aec-8ae5-f067519c751c', N'科长', N'ITSorryKill', CAST(N'2018-04-25T16:34:03.487' AS DateTime), CAST(N'2018-04-25T16:34:03.487' AS DateTime), 1)
GO
INSERT [dbo].[Job] ([Id], [Name], [Code], [UpdateTime], [CreateTime], [IsDel]) VALUES (N'e96c5a43-4f7a-4eba-b334-fcad5334b8b7', N'薪酬专员', N'XINGCHOU', CAST(N'2018-04-25T16:34:54.763' AS DateTime), CAST(N'2018-04-25T16:34:54.763' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'eaa53d9c-7280-4db3-9997-157e2047b19a', N'RZSQ20180525000001', N'张三', N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'1', CAST(N'2018-05-25' AS Date), N'222222', N'2222', N'250ceeb7-8d5e-472d-94f2-fd38d3bdfd2a', N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T10:29:23.183' AS DateTime), CAST(N'2018-05-25T10:29:23.183' AS DateTime), 1)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'65b7b490-9849-44ac-b59a-24f224ebb052', N'RZSQ20180521000001', N'张三', N'278115bd-60d1-4b21-b0ba-ea0674f47eca', N'1', CAST(N'2018-05-21' AS Date), N'ww', N'222', N'3732a12c-44dd-4ba7-8334-67f820fd8cd1', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-21T15:38:05.070' AS DateTime), CAST(N'2018-05-21T15:38:05.070' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'5fcca373-424f-436e-9f41-5c593189e3d1', N'RZSQ241803000001', NULL, N'00000000-0000-0000-0000-000000000000', NULL, CAST(N'2018-05-18' AS Date), NULL, NULL, N'00000000-0000-0000-0000-000000000000', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-18T14:24:03.410' AS DateTime), CAST(N'2018-05-18T14:24:03.410' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'593ed9b8-df7c-434a-b3ff-65e36871c87e', N'RZSQ191635000001', N'张三', N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'1', CAST(N'2018-05-16' AS Date), N'测', N'w', N'00000000-0000-0000-0000-000000000000', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-16T17:19:35.447' AS DateTime), CAST(N'2018-05-16T17:19:35.447' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'd4485d48-1900-4aba-aa6f-7470986608fe', N'RZSQ301746000001', N'张三', N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'1', CAST(N'2018-05-17' AS Date), N'3333', N'333', N'8ed28af7-9029-45f9-ab61-f01177a82915', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-17T16:30:46.863' AS DateTime), CAST(N'2018-05-17T16:36:10.183' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'2f040195-125f-4af2-beb9-747fccb1cbb6', N'RZSQ161601000001', N'张三', N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'1', CAST(N'2018-05-16' AS Date), N'xxx', N'工作已经交接', N'1145145b-fa04-479d-9786-9e4a9dede8d6', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-16T17:16:01.573' AS DateTime), CAST(N'2018-05-16T17:16:01.573' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'd9b97909-75d8-448e-8c0c-840275c2aa02', N'RZSQ311758000001', N'张三', N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'1', CAST(N'2018-05-17' AS Date), N'26323', N'56465', N'00000000-0000-0000-0000-000000000000', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-17T16:31:58.253' AS DateTime), CAST(N'2018-05-17T16:37:28.393' AS DateTime), 1)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'fb31d4fe-580d-438f-b5f2-9f10a7809894', N'RZSQ371720000001', N'张三', N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'1', CAST(N'2018-05-17' AS Date), N'652645', N'14241', N'8ed28af7-9029-45f9-ab61-f01177a82915', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-17T16:37:20.617' AS DateTime), CAST(N'2018-05-17T16:37:20.617' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'5c2aa399-5e78-4f05-9d68-aa8b81db0c8b', N'RZSQ471758000001', NULL, N'00000000-0000-0000-0000-000000000000', NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2018-05-17T16:47:58.547' AS DateTime), CAST(N'2018-05-17T16:47:58.547' AS DateTime), 0)
GO
INSERT [dbo].[LeaveOffice] ([Id], [No], [StaffName], [JobId], [LeaveType], [ApplyDate], [Reason], [ExplanationHandover], [HandoverSatffId], [ApplyPersonId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'40089695-8877-4f62-b9f2-ecc42234ab6d', N'RZSQ20180524000001', N'川岛芳子', N'd54aa26a-90f3-48d6-ada8-db3e066c86e2', N'1', CAST(N'2018-05-24' AS Date), N'hihkhoihoikhijhhkjbhkjh', N'eeeee', N'46d97d3b-2b01-4ceb-a817-d7737b1ec4e4', N'b49234df-ec98-4aa4-b1cc-dc59de8d2dfd', CAST(N'2018-05-24T17:26:33.600' AS DateTime), CAST(N'2018-05-24T17:26:33.600' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrder] ([Id], [No], [ApplyPersonId], [ApplyDate], [Remark], [IsDel], [CreateTime], [UpdateTime]) VALUES (N'e51fd599-32ff-4274-bea5-2cb8e87f020d', N'RZSQ180521000001', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-21' AS Date), N'11', 0, CAST(N'2018-05-21T14:09:41.103' AS DateTime), CAST(N'2018-05-21T14:09:41.103' AS DateTime))
GO
INSERT [dbo].[OilMaterialOrder] ([Id], [No], [ApplyPersonId], [ApplyDate], [Remark], [IsDel], [CreateTime], [UpdateTime]) VALUES (N'd0b04fd3-3024-45c4-b1eb-39684abd2af9', N'RZSQ20180524000001', N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-24' AS Date), N'yhihoiujh9', 0, CAST(N'2018-05-24T15:12:45.503' AS DateTime), CAST(N'2018-05-24T15:12:45.503' AS DateTime))
GO
INSERT [dbo].[OilMaterialOrder] ([Id], [No], [ApplyPersonId], [ApplyDate], [Remark], [IsDel], [CreateTime], [UpdateTime]) VALUES (N'2d028c8a-dc06-41e2-abb9-80f464b9bdef', N'RZSQ180521000001', N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-21' AS Date), N'www', 0, CAST(N'2018-05-21T14:19:51.460' AS DateTime), CAST(N'2018-05-21T14:19:51.460' AS DateTime))
GO
INSERT [dbo].[OilMaterialOrder] ([Id], [No], [ApplyPersonId], [ApplyDate], [Remark], [IsDel], [CreateTime], [UpdateTime]) VALUES (N'97cafe3f-437d-48d7-b27f-b391954d98f4', N'RZSQ291834000001', N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-18' AS Date), N'备注1', 0, CAST(N'2018-05-18T16:29:34.730' AS DateTime), CAST(N'2018-05-18T16:29:34.730' AS DateTime))
GO
INSERT [dbo].[OilMaterialOrder] ([Id], [No], [ApplyPersonId], [ApplyDate], [Remark], [IsDel], [CreateTime], [UpdateTime]) VALUES (N'3ee13781-907a-41e9-934b-d14be4c4af58', N'RZSQ20180521000001', N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', CAST(N'2018-05-21' AS Date), N'所得税地方', 1, CAST(N'2018-05-21T17:18:42.317' AS DateTime), CAST(N'2018-05-21T05:18:42.000' AS DateTime))
GO
INSERT [dbo].[OilMaterialOrder] ([Id], [No], [ApplyPersonId], [ApplyDate], [Remark], [IsDel], [CreateTime], [UpdateTime]) VALUES (N'7cf1c0bf-ee7c-4495-af87-f370420db0c0', N'RZSQ20180521000001', N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', CAST(N'2018-05-21' AS Date), N'问问', 1, CAST(N'2018-05-21T17:12:07.510' AS DateTime), CAST(N'2018-05-21T05:12:07.000' AS DateTime))
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'c4fce046-2103-4c47-847e-1d4bd7f5dbb3', N'7cf1c0bf-ee7c-4495-af87-f370420db0c0', N'22', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2018-05-21T17:38:29.980' AS DateTime), CAST(N'2018-05-21T17:38:29.980' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'5653d91f-2bf7-4521-b36d-4db7a359900a', N'97cafe3f-437d-48d7-b27f-b391954d98f4', N'91#汽油', CAST(111.00 AS Decimal(18, 2)), CAST(111.00 AS Decimal(18, 2)), CAST(111.00 AS Decimal(18, 2)), CAST(111.00 AS Decimal(18, 2)), CAST(N'2018-05-18T16:29:34.730' AS DateTime), CAST(N'2018-05-18T16:29:34.730' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'a3b386b1-b7ad-440c-b2c4-6c1cf6f2e5c0', N'2d028c8a-dc06-41e2-abb9-80f464b9bdef', N'www', CAST(22.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), CAST(222.00 AS Decimal(18, 2)), CAST(N'2018-05-21T14:19:51.460' AS DateTime), CAST(N'2018-05-21T14:19:51.460' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'468e5b53-9d33-437f-8a6c-9b431c5d2330', N'3ee13781-907a-41e9-934b-d14be4c4af58', N'等等', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2018-05-21T17:41:04.617' AS DateTime), CAST(N'2018-05-21T17:41:04.617' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'732c2e4d-d472-4820-b85c-befd6e7eda6c', N'e51fd599-32ff-4274-bea5-2cb8e87f020d', N'111', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(N'2018-05-21T14:09:41.143' AS DateTime), CAST(N'2018-05-21T14:09:41.143' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'1a8afc5f-e9bb-4afa-82a3-d68bc4042c03', N'97cafe3f-437d-48d7-b27f-b391954d98f4', N'92#柴油', CAST(222.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), CAST(222.00 AS Decimal(18, 2)), CAST(22.00 AS Decimal(18, 2)), CAST(N'2018-05-18T16:29:34.730' AS DateTime), CAST(N'2018-05-18T16:29:34.730' AS DateTime), 0)
GO
INSERT [dbo].[OilMaterialOrderDetail] ([Id], [OrderId], [OilSpec], [Volume], [Surplus], [DayAvg], [NeedAmount], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'afb2c51d-2839-4520-a7b9-fe9ae244a4b2', N'd0b04fd3-3024-45c4-b1eb-39684abd2af9', N'92#cs汽油', CAST(111.00 AS Decimal(18, 2)), CAST(111.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), CAST(1111.00 AS Decimal(18, 2)), CAST(N'2018-05-24T15:12:45.513' AS DateTime), CAST(N'2018-05-24T15:12:45.513' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'00000000-0000-0000-0000-000000000000', N'BIGAREA_WUHAN_CAIDIAN', N'蔡甸区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-24T11:38:45.640' AS DateTime), CAST(N'2018-04-24T11:38:45.040' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'5de6db65-a581-44c6-ba51-011b9fd33960', N'BIGAREA_WUHAN_XINGZHOU_XXX', N'XX加油站', 3, N'92050207-c1ba-4bcb-a902-d05c7f5719d4', CAST(N'2018-04-23T17:48:01.903' AS DateTime), CAST(N'2018-04-23T17:48:01.903' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'128def98-1e9c-449e-8a89-0def742614a1', N'BIGAREA_WUHAN_HUANGPI_PANLONGCHENG', N'盘龙城加油站', 3, N'e0f0a556-1661-44d6-af82-9b4f34e7b35f', CAST(N'2018-04-24T11:53:55.660' AS DateTime), CAST(N'2018-04-24T11:53:55.240' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'175ac01a-b192-4385-8764-0f61244700c8', N'BIGAREA_WUHAN_JIANXIA_CHANGLONGDAOOILSTSTION', N'藏龙岛加油站', 3, N'e07c76b3-2378-4312-b9e9-3f536b340b50', CAST(N'2018-04-23T16:45:23.273' AS DateTime), CAST(N'2018-04-23T16:45:23.273' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'9ebf37ec-21bf-4b46-806d-210dc76dc14e', N'BIGAREA_WUHAN_JIANGAN', N'江岸区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-24T11:41:55.220' AS DateTime), CAST(N'2018-04-24T11:41:54.733' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'c294c741-43f7-4675-a74a-22ce3b51fcf9', N'46545', N'523232', 3, N'92050207-c1ba-4bcb-a902-d05c7f5719d4', CAST(N'2018-04-23T17:48:52.170' AS DateTime), CAST(N'2018-04-23T17:48:52.170' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'41da3667-7a5a-4385-8fb8-35dea136794c', N'BIGAREA_WUHAN_HONGSHANG_OIL', N'XX加油站', 3, N'cd46de39-3a39-4c27-aa7c-a43514ad6071', CAST(N'2018-04-24T13:15:35.670' AS DateTime), CAST(N'2018-04-24T13:15:35.670' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'77653fa7-05e2-4330-b7e6-3d925c44dc11', N'JIANGLINGBAIMA', N'江陵白马加油站', 3, N'f0dbce7c-23ed-46cc-a162-b733d4013a48', CAST(N'2018-05-24T14:09:40.240' AS DateTime), CAST(N'2018-05-24T14:09:40.240' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'e07c76b3-2378-4312-b9e9-3f536b340b50', N'BIGAREA_WUHAN_JIANXIA', N'江夏区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-23T15:43:07.397' AS DateTime), CAST(N'2018-04-23T15:43:07.397' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'7cc0b7e5-6356-4e93-895d-4795276b7961', N'5442654165', N'465465', 3, N'1406c6a4-6477-481b-831e-48a9b235b810', CAST(N'2018-04-23T17:50:10.967' AS DateTime), CAST(N'2018-04-23T17:50:10.967' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'1406c6a4-6477-481b-831e-48a9b235b810', N'BIGAREA_WUHAN_QINGSHANG', N'青山去', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-23T16:36:46.237' AS DateTime), CAST(N'2018-04-23T16:36:46.237' AS DateTime), 1)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'96cf758f-ebc4-4676-85ce-4af96396fca0', N'BIGAREA_WUHAN_HUANGPI_JAIYIUZZ', N'SXJJ加油站', 3, N'e0f0a556-1661-44d6-af82-9b4f34e7b35f', CAST(N'2018-04-24T12:04:59.710' AS DateTime), CAST(N'2018-04-24T12:04:59.290' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'652bca71-2d68-495a-b1aa-5cf96bdcba8d', N'BIGAREA_WUHAN_HONGSHANG_TT', N'tt油站', 3, N'cd46de39-3a39-4c27-aa7c-a43514ad6071', CAST(N'2018-04-24T13:19:45.137' AS DateTime), CAST(N'2018-04-24T13:19:45.137' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'b6d84cd1-3fcf-420a-974d-6067d61428d8', N'JINGZHOUARWEA', N'荆州大区', 1, N'079489ae-f194-45c0-9776-a7d53ee2b588', CAST(N'2018-05-24T14:02:09.333' AS DateTime), CAST(N'2018-05-24T14:02:09.333' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'b05a133e-a5db-431f-bb24-6841270048c6', N'JIANGLINGSHAGANG', N'江陵县沙岗加油站', 3, N'f0dbce7c-23ed-46cc-a162-b733d4013a48', CAST(N'2018-05-24T14:08:27.520' AS DateTime), CAST(N'2018-05-24T14:08:27.520' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'42ee976b-5d11-4821-a7bb-7465052ba252', N'BIGAREA_WUHAN_HONGSHANG_GUANGSHYANGOIL', N'关山加油站', 3, N'cd46de39-3a39-4c27-aa7c-a43514ad6071', CAST(N'2018-04-23T16:57:39.277' AS DateTime), CAST(N'2018-04-23T16:57:39.277' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'9e28dbf3-da7c-40e6-9772-75d95663d689', N'BIGAREA_WUHAN_JIANGAHNG', N'江汉区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-24T11:45:18.650' AS DateTime), CAST(N'2018-04-24T11:45:18.263' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'5c3917eb-2728-4429-9489-8376b613f696', N'85959859', N'656594', 3, N'92050207-c1ba-4bcb-a902-d05c7f5719d4', CAST(N'2018-04-23T17:43:12.643' AS DateTime), CAST(N'2018-04-23T17:43:12.037' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'09ad3795-023b-4082-8223-852fcbab3c77', N'BIGAREA_WUHAN_JIANGAHNG_JAINGOSL', N'江汉区XX加油站', 3, N'9e28dbf3-da7c-40e6-9772-75d95663d689', CAST(N'2018-04-24T12:12:33.843' AS DateTime), CAST(N'2018-04-24T12:12:33.843' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'e0f0a556-1661-44d6-af82-9b4f34e7b35f', N'BIGAREA_WUHAN_HUANGPI', N'黄陂区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-24T11:48:25.440' AS DateTime), CAST(N'2018-04-24T11:48:25.440' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'cd46de39-3a39-4c27-aa7c-a43514ad6071', N'BIGAREA_WUHAN_HONGSHANG', N'洪山区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-23T16:04:19.587' AS DateTime), CAST(N'2018-04-23T16:04:19.587' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'36547c44-50ba-44e2-b926-a50fb119e971', N'BIGAREA_WUHAN_XINGZHOU_OILStat', N'新洲区XXX加油站', 3, N'92050207-c1ba-4bcb-a902-d05c7f5719d4', CAST(N'2018-04-23T17:41:17.867' AS DateTime), CAST(N'2018-04-23T17:41:17.867' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'079489ae-f194-45c0-9776-a7d53ee2b588', N'HeadQuarters', N'湖北总公司', 0, NULL, CAST(N'2018-05-24T14:01:01.600' AS DateTime), CAST(N'2018-05-24T14:01:01.600' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'c0e76adb-0319-4050-8df0-ac69bbd56d95', N'BIGAREA_WUHAN_JIANXIA_MIAOSHANGOILSTATION', N'庙山加油站', 3, N'e07c76b3-2378-4312-b9e9-3f536b340b50', CAST(N'2018-04-23T16:51:36.167' AS DateTime), CAST(N'2018-04-23T16:51:36.167' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'7069126c-c1c2-4158-9c98-b0bbdcd2560a', N'48546+54', N'15646545', 3, N'1406c6a4-6477-481b-831e-48a9b235b810', CAST(N'2018-04-23T17:51:46.243' AS DateTime), CAST(N'2018-04-23T17:51:46.243' AS DateTime), 1)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'1b2ff105-0698-4638-9e1c-b4f75936fde1', N'BIGAREA_WUHAN', N'武汉大区', 1, N'079489ae-f194-45c0-9776-a7d53ee2b588', CAST(N'2018-05-24T14:01:17.180' AS DateTime), CAST(N'2018-05-24T14:01:17.180' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'f0dbce7c-23ed-46cc-a162-b733d4013a48', N'JIANGLINGQU', N'江陵县', 2, N'b6d84cd1-3fcf-420a-974d-6067d61428d8', CAST(N'2018-05-24T14:03:33.837' AS DateTime), CAST(N'2018-05-24T14:03:33.837' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'33370063-4085-4eca-866c-beb7e098ecd8', N'BIGAREA_WUHAN_DONGHUGAOXING', N'东湖高新技术开发区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-24T09:04:57.020' AS DateTime), CAST(N'2018-04-24T09:04:57.020' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'5b90d68e-0bb3-4592-9b44-bf97c6e42ee9', N'BIGAREA_WUHAN_XINGZHOU_XZ', N'新洲区XX加油站', 3, N'92050207-c1ba-4bcb-a902-d05c7f5719d4', CAST(N'2018-04-23T17:36:08.967' AS DateTime), CAST(N'2018-04-23T17:36:08.967' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'1520644e-6ac0-4c56-85de-c91fa05e2a37', N'jjjXXX', N'DSUh9ih加油站', 3, N'00000000-0000-0000-0000-000000000000', CAST(N'2018-04-24T12:08:05.600' AS DateTime), CAST(N'2018-04-24T12:08:05.357' AS DateTime), 1)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'92050207-c1ba-4bcb-a902-d05c7f5719d4', N'BIGAREA_WUHAN_XINGZHOU', N'新洲区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-23T16:41:29.433' AS DateTime), CAST(N'2018-04-23T16:41:29.433' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'c3db703c-6313-4236-ac78-d14d34dca8a5', N'BIGAREA_WUHAN_HANGNAN', N'汉南区', 2, N'1b2ff105-0698-4638-9e1c-b4f75936fde1', CAST(N'2018-04-23T16:39:18.570' AS DateTime), CAST(N'2018-04-23T16:39:18.570' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'f7b679b9-195c-4059-aeeb-d46b6b4377fb', N'BIGAREA_WUHAN_HONGSHANG_MINNGZHUOIL', N'民族大道加油站', 3, N'cd46de39-3a39-4c27-aa7c-a43514ad6071', CAST(N'2018-04-23T17:29:55.683' AS DateTime), CAST(N'2018-04-23T17:29:55.683' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationStructure] ([Id], [Code], [Name], [Leve], [ParentId], [CreateTime], [UpdateTime], [IsDel]) VALUES (N'51f12fd2-8f00-4086-af3f-d86d69374a64', N'BIGAREA_WUHAN_HUANGPI_XXLL', N'XLLX加油站', 3, N'e0f0a556-1661-44d6-af82-9b4f34e7b35f', CAST(N'2018-04-24T11:57:21.253' AS DateTime), CAST(N'2018-04-24T11:57:20.953' AS DateTime), 0)
GO
INSERT [dbo].[ProcessItem] ([Id], [Code], [Discrible]) VALUES (N'7bb5a65c-c31c-4993-9ce2-12d8babfadb3', N'OilMaterialOrder', N'油料申请审批流程')
GO
INSERT [dbo].[ProcessItem] ([Id], [Code], [Discrible]) VALUES (N'e9f4b5aa-60ce-4592-9cdd-167d4fa21ee3', N'LeaveOffice', N'离职申请审批流程')
GO
INSERT [dbo].[ProcessItem] ([Id], [Code], [Discrible]) VALUES (N'cad0b1fd-01bc-440b-a626-aae8d7bce7e2', N'Entry', N'入职申请审批流程')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'7cebffb2-1052-45c5-b132-6c36ca7bc476', N'Entry', N'', 0, N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-24T05:13:45.000' AS DateTime), CAST(N'2018-05-24T05:13:45.000' AS DateTime), 1, N'RZSQ20180524000001', N'1e37bbf7-5e33-433f-a4d7-ac4c11f38ff8', 1, N'', N'[江陵白马加油站]油站经理 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'43399689-6dd5-4783-990e-92c4648a6314', N'Entry                                             ', N'huih', 1, N'3a0fed20-128d-49a7-ac44-7718b7489fd8', CAST(N'2018-05-24T05:13:45.000' AS DateTime), CAST(N'2018-05-24T17:15:17.240' AS DateTime), 1, N'RZSQ20180524000001', N'1e37bbf7-5e33-433f-a4d7-ac4c11f38ff8', 1, N'FillEntryInfo', N'[江陵县]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'301cc16c-2bf1-47ee-92f5-3ec3411fa6b8', N'Entry                                             ', N'5563565658', 2, N'bc6c6077-283f-413b-878f-2d64c0145c81', CAST(N'2018-05-24T05:13:45.000' AS DateTime), CAST(N'2018-05-24T17:16:02.333' AS DateTime), 1, N'RZSQ20180524000001', N'1e37bbf7-5e33-433f-a4d7-ac4c11f38ff8', 1, N'', N'[江陵县]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'4fe73add-f1dc-44ec-8921-d03686749452', N'Entry                                             ', N'546568565', 3, N'5760b5ba-7e89-4bd2-bc57-d8af22260feb', CAST(N'2018-05-24T05:13:45.000' AS DateTime), CAST(N'2018-05-24T17:17:08.633' AS DateTime), 1, N'RZSQ20180524000001', N'1e37bbf7-5e33-433f-a4d7-ac4c11f38ff8', 1, N'InputStaffInfo', N'[荆州大区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'5e0cca44-0bce-4461-a67c-6a389c134c23', N'LeaveOffice', N'', 0, N'46d97d3b-2b01-4ceb-a817-d7737b1ec4e4', CAST(N'2018-05-24T05:26:36.000' AS DateTime), CAST(N'2018-05-24T05:26:36.000' AS DateTime), 1, N'RZSQ20180524000001', N'40089695-8877-4f62-b9f2-ecc42234ab6d', 1, N'', N'[江陵白马加油站]油站员工 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'0e0ac8bb-0f89-46b9-af33-fe7e182b6783', N'LeaveOffice                                       ', N'ihoihioh
', 1, N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-24T05:26:36.000' AS DateTime), CAST(N'2018-05-24T17:27:23.447' AS DateTime), 1, N'RZSQ20180524000001', N'40089695-8877-4f62-b9f2-ecc42234ab6d', 1, N'', N'[江陵白马加油站]油站经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'2c214ea0-9ce2-4564-aa08-e38d1725fc84', N'LeaveOffice                                       ', N'wwww', 2, N'3a0fed20-128d-49a7-ac44-7718b7489fd8', CAST(N'2018-05-24T05:26:36.000' AS DateTime), CAST(N'2018-05-24T17:28:40.463' AS DateTime), 1, N'RZSQ20180524000001', N'40089695-8877-4f62-b9f2-ecc42234ab6d', 1, N'', N'[江陵县]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'7cabe71f-8cf5-4c7e-96ff-bcd880305ecb', N'LeaveOffice                                       ', N'2wdefder3f34r', 3, N'bc6c6077-283f-413b-878f-2d64c0145c81', CAST(N'2018-05-24T05:26:36.000' AS DateTime), CAST(N'2018-05-24T17:29:51.967' AS DateTime), 1, N'RZSQ20180524000001', N'40089695-8877-4f62-b9f2-ecc42234ab6d', 1, N'', N'[江陵县]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'b21e1e9a-8da2-443d-b7af-9082ade30ec0', N'LeaveOffice                                       ', N'efgrtfg34err', 4, N'5760b5ba-7e89-4bd2-bc57-d8af22260feb', CAST(N'2018-05-24T05:26:36.000' AS DateTime), CAST(N'2018-05-24T17:31:16.797' AS DateTime), 1, N'RZSQ20180524000001', N'40089695-8877-4f62-b9f2-ecc42234ab6d', 1, N'UpdateStaffStatus', N'[荆州大区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'4de72cfe-79c9-4f5e-868a-e099a0edb85f', N'OilMaterialOrder                                  ', N'', 0, N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-24T03:48:55.000' AS DateTime), CAST(N'2018-05-24T16:15:50.720' AS DateTime), 1, N'RZSQ20180524000001', N'd0b04fd3-3024-45c4-b1eb-39684abd2af9', 1, N'', N'[江陵白马加油站]油站经理 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'2469adb9-f955-4d92-beb5-f3cdf27d2c0a', N'OilMaterialOrder                                  ', N'寝室', 1, N'127ea3c0-0af8-4492-be26-6957fb0ef8e2', CAST(N'2018-05-24T03:48:55.000' AS DateTime), CAST(N'2018-05-24T16:23:56.360' AS DateTime), 1, N'RZSQ20180524000001', N'd0b04fd3-3024-45c4-b1eb-39684abd2af9', 1, N'', N'[江陵县]主管 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'24cf2ec1-aafe-4afa-9da5-369dfb65afff', N'OilMaterialOrder                                  ', N'www', 2, N'c28d4820-0291-4e38-8c6a-4eecbb1c610f', CAST(N'2018-05-24T03:48:55.000' AS DateTime), CAST(N'2018-05-24T16:24:27.127' AS DateTime), 1, N'RZSQ20180524000001', N'd0b04fd3-3024-45c4-b1eb-39684abd2af9', 1, N'', N'[江陵县]财务经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'72f34494-16f8-4a75-89e4-fca2370dd6bd', N'OilMaterialOrder                                  ', N'sssss', 3, N'128a1e36-1316-4c21-9016-7417dbf3ebd3', CAST(N'2018-05-24T03:48:55.000' AS DateTime), CAST(N'2018-05-24T16:27:10.200' AS DateTime), 1, N'RZSQ20180524000001', N'd0b04fd3-3024-45c4-b1eb-39684abd2af9', 1, N'', N'[荆州大区]财务经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'c2446e8e-b3f9-4311-922f-4cc424179978', N'Entry', N'', 0, N'761aa2db-7549-48f5-a1c1-46fb21fc936f', CAST(N'2018-05-25T09:23:31.000' AS DateTime), CAST(N'2018-05-25T09:23:31.000' AS DateTime), 1, N'RZSQ20180525000001', N'c5f82ded-c62b-45fa-a36c-f3815475f41e', 1, N'', N'[江陵白马加油站]油站经理 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'6e765499-2703-46e2-bce7-69c7ba9192f9', N'Entry                                             ', N'hihioh', 1, N'3a0fed20-128d-49a7-ac44-7718b7489fd8', CAST(N'2018-05-25T09:23:31.000' AS DateTime), CAST(N'2018-05-25T09:59:33.137' AS DateTime), 1, N'RZSQ20180525000001', N'c5f82ded-c62b-45fa-a36c-f3815475f41e', 0, N'FillEntryInfo', N'[江陵县]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'3ab24eae-0681-458b-a6af-1f1385b43ed7', N'Entry                                             ', N'hoihyoihoihoiyh0', 2, N'bc6c6077-283f-413b-878f-2d64c0145c81', CAST(N'2018-05-25T09:23:31.000' AS DateTime), CAST(N'2018-05-25T09:23:31.000' AS DateTime), 0, N'RZSQ20180525000001', N'c5f82ded-c62b-45fa-a36c-f3815475f41e', 0, N'', N'[江陵县]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'0ebd148d-15c9-407c-85e8-62473ee82fe1', N'Entry', N'', 3, N'5760b5ba-7e89-4bd2-bc57-d8af22260feb', CAST(N'2018-05-25T09:23:31.000' AS DateTime), CAST(N'2018-05-25T09:23:31.000' AS DateTime), 0, N'RZSQ20180525000001', N'c5f82ded-c62b-45fa-a36c-f3815475f41e', 0, N'InputStaffInfo', N'[荆州大区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'fb97085e-2a8b-45f8-b589-14114dbd30c1', N'Entry', N'', 0, N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T10:34:24.000' AS DateTime), CAST(N'2018-05-25T10:34:24.000' AS DateTime), 1, N'RZSQ20180525000001', N'cf609a38-b5a4-4315-86c1-9ded6e916deb', 1, N'', N'[新洲区XXX加油站]油站经理 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'be426c3c-12b9-4b7b-8b53-34e7dc386e73', N'Entry', N'', 1, N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', CAST(N'2018-05-25T10:34:24.000' AS DateTime), CAST(N'2018-05-25T10:34:24.000' AS DateTime), 0, N'RZSQ20180525000001', N'cf609a38-b5a4-4315-86c1-9ded6e916deb', 0, N'FillEntryInfo', N'[新洲区]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'f9b45653-64bd-4efc-8776-1257f4d17869', N'Entry', N'', 2, N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', CAST(N'2018-05-25T10:34:24.000' AS DateTime), CAST(N'2018-05-25T10:34:24.000' AS DateTime), 0, N'RZSQ20180525000001', N'cf609a38-b5a4-4315-86c1-9ded6e916deb', 0, N'', N'[新洲区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'f732ddc3-2fbb-4ddf-9d8c-c54f9c3252f3', N'Entry', N'', 3, N'1145145b-fa04-479d-9786-9e4a9dede8d6', CAST(N'2018-05-25T10:34:24.000' AS DateTime), CAST(N'2018-05-25T10:34:24.000' AS DateTime), 0, N'RZSQ20180525000001', N'cf609a38-b5a4-4315-86c1-9ded6e916deb', 0, N'InputStaffInfo', N'[武汉大区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'b2d98710-9c3c-4414-96a9-9aa1121a20bf', N'OilMaterialOrder', N'', 0, N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T10:40:52.000' AS DateTime), CAST(N'2018-05-25T10:40:52.000' AS DateTime), 1, N'RZSQ291834000001', N'97cafe3f-437d-48d7-b27f-b391954d98f4', 1, N'', N'[新洲区XXX加油站]油站经理 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'118c1162-138a-4d3f-8743-26e4026ade81', N'OilMaterialOrder', N'', 1, N'424bf0ee-8e46-4be7-b464-3047663375f0', CAST(N'2018-05-25T10:40:52.000' AS DateTime), CAST(N'2018-05-25T10:40:52.000' AS DateTime), 0, N'RZSQ291834000001', N'97cafe3f-437d-48d7-b27f-b391954d98f4', 0, N'', N'[新洲区]主管 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'31ec0d89-84fd-462f-bea8-19e8c1ae6676', N'OilMaterialOrder', N'', 2, N'251fb089-c3d2-468a-924e-c2e47e966e3e', CAST(N'2018-05-25T10:40:52.000' AS DateTime), CAST(N'2018-05-25T10:40:52.000' AS DateTime), 0, N'RZSQ291834000001', N'97cafe3f-437d-48d7-b27f-b391954d98f4', 0, N'', N'[新洲区]财务经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'20aabf63-b219-4c10-a7e2-527e141a1874', N'OilMaterialOrder', N'', 3, N'3732a12c-44dd-4ba7-8334-67f820fd8cd1', CAST(N'2018-05-25T10:40:52.000' AS DateTime), CAST(N'2018-05-25T10:40:52.000' AS DateTime), 0, N'RZSQ291834000001', N'97cafe3f-437d-48d7-b27f-b391954d98f4', 0, N'', N'[武汉大区]财务经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'1f8f0e73-4470-400f-96bd-8b120a8cd24a', N'LeaveOffice', N'', 0, N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-25T02:35:04.000' AS DateTime), CAST(N'2018-05-25T02:35:04.000' AS DateTime), 1, N'RZSQ20180521000001', N'65b7b490-9849-44ac-b59a-24f224ebb052', 1, N'', N'[新洲区XXX加油站]油站员工 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'7ee06414-670c-496d-9c8e-1231395426ff', N'LeaveOffice', N'', 1, N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T02:35:04.000' AS DateTime), CAST(N'2018-05-25T02:35:04.000' AS DateTime), 0, N'RZSQ20180521000001', N'65b7b490-9849-44ac-b59a-24f224ebb052', 0, N'', N'[新洲区XXX加油站]油站经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'a2831a35-ad97-46be-a8e6-ab2e8a74da03', N'LeaveOffice', N'', 2, N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', CAST(N'2018-05-25T02:35:04.000' AS DateTime), CAST(N'2018-05-25T02:35:04.000' AS DateTime), 0, N'RZSQ20180521000001', N'65b7b490-9849-44ac-b59a-24f224ebb052', 0, N'', N'[新洲区]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'6f53c0a2-94c0-42d5-8349-6e08ccc4d1f7', N'LeaveOffice', N'', 3, N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', CAST(N'2018-05-25T02:35:04.000' AS DateTime), CAST(N'2018-05-25T02:35:04.000' AS DateTime), 0, N'RZSQ20180521000001', N'65b7b490-9849-44ac-b59a-24f224ebb052', 0, N'', N'[新洲区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'3f8f04f0-c070-4af9-860a-7c1d955f8886', N'LeaveOffice', N'', 4, N'1145145b-fa04-479d-9786-9e4a9dede8d6', CAST(N'2018-05-25T02:35:04.000' AS DateTime), CAST(N'2018-05-25T02:35:04.000' AS DateTime), 0, N'RZSQ20180521000001', N'65b7b490-9849-44ac-b59a-24f224ebb052', 0, N'UpdateStaffStatus', N'[武汉大区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'5d399550-7584-4c53-82f7-8de804b9e44b', N'LeaveOffice', N'', 0, N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-25T02:35:14.000' AS DateTime), CAST(N'2018-05-25T02:35:14.000' AS DateTime), 1, N'RZSQ191635000001', N'593ed9b8-df7c-434a-b3ff-65e36871c87e', 1, N'', N'[新洲区XXX加油站]油站员工 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'0b12459a-0781-4b56-b7ed-32e286114a7b', N'LeaveOffice', N'', 1, N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T02:35:14.000' AS DateTime), CAST(N'2018-05-25T02:35:14.000' AS DateTime), 0, N'RZSQ191635000001', N'593ed9b8-df7c-434a-b3ff-65e36871c87e', 0, N'', N'[新洲区XXX加油站]油站经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'70c6b51c-4f38-4907-b498-9e267d3d8a68', N'LeaveOffice', N'', 2, N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', CAST(N'2018-05-25T02:35:14.000' AS DateTime), CAST(N'2018-05-25T02:35:14.000' AS DateTime), 0, N'RZSQ191635000001', N'593ed9b8-df7c-434a-b3ff-65e36871c87e', 0, N'', N'[新洲区]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'85c3ea79-56a7-48c8-ac1d-86030bd23c1c', N'LeaveOffice', N'', 3, N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', CAST(N'2018-05-25T02:35:14.000' AS DateTime), CAST(N'2018-05-25T02:35:14.000' AS DateTime), 0, N'RZSQ191635000001', N'593ed9b8-df7c-434a-b3ff-65e36871c87e', 0, N'', N'[新洲区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'77fb4413-5062-4835-ad17-f957d98bbd2a', N'LeaveOffice', N'', 4, N'1145145b-fa04-479d-9786-9e4a9dede8d6', CAST(N'2018-05-25T02:35:14.000' AS DateTime), CAST(N'2018-05-25T02:35:14.000' AS DateTime), 0, N'RZSQ191635000001', N'593ed9b8-df7c-434a-b3ff-65e36871c87e', 0, N'UpdateStaffStatus', N'[武汉大区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'554eb639-c21b-410c-a0f9-b2ad90b20194', N'LeaveOffice', N'', 0, N'8ed28af7-9029-45f9-ab61-f01177a82915', CAST(N'2018-05-25T05:26:18.000' AS DateTime), CAST(N'2018-05-25T05:26:18.000' AS DateTime), 1, N'RZSQ371720000001', N'fb31d4fe-580d-438f-b5f2-9f10a7809894', 1, N'', N'[新洲区XXX加油站]油站员工 已发起')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'0034a2af-0f1c-47b1-91af-0d1426c5d703', N'LeaveOffice', N'', 1, N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', CAST(N'2018-05-25T05:26:18.000' AS DateTime), CAST(N'2018-05-25T05:26:18.000' AS DateTime), 0, N'RZSQ371720000001', N'fb31d4fe-580d-438f-b5f2-9f10a7809894', 0, N'', N'[新洲区XXX加油站]油站经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'b1107701-0476-4dee-b845-72330ba66baa', N'LeaveOffice', N'', 2, N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', CAST(N'2018-05-25T05:26:18.000' AS DateTime), CAST(N'2018-05-25T05:26:18.000' AS DateTime), 0, N'RZSQ371720000001', N'fb31d4fe-580d-438f-b5f2-9f10a7809894', 0, N'', N'[新洲区]人事 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'0ccd38f9-a6af-4761-83aa-5703d68e33c2', N'LeaveOffice', N'', 3, N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', CAST(N'2018-05-25T05:26:18.000' AS DateTime), CAST(N'2018-05-25T05:26:18.000' AS DateTime), 0, N'RZSQ371720000001', N'fb31d4fe-580d-438f-b5f2-9f10a7809894', 0, N'', N'[新洲区]人事经理 已审批通过')
GO
INSERT [dbo].[ProcessStepRecord] ([Id], [Type], [RecordRemarks], [StepOrder], [WaitForExecutionStaffId], [CreateTime], [UpdateTime], [WhetherToExecute], [No], [RefOrderId], [Result], [ExecuteMethod], [Discrible]) VALUES (N'bd849d3f-ab94-4b9c-b00a-f72f0650df89', N'LeaveOffice', N'', 4, N'1145145b-fa04-479d-9786-9e4a9dede8d6', CAST(N'2018-05-25T05:26:18.000' AS DateTime), CAST(N'2018-05-25T05:26:18.000' AS DateTime), 0, N'RZSQ371720000001', N'fb31d4fe-580d-438f-b5f2-9f10a7809894', 0, N'UpdateStaffStatus', N'[武汉大区]人事经理 已审批通过')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'基础信息维护员', N'hhh')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'油站员工', N'412125')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'油站经理', N'222')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'日常管理员', N'DayManager')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'c225be6c-028b-4aac-905b-715fda0de018', N'所有查看功能', N'ALLQueryList')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'系统维护员', N'sysSetting')
GO
INSERT [dbo].[Role] ([Id], [Name], [Code]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'超级用户', N'sysytemManager')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'0d800549-97a7-41db-8454-6d4a063a4279')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'14020206-7764-4acf-95a9-080e403a62b9')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'87eb048f-9efe-4662-833f-bd857eaaf8cb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'c96a0b92-6a21-4845-b8f8-af1460a4dbba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'019f4a10-273d-4222-b6d6-601774ce29e0')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'1059c0a7-cc13-42fe-88f3-66b406dd4bd6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'45e6f5be-e4b6-41d0-9dec-e49219b5792c')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'00895db2-9beb-4f96-a33e-3d3eb3ba6dc6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'32d3d086-87b4-43f2-864b-ddd4cafefb21')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'0b44dd90-ca34-4e3b-b455-576577e01adb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'35a27103-f9ce-4d66-b1ea-19f06af2c3a2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'8ad9d3bf-d635-45ca-b773-d3e41e8e953f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'4c339266-cf96-4def-b69c-fca2a5b882f3')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'929c7c15-88cd-45d0-be9f-7bf44d6dcac8')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'bd1f5309-b309-435b-b952-6e2573ae9c55')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'ac78be51-45b0-45e6-ba00-aa513cd0289f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'26836d44-e62d-43e1-a2bf-3b933b58fedb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'9e60003f-6825-4f83-b9e5-280acf6f1979')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'af49089c-9a1c-43dd-8321-fae30a2120da')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'32d3d086-87b4-43f2-864b-ddd4cafefb21')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'90c579d7-1a63-4def-91bf-68175a9ac2cc', N'87eb048f-9efe-4662-833f-bd857eaaf8cb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'90c579d7-1a63-4def-91bf-68175a9ac2cc', N'c96a0b92-6a21-4845-b8f8-af1460a4dbba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'0495add9-549d-4e7a-a65a-aab4d98fb6ba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'0b99e008-4422-4504-90c5-0a30fac6b6ee')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'130a34f7-05e8-493a-b7bb-b58aab908404')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'23d45dec-4237-4e51-94a6-0477465d393a')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'be85538f-5e25-4538-bac8-8fff51d546c8')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'659a8bad-9138-4c23-85c4-4604d07a3cf5')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'e251258f-60c5-4c61-afd6-b417bd04a188')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'23b59b23-326f-4c1f-a9c8-d39fda405c5f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'dc1c19b9-4bf1-4336-b06b-5fd8421818c2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'e81eab97-f5eb-461e-940f-845c3bba98c0')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'f1ec9080-ecb3-4baa-a236-984fff78eb91')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'f8f4785f-6beb-4808-b49d-4f57b94c12ca')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'87eb048f-9efe-4662-833f-bd857eaaf8cb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'0fb1325c-b8b2-45ca-a583-c713a3905f52')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'140ce1e1-1a38-4861-8c83-75753295071f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'96ce8fc8-4bd3-45bc-8f20-e02a2a44ddc1')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'dba6724d-c717-43f1-8a47-5b0ba20170cc')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'f7f70497-ab15-4470-a544-37fecfe421a1')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'f9fe2f42-6dfe-40fd-adab-1eed20c61fba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'24d3f761-946a-48a8-876c-00cdac9453a8')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'343dd78d-270b-49a7-8ad5-146e8e1c53c4')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'4ebe3b0b-deca-4f61-91c7-3520aa82e289')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'6f36884f-a65e-4a8a-ac66-568434072a7d')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'cf05b91a-b683-4efc-a6ce-8d49a4f410f2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'dcc80e75-8424-449a-8ef6-53817dc833fa')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'c96a0b92-6a21-4845-b8f8-af1460a4dbba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'019f4a10-273d-4222-b6d6-601774ce29e0')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'1059c0a7-cc13-42fe-88f3-66b406dd4bd6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'45e6f5be-e4b6-41d0-9dec-e49219b5792c')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'a9cefa1b-b9b9-4620-9372-b1d686977f08')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'f20b3387-b2ec-434a-bb5a-cec561da0a80')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'f26c8916-99d7-4262-bb7e-ba50c3acc827')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'01e13269-2afa-43c6-8058-d16fa5643f59')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'52c40a76-12ce-4c25-b0c8-291fe237abf0')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'85b31110-ecb4-477d-a53a-7346459dfc81')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'dcae6e25-b522-441a-834f-c58cdbd21a05')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'9726c2ae-cc47-403d-8e55-5e9d5973fbb6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'4b03e786-6f57-410b-ab82-f4464a5907ed')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'9aad92d5-ab9a-4075-a835-133935d33f43')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'9879a76e-b805-46f1-adac-03165450de66')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'8289f72c-b6f5-4978-9fa8-ebeb2872637b')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'8e9a4919-c023-433c-85c0-2f2cc5d8a102')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'94e02e4e-c8f1-45a2-8621-e066253400da', N'bc01de89-75a3-407e-ad40-851766734a66')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'a9cefa1b-b9b9-4620-9372-b1d686977f08')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'a1304c54-4f85-4e6a-a97a-544cff18ff7a', N'f20b3387-b2ec-434a-bb5a-cec561da0a80')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'0d800549-97a7-41db-8454-6d4a063a4279')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'14020206-7764-4acf-95a9-080e403a62b9')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'00895db2-9beb-4f96-a33e-3d3eb3ba6dc6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'0b44dd90-ca34-4e3b-b455-576577e01adb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'35a27103-f9ce-4d66-b1ea-19f06af2c3a2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'87eb048f-9efe-4662-833f-bd857eaaf8cb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'0fb1325c-b8b2-45ca-a583-c713a3905f52')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'140ce1e1-1a38-4861-8c83-75753295071f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'96ce8fc8-4bd3-45bc-8f20-e02a2a44ddc1')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'dba6724d-c717-43f1-8a47-5b0ba20170cc')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'f7f70497-ab15-4470-a544-37fecfe421a1')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'f9fe2f42-6dfe-40fd-adab-1eed20c61fba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'24d3f761-946a-48a8-876c-00cdac9453a8')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'343dd78d-270b-49a7-8ad5-146e8e1c53c4')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'4ebe3b0b-deca-4f61-91c7-3520aa82e289')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'6f36884f-a65e-4a8a-ac66-568434072a7d')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'cf05b91a-b683-4efc-a6ce-8d49a4f410f2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'02bd7d34-6a08-48e8-be28-6034a275a037', N'dcc80e75-8424-449a-8ef6-53817dc833fa')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'0d800549-97a7-41db-8454-6d4a063a4279')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'14020206-7764-4acf-95a9-080e403a62b9')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'00895db2-9beb-4f96-a33e-3d3eb3ba6dc6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'0b44dd90-ca34-4e3b-b455-576577e01adb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'35a27103-f9ce-4d66-b1ea-19f06af2c3a2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'8ad9d3bf-d635-45ca-b773-d3e41e8e953f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'4c339266-cf96-4def-b69c-fca2a5b882f3')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'929c7c15-88cd-45d0-be9f-7bf44d6dcac8')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'bd1f5309-b309-435b-b952-6e2573ae9c55')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'ac78be51-45b0-45e6-ba00-aa513cd0289f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'26836d44-e62d-43e1-a2bf-3b933b58fedb')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'9e60003f-6825-4f83-b9e5-280acf6f1979')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'f12a882c-f300-4d22-a3a0-67e614dd41fa', N'af49089c-9a1c-43dd-8321-fae30a2120da')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'0495add9-549d-4e7a-a65a-aab4d98fb6ba')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'0b99e008-4422-4504-90c5-0a30fac6b6ee')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'130a34f7-05e8-493a-b7bb-b58aab908404')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'23d45dec-4237-4e51-94a6-0477465d393a')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'be85538f-5e25-4538-bac8-8fff51d546c8')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'659a8bad-9138-4c23-85c4-4604d07a3cf5')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'e251258f-60c5-4c61-afd6-b417bd04a188')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'23b59b23-326f-4c1f-a9c8-d39fda405c5f')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'dc1c19b9-4bf1-4336-b06b-5fd8421818c2')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'e81eab97-f5eb-461e-940f-845c3bba98c0')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'f1ec9080-ecb3-4baa-a236-984fff78eb91')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'acf8b700-11e1-441c-9ddc-cb98ad61e988', N'f8f4785f-6beb-4808-b49d-4f57b94c12ca')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'f26c8916-99d7-4262-bb7e-ba50c3acc827')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'01e13269-2afa-43c6-8058-d16fa5643f59')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'52c40a76-12ce-4c25-b0c8-291fe237abf0')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'85b31110-ecb4-477d-a53a-7346459dfc81')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'dcae6e25-b522-441a-834f-c58cdbd21a05')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'9726c2ae-cc47-403d-8e55-5e9d5973fbb6')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'4b03e786-6f57-410b-ab82-f4464a5907ed')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'9aad92d5-ab9a-4075-a835-133935d33f43')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'9879a76e-b805-46f1-adac-03165450de66')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'8289f72c-b6f5-4978-9fa8-ebeb2872637b')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'8e9a4919-c023-433c-85c0-2f2cc5d8a102')
GO
INSERT [dbo].[RoleResourceModule] ([RoleId], [ResourceModuleId]) VALUES (N'dba215a2-7adc-433b-aaf7-339bb9cc56d8', N'bc01de89-75a3-407e-ad40-851766734a66')
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', N'123456', N'张三', 1, CAST(N'1990-01-01' AS Date), N'湖北荆州', N'544654654654', N'123456', N'2222', N'15172391030', N'1', CAST(N'2018-05-08T15:00:34.423' AS DateTime), CAST(N'2018-05-08T15:00:34.423' AS DateTime), N'd54aa26a-90f3-48d6-ada8-db3e066c86e2', N'36547c44-50ba-44e2-b926-a50fb119e971', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', N'70970970979', N'李四', 1, CAST(N'1990-01-01' AS Date), N'湖北咸宁', N'226546566', N'123456', N'96192@qq.com', N'6352656', N'1', CAST(N'2018-05-08T15:03:46.137' AS DateTime), CAST(N'2018-05-08T15:03:46.137' AS DateTime), N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'92050207-c1ba-4bcb-a902-d05c7f5719d4', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'bc6c6077-283f-413b-878f-2d64c0145c81', N'780980980', N'多田骏', 1, CAST(N'1990-01-01' AS Date), N'日本静冈县', N'1654152', N'123456', N'15454@qq.ocm', N'26523', N'1', CAST(N'2018-05-24T16:58:21.533' AS DateTime), CAST(N'2018-05-24T16:58:21.533' AS DateTime), N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'f0dbce7c-23ed-46cc-a162-b733d4013a48', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'424bf0ee-8e46-4be7-b464-3047663375f0', N'7900797', N'王五', 1, CAST(N'1990-01-01' AS Date), N'湖北荆州', N'xx', N'123456', N'9985', N'219549546', N'1', CAST(N'2018-05-18T15:32:14.347' AS DateTime), CAST(N'2018-05-18T15:32:14.347' AS DateTime), N'b3af0d8a-7f22-408a-b6d1-dfed79faa87d', N'92050207-c1ba-4bcb-a902-d05c7f5719d4', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'4fdb86ea-b9d8-4d2f-96d9-33521e8105e1', N'7898798797', N'畑俊六', 1, CAST(N'1990-01-01' AS Date), N'790709709', N'giohgoig', N'123456', N'961923680@qq.com', N'757857', N'1', CAST(N'2018-05-24T14:41:22.730' AS DateTime), CAST(N'2018-05-24T14:41:22.730' AS DateTime), N'dce69dae-14ce-46ce-b047-58bd30b59b57', N'079489ae-f194-45c0-9776-a7d53ee2b588', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'761aa2db-7549-48f5-a1c1-46fb21fc936f', N'70970978', N'竹下俊', 1, CAST(N'1990-01-01' AS Date), N'xx', N'xx', N'123456', N'961923680@qq.com', N'15926580708', N'1', CAST(N'2018-05-24T15:14:56.153' AS DateTime), CAST(N'2018-05-24T15:14:56.153' AS DateTime), N'd54aa26a-90f3-48d6-ada8-db3e066c86e2', N'77653fa7-05e2-4330-b7e6-3d925c44dc11', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'6a9f9da4-e03f-4a30-9b07-48b080640155', N'8898999', N'田七', 1, CAST(N'1990-01-01' AS Date), N'湖北', N'xx', N'123456', N'961923680@qq.com', N'961923680', N'1', CAST(N'2018-05-24T10:17:20.140' AS DateTime), CAST(N'2018-05-24T10:17:20.140' AS DateTime), N'dce69dae-14ce-46ce-b047-58bd30b59b57', N'079489ae-f194-45c0-9776-a7d53ee2b588', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'c28d4820-0291-4e38-8c6a-4eecbb1c610f', N'7970979076', N'山本一木', 1, CAST(N'1990-01-01' AS Date), N'22', N'222', N'123456', N'961923680@qq.com', N'22', N'1', CAST(N'2018-05-24T14:33:34.180' AS DateTime), CAST(N'2018-05-24T14:33:34.180' AS DateTime), N'278115bd-60d1-4b21-b0ba-ea0674f47eca', N'f0dbce7c-23ed-46cc-a162-b733d4013a48', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'3732a12c-44dd-4ba7-8334-67f820fd8cd1', N'7097897809', N'李东', 1, CAST(N'1990-01-01' AS Date), N'呃呃呃', N'谔谔', N'123456', N'22222', N'215415', N'1', CAST(N'2018-05-18T15:33:45.280' AS DateTime), CAST(N'2018-05-18T15:33:45.280' AS DateTime), N'278115bd-60d1-4b21-b0ba-ea0674f47eca', N'1b2ff105-0698-4638-9e1c-b4f75936fde1', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'127ea3c0-0af8-4492-be26-6957fb0ef8e2', N'0090890', N'石垣莞尔', 1, CAST(N'1990-01-01' AS Date), N'222', N'44444', N'123456', N'961923680@qq.com', N'222', N'1', CAST(N'2018-05-24T15:46:36.980' AS DateTime), CAST(N'2018-05-24T15:46:36.980' AS DateTime), N'b3af0d8a-7f22-408a-b6d1-dfed79faa87d', N'f0dbce7c-23ed-46cc-a162-b733d4013a48', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', N'eee5+65+6', N'eee', 1, CAST(N'1990-01-01' AS Date), N'eee', N'eee', N'123456', N'eee', N'eee', N'1', CAST(N'2018-05-08T15:02:51.993' AS DateTime), CAST(N'2018-05-08T15:02:51.993' AS DateTime), N'7b84fd02-567e-4c63-9d03-eae484049269', N'92050207-c1ba-4bcb-a902-d05c7f5719d4', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'128a1e36-1316-4c21-9016-7417dbf3ebd3', N'709709790', N'筱冢义男', 1, CAST(N'1990-01-01' AS Date), N'ss', N'ssss', N'123456', N'yingqingtao0604@qq.com', N'6544657465756', N'1', CAST(N'2018-05-24T14:38:49.057' AS DateTime), CAST(N'2018-05-24T14:38:49.057' AS DateTime), N'278115bd-60d1-4b21-b0ba-ea0674f47eca', N'b6d84cd1-3fcf-420a-974d-6067d61428d8', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'3a0fed20-128d-49a7-ac44-7718b7489fd8', N'80980889', N'阿布规秀', 1, CAST(N'1990-01-01' AS Date), N'日本富源县', N'4654646', N'123456', N'961923680@qq.com', N'15172391030', N'1', CAST(N'2018-05-25T09:57:43.263' AS DateTime), CAST(N'2018-05-25T09:57:43.263' AS DateTime), N'7b84fd02-567e-4c63-9d03-eae484049269', N'f0dbce7c-23ed-46cc-a162-b733d4013a48', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'1145145b-fa04-479d-9786-9e4a9dede8d6', N'7897890722', N'李四', 1, CAST(N'1990-01-01' AS Date), N'222222', N'222', N'123456', N'9657455@qq.com', N'222', N'1', CAST(N'2018-05-08T15:04:09.747' AS DateTime), CAST(N'2018-05-08T15:04:09.747' AS DateTime), N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'1b2ff105-0698-4638-9e1c-b4f75936fde1', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'251fb089-c3d2-468a-924e-c2e47e966e3e', N'797979', N'李懂', 1, CAST(N'1990-01-01' AS Date), N'湖北荆州', N'222', N'123456', N'587498@qq.com', N'222', N'1', CAST(N'2018-05-18T15:31:21.693' AS DateTime), CAST(N'2018-05-18T15:31:21.693' AS DateTime), N'278115bd-60d1-4b21-b0ba-ea0674f47eca', N'92050207-c1ba-4bcb-a902-d05c7f5719d4', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'46d97d3b-2b01-4ceb-a817-d7737b1ec4e4', N'797979799', N'山下奉文', 1, CAST(N'1990-01-01' AS Date), N'21212121', N'12132132', N'123456', N'chentianyacty@163.com', N'15926580708         ', N'1', CAST(N'2018-05-24T17:17:08.637' AS DateTime), CAST(N'2018-05-24T17:17:08.637' AS DateTime), N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'77653fa7-05e2-4330-b7e6-3d925c44dc11', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'5760b5ba-7e89-4bd2-bc57-d8af22260feb', N'263263+263', N'冈村宁次', 1, CAST(N'1990-01-01' AS Date), N'05146545', N'1651632163', N'123456', N'961923680@qq.com', N'15172391030', N'1', CAST(N'2018-05-26T14:20:25.667' AS DateTime), CAST(N'2018-05-26T14:20:25.667' AS DateTime), N'b0cabca7-766c-44d1-b6b1-9fd6c7a4c7b0', N'b6d84cd1-3fcf-420a-974d-6067d61428d8', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'b49234df-ec98-4aa4-b1cc-dc59de8d2dfd', N'7897989', N'川岛芳子', 0, CAST(N'1990-01-01' AS Date), N'XXXX', N'XX', N'123456', N'yingqingtao0604@qq.com', N'hoihoih', N'0', CAST(N'2018-05-24T14:29:36.053' AS DateTime), CAST(N'2018-05-24T14:29:36.053' AS DateTime), N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'77653fa7-05e2-4330-b7e6-3d925c44dc11', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'8ed28af7-9029-45f9-ab61-f01177a82915', N'张三', N'张三', 1, CAST(N'1990-01-01' AS Date), N'22', N'22', N'123456', N'961923680@qq.com', N'165416545           ', N'1', CAST(N'2018-05-14T17:32:08.953' AS DateTime), CAST(N'2018-05-14T17:32:08.953' AS DateTime), N'26463c27-f5fe-4f8c-bc30-eb130effea4d', N'36547c44-50ba-44e2-b926-a50fb119e971', 0)
GO
INSERT [dbo].[Staff] ([Id], [No], [Name], [Sex], [BirthDay], [NativePlace], [Address], [Password], [Email], [Tel], [Status], [CreateTime], [UpdateTime], [JobId], [OrgID], [IsHSEGroup]) VALUES (N'250ceeb7-8d5e-472d-94f2-fd38d3bdfd2a', N'7987697979', N'土肥原贤', 1, CAST(N'1990-01-01' AS Date), N'4897878', N'8974987', N'123456', N'961923680@qq.com', N'15926580708', N'1', CAST(N'2018-05-26T14:17:02.567' AS DateTime), CAST(N'2018-05-26T14:17:02.567' AS DateTime), N'7b84fd02-567e-4c63-9d03-eae484049269', N'f0dbce7c-23ed-46cc-a162-b733d4013a48', 0)
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'1145145b-fa04-479d-9786-9e4a9dede8d6', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', N'acf8b700-11e1-441c-9ddc-cb98ad61e988')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', N'90c579d7-1a63-4def-91bf-68175a9ac2cc')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', N'02bd7d34-6a08-48e8-be28-6034a275a037')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'3a4a9f17-0b21-4fe0-a302-701bb348b1fc', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'41c63b02-cb0a-4ecf-ae3e-04c2ee7f4c38', N'a1304c54-4f85-4e6a-a97a-544cff18ff7a')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'8ed28af7-9029-45f9-ab61-f01177a82915', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'8ed28af7-9029-45f9-ab61-f01177a82915', N'90c579d7-1a63-4def-91bf-68175a9ac2cc')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'3732a12c-44dd-4ba7-8334-67f820fd8cd1', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'424bf0ee-8e46-4be7-b464-3047663375f0', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'251fb089-c3d2-468a-924e-c2e47e966e3e', N'94e02e4e-c8f1-45a2-8621-e066253400da')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'd1a27a43-aa6b-4c5d-9eb0-173576772f89', N'a1304c54-4f85-4e6a-a97a-544cff18ff7a')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'5760b5ba-7e89-4bd2-bc57-d8af22260feb', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'bc6c6077-283f-413b-878f-2d64c0145c81', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'3a0fed20-128d-49a7-ac44-7718b7489fd8', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'b49234df-ec98-4aa4-b1cc-dc59de8d2dfd', N'a1304c54-4f85-4e6a-a97a-544cff18ff7a')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'761aa2db-7549-48f5-a1c1-46fb21fc936f', N'02bd7d34-6a08-48e8-be28-6034a275a037')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'c28d4820-0291-4e38-8c6a-4eecbb1c610f', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'4fdb86ea-b9d8-4d2f-96d9-33521e8105e1', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'128a1e36-1316-4c21-9016-7417dbf3ebd3', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[StaffRole] ([StaffId], [RoleId]) VALUES (N'127ea3c0-0af8-4492-be26-6957fb0ef8e2', N'f12a882c-f300-4d22-a3a0-67e614dd41fa')
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'24d3f761-946a-48a8-876c-00cdac9453a8', N'油料申请', N'OilMaterialOrder', N'OilStationDaily/OilMaterialOrderManager.aspx', 0, N'87eb048f-9efe-4662-833f-bd857eaaf8cb', 6)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'9879a76e-b805-46f1-adac-03165450de66', N'组织机构管理', N'OrganizationStructureManger', N'Organization/OrganizationIndex', 0, N'f26c8916-99d7-4262-bb7e-ba50c3acc827', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'23d45dec-4237-4e51-94a6-0477465d393a', N'下移', N'SystemSettingProcessSetting_MoveDown', NULL, 1, N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3', 49)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'14020206-7764-4acf-95a9-080e403a62b9', N'员工离职审批', N'ManagerDailyLeaveOffice', N'LeaveManage/LeaveManageIndex', 0, N'0d800549-97a7-41db-8454-6d4a063a4279', 5)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'0b99e008-4422-4504-90c5-0a30fac6b6ee', N'删除', N'SystemSettingProcessSetting_Delete', NULL, 1, N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3', 47)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'9aad92d5-ab9a-4075-a835-133935d33f43', N'新增', N'StaffManager_Add', NULL, 1, N'9726c2ae-cc47-403d-8e55-5e9d5973fbb6', 26)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'343dd78d-270b-49a7-8ad5-146e8e1c53c4', N'发起', N'OilMaterialOrder_Launch', NULL, 1, N'24d3f761-946a-48a8-876c-00cdac9453a8', 20)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'35a27103-f9ce-4d66-b1ea-19f06af2c3a2', N'通过', N'ManagerDailyLeaveOffice_PassThrough', NULL, 1, N'14020206-7764-4acf-95a9-080e403a62b9', 39)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'f9fe2f42-6dfe-40fd-adab-1eed20c61fba', N'查看流程视图', N'OilStationDailyEntryManager_ViewProcess', NULL, 1, N'0fb1325c-b8b2-45ca-a583-c713a3905f52', 12)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'9e60003f-6825-4f83-b9e5-280acf6f1979', N'通过', N'ManagerDailyEntryManager_PassThrough', NULL, 1, N'ac78be51-45b0-45e6-ba00-aa513cd0289f', 36)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'52c40a76-12ce-4c25-b0c8-291fe237abf0', N'删除', N'JobManager_Delete', NULL, 1, N'01e13269-2afa-43c6-8058-d16fa5643f59', 30)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'8e9a4919-c023-433c-85c0-2f2cc5d8a102', N'添加子机构', N'OrganizationStructureManger_Add', NULL, 1, N'9879a76e-b805-46f1-adac-03165450de66', 23)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'4ebe3b0b-deca-4f61-91c7-3520aa82e289', N'申请', N'OilMaterialOrder_Applay', NULL, 1, N'24d3f761-946a-48a8-876c-00cdac9453a8', 18)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'f7f70497-ab15-4470-a544-37fecfe421a1', N'申请', N'OilStationDailyEntryManager_Applay', NULL, 1, N'0fb1325c-b8b2-45ca-a583-c713a3905f52', 8)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'26836d44-e62d-43e1-a2bf-3b933b58fedb', N'驳回', N'ManagerDailyEntryManager_TurnDown', NULL, 1, N'ac78be51-45b0-45e6-ba00-aa513cd0289f', 37)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'00895db2-9beb-4f96-a33e-3d3eb3ba6dc6', N'驳回', N'ManagerDailyLeaveOffice_TurnDown', NULL, 1, N'14020206-7764-4acf-95a9-080e403a62b9', 40)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'659a8bad-9138-4c23-85c4-4604d07a3cf5', N'用户(员工)角色组', N'SystemSettingStaffRoleManager', N'/Staff/StaffRole', 0, N'32d3d086-87b4-43f2-864b-ddd4cafefb21', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'f8f4785f-6beb-4808-b49d-4f57b94c12ca', N'系统模块资源', N'SystemSettingSystemResourceModuleList', N'SystemModel/SystemModelIndex', 0, N'32d3d086-87b4-43f2-864b-ddd4cafefb21', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'dcc80e75-8424-449a-8ef6-53817dc833fa', N'修改', N'OilMaterialOrder_Update', NULL, 1, N'24d3f761-946a-48a8-876c-00cdac9453a8', 19)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'6f36884f-a65e-4a8a-ac66-568434072a7d', N'删除', N'OilMaterialOrder_Delete', NULL, 1, N'24d3f761-946a-48a8-876c-00cdac9453a8', 21)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'0b44dd90-ca34-4e3b-b455-576577e01adb', N'查看流程视图', N'ManagerDailyLeaveOffice_ViewProcess', NULL, 1, N'14020206-7764-4acf-95a9-080e403a62b9', 41)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'dba6724d-c717-43f1-8a47-5b0ba20170cc', N'发起', N'OilStationDailyEntryManager_Launch', NULL, 1, N'0fb1325c-b8b2-45ca-a583-c713a3905f52', 10)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'9726c2ae-cc47-403d-8e55-5e9d5973fbb6', N'员工基础信息管理', N'StaffManager', N'/Staff/Index', 0, N'f26c8916-99d7-4262-bb7e-ba50c3acc827', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'dc1c19b9-4bf1-4336-b06b-5fd8421818c2', N'新增角色', N'SystemSettingRoleManage_Add', NULL, 1, N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41', 32)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'019f4a10-273d-4222-b6d6-601774ce29e0', N'发起', N'OilStationLeaveOffice_Launch', NULL, 1, N'c96a0b92-6a21-4845-b8f8-af1460a4dbba', 15)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'1059c0a7-cc13-42fe-88f3-66b406dd4bd6', N'申请', N'OilStationLeaveOffice_Applay', NULL, 1, N'c96a0b92-6a21-4845-b8f8-af1460a4dbba', 13)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'0d800549-97a7-41db-8454-6d4a063a4279', N'管理日常', N'ManagerDaily', NULL, 0, NULL, 3)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'bd1f5309-b309-435b-b952-6e2573ae9c55', N'驳回', N'ManagerDailyOilMaterialOrderManager_TurnDown', NULL, 1, N'8ad9d3bf-d635-45ca-b773-d3e41e8e953f', 43)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'85b31110-ecb4-477d-a53a-7346459dfc81', N'修改', N'JobManager_Update', NULL, 1, N'01e13269-2afa-43c6-8058-d16fa5643f59', 29)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'140ce1e1-1a38-4861-8c83-75753295071f', N'修改', N'OilStationDailyEntryManager_Update', NULL, 1, N'0fb1325c-b8b2-45ca-a583-c713a3905f52', 9)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'929c7c15-88cd-45d0-be9f-7bf44d6dcac8', N'通过', N'ManagerDailyOilMaterialOrderManager_PassThrough', NULL, 1, N'8ad9d3bf-d635-45ca-b773-d3e41e8e953f', 42)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'e81eab97-f5eb-461e-940f-845c3bba98c0', N'修改', N'SystemSettingRoleManage_Update', NULL, 1, N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41', 33)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'bc01de89-75a3-407e-ad40-851766734a66', N'删除机构及其子机构', N'OrganizationStructureManger_Delete', NULL, 1, N'9879a76e-b805-46f1-adac-03165450de66', 25)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'cf05b91a-b683-4efc-a6ce-8d49a4f410f2', N'查看流程视图', N'OilMaterialOrder_ViewProcess', NULL, 1, N'24d3f761-946a-48a8-876c-00cdac9453a8', 22)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'be85538f-5e25-4538-bac8-8fff51d546c8', N'上移', N'SystemSettingProcessSetting_MoveUp', NULL, 1, N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3', 48)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'f1ec9080-ecb3-4baa-a236-984fff78eb91', N'设置权限', N'SystemSettingRoleManage_SettingResources', NULL, 1, N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41', 35)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'ac78be51-45b0-45e6-ba00-aa513cd0289f', N'员工入职审批', N'ManagerDailyEntryManager', N'ManagerDaily/EntryManager.aspx', 0, N'0d800549-97a7-41db-8454-6d4a063a4279', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'0495add9-549d-4e7a-a65a-aab4d98fb6ba', N'新增', N'SystemSettingProcessSetting_Add', NULL, 1, N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3', 45)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3', N'流程设置', N'SystemSettingProcessSetting', N'/Approver/ApproverIndex', 0, N'32d3d086-87b4-43f2-864b-ddd4cafefb21', 39)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'c96a0b92-6a21-4845-b8f8-af1460a4dbba', N'员工离职申请', N'OilStationLeaveOffice', N'/LeaveApprove/LeaveApproveIndex', 0, N'87eb048f-9efe-4662-833f-bd857eaaf8cb', 4)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'a9cefa1b-b9b9-4620-9372-b1d686977f08', N'修改', N'OilStationLeaveOffice_Update', NULL, 1, N'c96a0b92-6a21-4845-b8f8-af1460a4dbba', 14)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'e251258f-60c5-4c61-afd6-b417bd04a188', N'设置角色', N'SystemSettingStaffRoleManager_Setting', NULL, 1, N'659a8bad-9138-4c23-85c4-4604d07a3cf5', 31)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'130a34f7-05e8-493a-b7bb-b58aab908404', N'修改', N'SystemSettingProcessSetting_Update', NULL, 1, N'1e123bb5-1e44-4672-a06b-ab07a34dbaa3', 46)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'f26c8916-99d7-4262-bb7e-ba50c3acc827', N'基础信息维护', N'/Job/JobIndex', NULL, 0, NULL, 1)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'87eb048f-9efe-4662-833f-bd857eaaf8cb', N'加油站日常', N'OilStationDaily', NULL, 0, NULL, 0)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'dcae6e25-b522-441a-834f-c58cdbd21a05', N'新增', N'JobManager_Add', NULL, 1, N'01e13269-2afa-43c6-8058-d16fa5643f59', 28)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'0fb1325c-b8b2-45ca-a583-c713a3905f52', N'员工入职申请', N'OilStationDailyEntryManager', N'OilStationDaily/EntryManager.aspx', 0, N'87eb048f-9efe-4662-833f-bd857eaaf8cb', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'f20b3387-b2ec-434a-bb5a-cec561da0a80', N'查看流程视图', N'OilStationLeaveOffice_ViewProcess', NULL, 1, N'c96a0b92-6a21-4845-b8f8-af1460a4dbba', 17)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'01e13269-2afa-43c6-8058-d16fa5643f59', N'职位管理', N'JobManager', N'/Job/JobIndex', 0, N'f26c8916-99d7-4262-bb7e-ba50c3acc827', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'23b59b23-326f-4c1f-a9c8-d39fda405c5f', N'删除', N'SystemSettingRoleManage_Delete', NULL, 1, N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41', 34)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'8ad9d3bf-d635-45ca-b773-d3e41e8e953f', N'油料申请审批', N'ManagerDailyOilMaterialOrderManager', N'ManagerDaily/OilMaterialOrderManager.aspx', 0, N'0d800549-97a7-41db-8454-6d4a063a4279', 7)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'32d3d086-87b4-43f2-864b-ddd4cafefb21', N'系统设置', N'OrganizationStructureManger', NULL, 0, NULL, 2)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'96ce8fc8-4bd3-45bc-8f20-e02a2a44ddc1', N'删除', N'OilStationDailyEntryManager_Delete', NULL, 1, N'0fb1325c-b8b2-45ca-a583-c713a3905f52', 11)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'45e6f5be-e4b6-41d0-9dec-e49219b5792c', N'删除', N'OilStationLeaveOffice_Delete', NULL, 1, N'c96a0b92-6a21-4845-b8f8-af1460a4dbba', 16)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'8289f72c-b6f5-4978-9fa8-ebeb2872637b', N'修改子机构', N'OrganizationStructureManger_Update', NULL, 1, N'9879a76e-b805-46f1-adac-03165450de66', 24)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'7f3cea75-8744-42a9-9e1e-ebeb97e31a41', N'角色权限', N'SystemSettingRoleManage', N'Role/RoleIndex', 0, N'32d3d086-87b4-43f2-864b-ddd4cafefb21', NULL)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'4b03e786-6f57-410b-ab82-f4464a5907ed', N'修改', N'StaffManager_Update', NULL, 1, N'9726c2ae-cc47-403d-8e55-5e9d5973fbb6', 27)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'af49089c-9a1c-43dd-8321-fae30a2120da', N'查看流程视图', N'ManagerDailyEntryManager_ViewProcess', NULL, 1, N'ac78be51-45b0-45e6-ba00-aa513cd0289f', 38)
GO
INSERT [dbo].[SystemResourceModule] ([Id], [Name], [Code], [Url], [Type], [ParentId], [OrderNo]) VALUES (N'4c339266-cf96-4def-b69c-fca2a5b882f3', N'查看流程视图', N'ManagerDailyOilMaterialOrderManager_ViewProcess', NULL, 1, N'8ad9d3bf-d635-45ca-b773-d3e41e8e953f', 44)
GO
ALTER TABLE [dbo].[Entry] ADD  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[OilMaterialOrder] ADD  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[OrganizationStructure] ADD  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[ProcessStepRecord] ADD  DEFAULT ((0)) FOR [Result]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((0)) FOR [IsHSEGroup]
GO
ALTER TABLE [dbo].[SystemResourceModule] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Approver]  WITH CHECK ADD FOREIGN KEY([ProcessItemId])
REFERENCES [dbo].[ProcessItem] ([Id])
GO
ALTER TABLE [dbo].[Approver]  WITH CHECK ADD FOREIGN KEY([ProcessItemId])
REFERENCES [dbo].[ProcessItem] ([Id])
GO
ALTER TABLE [dbo].[Approver]  WITH CHECK ADD FOREIGN KEY([ProcessItemId])
REFERENCES [dbo].[ProcessItem] ([Id])
GO
ALTER TABLE [dbo].[OilMaterialOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[OilMaterialOrder] ([Id])
GO
ALTER TABLE [dbo].[OilMaterialOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[OilMaterialOrder] ([Id])
GO
ALTER TABLE [dbo].[OilMaterialOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[OilMaterialOrder] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[P_Pager]    Script Date: 2019/8/15 下午 11:29:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[P_Pager] (
    @recordTotal INT OUTPUT,            --输出记录总数
    @viewName NVARCHAR(Max),        --表名
    @fieldName VARCHAR(800) = '*',        --查询字段
    @keyName VARCHAR(200) = 'Id',            --索引字段
    @pageSize INT = 10,                    --每页记录数
    @pageNo INT =1,                    --当前页
    @orderString VARCHAR(200),        --排序条件
    @whereString NVARCHAR(Max) = '1=1'        --WHERE条件
)
AS
BEGIN
     DECLARE @beginRow INT
     DECLARE @endRow INT
     DECLARE @tempLimit VARCHAR(200)
     DECLARE @tempCount NVARCHAR(1000)
     DECLARE @tempMain VARCHAR(1000)
     --declare @timediff datetime 
     
     set nocount on
     --select @timediff=getdate() --记录时间

     SET @beginRow = (@pageNo - 1) * @pageSize    + 1
     SET @endRow = @pageNo * @pageSize
     SET @tempLimit = 'rows BETWEEN ' + CAST(@beginRow AS VARCHAR) +' AND '+CAST(@endRow AS VARCHAR)
     
     --输出参数为总记录数
     SET @tempCount = 'SELECT @recordTotal = COUNT(*) FROM (SELECT '+@keyName+' FROM '+@viewName+' WHERE '+@whereString+') AS my_temp'
     EXECUTE sp_executesql @tempCount,N'@recordTotal INT OUTPUT',@recordTotal OUTPUT
       
     --主查询返回结果集
     SET @tempMain = 'SELECT * FROM (SELECT ROW_NUMBER() OVER (order by '+@orderString+') AS rows ,'+@fieldName+' FROM '+@viewName+' WHERE '+@whereString+') AS main_temp WHERE '+@tempLimit
     
     --PRINT @tempMain
     EXECUTE (@tempMain)
     --select datediff(ms,@timediff,getdate()) as 耗时 
     
     set nocount off
END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Approver', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Approver', @level2type=N'COLUMN',@level2name=N'JobCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构 区域 级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Approver', @level2type=N'COLUMN',@level2name=N'AreaLeve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Approver', @level2type=N'COLUMN',@level2name=N'Discrible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤 顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Approver', @level2type=N'COLUMN',@level2name=N'Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程项Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Approver', @level2type=N'COLUMN',@level2name=N'ProcessItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'StaffName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'BirthDay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'MaritalStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Height'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最高学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'HighestEducation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外语能力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'ForeginLanguageAptitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'IDNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'NativePlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有传染病史' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'HaseMedicalHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传染病史备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'MedicalHistoryComment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星期爱好及特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'HobbiesAndSpeciality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（高中/中专）开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience1StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（高中/中专）结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience1EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（高中/中专）学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience1SchoolName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（高中/中专）学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience1Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（高中/中专）证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience1Certificate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（大专/本科）开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience2StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（大专/本科）结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience2EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（大专/本科）学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience2SchoolName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（大专/本科）专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience2Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（大专/本科）证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience2Certificate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（研究生）开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience3StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（研究生）开始结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience3EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（研究生）学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience3SchoolName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（研究生）专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience3Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（研究生）证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience3Certificate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（其它）开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience4StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（其它）结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience4EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（其它）结束学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience4SchoolName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（其它）专业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience4Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育️经历（其它）证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EducationalExperience4Certificate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员1 名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus1Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员1 称谓' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus1Appellation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员1 工作单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus1Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员1 联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus1Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员2 名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus2Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员2 称谓' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus2Appellation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员2 工作单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus2Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员2 电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'FamilyStatus2Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急联系人名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EmergencyContactName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急联系人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EmergencyContactTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急联系人关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EmergencyContactEelationShipWithMe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历1 单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience1CompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历1 职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience1Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历1 开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience1StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历1 结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience1EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历1 薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience1Pay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历1 离职原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience1LeavingReasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历2 单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience2CompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历2 职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience2Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历2 开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience2StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历2 结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience2EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历2 薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience2Pay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历2 离职原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience2LeavingReasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历3 单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience3CompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历3 职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience3Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历3 开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience3StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历3 结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience3EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历3 薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience3Pay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历3 离职原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience3LeavingReasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历4 单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience4CompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历4 职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience4Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历4 开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience4StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历4 结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience4EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历4 薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience4Pay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经历4 离职原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkExperience4LeavingReasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位Id 与职位表对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'JobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构部门 与组织机构表对应' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'Organization_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主管评语' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'SupervisorComments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试用期薪水' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'ProbationarySalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转正薪水' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'CorrectSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'WorkNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入职日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证拍照' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'BirthCertificatePhoto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记照' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'RegistrationPhoto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'BankCardNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 创建员工Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'CreateStaffeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入职申请单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entry', @level2type=N'COLUMN',@level2name=N'StaffNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新增时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Job', @level2type=N'COLUMN',@level2name=N'IsDel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 申请单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'StaffName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位 （职位）Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'JobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离职类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'LeaveType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'ApplyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离职原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'Reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作交接说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'ExplanationHandover'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交接人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'HandoverSatffId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'ApplyPersonId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveOffice', @level2type=N'COLUMN',@level2name=N'IsDel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键I的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'ApplyPersonId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'ApplyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'IsDel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrder', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键I的' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主单价Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'油料规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'OilSpec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'油罐容积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'Volume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'剩余油料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'Surplus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日均销售量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'DayAvg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'需要量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'NeedAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OilMaterialOrderDetail', @level2type=N'COLUMN',@level2name=N'IsDel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织架构代码 不轻易变动 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'该组织节点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'Leve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrganizationStructure', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessItem', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessItem', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessItem', @level2type=N'COLUMN',@level2name=N'Discrible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型 （Entry入职流程/Quit离职流程）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'RecordRemarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'StepOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'待执行操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'WaitForExecutionStaffId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否执行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'WhetherToExecute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联主单据编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联主单据Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'RefOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果(是否审批通过)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行方法 执行函数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStepRecord', @level2type=N'COLUMN',@level2name=N'ExecuteMethod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Role', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleResourceModule', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源模块Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RoleResourceModule', @level2type=N'COLUMN',@level2name=N'ResourceModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'BirthDay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'NativePlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现在居住地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 离职 入职' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'JobId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属机构ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'OrgID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否HSE管理人员组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN',@level2name=N'IsHSEGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemResourceModule', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'
emResourceModule', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemResourceModule', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemResourceModule', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型　０：菜单　１：按钮（操作）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemResourceModule', @level2type=N'COLUMN',@level2name=N'Type'
GO
