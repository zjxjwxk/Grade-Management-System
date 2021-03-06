USE [master]
GO
/****** Object:  Database [WuXinkang03MIS]    Script Date: 2018/7/16 2:43:57 ******/
CREATE DATABASE [WuXinkang03MIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WuXinkang03MIS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WuXinkang03MIS.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WuXinkang03MIS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WuXinkang03MIS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WuXinkang03MIS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WuXinkang03MIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WuXinkang03MIS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET ARITHABORT OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WuXinkang03MIS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WuXinkang03MIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WuXinkang03MIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WuXinkang03MIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WuXinkang03MIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WuXinkang03MIS] SET  MULTI_USER 
GO
ALTER DATABASE [WuXinkang03MIS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WuXinkang03MIS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WuXinkang03MIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WuXinkang03MIS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WuXinkang03MIS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WuXinkang03MIS] SET QUERY_STORE = OFF
GO
USE [WuXinkang03MIS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [WuXinkang03MIS]
GO
/****** Object:  Table [dbo].[wuxk_Department]    Script Date: 2018/7/16 2:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_Department](
	[wxk_Dno] [varchar](20) NOT NULL,
	[wxk_Dname] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Dno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wuxk_Class]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_Class](
	[wxk_Classno] [varchar](20) NOT NULL,
	[wxk_Dno] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Classno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Class_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Class_View] AS
SELECT wxk_Classno, wxk_Dname
FROM wuxk_Class, wuxk_Department
	WHERE wuxk_Class.wxk_Dno = wuxk_Department.wxk_Dno;
GO
/****** Object:  Table [dbo].[wuxk_Students]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_Students](
	[wxk_Sno] [varchar](20) NOT NULL,
	[wxk_Sname] [varchar](20) NOT NULL,
	[wxk_Dno] [varchar](20) NOT NULL,
	[wxk_Classno] [varchar](20) NOT NULL,
	[wxk_Ssex] [varchar](2) NOT NULL,
	[wxk_Sage] [int] NOT NULL,
	[wxk_Saddress] [varchar](20) NOT NULL,
	[wxk_Scredit] [int] NULL,
 CONSTRAINT [PK__wuxk_Stu__AF4548DA81F834AE] PRIMARY KEY CLUSTERED 
(
	[wxk_Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[StuInfo_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StuInfo_View] AS
SELECT wxk_Sno, wxk_Sname, wuxk_Students.wxk_Dno, wxk_Dname, wxk_Classno, wxk_Ssex, wxk_Sage, wxk_Saddress, wxk_Scredit
FROM wuxk_Students, wuxk_Department
WHERE wuxk_Students.wxk_Dno = wuxk_Department.wxk_Dno; 
GO
/****** Object:  Table [dbo].[wuxk_Courses]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_Courses](
	[wxk_Cno] [varchar](20) NOT NULL,
	[wxk_Cname] [varchar](20) NOT NULL,
	[wxk_Cteacher] [varchar](20) NULL,
	[wxk_Cterm] [varchar](20) NOT NULL,
	[wxk_Chours] [int] NOT NULL,
	[wxk_Ctype] [varchar](10) NOT NULL,
	[wxk_Ccredit] [int] NOT NULL,
 CONSTRAINT [PK__wuxk_Cou__AB4409C9301416B6] PRIMARY KEY CLUSTERED 
(
	[wxk_Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wuxk_Score]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_Score](
	[wxk_Sno] [varchar](20) NOT NULL,
	[wxk_term] [varchar](20) NOT NULL,
	[wxk_Cno] [varchar](20) NOT NULL,
	[wxk_score] [int] NOT NULL,
	[wxk_Tno] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Sno] ASC,
	[wxk_term] ASC,
	[wxk_Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wuxk_Teachers]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_Teachers](
	[wxk_Tno] [varchar](20) NOT NULL,
	[wxk_Tname] [varchar](20) NOT NULL,
	[wxk_Tsex] [varchar](2) NOT NULL,
	[wxk_Tage] [int] NOT NULL,
	[wxk_Ttitle] [varchar](20) NOT NULL,
	[wxk_Tphone] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Tno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[StuScore_VIEW]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StuScore_VIEW] AS
SELECT wuxk_Score.wxk_Sno, wxk_Sname, wxk_Cterm, wxk_Classno, wxk_Cname, wxk_Tname, wxk_Chours, wxk_Ccredit, wxk_Ctype, wxk_Score
FROM wuxk_Score, wuxk_Courses, wuxk_Teachers, wuxk_Students
WHERE wuxk_Courses.wxk_Cno = wuxk_Score.wxk_Cno
	AND wuxk_Score.wxk_Tno = wuxk_Teachers.wxk_Tno
	AND wuxk_Score.wxk_Sno = wuxk_Students.wxk_Sno;
GO
/****** Object:  Table [dbo].[wuxk_CC]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_CC](
	[wxk_Classno] [varchar](20) NOT NULL,
	[wxk_Cno] [varchar](20) NOT NULL,
 CONSTRAINT [PK__wuxk_CC__FD8B842245E80476] PRIMARY KEY CLUSTERED 
(
	[wxk_Classno] ASC,
	[wxk_Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ClassCourse_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ClassCourse_View] AS
SELECT wuxk_CC.wxk_Cno, wuxk_CC.wxk_Classno, wxk_Cterm, wxk_Cname, wxk_Tname, wxk_Chours, wxk_Ccredit, wxk_Ctype
FROM wuxk_CC, wuxk_Courses, wuxk_Teachers, wuxk_Class
WHERE wuxk_Courses.wxk_Cno = wuxk_CC.wxk_Cno
	AND wuxk_Class.wxk_Classno = wuxk_CC.wxk_Classno
	AND wuxk_Courses.wxk_Cteacher = wuxk_Teachers.wxk_Tno;
GO
/****** Object:  View [dbo].[TeaInfo_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeaInfo_View] AS
SELECT wxk_Tno, wxk_Tname, wxk_Tsex, wxk_Tage, wxk_Ttitle, wxk_Tphone
FROM wuxk_Teachers;
GO
/****** Object:  View [dbo].[TC_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TC_View] AS
SELECT wxk_Cteacher, wuxk_Courses.wxk_Cno, wxk_Cterm, wxk_Classno, wxk_Cname, wxk_Chours, wxk_Ccredit, wxk_Ctype
FROM wuxk_Courses, wuxk_CC
WHERE wuxk_Courses.wxk_Cno = wuxk_CC.wxk_Cno;
GO
/****** Object:  Table [dbo].[wuxk_SC]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_SC](
	[wxk_Sno] [varchar](20) NOT NULL,
	[wxk_Cno] [varchar](20) NOT NULL,
	[wxk_Cstatus] [varchar](10) NOT NULL,
 CONSTRAINT [PK__wuxk_SC__FD8B8422FF6D281A] PRIMARY KEY CLUSTERED 
(
	[wxk_Sno] ASC,
	[wxk_Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[SC_VIEW]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SC_VIEW] AS
SELECT wxk_Sno, wxk_Cterm, wxk_Cname, wxk_Tname, wxk_Chours, wxk_Ccredit, wxk_Ctype, wxk_Cstatus
FROM wuxk_SC, wuxk_Courses, wuxk_Teachers
WHERE wuxk_Courses.wxk_Cno = wuxk_SC.wxk_Cno
	AND wuxk_Courses.wxk_Cteacher = wuxk_Teachers.wxk_Tno;
GO
/****** Object:  View [dbo].[Score_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Score_View] AS
SELECT wuxk_Students.wxk_Sno, wuxk_Score.wxk_Tno, wxk_Sname, wxk_Classno, wxk_term, wxk_Cname, wuxk_score.wxk_Cno, wxk_Tname, wxk_score
FROM wuxk_Score, wuxk_Students, wuxk_Courses, wuxk_Teachers
WHERE wuxk_Score.wxk_Sno = wuxk_Students.wxk_Sno
	AND wuxk_Score.wxk_Cno = wuxk_Courses.wxk_Cno
	AND wuxk_Score.wxk_Tno = wuxk_Teachers.wxk_Tno;
GO
/****** Object:  View [dbo].[MyStudents_View]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MyStudents_View] AS
SELECT wuxk_SC.wxk_Sno, wuxk_Teachers.wxk_Tno, wxk_Sname, wxk_Classno, wxk_Cterm, wxk_Cname, wuxk_SC.wxk_Cno
FROM wuxk_Students, wuxk_Courses, wuxk_Teachers, wuxk_SC
WHERE wuxk_SC.wxk_Sno = wuxk_Students.wxk_Sno
	AND wuxk_SC.wxk_Cno = wuxk_Courses.wxk_Cno
	AND wuxk_Courses.wxk_Cteacher = wuxk_Teachers.wxk_Tno;
GO
/****** Object:  Table [dbo].[wuxk_AdminPwd]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_AdminPwd](
	[wxk_Ano] [varchar](20) NOT NULL,
	[wxk_Apwd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Ano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wuxk_StuPwd]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_StuPwd](
	[wxk_Sno] [varchar](20) NOT NULL,
	[wxk_Spwd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wuxk_TeaPwd]    Script Date: 2018/7/16 2:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wuxk_TeaPwd](
	[wxk_Tno] [varchar](20) NOT NULL,
	[wxk_Tpwd] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wxk_Tno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Classs_Dno]    Script Date: 2018/7/16 2:43:58 ******/
CREATE NONCLUSTERED INDEX [index_Classs_Dno] ON [dbo].[wuxk_Class]
(
	[wxk_Dno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Courses_Cteacher]    Script Date: 2018/7/16 2:43:58 ******/
CREATE NONCLUSTERED INDEX [index_Courses_Cteacher] ON [dbo].[wuxk_Courses]
(
	[wxk_Cteacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Students_Classno]    Script Date: 2018/7/16 2:43:58 ******/
CREATE NONCLUSTERED INDEX [index_Students_Classno] ON [dbo].[wuxk_Students]
(
	[wxk_Classno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Students_Dno]    Script Date: 2018/7/16 2:43:58 ******/
CREATE NONCLUSTERED INDEX [index_Students_Dno] ON [dbo].[wuxk_Students]
(
	[wxk_Dno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wuxk_Students] ADD  CONSTRAINT [DF_wuxk_Students_wxk_Scredit]  DEFAULT ((0)) FOR [wxk_Scredit]
GO
ALTER TABLE [dbo].[wuxk_CC]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_CC__wxk_Cla__40058253] FOREIGN KEY([wxk_Classno])
REFERENCES [dbo].[wuxk_Class] ([wxk_Classno])
GO
ALTER TABLE [dbo].[wuxk_CC] CHECK CONSTRAINT [FK__wuxk_CC__wxk_Cla__40058253]
GO
ALTER TABLE [dbo].[wuxk_CC]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_CC__wxk_Cno__40F9A68C] FOREIGN KEY([wxk_Cno])
REFERENCES [dbo].[wuxk_Courses] ([wxk_Cno])
GO
ALTER TABLE [dbo].[wuxk_CC] CHECK CONSTRAINT [FK__wuxk_CC__wxk_Cno__40F9A68C]
GO
ALTER TABLE [dbo].[wuxk_Class]  WITH CHECK ADD FOREIGN KEY([wxk_Dno])
REFERENCES [dbo].[wuxk_Department] ([wxk_Dno])
GO
ALTER TABLE [dbo].[wuxk_Courses]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_Cour__wxk_C__59FA5E80] FOREIGN KEY([wxk_Cteacher])
REFERENCES [dbo].[wuxk_Teachers] ([wxk_Tno])
GO
ALTER TABLE [dbo].[wuxk_Courses] CHECK CONSTRAINT [FK__wuxk_Cour__wxk_C__59FA5E80]
GO
ALTER TABLE [dbo].[wuxk_SC]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_SC__wxk_Cno__3D2915A8] FOREIGN KEY([wxk_Cno])
REFERENCES [dbo].[wuxk_Courses] ([wxk_Cno])
GO
ALTER TABLE [dbo].[wuxk_SC] CHECK CONSTRAINT [FK__wuxk_SC__wxk_Cno__3D2915A8]
GO
ALTER TABLE [dbo].[wuxk_SC]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_SC__wxk_Sno__3C34F16F] FOREIGN KEY([wxk_Sno])
REFERENCES [dbo].[wuxk_Students] ([wxk_Sno])
GO
ALTER TABLE [dbo].[wuxk_SC] CHECK CONSTRAINT [FK__wuxk_SC__wxk_Sno__3C34F16F]
GO
ALTER TABLE [dbo].[wuxk_Score]  WITH CHECK ADD FOREIGN KEY([wxk_Tno])
REFERENCES [dbo].[wuxk_Teachers] ([wxk_Tno])
GO
ALTER TABLE [dbo].[wuxk_Students]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_Stud__wxk_C__52593CB8] FOREIGN KEY([wxk_Classno])
REFERENCES [dbo].[wuxk_Class] ([wxk_Classno])
GO
ALTER TABLE [dbo].[wuxk_Students] CHECK CONSTRAINT [FK__wuxk_Stud__wxk_C__52593CB8]
GO
ALTER TABLE [dbo].[wuxk_Students]  WITH CHECK ADD  CONSTRAINT [FK__wuxk_Stud__wxk_D__5165187F] FOREIGN KEY([wxk_Dno])
REFERENCES [dbo].[wuxk_Department] ([wxk_Dno])
GO
ALTER TABLE [dbo].[wuxk_Students] CHECK CONSTRAINT [FK__wuxk_Stud__wxk_D__5165187F]
GO
USE [master]
GO
ALTER DATABASE [WuXinkang03MIS] SET  READ_WRITE 
GO
