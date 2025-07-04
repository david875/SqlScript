USE [master]
GO
/****** Object:  Database [TILP]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE DATABASE [TILP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TILP', FILENAME = N'E:\SQLDATA\TILP.mdf' , SIZE = 3219456KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TILP_log', FILENAME = N'F:\SQLLOG\TILP_log.ldf' , SIZE = 17113088KB , MAXSIZE = 104857600KB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TILP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TILP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TILP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TILP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TILP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TILP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TILP] SET ARITHABORT OFF 
GO
ALTER DATABASE [TILP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TILP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TILP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TILP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TILP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TILP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TILP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TILP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TILP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TILP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TILP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TILP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TILP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TILP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TILP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TILP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TILP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TILP] SET RECOVERY FULL 
GO
ALTER DATABASE [TILP] SET  MULTI_USER 
GO
ALTER DATABASE [TILP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TILP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TILP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TILP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TILP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TILP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TILP] SET QUERY_STORE = OFF
GO
USE [TILP]
GO
/****** Object:  User [TSLI\IPZS]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE USER [TSLI\IPZS] FOR LOGIN [TSLI\IPZS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TSLI\IPBS]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE USER [TSLI\IPBS] FOR LOGIN [TSLI\IPBS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TSLI\FG-UATPromotion-TILP]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE USER [TSLI\FG-UATPromotion-TILP] FOR LOGIN [TSLI\FG-UATPromotion-TILP] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TSLI\FG-APOperation-TCTF]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE USER [TSLI\FG-APOperation-TCTF] FOR LOGIN [TSLI\FG-APOperation-TCTF] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TSLI\EIEB]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE USER [TSLI\EIEB] FOR LOGIN [TSLI\EIEB] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [TILPUAT]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE USER [TILPUAT] FOR LOGIN [TILPUAT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [UR_TILP]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE ROLE [UR_TILP]
GO
/****** Object:  DatabaseRole [UR_executor]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE ROLE [UR_executor]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TSLI\IPZS]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TSLI\IPBS]
GO
ALTER ROLE [UR_executor] ADD MEMBER [TSLI\FG-UATPromotion-TILP]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [TSLI\FG-UATPromotion-TILP]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TSLI\FG-UATPromotion-TILP]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [TSLI\FG-UATPromotion-TILP]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TSLI\FG-APOperation-TCTF]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [TSLI\EIEB]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TSLI\EIEB]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [TSLI\EIEB]
GO
ALTER ROLE [UR_executor] ADD MEMBER [TILPUAT]
GO
ALTER ROLE [UR_TILP] ADD MEMBER [TILPUAT]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TILPUAT]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [TILPUAT]
GO
/****** Object:  Schema [igm]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE SCHEMA [igm]
GO
/****** Object:  Schema [ilp]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE SCHEMA [ilp]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CeilingCrcyScaleQty]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/08
-- Description:	當無條件進位時，Ceiling前要先乘上的值，與Ceiling後要除的值
-- Exemple: Select [dbo].[fn_CeilingCrcyScaleQty](2) 
-- =============================================
CREATE Function [dbo].[fn_CeilingCrcyScaleQty]
(
	@CeilingCrcyScaleQty int--無條件進位至第幾位
) 	
Returns int
AS
Begin

    Return Case @CeilingCrcyScaleQty 
	When 0 Then 1
	When 1 Then 10
	When 2 Then 100
	When 3 Then 1000
	When 4 Then 10000
	When 5 Then 100000
	When 6 Then 1000000
	When 7 Then 10000000
	When 8 Then 100000000
	When 9 Then 1000000000
	When 10 Then 10000000000
	Else 0
	End

	
End 


GO
/****** Object:  UserDefinedFunction [dbo].[fn_DateTimeDiff]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/08
-- Description:	計算時間差幾時、分、秒
-- Exemple: Select [dbo].[fn_DateTimeDiff](@Start_Time,@End_Time) 
-- =============================================
CREATE Function [dbo].[fn_DateTimeDiff]
(
	@Start_Time datetime,
	@End_Time datetime
) 	
Returns varchar(30)
AS
Begin

-- 計算總秒數
DECLARE @total_seconds INT = DATEDIFF(SECOND, @start_time, @end_time);

-- 計算小時、分鐘和秒
DECLARE @hours INT = @total_seconds / 3600;
DECLARE @minutes INT = (@total_seconds % 3600) / 60;
DECLARE @seconds INT = @total_seconds % 60;

-- 格式化為 HH:mm:ss
Return FORMAT(@hours, '00') + ':' + FORMAT(@minutes, '00') + ':' + FORMAT(@seconds, '00')  

	
End
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Logs]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/08
-- Description:	記錄Logs
-- Exemple: Select [dbo].[Logs](@Logs,'NewLogMessage') 
-- =============================================
CREATE Function [dbo].[fn_Logs]
(
	@Logs nvarchar(max),
	@NewLogMessage nvarchar(max)
) 	
Returns nvarchar(max)
AS
Begin

Set @NewLogMessage = IsNull(@NewLogMessage,'')



Declare 
@RowNumber varchar(100),
@ResultMessage nvarchar(max)

Set @Logs = Ltrim(Rtrim(Isnull(@Logs,'')))
--計算目前Log到第幾行
Set @RowNumber = Right('00'+ Convert(varchar,(LEN(@Logs) - LEN(REPLACE(@Logs, CHAR(10), ''))) + 1),3)

Set @ResultMessage =  @Logs + @RowNumber + '. ' + Convert(varchar,GetDate(),121) + ' - ' + @NewLogMessage + CHAR(13) + CHAR(10) 

Return  @ResultMessage
	
End
GO
/****** Object:  UserDefinedFunction [dbo].[fn_Split_On_Upper_Case]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Function [dbo].[fn_Split_On_Upper_Case](@Temp VarChar(1000))
Returns VarChar(1000)
AS
Begin

    Declare @KeepValues as varchar(50),
	@Abbr as varchar(50)
    Set @KeepValues = '%[^ ][A-Z]%'
    While PatIndex(@KeepValues collate Latin1_General_Bin, @Temp) > 0
	Begin
        Set @Temp = Stuff(@Temp, PatIndex(@KeepValues collate Latin1_General_Bin, @Temp) + 1, 0, ' ')		
    END


	Set @Temp = (Select  
	 '_'+ 
	 Concat(
	 Upper(
	 SUBSTRING(ISNULL(abber_other,value),1,1)
	 ), 
	 lower(
	 SUBSTRING(ISNULL(abber_other,value),2,len(ISNULL(abber_other,value))
	 )
	 )
	 )  
	from  STRING_SPLIT(@Temp,' ')
	left join dbo.ColnumMapping on 
	FullName01 = value or 
	FullName02 = value or
	FullName03 = value or
	FullName04 = value or
	FullName05 = value 
	FOR XML PATH(''))

	Set @Temp = SUBSTRING(@Temp,2,len(@Temp))
 


    Return @Temp
End
GO
/****** Object:  UserDefinedFunction [ilp].[fn_Avg_Fixing_Rate]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	平均匯率計算
-- Exemple: Select [ilp].[Avg_Fixing_Rate](10,19,32.65,1,18,31.15) 
-- =============================================
CREATE Function [ilp].[fn_Avg_Fixing_Rate]
(
	@Prev_Current_In numeric(18,6),--買入前單位數餘額
	@Prev_Avg_Nav_Val numeric(18,6),--買入前平均淨值
	@Prev_Avg_Fixing_Rate numeric(18,6),--買入前平均匯率
	@Trxn_Unit numeric(18,6),--當次買入單位數
	@Trxn_Nav numeric(18,6),--當次買入淨值
	@Trxn_Fixing_Rate numeric(18,6)--當次買入匯率
) 	
Returns numeric(18,6)
AS
Begin

   Declare @Avg_Fixing_Rate numeric(18,6)--平均匯率

   IF((ISNULL(@Prev_Current_In,0) *  ISNULL(@Prev_Avg_Nav_Val,0) + @Trxn_Unit * @Trxn_Nav)  = 0)
   
	   Return 0;
  
   ELSE
  
	   Set @Avg_Fixing_Rate =  
					ROUND( 
						 (ISNULL(@Prev_Current_In,0) * ISNULL(@Prev_Avg_Nav_Val,0) * ISNULL(@Prev_Avg_Fixing_Rate,0) 
						 + @Trxn_Unit * @Trxn_Nav * @Trxn_Fixing_Rate) 
						/ (ISNULL(@Prev_Current_In,0) *  ISNULL(@Prev_Avg_Nav_Val,0) + @Trxn_Unit * @Trxn_Nav) 
					,4) 

		Return @Avg_Fixing_Rate
	
End
GO
/****** Object:  UserDefinedFunction [ilp].[fn_Avg_Nav_Val]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	平均淨值計算
-- Exemple: Select [ilp].[fn_Avg_Nav_Val](1,10,2,20)
-- =============================================
CREATE Function [ilp].[fn_Avg_Nav_Val]
(
	@Prev_Current_In numeric(18,6),--買入前單位數餘額
	@Prev_Avg_Nav_Val numeric(18,6),--買入前平均淨值
	@Trxn_Unit numeric(18,6),--當次買入單位數
	@Trxn_Nav numeric(18,6)--當次買入淨值
) 	
Returns numeric(18,6)
AS
Begin

   Declare @Avg_Nav_Val numeric(18,6)--平均淨值

  IF(ISNULL(@Prev_Current_In,0)  + ISNULL(@Trxn_Unit,0) = 0)
   
	   Return 0;
  
   ELSE
		Set @Avg_Nav_Val =  
					ROUND( 
							(ISNULL(@Prev_Current_In,0) * ISNULL(@Prev_Avg_Nav_Val,0) + ISNULL(@Trxn_Unit,0) * ISNULL(@Trxn_Nav,0)) 
						/ (ISNULL(@Prev_Current_In,0)  + ISNULL(@Trxn_Unit,0)) 
					,4) 
		Return @Avg_Nav_Val
End
GO
/****** Object:  UserDefinedFunction [ilp].[fn_FilterFndName]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/19
-- Description:	fn_FilterFndName
-- Exemple: Select [ilp].[fn_FilterFndName]('BR006','BR006-貝萊德世界科技基金Ａ２美元')
-- =============================================
CREATE Function [ilp].[fn_FilterFndName]
(
	@Fnd_Id nvarchar(60), --標的代號
	@Fnd_Name nvarchar(60)	--標的名稱
) 	
Returns nvarchar(60)	 
AS
Begin

Return SUBSTRING(@Fnd_Name, CHARINDEX('-', @Fnd_Name) + 1, LEN(@Fnd_Name)) 

End
GO
/****** Object:  UserDefinedFunction [ilp].[fn_GetCrcyName]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		David Yeh
-- Create date: 2024/11/11
-- Description:	取幣別中文
-- Exemple: Select [ilp].[fn_GetCrcyName] ('NT') 
-- =============================================

CREATE Function [ilp].[fn_GetCrcyName]
( 
	@Crcy varchar(10)
)
Returns nvarchar(100)
AS
Begin

	Declare @NameCrcy nvarchar(100)

	Select @NameCrcy = rtrim(ETBL_DESC_TXT) From igm.TEDIT Where ETBL_TYP_ID = 'Crcy' And ETBL_VALU_ID = @Crcy
	 
	Return Replace(@NameCrcy,'台','臺')

End
GO
/****** Object:  UserDefinedFunction [ilp].[fn_GetEnviroment]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:        David Yeh
-- Create date:   2024/11/11
-- Description:   確認當前環境
-- Example:       SELECT ilp.fn_GetEnviroment()
-- =============================================
CREATE FUNCTION [ilp].[fn_GetEnviroment] ()
RETURNS VARCHAR(10)
AS
BEGIN
	DECLARE @Enviroment VARCHAR(10)

	--取得設定檔內的環境設定值
	SELECT @Enviroment = Type_Val1
	FROM ilp.LookUp
	WHERE Type_Group = 'Enviroment'

	RETURN @Enviroment
END
GO
/****** Object:  UserDefinedFunction [ilp].[fn_GetFndCrcy]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/17
-- Description:	取保單幣別
-- Exemple: Select [ilp].[fn_GetFndCrcy] ('AY017') 
-- =============================================

CREATE Function [ilp].[fn_GetFndCrcy]
( 
	@FndId Char(10)
)
Returns VarChar(1000)
AS
Begin

	Declare @Fnd_Crcy varchar(3)

	Select @Fnd_Crcy = FND_CRCY_CD From igm.TFH Where FND_ID = @FndId

	--Select Distinct @Fnd_Crcy = Fnd_Crcy From 
	--(
	--	Select Distinct Fnd_Crcy  From ilp.TrxnStage Where Pol_Id = @PolId And Fnd_Id = @FndId
	--	Union
	--	Select Distinct Fnd_Crcy From ilp.Trxn Where Pol_Id = @PolId And Fnd_Id = @FndId
	--) A
	
	Return @Fnd_Crcy

End
GO
/****** Object:  UserDefinedFunction [ilp].[fn_GetPolCrcy]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/17
-- Description:	取保單幣別
-- Exemple: Select [ilp].[fn_GetPolCrcy] ('6680223890') 
-- =============================================

CREATE Function [ilp].[fn_GetPolCrcy]
(
	@PolId Char(10)
)
Returns VarChar(1000)
AS
Begin

	Declare @Pol_Crcy varchar(3)

	Select Distinct @Pol_Crcy = POL_CRCY_CD From igm.TPOL_ILP Where Pol_Id = @PolId
	 
	Return @Pol_Crcy

End
GO
/****** Object:  Table [ilp].[Trxn]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[Trxn](
	[Pol_Id] [varchar](10) NOT NULL,
	[Effective_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Process_Date] [date] NULL,
	[Complete_Date] [date] NOT NULL,
	[Reverse_Date] [date] NULL,
	[Trxn_Seq] [int] NOT NULL,
	[Type_Cd] [varchar](3) NOT NULL,
	[Reason_Cd] [varchar](3) NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Fnd_Crcy] [varchar](3) NOT NULL,
	[Trxn_Unit] [numeric](18, 6) NULL,
	[Trxn_Nav] [numeric](18, 6) NULL,
	[Trxn_Nav_Date] [date] NULL,
	[Trxn_Fixing_Rate] [numeric](18, 6) NOT NULL,
	[Trxn_Fixing_Rate_LocalCrcy] [numeric](18, 6) NULL,
	[Trxn_Fixing_Rate_Date] [date] NULL,
	[Trxn_Amt_PolCrcy] [numeric](18, 6) NOT NULL,
	[Trxn_Amt_FndCrcy] [numeric](18, 6) NOT NULL,
	[Trxn_Amt_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Prev_Fnd_Unit] [numeric](18, 6) NULL,
	[Prev_Avg_Net_Nav] [numeric](18, 6) NULL,
	[Prev_Avg_Fixing_Rate] [numeric](18, 6) NULL,
	[Current_In] [numeric](18, 6) NOT NULL,
	[Avg_Nav_Val] [numeric](18, 6) NULL,
	[Avg_Fixing_Rate] [numeric](18, 6) NULL,
	[Acum_Alloc_Cost_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Alloc_Cost_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Buy_Unit] [numeric](18, 6) NULL,
	[Sur_Gain_Loss] [numeric](18, 6) NULL,
	[Sur_Avg_Cost] [numeric](18, 6) NULL,
	[Sur_ROI_Non_Div_Fnd] [numeric](18, 6) NULL,
	[Acum_Div_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Div_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Div_Amt_LocalCrcy] [numeric](18, 6) NULL,
	[Acum_Reinv_Div_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Reinv_Div_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Sur_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Sur_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Sur2_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Sur2_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Subscription_Fee_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Subscription_Fee_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Fee_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Fee_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_Out_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_Out_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Adm_Fee_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Adm_Fee_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Rider_ROI_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Rider_ROI_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Guad_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Guad_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Loyalty_Bonus_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Loyalty_Bonus_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Cal_Fomula] [nvarchar](1000) NULL,
	[Created_By] [varchar](8) NOT NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_Trxn_1] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Effective_Date] ASC,
	[Seq_No] ASC,
	[Fnd_Id] ASC,
	[Complete_Date] ASC,
	[Trxn_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectLastTrxnSeq]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





















-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description:	將每筆標的最後一筆交易的序號取出
-- Exemple: Select * From [ilp].v_SelectLastTrxnSeq] Order by Pol_Id, Fnd_ID, Trxn_Seq
-- =============================================
CREATE View [ilp].[v_SelectLastTrxnSeq]
AS
SELECT 
	Pol_Id,
	Fnd_Id,
	Max(Trxn_Seq) Trxn_Seq 
FROM ilp.Trxn
Group by Pol_Id,Fnd_Id,Pol_Crcy,Fnd_Crcy
GO
/****** Object:  Table [ilp].[Policy]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[Policy](
	[Pol_Id] [varchar](10) NOT NULL,
	[Complete_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Reverse_Date] [varchar](10) NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Acum_Div_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Div_Amt_LocalCrcy] [numeric](18, 6) NULL,
	[Acum_Inv_Cost] [numeric](18, 6) NULL,
	[Net_Alloc_Cost_PolCrcy] [numeric](18, 6) NULL,
	[Net_Alloc_Cost_LocalCrcy] [numeric](18, 6) NULL,
	[Acct_Value_PolCrcy] [numeric](18, 6) NULL,
	[Acct_Value_LoaclCrcy] [numeric](18, 6) NULL,
	[ROI_Inv_Div] [numeric](18, 6) NULL,
	[ROI_Non_Div] [numeric](18, 6) NULL,
	[Cal_Fomula] [ntext] NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NULL,
	[Update_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_Policy] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Complete_Date] ASC,
	[Alloc_Type] ASC,
	[IGM_Batch_Date] ASC,
	[Reverse_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ilp].[ROI]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[ROI](
	[Pol_Id] [varchar](10) NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[Complete_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Fnd_Crcy] [varchar](3) NOT NULL,
	[ROI_Inv_Div_Fnd] [numeric](18, 6) NULL,
	[ROI_Non_Div_Fnd] [numeric](18, 6) NULL,
	[ROI_Inv_Div_Sur2_Fnd] [numeric](18, 6) NULL,
	[Cal_Fomula] [ntext] NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_ROI_1] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Fnd_Id] ASC,
	[Complete_Date] ASC,
	[Alloc_Type] ASC,
	[IGM_Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ilp].[AcctVal]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[AcctVal](
	[Pol_Id] [varchar](10) NOT NULL,
	[Complete_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Fnd_Crcy] [varchar](3) NOT NULL,
	[Net_Alloc_Cost_PolCrcy] [numeric](18, 6) NOT NULL,
	[Net_Alloc_Cost_FndCrcy] [numeric](18, 6) NOT NULL,
	[Net_Alloc_Cost_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Fnd_Acc_Val_PolCrcy] [numeric](18, 6) NOT NULL,
	[Fnd_Acc_Val_FndCrcy] [numeric](18, 6) NOT NULL,
	[Fnd_Acc_Val_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Nav_Val] [numeric](18, 6) NOT NULL,
	[Nav_Date] [date] NOT NULL,
	[Fixing_Rate] [numeric](18, 6) NOT NULL,
	[Fixing_Rate_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Fixing_Rate_Date] [date] NOT NULL,
	[Fnd_Alloc_Ratio] [numeric](5, 2) NOT NULL,
	[Cal_Fomula] [ntext] NOT NULL,
	[Created_By] [varchar](8) NOT NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_AcctVal] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Complete_Date] ASC,
	[Alloc_Type] ASC,
	[Seq_No] ASC,
	[Fnd_Id] ASC,
	[IGM_Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectLastAcctValIGMBatchDate]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description: 取出目前帳戶價值最新資料
-- Exemple: Select * From v_SelectLastAcctValIGMBatchDate
-- =============================================
Create View [ilp].[v_SelectLastAcctValIGMBatchDate]
AS
 
SELECT  Pol_Id,Fnd_Id,Max(IGM_Batch_Date) As IGM_Batch_Date
FROM  ilp.AcctVal  
Group By  Pol_Id,Fnd_Id 

GO
/****** Object:  View [ilp].[v_SelectTrxnLastInfo]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


























-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description: 取出每檔標的最後一筆交易、帳戶價值、報酬率與保單層資訊
-- Exemple: Select * From [ilp].[v_SelectTrxnLastInfo] 
-- =============================================
CREATE View [ilp].[v_SelectTrxnLastInfo]
AS

SELECT  
	   Trxn.Pol_Id
      ,Trxn.Effective_Date
      ,Trxn.Alloc_Type
      ,Trxn.Seq_No
      ,Trxn.Fnd_Id
      ,Trxn.IGM_Batch_Date
      ,Trxn.Process_Date
      ,Trxn.Complete_Date
      ,Trxn.Reverse_Date
      ,Trxn.Trxn_Seq
      ,Trxn.Type_Cd
      ,Trxn.Reason_Cd
      ,Trxn.Pol_Crcy
      ,Trxn.Fnd_Crcy
      ,Trxn.Trxn_Unit
      ,Trxn.Trxn_Nav
      ,Trxn.Trxn_Nav_Date
      ,Trxn.Trxn_Fixing_Rate
      ,Trxn.Trxn_Fixing_Rate_LocalCrcy
      ,Trxn.Trxn_Fixing_Rate_Date
      ,Trxn.Trxn_Amt_PolCrcy
      ,Trxn.Trxn_Amt_FndCrcy
      ,Trxn_Amt_LocalCrcy
      ,Trxn.Prev_Fnd_Unit
      ,Trxn.Prev_Avg_Net_Nav
      ,Trxn.Prev_Avg_Fixing_Rate
      ,Trxn.Current_In
      ,Trxn.Avg_Nav_Val
      ,Trxn.Avg_Fixing_Rate
      ,Trxn.Acum_Alloc_Cost_PolCrcy
      ,Trxn.Acum_Alloc_Cost_FndCrcy
      ,Trxn.Acum_Buy_Unit
      ,Trxn.Sur_Gain_Loss
      ,Trxn.Sur_Avg_Cost
      ,Trxn.Sur_ROI_Non_Div_Fnd
      ,Trxn.Acum_Div_Amt_PolCrcy As FndAcum_Div_Amt_PolCrcy
      ,Trxn.Acum_Div_Amt_FndCrcy As FndAcum_Div_Amt_FndCrcy
      ,Trxn.Acum_Div_Amt_LocalCrcy As FndAcum_Div_Amt_LocalCrcy
      ,Trxn.Acum_Reinv_Div_Amt_PolCrcy
      ,Trxn.Acum_Reinv_Div_Amt_FndCrcy
      ,Trxn.Acum_Sur_Amt_PolCrcy
      ,Trxn.Acum_Sur_Amt_FndCrcy
      ,Trxn.Acum_Sur2_Amt_PolCrcy
      ,Trxn.Acum_Sur2_Amt_FndCrcy
      ,Trxn.Acum_Subscription_Fee_PolCrcy
      ,Trxn.Acum_Subscription_Fee_FndCrcy
      ,Trxn.Acum_Switch_In_Amt_PolCrcy
      ,Trxn.Acum_Switch_In_Amt_FndCrcy
      ,Trxn.Acum_Switch_In_Fee_PolCrcy
      ,Trxn.Acum_Switch_In_Fee_FndCrcy
      ,Trxn.Acum_Switch_Out_Amt_PolCrcy
      ,Trxn.Acum_Switch_Out_Amt_FndCrcy
      ,Trxn.Acum_Adm_Fee_PolCrcy
      ,Trxn.Acum_Adm_Fee_FndCrcy
      ,Trxn.Acum_Rider_ROI_PolCrcy
      ,Trxn.Acum_Rider_ROI_FndCrcy
      ,Trxn.Acum_Guad_Amt_PolCrcy
      ,Trxn.Acum_Guad_Amt_FndCrcy
      ,Trxn.Acum_Loyalty_Bonus_Amt_PolCrcy
      ,Trxn.Acum_Loyalty_Bonus_Amt_FndCrcy
	  ,AcctVal.Net_Alloc_Cost_PolCrcy As FndNet_Alloc_Cost_PolCrcy
      ,AcctVal.Net_Alloc_Cost_FndCrcy As FndNet_Alloc_Cost_FndCrcy
      ,AcctVal.Net_Alloc_Cost_LocalCrcy As FndNet_Alloc_Cost_LocalCrcy
      ,AcctVal.Fnd_Acc_Val_PolCrcy
      ,AcctVal.Fnd_Acc_Val_FndCrcy
      ,AcctVal.Fnd_Acc_Val_LocalCrcy
      ,AcctVal.Nav_Val
      ,AcctVal.Nav_Date
      ,AcctVal.Fixing_Rate
      ,AcctVal.Fixing_Rate_LocalCrcy
      ,AcctVal.Fixing_Rate_Date
      ,AcctVal.Fnd_Alloc_Ratio
	  ,ROI.ROI_Inv_Div_Fnd
      ,ROI.ROI_Non_Div_Fnd
      ,ROI.ROI_Inv_Div_Sur2_Fnd
	  ,Policy.Acum_Div_Amt_PolCrcy
      ,Policy.Acum_Div_Amt_LocalCrcy
      ,Policy.Acum_Inv_Cost
      ,Policy.Net_Alloc_Cost_PolCrcy
      ,Policy.Net_Alloc_Cost_LocalCrcy
      ,Policy.Acct_Value_PolCrcy
      ,Policy.Acct_Value_LoaclCrcy
      ,Policy.ROI_Inv_Div
      ,Policy.ROI_Non_Div
  FROM ilp.Trxn  
   Inner Join ilp.v_SelectLastTrxnSeq TrxnLast On Trxn.Pol_Id = TrxnLast.Pol_Id And Trxn.Fnd_Id = TrxnLast.Fnd_Id And Trxn.Trxn_Seq = TrxnLast.Trxn_Seq
   Inner Join ilp.v_SelectLastAcctValIGMBatchDate SLAVI On 1=1 And SLAVI.Pol_Id = Trxn.Pol_Id And SLAVI.Fnd_Id = Trxn.Fnd_Id
   Left Join ilp.AcctVal AcctVal On AcctVal.Pol_Id = Trxn.Pol_Id And AcctVal.Fnd_Id = Trxn.Fnd_Id And AcctVal.IGM_Batch_Date = SLAVI.IGM_Batch_Date
   Left Join ilp.ROI ROI On ROI.Pol_Id = Trxn.Pol_Id And ROI.Fnd_Id = Trxn.Fnd_Id And ROI.IGM_Batch_Date = SLAVI.IGM_Batch_Date
   Left Join ilp.Policy Policy On Policy.Pol_Id = Trxn.Pol_Id And Policy.IGM_Batch_Date = SLAVI.IGM_Batch_Date
  Where Trxn.Reverse_Date is null    
GO
/****** Object:  Table [ilp].[TrxnStage]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[TrxnStage](
	[Pol_Id] [varchar](10) NOT NULL,
	[Effective_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Process_Date] [date] NULL,
	[Complete_Date] [date] NOT NULL,
	[Reverse_Date] [date] NULL,
	[Trxn_Seq] [int] NOT NULL,
	[Type_Cd] [varchar](3) NOT NULL,
	[Reason_Cd] [varchar](3) NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Fnd_Crcy] [varchar](3) NOT NULL,
	[Trxn_Unit] [numeric](18, 6) NULL,
	[Trxn_Nav] [numeric](18, 6) NULL,
	[Trxn_Nav_Date] [date] NULL,
	[Trxn_Fixing_Rate] [numeric](18, 6) NOT NULL,
	[Trxn_Fixing_Rate_LocalCrcy] [numeric](18, 6) NULL,
	[Trxn_Fixing_Rate_Date] [date] NULL,
	[Trxn_Amt_PolCrcy] [numeric](18, 6) NOT NULL,
	[Trxn_Amt_FndCrcy] [numeric](18, 6) NOT NULL,
	[Trxn_Amt_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Prev_Fnd_Unit] [numeric](18, 6) NULL,
	[Prev_Avg_Net_Nav] [numeric](18, 6) NULL,
	[Prev_Avg_Fixing_Rate] [numeric](18, 6) NULL,
	[Current_In] [numeric](18, 6) NOT NULL,
	[Avg_Nav_Val] [numeric](18, 6) NULL,
	[Avg_Fixing_Rate] [numeric](18, 6) NULL,
	[Acum_Alloc_Cost_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Alloc_Cost_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Buy_Unit] [numeric](18, 6) NULL,
	[Sur_Gain_Loss] [numeric](18, 6) NULL,
	[Sur_Avg_Cost] [numeric](18, 6) NULL,
	[Sur_ROI_Non_Div_Fnd] [numeric](18, 6) NULL,
	[Acum_Div_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Div_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Div_Amt_LocalCrcy] [numeric](18, 6) NULL,
	[Acum_Reinv_Div_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Reinv_Div_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Sur_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Sur_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Sur2_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Sur2_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Subscription_Fee_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Subscription_Fee_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Fee_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_In_Fee_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_Out_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Switch_Out_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Adm_Fee_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Adm_Fee_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Rider_ROI_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Rider_ROI_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Guad_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Guad_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Acum_Loyalty_Bonus_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Loyalty_Bonus_Amt_FndCrcy] [numeric](18, 6) NULL,
	[Cal_Fomula] [nvarchar](1000) NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_TrxnStage] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Effective_Date] ASC,
	[Seq_No] ASC,
	[Fnd_Id] ASC,
	[Complete_Date] ASC,
	[Trxn_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectLastTrxnStageSeq]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description:	將每筆標的最後一筆交易的序號取出
-- Exemple: Select * From [ilp].v_SelectLastTrxnStageSeq] Order by Pol_Id, Fnd_ID, Trxn_Seq
-- =============================================
CREATE View [ilp].[v_SelectLastTrxnStageSeq]
AS
SELECT 
	Pol_Id,
	Fnd_Id,
	Max(Trxn_Seq) Trxn_Seq 
FROM ilp.TrxnStage
Group by Pol_Id,Fnd_Id,Pol_Crcy,Fnd_Crcy
GO
/****** Object:  Table [ilp].[PolicyStage]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[PolicyStage](
	[Pol_Id] [varchar](10) NOT NULL,
	[Complete_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Reverse_Date] [varchar](10) NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Acum_Div_Amt_PolCrcy] [numeric](18, 6) NULL,
	[Acum_Div_Amt_LocalCrcy] [numeric](18, 6) NULL,
	[Acum_Inv_Cost] [numeric](18, 6) NULL,
	[Net_Alloc_Cost_PolCrcy] [numeric](18, 6) NULL,
	[Net_Alloc_Cost_LocalCrcy] [numeric](18, 6) NULL,
	[Acct_Value_PolCrcy] [numeric](18, 6) NULL,
	[Acct_Value_LoaclCrcy] [numeric](18, 6) NULL,
	[ROI_Inv_Div] [numeric](18, 6) NULL,
	[ROI_Non_Div] [numeric](18, 6) NULL,
	[Cal_Fomula] [ntext] NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NULL,
	[Update_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_PolicyStage] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Complete_Date] ASC,
	[Alloc_Type] ASC,
	[IGM_Batch_Date] ASC,
	[Reverse_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ilp].[ROIStage]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[ROIStage](
	[Pol_Id] [varchar](10) NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[Complete_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Fnd_Crcy] [varchar](3) NOT NULL,
	[ROI_Inv_Div_Fnd] [numeric](18, 6) NULL,
	[ROI_Non_Div_Fnd] [numeric](18, 6) NULL,
	[ROI_Inv_Div_Sur2_Fnd] [numeric](18, 6) NULL,
	[Cal_Fomula] [ntext] NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_ROIStage_1] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Fnd_Id] ASC,
	[Complete_Date] ASC,
	[Alloc_Type] ASC,
	[IGM_Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ilp].[AcctValStage]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[AcctValStage](
	[Pol_Id] [varchar](10) NOT NULL,
	[Complete_Date] [date] NOT NULL,
	[Alloc_Type] [varchar](3) NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Pol_Crcy] [varchar](3) NOT NULL,
	[Fnd_Crcy] [varchar](3) NOT NULL,
	[Net_Alloc_Cost_PolCrcy] [numeric](18, 6) NOT NULL,
	[Net_Alloc_Cost_FndCrcy] [numeric](18, 6) NOT NULL,
	[Net_Alloc_Cost_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Fnd_Acc_Val_PolCrcy] [numeric](18, 6) NOT NULL,
	[Fnd_Acc_Val_FndCrcy] [numeric](18, 6) NOT NULL,
	[Fnd_Acc_Val_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Nav_Val] [numeric](18, 6) NOT NULL,
	[Nav_Date] [date] NOT NULL,
	[Fixing_Rate] [numeric](18, 6) NOT NULL,
	[Fixing_Rate_LocalCrcy] [numeric](18, 6) NOT NULL,
	[Fixing_Rate_Date] [date] NOT NULL,
	[Fnd_Alloc_Ratio] [numeric](5, 2) NOT NULL,
	[Cal_Fomula] [ntext] NOT NULL,
	[Created_By] [varchar](8) NOT NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_AcctValStage] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Complete_Date] ASC,
	[Alloc_Type] ASC,
	[Seq_No] ASC,
	[Fnd_Id] ASC,
	[IGM_Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectLastAcctValStageIGMBatchDate]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description: 取出目前帳戶價值最新資料
-- Exemple: Select * From  v_SelectLastAcctVal
-- =============================================
Create View [ilp].[v_SelectLastAcctValStageIGMBatchDate]
AS
 
SELECT  Pol_Id,Fnd_Id,Max(IGM_Batch_Date) As IGM_Batch_Date
FROM  ilp.AcctValStage  
Group By  Pol_Id,Fnd_Id 

GO
/****** Object:  View [ilp].[v_SelectTrxnStageLastInfo]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		David Yeh
-- Create date: 2024/11/29
-- Description: 1. 取出暫存區，每檔標的最後一筆交易、帳戶價值、報酬率與保單層資訊
			  --2. 排除Reversedate不為空的資料
-- Exemple: Select * From [ilp].[v_SelectTrxnStageLastInfo] 
-- =============================================
CREATE View [ilp].[v_SelectTrxnStageLastInfo]
AS

SELECT  
	   TrxnStage.Pol_Id
      ,TrxnStage.Effective_Date
      ,TrxnStage.Alloc_Type
      ,TrxnStage.Seq_No
      ,TrxnStage.Fnd_Id
      ,TrxnStage.IGM_Batch_Date
      ,TrxnStage.Process_Date
      ,TrxnStage.Complete_Date
      ,TrxnStage.Reverse_Date
      ,TrxnStage.Trxn_Seq
      ,TrxnStage.Type_Cd
      ,TrxnStage.Reason_Cd
      ,TrxnStage.Pol_Crcy
      ,TrxnStage.Fnd_Crcy
      ,TrxnStage.Trxn_Unit
      ,TrxnStage.Trxn_Nav
      ,TrxnStage.Trxn_Nav_Date
      ,TrxnStage.Trxn_Fixing_Rate
      ,TrxnStage.Trxn_Fixing_Rate_LocalCrcy
      ,TrxnStage.Trxn_Fixing_Rate_Date
      ,TrxnStage.Trxn_Amt_PolCrcy
      ,TrxnStage.Trxn_Amt_FndCrcy
      ,Trxn_Amt_LocalCrcy
      ,TrxnStage.Prev_Fnd_Unit
      ,TrxnStage.Prev_Avg_Net_Nav
      ,TrxnStage.Prev_Avg_Fixing_Rate
      ,TrxnStage.Current_In
      ,TrxnStage.Avg_Nav_Val
      ,TrxnStage.Avg_Fixing_Rate
      ,TrxnStage.Acum_Alloc_Cost_PolCrcy
      ,TrxnStage.Acum_Alloc_Cost_FndCrcy
      ,TrxnStage.Acum_Buy_Unit
      ,TrxnStage.Sur_Gain_Loss
      ,TrxnStage.Sur_Avg_Cost
      ,TrxnStage.Sur_ROI_Non_Div_Fnd
      ,TrxnStage.Acum_Div_Amt_PolCrcy As FndAcum_Div_Amt_PolCrcy
      ,TrxnStage.Acum_Div_Amt_FndCrcy As FndAcum_Div_Amt_FndCrcy
      ,TrxnStage.Acum_Div_Amt_LocalCrcy As FndAcum_Div_Amt_LocalCrcy
      ,TrxnStage.Acum_Reinv_Div_Amt_PolCrcy
      ,TrxnStage.Acum_Reinv_Div_Amt_FndCrcy
      ,TrxnStage.Acum_Sur_Amt_PolCrcy
      ,TrxnStage.Acum_Sur_Amt_FndCrcy
      ,TrxnStage.Acum_Sur2_Amt_PolCrcy
      ,TrxnStage.Acum_Sur2_Amt_FndCrcy
      ,TrxnStage.Acum_Subscription_Fee_PolCrcy
      ,TrxnStage.Acum_Subscription_Fee_FndCrcy
      ,TrxnStage.Acum_Switch_In_Amt_PolCrcy
      ,TrxnStage.Acum_Switch_In_Amt_FndCrcy
      ,TrxnStage.Acum_Switch_In_Fee_PolCrcy
      ,TrxnStage.Acum_Switch_In_Fee_FndCrcy
      ,TrxnStage.Acum_Switch_Out_Amt_PolCrcy
      ,TrxnStage.Acum_Switch_Out_Amt_FndCrcy
      ,TrxnStage.Acum_Adm_Fee_PolCrcy
      ,TrxnStage.Acum_Adm_Fee_FndCrcy
      ,TrxnStage.Acum_Rider_ROI_PolCrcy
      ,TrxnStage.Acum_Rider_ROI_FndCrcy
      ,TrxnStage.Acum_Guad_Amt_PolCrcy
      ,TrxnStage.Acum_Guad_Amt_FndCrcy
      ,TrxnStage.Acum_Loyalty_Bonus_Amt_PolCrcy
      ,TrxnStage.Acum_Loyalty_Bonus_Amt_FndCrcy
	  ,AcctVal.Net_Alloc_Cost_PolCrcy As FndNet_Alloc_Cost_PolCrcy
      ,AcctVal.Net_Alloc_Cost_FndCrcy As FndNet_Alloc_Cost_FndCrcy
      ,AcctVal.Net_Alloc_Cost_LocalCrcy As FndNet_Alloc_Cost_LocalCrcy
      ,AcctVal.Fnd_Acc_Val_PolCrcy
      ,AcctVal.Fnd_Acc_Val_FndCrcy
      ,AcctVal.Fnd_Acc_Val_LocalCrcy
      ,AcctVal.Nav_Val
      ,AcctVal.Nav_Date
      ,AcctVal.Fixing_Rate
      ,AcctVal.Fixing_Rate_LocalCrcy
      ,AcctVal.Fixing_Rate_Date
      ,AcctVal.Fnd_Alloc_Ratio
	  ,ROI.ROI_Inv_Div_Fnd
      ,ROI.ROI_Non_Div_Fnd
      ,ROI.ROI_Inv_Div_Sur2_Fnd
	  ,Policy.Acum_Div_Amt_PolCrcy
      ,Policy.Acum_Div_Amt_LocalCrcy
      ,Policy.Acum_Inv_Cost
      ,Policy.Net_Alloc_Cost_PolCrcy
      ,Policy.Net_Alloc_Cost_LocalCrcy
      ,Policy.Acct_Value_PolCrcy
      ,Policy.Acct_Value_LoaclCrcy
      ,Policy.ROI_Inv_Div
      ,Policy.ROI_Non_Div
  FROM ilp.TrxnStage  
   Inner Join ilp.v_SelectLastTrxnStageSeq TrxnLast On TrxnStage.Pol_Id = TrxnLast.Pol_Id And TrxnStage.Fnd_Id = TrxnLast.Fnd_Id And TrxnStage.Trxn_Seq = TrxnLast.Trxn_Seq
   Left Join ilp.v_SelectLastAcctValStageIGMBatchDate SLAVI On 1=1 And SLAVI.Pol_Id = TrxnLast.Pol_Id And SLAVI.Fnd_Id = TrxnLast.Fnd_Id
   Left Join ilp.AcctValStage AcctVal On AcctVal.Pol_Id = TrxnStage.Pol_Id And AcctVal.Fnd_Id = TrxnStage.Fnd_Id And AcctVal.IGM_Batch_Date = SLAVI.IGM_Batch_Date
   Left Join ilp.ROIStage ROI On ROI.Pol_Id = TrxnStage.Pol_Id And ROI.Fnd_Id = TrxnStage.Fnd_Id And ROI.IGM_Batch_Date = SLAVI.IGM_Batch_Date
   Left Join ilp.PolicyStage Policy On Policy.Pol_Id = TrxnStage.Pol_Id And Policy.IGM_Batch_Date = SLAVI.IGM_Batch_Date
  Where TrxnStage.Reverse_Date is null 
GO
/****** Object:  Table [igm].[TBNDV_Dity]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TBNDV_Dity](
	[POL_ID] [char](10) NOT NULL,
	[BON_DIV_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[BON_DIV_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[BON_DIV_STAT_CD] [char](1) NOT NULL,
	[FND_ID] [char](5) NULL,
	[FND_UNIT_QTY] [decimal](18, 6) NOT NULL,
	[FND_BON_UNIT_AMT] [decimal](12, 6) NOT NULL,
	[XCHNG_RT] [decimal](18, 9) NOT NULL,
	[FND_TRXN_AMT] [decimal](17, 2) NOT NULL,
	[BON_DIV_STAT_DT] [date] NOT NULL,
	[BON_DIV_REVRS_DT] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TCXRT]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TCXRT](
	[CO_ID] [char](2) NOT NULL,
	[XCHNG_RT_GR_CD] [char](1) NOT NULL,
	[XCHNG_RT_TYP_CD] [char](1) NOT NULL,
	[XCHNG_FROM_CRCY_CD] [char](2) NOT NULL,
	[XCHNG_TO_CRCY_CD] [char](2) NOT NULL,
	[XCHNG_EFF_DT] [date] NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[XCHNG_RT] [decimal](18, 9) NOT NULL,
 CONSTRAINT [Q_IPRDW10_TCXRT_CO_ID_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[XCHNG_RT_GR_CD] ASC,
	[XCHNG_RT_TYP_CD] ASC,
	[XCHNG_FROM_CRCY_CD] ASC,
	[XCHNG_TO_CRCY_CD] ASC,
	[XCHNG_EFF_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TFH]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFH](
	[CO_ID] [char](2) NOT NULL,
	[FND_ID] [char](5) NOT NULL,
	[FND_CRCY_CD] [char](2) NULL,
	[FND_STAT_CD] [char](1) NULL,
	[FND_TYP_CD] [char](1) NULL,
	[FND_CREAT_DT] [date] NULL,
 CONSTRAINT [PK_TFH] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[FND_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TMAST]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TMAST](
	[CO_ID] [char](2) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NULL,
	[ONLN_PRCES_DT] [date] NULL,
	[BTCH_PRCES_DT] [date] NULL,
	[CHQ_REF_SEQ_NUM] [decimal](5, 0) NOT NULL,
	[STOP_SIGN_ON_IND] [char](1) NOT NULL,
	[APPL_STAT_CD] [char](1) NOT NULL,
	[BEG_MO_STAT_CD] [char](1) NOT NULL,
	[APPL_CTL_CTRY_CD] [char](2) NOT NULL,
	[APPL_CTL_CRCY_CD] [char](2) NOT NULL,
	[ONLN_DT_CHNG_TIME] [time](7) NULL,
	[CHNG_LEAD_TIME_DUR] [decimal](3, 0) NOT NULL,
	[PREV_ONLN_DT_TS] [varchar](50) NOT NULL,
	[TOT_POL_CNT_DTZ] [date] NULL,
	[TOT_ACTV_POL_CNTZ] [decimal](15, 0) NOT NULL,
 CONSTRAINT [QSYS_TMAST_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TPOL_ILP]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TPOL_ILP](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NULL,
	[POL_CSTAT_CD] [char](4) NOT NULL,
	[POL_PREV_CSTAT_CD] [char](4) NOT NULL,
	[SBSDRY_CO_ID] [char](2) NULL,
	[PLAN_ID] [char](6) NULL,
	[POL_INS_TYP_CD] [char](1) NOT NULL,
	[POL_INS_PURP_CD] [char](1) NOT NULL,
	[POL_STAT_CHNG_DT] [date] NULL,
	[POL_ISS_EFF_DT] [date] NULL,
	[POL_ISS_DT_TYP_CD] [char](1) NOT NULL,
	[POL_CEAS_DT] [date] NULL,
	[POL_CEAS_REASN_CD] [char](1) NOT NULL,
	[POL_BASE_CVG_NUM] [smallint] NOT NULL,
	[PREV_BASE_CVG_NUM] [smallint] NOT NULL,
	[POL_PAR_CVG_NUM] [smallint] NOT NULL,
	[POL_CVG_REC_CTR] [char](2) NOT NULL,
	[POL_NXT_ACTV_DT] [date] NULL,
	[NXT_ACTV_TYP_CD] [char](3) NOT NULL,
	[POL_UNDO_EFF_DT] [date] NULL,
	[POL_FINAL_DISP_DT] [date] NULL,
	[POL_MAIL_DT] [date] NULL,
	[POL_MAIL_REASN_CD] [char](1) NOT NULL,
	[APP_FORM_TYP_ID] [char](1) NOT NULL,
	[USER_ID] [char](8) NULL,
	[POL_BUS_CLAS_CD] [char](1) NOT NULL,
	[POL_PRT_DT] [date] NULL,
	[POL_PREM_TYP_CD] [char](1) NOT NULL,
	[POL_PNSN_QUALF_CD] [char](1) NOT NULL,
	[POL_PREV_ANNV_DUR] [char](3) NOT NULL,
	[POL_CTRY_CD] [char](2) NOT NULL,
	[POL_SYS_ID] [char](8) NOT NULL,
	[POL_PREV_RESET_YR] [decimal](4, 0) NOT NULL,
	[LATST_ACTV_DT] [date] NULL,
	[EARLST_REVRS_DT] [date] NULL,
	[POL_SPND_IND] [char](1) NOT NULL,
	[POL_ACCT_PAR_CD] [char](1) NOT NULL,
	[POL_GL_ACCT_TYP_CD] [char](1) NOT NULL,
	[POL_CRCY_CD] [char](2) NOT NULL,
	[POL_MULT_CRCY_IND] [char](1) NOT NULL,
	[SERV_BR_ID] [char](5) NULL,
	[CLI_CRNT_LOC_CD] [char](2) NOT NULL,
	[POL_ISS_LOC_CD] [char](2) NOT NULL,
	[POL_PREV_ACCT_DT] [date] NULL,
	[POL_BILL_MODE_CD] [char](2) NOT NULL,
	[POL_BILL_TYP_CD] [char](1) NOT NULL,
	[POL_SFB_CD] [char](2) NOT NULL,
	[POL_PD_TO_DT_NUM] [char](10) NOT NULL,
	[BILL_RMND_REASN_CD] [char](1) NOT NULL,
	[POL_BILL_TO_DT_NUM] [char](10) NOT NULL,
	[BILL_LEAD_TIME_DUR] [decimal](3, 0) NOT NULL,
	[POL_PMT_DRW_DY] [decimal](3, 0) NOT NULL,
	[POL_PMT_DRW_DT] [date] NULL,
	[PMT_REDRW_OPT_CD] [char](1) NOT NULL,
	[POL_PMT_REDRW_DT] [date] NULL,
	[POL_TOT_BILL_AMT] [decimal](15, 2) NOT NULL,
	[POL_MPREM_AMT] [decimal](15, 2) NOT NULL,
	[POL_SNDRY_AMT] [decimal](13, 2) NOT NULL,
	[POL_PREV_SNDRY_AMT] [decimal](13, 2) NOT NULL,
	[POL_SNDRY_REASN_CD] [char](1) NOT NULL,
	[POL_LOAN_REPAY_AMT] [decimal](13, 2) NOT NULL,
	[POL_RBILL_CD] [char](1) NOT NULL,
	[POL_GRS_APREM_AMT] [decimal](15, 2) NOT NULL,
	[POL_CRNT_MODE_FCT] [decimal](9, 7) NOT NULL,
	[POL_PREV_FACE_AMT] [decimal](15, 2) NOT NULL,
	[POL_PFEE_FCT] [decimal](9, 7) NOT NULL,
	[MODE_FCT_RESTR_IND] [char](1) NOT NULL,
	[POL_PFEE_RESTR_IND] [char](1) NOT NULL,
	[POL_PREV_PFEE_FCT] [decimal](9, 7) NOT NULL,
	[POL_PMT_RETRN_1_DT] [date] NULL,
	[POL_PMT_RETRN_1_CD] [char](2) NOT NULL,
	[POL_PMT_RETRN_2_DT] [date] NULL,
	[POL_PMT_RETRN_2_CD] [char](2) NOT NULL,
	[POL_PREV_MPREM_AMT] [decimal](15, 2) NOT NULL,
	[POL_PREV_MODE_FCT] [decimal](9, 7) NOT NULL,
	[POL_PREV_MODE_CD] [char](2) NOT NULL,
	[PREV_BILL_TYP_CD] [char](1) NOT NULL,
	[PREV_PD_TO_DT_NUM] [char](10) NOT NULL,
	[PREM_RECALC_OPT_CD] [char](1) NOT NULL,
	[POL_NFO_CD] [char](1) NOT NULL,
	[POL_APL_IND] [char](1) NOT NULL,
	[AUTO_PREM_PMT_IND] [char](1) NOT NULL,
	[POL_VPO_PU_DUR] [char](2) NOT NULL,
	[PREM_DSCNT_TYP_CD] [char](3) NOT NULL,
	[POL_PREM_DSCNT_PCT] [decimal](5, 3) NOT NULL,
	[MPREM_DSCNT_AMT] [decimal](13, 2) NOT NULL,
	[POL_DIV_OPT_CD] [char](1) NOT NULL,
	[POL_DIV_DT] [date] NULL,
	[POL_PREV_DIV_DUR] [char](3) NOT NULL,
	[DIV_DCLR_DUR_AMT] [decimal](13, 2) NOT NULL,
	[DIV_DCLR_LTD_AMT] [decimal](15, 2) NOT NULL,
	[POL_DOD_ACUM_AMT] [decimal](15, 2) NOT NULL,
	[POL_DOD_AVB_AMT] [decimal](15, 2) NOT NULL,
	[DOD_CRNT_INT_AMT] [decimal](11, 2) NOT NULL,
	[POL_DOD_INT_RT] [decimal](5, 5) NOT NULL,
	[POL_DOD_CLR_AMT] [decimal](15, 2) NOT NULL,
	[DOD_INT_CLR_AMT] [decimal](11, 2) NOT NULL,
	[DOD_AVB_CLR_AMT] [decimal](15, 2) NOT NULL,
	[PUA_LTD_FACE_AMT] [decimal](15, 2) NOT NULL,
	[PUA_YTD_FACE_AMT] [decimal](15, 2) NOT NULL,
	[PUA_CLR_FACE_AMT] [decimal](15, 2) NOT NULL,
	[POL_PUA_CLR_TYP_CD] [char](1) NOT NULL,
	[POL_OYT_AMT] [decimal](13, 0) NOT NULL,
	[POL_CRNT_OYT_AMT] [decimal](13, 0) NOT NULL,
	[POL_DIV_SUSP_AMT] [decimal](13, 2) NOT NULL,
	[POL_PDF_AMT] [decimal](13, 2) NOT NULL,
	[POL_PDF_INT_AMT] [decimal](11, 2) NOT NULL,
	[POL_PDF_AVB_AMT] [decimal](13, 2) NOT NULL,
	[POL_PDF_INT_RT] [decimal](5, 5) NOT NULL,
	[POL_PDF_CLR_AMT] [decimal](13, 2) NOT NULL,
	[PDF_INT_CLR_AMT] [decimal](11, 2) NOT NULL,
	[PDF_AVB_CLR_AMT] [decimal](13, 2) NOT NULL,
	[POL_PDF_SUSP_AMT] [decimal](13, 2) NOT NULL,
	[POL_PDF_SUSP_DT] [date] NULL,
	[POL_MISC_SUSP_AMT] [decimal](17, 2) NOT NULL,
	[POL_MISC_SUSP_DT] [date] NULL,
	[POL_PREM_SUSP_AMT] [decimal](17, 2) NOT NULL,
	[POL_PREM_SUSP_DT] [date] NULL,
	[POL_OS_DISB_AMT] [decimal](17, 2) NOT NULL,
	[POL_OS_DISB_DT] [date] NULL,
	[SERV_AGT_ID] [char](6) NULL,
	[PREV_SERV_AGT_ID] [char](6) NULL,
	[SERV_AGT_ASIGN_DT] [date] NULL,
	[POL_PREV_SERV_DT] [date] NULL,
	[SERV_COMM_RTBL2_ID] [char](5) NULL,
	[POL_TRAIL_COMM_DT] [date] NULL,
	[POL_REG_CD] [char](1) NOT NULL,
	[POL_REG_DT] [date] NULL,
	[POL_CTRY_TAX_DT] [date] NULL,
	[POL_LOCK_FND_IND] [char](1) NOT NULL,
	[POL_PNSN_SRC_CD] [char](3) NOT NULL,
	[POL_REG_FND_SRC_CD] [char](1) NOT NULL,
	[REG_SPCL_HNDL_CD] [char](1) NOT NULL,
	[REG_SAV_PORTN_CD] [char](1) NOT NULL,
	[REG_SAV_PORTN_AMT] [decimal](13, 2) NOT NULL,
	[POL_REG_TOT_AMT] [decimal](13, 2) NOT NULL,
	[POL_APP_RECV_DT] [date] NULL,
	[POL_APP_SIGN_DT] [date] NULL,
	[POL_APP_CMPLT_DT] [date] NULL,
	[POL_INFC_DT] [date] NULL,
	[POL_REJ_REASN_CD] [char](2) NOT NULL,
	[POL_DISAB_DT] [date] NULL,
	[POL_APP_SIGN_IND] [char](1) NOT NULL,
	[POL_MIB_SIGN_CD] [char](1) NOT NULL,
	[POL_APP_FORM_ID] [char](20) NOT NULL,
	[POL_APP_CTR] [char](1) NOT NULL,
	[LOAN_INT_DEDBL_IND] [char](1) NOT NULL,
	[POL_TAX_TYP_CD] [char](1) NOT NULL,
	[POL_TXEMP_CD] [char](1) NOT NULL,
	[POL_PDF_RFND_CD] [char](1) NOT NULL,
	[TAX_RPT_FREQ_CD] [char](1) NOT NULL,
	[GAIN_RPT_TIME_CD] [char](1) NOT NULL,
	[ACRU_CALC_TIME_CD] [char](1) NOT NULL,
	[ANNV_ACB_OVRID_CD] [char](1) NOT NULL,
	[POL_TAX_RESTR_IND] [char](1) NOT NULL,
	[POL_7702_CD] [char](1) NOT NULL,
	[POL_TAMRA_CD] [char](1) NOT NULL,
	[POL_MEC_CD] [char](1) NOT NULL,
	[POL_MEC_DT] [date] NULL,
	[POL_MATRL_CHNG_DT] [date] NULL,
	[POL_7PAY_ANN_AMT] [decimal](15, 2) NOT NULL,
	[POL_7PAY_CUM_AMT] [decimal](17, 2) NOT NULL,
	[PREV_XEMP_TST_DUR] [char](3) NOT NULL,
	[POL_ANPAYO_YTD_AMT] [decimal](15, 2) NOT NULL,
	[POL_ANPAYO_PYR_AMT] [decimal](15, 2) NOT NULL,
	[POL_ANPAYO_LTD_AMT] [decimal](17, 2) NOT NULL,
	[POL_ANPAYO_NYR_AMT] [decimal](15, 2) NOT NULL,
	[POL_ANPAYO_EFF_DT] [date] NULL,
	[POL_ANPAYO_PMT_DT] [date] NULL,
	[POL_ANPAYO_MODE_CD] [char](2) NOT NULL,
	[POL_ANPAYO_1_AMT] [decimal](13, 2) NOT NULL,
	[ANPAYO_1_MTHD_CD] [char](1) NOT NULL,
	[ANPAYO_1_DEST_CD] [char](1) NOT NULL,
	[POL_ANPAYO_2_AMT] [decimal](13, 2) NOT NULL,
	[ANPAYO_2_MTHD_CD] [char](1) NOT NULL,
	[ANPAYO_2_DEST_CD] [char](1) NOT NULL,
	[POL_RRIF_MNPMT_AMT] [decimal](13, 2) NOT NULL,
	[RRIF_MNPMT_PYR_AMT] [decimal](13, 2) NOT NULL,
	[POL_LIF_MXPMT_AMT] [decimal](13, 2) NOT NULL,
	[LIF_MXPMT_PYR_AMT] [decimal](13, 2) NOT NULL,
	[CASL_PMT_YTD_AMT] [decimal](15, 2) NOT NULL,
	[CASL_PMT_PYR_AMT] [decimal](15, 2) NOT NULL,
	[POL_ANTY_SUSP_AMT] [decimal](13, 2) NOT NULL,
	[POL_DB_OPT_CD] [char](1) NOT NULL,
	[POL_UL_PRCES_DT] [date] NULL,
	[UL_LAPS_STRT_DT] [date] NULL,
	[UL_INIT_PREM_AMT] [decimal](13, 2) NOT NULL,
	[POL_UL_SHRT_AMT] [decimal](13, 2) NOT NULL,
	[POL_SHRT_CALC_CD] [char](1) NOT NULL,
	[UL_LAPS_NOTI_AMT] [decimal](13, 2) NOT NULL,
	[POL_MNPMT_TRG_AMT] [decimal](13, 0) NOT NULL,
	[PLAN_PERI_PREM_AMT] [decimal](13, 2) NOT NULL,
	[POL_GDLN_APREM_AMT] [decimal](17, 2) NOT NULL,
	[POL_GDLN_SPREM_AMT] [decimal](17, 2) NOT NULL,
	[ACUM_GDLN_PREM_AMT] [decimal](17, 2) NOT NULL,
	[SE_GDLN_APREM_IND] [char](1) NOT NULL,
	[POL_SE_GDLN_AMT] [decimal](17, 2) NOT NULL,
	[POL_SE_XSLD_AMT] [decimal](15, 2) NOT NULL,
	[SE_XSLD_RETRN_AMT] [decimal](15, 2) NOT NULL,
	[SE_XSLD_CLR_AMT] [decimal](15, 2) NOT NULL,
	[SE_SALE_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[POL_ENHC_CHNG_DT] [date] NULL,
	[FRST_CVG_ENHC_DT] [date] NULL,
	[ENHC_UWG_REQIR_IND] [char](1) NOT NULL,
	[ENHC_UWG_APROV_IND] [char](1) NOT NULL,
	[POL_ENHC_NELCT_QTY] [char](2) NOT NULL,
	[CLM_PAYO_MTHD_CD] [char](3) NOT NULL,
	[CLM_PAYE_REL_CD] [char](1) NOT NULL,
	[CLM_PAYE_POL_ID] [char](10) NOT NULL,
	[CLM_PAYE_CVG_NUM] [char](2) NOT NULL,
	[DI_CLM_ID] [char](6) NULL,
	[POL_DI_CLM_REC_CTR] [char](2) NOT NULL,
	[POL_CLM_STAT_CD] [char](1) NOT NULL,
	[POL_OPTL_CD] [char](1) NOT NULL,
	[CONN_OPTL_POL_ID] [char](10) NULL,
	[FREE_WTHDR_CD] [char](1) NOT NULL,
	[FREE_WTHDR_QTY] [decimal](3, 0) NOT NULL,
	[FREE_WTHDR_PERI_CD] [char](1) NOT NULL,
	[FREE_WTHDR_TOT_AMT] [decimal](15, 2) NOT NULL,
	[POL_FREE_XFER_CD] [char](1) NOT NULL,
	[POL_FREE_XFER_QTY] [decimal](3, 0) NOT NULL,
	[FREE_XFER_PERI_CD] [char](1) NOT NULL,
	[FREE_XFER_TOT_AMT] [decimal](15, 2) NOT NULL,
	[POL_CRNT_PSUR_AMT] [decimal](15, 2) NOT NULL,
	[POL_PREV_PSUR_AMT] [decimal](15, 2) NOT NULL,
	[AFR_THRSHD_PERI_CD] [char](1) NOT NULL,
	[POL_AFR_ALLOC_CD] [char](1) NOT NULL,
	[POL_AFR_THRSHD_AMT] [decimal](11, 2) NOT NULL,
	[POL_TOT_AFR_AMT] [decimal](15, 2) NOT NULL,
	[PREV_PERI_STMT_DT] [date] NULL,
	[NXT_PERI_STMT_DT] [date] NULL,
	[POL_REINS_CD] [char](1) NOT NULL,
	[XHBT_CRNT_LOC_CD] [char](2) NOT NULL,
	[XHBT_ISS_LOC_CD] [char](2) NOT NULL,
	[SURR_DIV_ACUM_AMT] [decimal](15, 2) NOT NULL,
	[POL_SURR_LOAN_AMT] [decimal](15, 2) NOT NULL,
	[POL_TRMN_PUA_AMT] [decimal](15, 2) NOT NULL,
	[TRMN_PUA_REASN_CD] [char](1) NOT NULL,
	[PREV_FILE_MAINT_DT] [date] NULL,
	[PREV_BTCH_PRCES_DT] [date] NULL,
	[POL_EDIT_IND] [char](1) NOT NULL,
	[POL_COMNT_TXT] [char](50) NOT NULL,
	[POL_RUSH_IND] [char](1) NOT NULL,
	[UNMTCH_MAIL_IND] [char](1) NOT NULL,
	[POL_SUPRES_ISS_IND] [char](1) NOT NULL,
	[LINK_POL_ISS_IND] [char](1) NOT NULL,
	[POL_CNFD_IND] [char](1) NOT NULL,
	[POL_TIA_IND] [char](1) NOT NULL,
	[POL_CVG_ERROR_CD] [char](1) NOT NULL,
	[POL_BNFY_PCT_IND] [char](1) NOT NULL,
	[FREE_LK_FND_IND] [char](1) NOT NULL,
	[FREE_LK_XFER_IND] [char](1) NOT NULL,
	[POL_FREE_LK_END_DT] [date] NULL,
	[NTU_TRMN_VALU_AMT] [decimal](15, 2) NOT NULL,
	[POL_MTHV_PRCES_IND] [char](1) NOT NULL,
	[POL_FRGN_TST_DT] [date] NULL,
	[POL_SETL_OPT_CD] [char](2) NOT NULL,
	[POL_SETL_OPT_DUR] [decimal](3, 0) NOT NULL,
	[POL_DBG_IND] [char](1) NOT NULL,
	[POL_DBG_LOAN_IND] [char](1) NOT NULL,
	[POL_UNIT_TYP_CD] [char](2) NOT NULL,
	[POL_OFFANNV_PD_DT] [date] NULL,
	[POL_NXT_MODE_CD] [char](2) NOT NULL,
	[POL_NXT_BILL_CD] [char](1) NOT NULL,
	[POL_NXT_MODE_FCT] [decimal](9, 7) NOT NULL,
	[POL_NXT_PFEE_FCT] [decimal](9, 7) NOT NULL,
	[POL_BILL_CHNG_DT] [date] NULL,
	[NXT_FCT_RESTR_IND] [char](1) NOT NULL,
	[NXT_PFEE_RESTR_IND] [char](1) NOT NULL,
	[POL_NXT_SNDRY_AMT] [decimal](13, 2) NOT NULL,
	[NXT_SNDRY_REASN_CD] [char](1) NOT NULL,
	[POL_NXT_PMT_DRW_DY] [decimal](3, 0) NOT NULL,
	[POL_DIV_XCES_CD] [char](1) NOT NULL,
	[POL_DIV_PRCES_DT] [date] NULL,
	[POL_MED_REASN_CDZ] [char](2) NOT NULL,
	[POL_APP_ENTR_DTZ] [date] NULL,
	[POL_ENDOW_FACE_AMTZ] [decimal](15, 2) NOT NULL,
	[PURE_ENDOW_PMT_DTZ] [date] NULL,
	[PUA_SUM_INS_AMTZ] [decimal](15, 2) NOT NULL,
	[SPL_BILL_TO_DTZ] [date] NULL,
	[NTU_REASN_CDZ] [char](1) NULL,
	[POL_GRCE_XPRY_DTZ] [date] NULL,
	[POL_CLM_MSG_INDZ] [char](1) NULL,
	[AGT_XFER_STRT_DTZ] [date] NULL,
	[AGT_XFER_STAT_CDZ] [char](1) NOT NULL,
	[AGT_CNFRM_DUE_DTZ] [date] NULL,
	[AGT_XFR_CHNG_DTZ] [date] NULL,
	[AGT_XFR_CHNG_TIMEZ] [time](7) NULL,
	[AGT_CNFRM_RECV_INDZ] [char](1) NOT NULL,
	[UW_1_NOTI_DTZ] [date] NULL,
	[UW_NEW_NOTI_DTZ] [date] NULL,
	[UW_CMPLT_DTZ] [date] NULL,
	[PADM_NOTI_DTZ] [date] NULL,
	[PADM_CANC_DTZ] [date] NULL,
	[PADM_SUPRES_INDZ] [char](1) NOT NULL,
	[FINAL_SUPRES_INDZ] [char](1) NOT NULL,
	[DIV_PMT_MTHDZ] [char](1) NOT NULL,
	[POL_NF_GRCE_INDZ] [char](1) NOT NULL,
	[NXT_SERV_AGT_IDZ] [char](6) NOT NULL,
	[POL_BILL_SUB_TYP_CDZ] [char](1) NOT NULL,
	[POL_APL_BILL_INDZ] [char](1) NOT NULL,
	[POL_NOTE_RECV_AMTZ] [decimal](15, 0) NOT NULL,
	[POL_SUSP_DPOS_AMTZ] [decimal](15, 0) NOT NULL,
	[POL_LAPS_RFND_AMTZ] [decimal](15, 2) NOT NULL,
	[POL_NF_PRCES_DTZ] [date] NULL,
	[POL_OEA_AMTZ] [decimal](15, 2) NOT NULL,
	[REINST_APP_DTZ] [date] NULL,
	[POL_CSTAT_REASN_CDZ] [char](2) NOT NULL,
	[POL_TRM_CNVR_CDZ] [char](1) NOT NULL,
	[POL_LEGAL_SIGN_INDZ] [char](1) NOT NULL,
	[POL_INS_HLTH_SIGN_INDZ] [char](1) NOT NULL,
	[POL_INS_SIGN_INDZ] [char](1) NOT NULL,
	[POL_MGMT_SIGN_INDZ] [char](1) NOT NULL,
	[POL_WITNS_CTZN_IDZ] [char](10) NOT NULL,
	[WK_SEQ_NUMZ] [char](6) NOT NULL,
	[POL_TOT_MNB_AMTZ] [decimal](17, 2) NOT NULL,
	[APP_ENTR_USER_IDZ] [char](8) NOT NULL,
	[APP_ENTR_TSZ] [varchar](50) NULL,
	[ATTDE_INV_RSK_CDZ] [char](1) NOT NULL,
	[STRAT_INV_OPT_CDZ] [char](1) NOT NULL,
	[SPL_BILL_TO_DT_NUMZ] [char](10) NOT NULL,
	[POL_XTRA_PREM_AMTZ] [decimal](15, 2) NOT NULL,
	[VUL_DRW_FAIL_NUMZ] [decimal](2, 0) NOT NULL,
	[XFER_OVRID_INDZ] [char](1) NOT NULL,
	[BCK_FILL_INDZ] [char](1) NOT NULL,
	[POL_SPDY_SERV_CDZ] [char](1) NOT NULL,
	[NXT_BILL_SUB_TYP_CDZ] [char](1) NOT NULL,
	[CORDR_TST_INDZ] [char](1) NOT NULL,
	[GIA_XFER_DTZ] [date] NULL,
	[CORDR_TST_FAIL_DTZ] [date] NULL,
	[POL_PSUS_CLR_AMTZ] [decimal](13, 2) NOT NULL,
	[POL_MSUS_CLR_AMTZ] [decimal](13, 2) NOT NULL,
	[PREV_BILL_TO_DT_NUMZ] [char](10) NOT NULL,
	[NLG_STAT_CDZ] [char](1) NOT NULL,
	[NLG_XPRY_REASN_CDZ] [char](1) NOT NULL,
	[NLG_XPRY_DTZ] [date] NULL,
	[SHRT_COI_ONLY_AMTZ] [decimal](13, 2) NOT NULL,
	[SHRT_MGMT_ONLY_AMTZ] [decimal](13, 2) NOT NULL,
	[UL_OL_LAPS_STRT_DTZ] [date] NULL,
	[POL_DELIV_DTZ] [date] NULL,
	[RETIR_AGEZ] [char](3) NOT NULL,
	[POL_LAST_BILL_AMTZ] [decimal](13, 2) NOT NULL,
	[LAPS_GRCE_XPRY_DTZ] [date] NULL,
	[POL_OL_DTZ] [date] NULL,
	[FREE_LK_CHNG_CDZ] [char](3) NOT NULL,
	[FREE_LK_CHNG_DTZ] [date] NULL,
	[POL_EARLY_WTHDR_CD] [char](1) NOT NULL,
	[POL_GUAR_XPRY_DT] [date] NULL,
	[BNK_CHNL_ID] [char](4) NOT NULL,
	[APP_AGT_SIGN_IND] [char](1) NOT NULL,
	[ANTY_DEFR_XPRY_CD] [char](1) NOT NULL,
	[POL_DELIV_MTHD_CD] [char](1) NOT NULL,
	[POL_E_CHNG_IND] [char](1) NOT NULL,
	[POL_E_LOAN_CD] [char](1) NOT NULL,
	[INIT_PREM_TRXN_DT] [date] NULL,
	[GIA_WTHDR_STRT_DT] [date] NULL,
	[INIT_RMTT_DSCNT_CD] [char](1) NOT NULL,
	[PREM_DRW_FAIL_QTY] [decimal](3, 0) NOT NULL,
	[FAX_IND] [char](1) NOT NULL,
	[SETL_OPT_STRT_DY] [decimal](2, 0) NOT NULL,
	[VULR_MPREM_AMT] [decimal](15, 2) NOT NULL,
	[VULR_PD_TO_DT_NUM] [char](10) NOT NULL,
	[VULR_PREV_PTD_NUM] [char](10) NOT NULL,
	[VULR_GRCE_XPRY_DT] [date] NULL,
	[SETL_OPT_STAT_CD] [char](1) NOT NULL,
	[NXT_XTRA_PREM_AMT] [decimal](13, 2) NOT NULL,
	[GIA_WTHDR_OPT_CD] [char](1) NOT NULL,
	[GIA_IMMED_WTHDR_DT] [date] NULL,
	[SAME_DIA_XFER_IND] [char](1) NOT NULL,
	[GIA_RMND_DT] [date] NULL,
	[POL_ATD_OF_AGE] [char](3) NOT NULL,
	[AUTO_AGT_XFER_IND] [char](1) NOT NULL,
	[AUTO_AGT_XFER_DT] [date] NULL,
	[POL_RETRN_DISB_AMT] [decimal](17, 2) NOT NULL,
	[POL_RETRN_DISB_DT] [date] NULL,
	[POL_PEND_DISB_AMT] [decimal](17, 2) NOT NULL,
	[POL_PEND_DISB_DT] [date] NULL,
	[VULR_NF_PRCES_DT] [date] NULL,
	[AGT_LPC_IND] [char](1) NOT NULL,
	[TEAS_SYS_CD] [char](1) NOT NULL,
	[INS_GUARD_DEC_IND] [char](1) NOT NULL,
	[SPRD_ACCT_OPT_1_CD] [char](1) NOT NULL,
	[SPRD_ACCT_OPT_2_CD] [char](1) NOT NULL,
	[INS_NHI_IND] [char](1) NOT NULL,
	[NHI_REVW_IND] [char](1) NOT NULL,
	[NHI_SIGN_RECV_IND] [char](1) NOT NULL,
	[PL_NOTI_DELIV_DT] [date] NULL,
	[VULR_PL_NOTI_DELIV_DT] [date] NULL,
	[REINST_DL_DT] [date] NULL,
	[VULR_REINST_DL_DT] [date] NULL,
	[RSK_DSCLSRE_RECV_IND] [char](1) NOT NULL,
	[RSK_DSCLSRE_RECV_DT] [date] NULL,
	[CUST_STAT_RECV_IND] [char](1) NOT NULL,
	[CUST_STAT_RECV_DT] [date] NULL,
	[LP_RECV_STAT_IND] [char](1) NOT NULL,
	[LP_RECV_STAT_DT] [date] NULL,
	[LOVE_GIFT_IND] [char](1) NOT NULL,
	[TSB_PROJ_CD] [char](10) NOT NULL,
	[MTG_LOAN_AMT] [decimal](15, 2) NOT NULL,
	[MTG_LI_BNFY_CVG_IND] [char](1) NOT NULL,
	[MTG_PRVD_REVW_IND] [char](1) NOT NULL,
	[TSB_BR_ID] [char](3) NOT NULL,
	[ANTY_GUAR_PERI_YR] [decimal](3, 0) NOT NULL,
	[ANNY_ACCU_PERI_YR] [decimal](3, 0) NOT NULL,
	[RT_ADJ_NOTI_IND] [char](1) NOT NULL,
	[RT_ADJ_WAV_IND] [char](1) NOT NULL,
	[E_POL_IND] [char](1) NOT NULL,
	[POL_DELIV_END_DTZ] [date] NULL,
	[UPD_POL_CLIC_IND] [char](1) NOT NULL,
	[INIT_PAYMENT_MODE] [char](1) NOT NULL,
	[RENEW_PAYMENT_MODE] [char](1) NOT NULL,
	[MLOAN_EXTR_IND] [char](1) NOT NULL,
	[OCCP_CLAS_CD] [char](2) NOT NULL,
	[OCCP_ID] [char](10) NOT NULL,
	[OCCP_ID_2Z] [char](10) NOT NULL,
	[ICC_ELDER_TYP_CD] [char](1) NOT NULL,
	[ICC_3MO_TYP_CD] [char](1) NOT NULL,
	[ICC_SURR_TYP_CD] [char](1) NOT NULL,
	[REIMB_LTR_IND] [char](1) NOT NULL,
 CONSTRAINT [Q_IPRDW10_TPOL_CO_ID_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectBonRowData]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






























-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	
-- 1. 由IGM的TBNDV_Dity資料
-- 2. 而且TFA要有對應TFD的資料，否則視為無交易記錄，不需匯入
-- Exemple: Select * From [ilp].[v_SelectBonRowData] Order by Pol_Id, Fnd_ID
-- =============================================
CREATE View [ilp].[v_SelectBonRowData]
AS

Select 
	 TBNDV_Dity.Pol_Id --保單號碼 
	,TMAST.BTCH_PRCES_DT As 'IGM_Batch_Date' --資料處理時間
	,BON_DIV_STAT_DT As 'Effective_Date' --交易生效日
	,BON_DIV_STAT_DT As 'Orig_Process_Date' --當次交易執行日
	,BON_DIV_STAT_DT As 'Complete_Date' --當次交易執行日
	,BON_DIV_REVRS_DT As 'Rverse_Date' --回溯執行日期
	,'S' As 'Alloc_Type' --投入類別
	,1999-BON_DIV_SEQ_NUM   Seq_No --序號
	,'BON' As CIA_TYP_CD--交易類別
	,'DIV' As CIA_REASN_CD --交易原因
	,TPOL_ILP.POL_CRCY_CD As CIA_CRCY_CD--保單幣別
	,TFH.FND_CRCY_CD As FIA_CRCY_CD--基金幣別
	,TBNDV_Dity.FND_ID --標的代號
	,Null As FIA_UNIT_QTY --當次交易單位數
	,TBNDV_Dity.FND_UNIT_QTY As FIA_UNIT_CUM_QTY--交易後單位數
	,Null As FIA_UNIT_PRIC_DT --交易淨值日期
	,Null As FIA_UNIT_PRIC_AMT --交易淨值
	,BON_DIV_STAT_DT As FIA_XCHNG_EFF_DTZ ---交易匯率日期
	,TBNDV_Dity.XCHNG_RT As FIA_XCHNG_CNVR_RT ---交易匯率
	--,LocalCrcy.XCHNG_RT As Trxn_Fixing_Rate_LocalCrcy ---交易匯率(當地幣別)
	,Case When TPOL_ILP.POL_CRCY_CD = 'NT' Then TBNDV_Dity.XCHNG_RT Else ExchngLocalCrcy.XCHNG_RT End As Trxn_Fixing_Rate_LocalCrcy ---交易匯率(當地幣別)
	,TBNDV_Dity.BON_DIV_TRXN_AMT As FIA_ORIG_TRXN_AMT--當次交易金額(保單幣別)
	,TBNDV_Dity.FND_TRXN_AMT As FIA_FND_TRXN_AMT--當次交易金額(基金幣別)
	,Round((Case When TPOL_ILP.POL_CRCY_CD = 'NT' Then TBNDV_Dity.XCHNG_RT Else ExchngLocalCrcy.XCHNG_RT End) * TBNDV_Dity.FND_TRXN_AMT,0) As Trxn_Amt_LocalCrcy --當次交易金額(當地幣別)
From igm.TBNDV_Dity  
Inner Join igm.TMAST ON 1=1
Left Join igm.TPOL_ILP ON 1=1 
And TPOL_ILP.POL_ID = TBNDV_Dity.POL_ID
Left Join igm.TFH ON 1=1 
And TFH.FND_ID = TBNDV_Dity.FND_ID
Left Join igm.TCXRT As ExchngLocalCrcy ON 1=1
	And XCHNG_FROM_CRCY_CD = TFH.FND_CRCY_CD
	And XCHNG_TO_CRCY_CD = 'NT' 
	And XCHNG_RT_GR_CD = 'D' 
	And XCHNG_RT_TYP_CD = 3
	And XCHNG_EFF_DT = BON_DIV_STAT_DT
GO
/****** Object:  Table [igm].[TFV]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFV](
	[CO_ID] [char](2) NOT NULL,
	[FND_ID] [char](5) NOT NULL,
	[FNDVL_UNIT_TYP_CD] [char](2) NOT NULL,
	[FNDVL_IDT_NUM] [char](7) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[PREV_FNDVL_IDT_NUM] [char](7) NULL,
	[FNDVL_EFF_DT] [date] NULL,
	[SELL_PRIC_AMT] [decimal](17, 9) NOT NULL,
	[PURCH_PRIC_AMT] [decimal](17, 9) NOT NULL,
	[FNDVL_SPLT_FCT] [decimal](3, 0) NOT NULL,
	[FNDVL_SPLT_CD] [char](1) NOT NULL,
	[FNDVL_CHNG_IND] [char](1) NOT NULL,
	[XTRNL_UNIT_PRIC_AMT] [decimal](17, 9) NOT NULL,
 CONSTRAINT [QSYS_TFV_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[FND_ID] ASC,
	[FNDVL_UNIT_TYP_CD] ASC,
	[FNDVL_IDT_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectFndLastNav]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

























-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	取得每種標的最新淨值
-- Exemple: Select * From [ilp].[v_SelectFndLastNav] Order by  Fnd_ID
-- =============================================
CREATE View [ilp].[v_SelectFndLastNav]
AS


--取淨值檔每種標的最後一筆日期
With NavMaxEffDt As(
Select 
	FND_ID,
	Max(FNDVL_EFF_DT) AS FNDVL_EFF_DT
From igm.TFV Group By FND_ID
), LatestNav As (
--用每種標的最後一筆日期取淨值 
Select NavMaxEffDt.*,TFV.SELL_PRIC_AMT  
From igm.TFV  
Inner Join NavMaxEffDt NavMaxEffDt On 1=1
And NavMaxEffDt.FND_ID = TFV.FND_ID
And NavMaxEffDt.FNDVL_EFF_DT = TFV.FNDVL_EFF_DT
)

Select * From LatestNav
GO
/****** Object:  View [ilp].[v_SelectTrxnLatestRow]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	由ilp.Trxn、ilp.TrxnStage，取出保單號碼中每筆標的最後一筆交易資料
-- Exemple: Select * From [ilp].[v_SelectTrxnLatestRow]
-- =============================================
CREATE View [ilp].[v_SelectTrxnLatestRow]
AS

WITH 
TrxnStageLastRow AS
(	
	Select Pol_Id, FND_ID, MAX(Trxn_Seq) MaxTrxn_Seq
	From ilp.TrxnStage 
	Group by Pol_Id, FND_ID
),
LastTrxn As
( 	
	Select *,
	--貨幣帳戶只有配息，排序會都是0，因此要再找只有配息的最後一筆
	Row_Number() over(PARTITION BY Pol_Id, Fnd_Id ORDER BY Pol_Id, Fnd_Id,Complete_Date Desc ,Effective_Date Desc,Seq_No Desc) AS SN
	From ilp.TrxnStage 
	Where 
	Exists (Select 1 From TrxnStageLastRow 
	Where 1=1
	And TrxnStageLastRow.Pol_Id = TrxnStage.Pol_Id 
	And TrxnStageLastRow.FND_ID = TrxnStage.FND_ID 
	And TrxnStageLastRow.MaxTrxn_Seq = TrxnStage.Trxn_Seq 
	)
),
FilterLastTrxn As
( 	
	Select * From LastTrxn Where SN = 1
) 

Select * From FilterLastTrxn  --where Pol_Id = '6680139300' And Fnd_Id = 'NTD01' 

--Select     Pol_Id,Fnd_Id,Trxn_Seq,* From ilp.TrxnStage  where Pol_Id = '6680139300' And Fnd_Id = 'NTD01' 
GO
/****** Object:  Table [igm].[TFDUT]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFDUT](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CVG_NUM] [char](2) NOT NULL,
	[FND_ID] [char](5) NOT NULL,
	[FIA_IDT_NUM] [char](7) NOT NULL,
	[FIA_SEQ_NUM] [smallint] NOT NULL,
	[FIA_UNIT_TYP_CD] [char](2) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[FIA_UNIT_PRIC_AMT] [decimal](17, 9) NOT NULL,
	[FIA_UNIT_QTY] [decimal](18, 6) NOT NULL,
	[FIA_UNIT_CUM_QTY] [decimal](18, 6) NOT NULL,
	[FIA_UNIT_PRIC_DT] [date] NULL,
	[REVRS_UNIT_QTYZ] [decimal](17, 6) NOT NULL,
	[FND_CF_INT_BAL_AMT] [decimal](17, 5) NOT NULL,
	[NXT_FDCF_INT_CAP_DT] [date] NULL,
	[FND_CF_INT_PCT] [decimal](7, 4) NOT NULL,
	[INT_FROM_PREV_FDCF_AMT] [decimal](17, 5) NOT NULL,
	[FDCF_ACUM_INT_LTD_AMT] [decimal](17, 5) NOT NULL,
	[FND_CF_INT_TRXN_AMT] [decimal](17, 5) NOT NULL,
	[REVRS_INT_TRXN_AMT] [decimal](17, 5) NOT NULL,
 CONSTRAINT [Q_IPRDW10_TFDUT_CO_ID_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC,
	[FIA_UNIT_TYP_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TFA_Dity]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFA_Dity](
	[CIA_PRCES_DT_DITY] [date] NULL,
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CVG_NUM] [char](2) NOT NULL,
	[CIA_IDT_NUM] [char](7) NOT NULL,
	[CIA_SEQ_NUM] [smallint] NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[CIA_TYP_CD] [char](3) NOT NULL,
	[CIA_REVRS_PRCES_DT] [date] NULL,
	[CIA_EFF_DT] [date] NULL,
	[CIA_REASN_CD] [char](3) NOT NULL,
	[CIA_REVRS_REASN_CD] [char](3) NOT NULL,
	[FRST_FIA_FND_ID] [char](5) NULL,
	[PREV_CIA_IDT_NUM] [char](7) NULL,
	[PREV_CIA_SEQ_NUM] [smallint] NULL,
	[CIA_PRCES_DT] [date] NULL,
	[CIA_UNIT_STAT_CD] [char](1) NOT NULL,
	[CIA_SRC_DEST_CD] [char](1) NOT NULL,
	[CIA_REG_FND_SRC_CD] [char](1) NOT NULL,
	[CIA_CLI_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[CIA_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[CIA_ALLOC_CD] [char](1) NOT NULL,
	[CIA_COMM_PRCES_IND] [char](1) NOT NULL,
	[CIA_LOAD_FORCE_IND] [char](1) NOT NULL,
	[CIA_FIA_REC_CTR] [smallint] NOT NULL,
	[CIA_FND_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[PEND_DPOS_INT_PCT] [decimal](9, 6) NOT NULL,
	[CVG_PMT_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CVG_SURR_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CVG_SHRT_LTD_AMT] [decimal](15, 2) NOT NULL,
	[CVG_GUAR_VALU_AMT] [decimal](15, 2) NOT NULL,
	[CIA_SURR_DIFF_AMT] [decimal](15, 2) NOT NULL,
	[CIA_TAXWH_IND] [char](1) NOT NULL,
	[CIA_TAX_YR] [decimal](4, 0) NOT NULL,
	[CIA_7702_DECR_DT] [date] NULL,
	[CIA_SHRT_AMT] [decimal](13, 2) NOT NULL,
	[CIA_REVRS_STAT_CD] [char](1) NOT NULL,
	[CIA_VALU_SURR_PCT] [decimal](7, 4) NOT NULL,
	[PREV_SURR_IDT_NUM] [char](7) NULL,
	[PREV_SURR_SEQ_NUM] [smallint] NULL,
	[GUAR_VALU_ESTB_IND] [char](1) NOT NULL,
	[CIA_RMND_REASN_CD] [char](1) NOT NULL,
	[CIA_FREE_WTHDR_AMT] [decimal](15, 2) NOT NULL,
	[CIA_FREE_XFER_AMT] [decimal](15, 2) NOT NULL,
	[POL_PAYO_NUM] [decimal](5, 0) NOT NULL,
	[CDA_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[CIA_SUSP_ACCT_IND] [char](1) NOT NULL,
	[BON_DIV_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[CIA_CRCY_CD] [char](2) NOT NULL,
	[CIA_ACCT_TYP_CDZ] [char](1) NOT NULL,
	[CIA_ORIG_PRCES_DTZ] [date] NULL,
	[CIA_RPT_STAT_CDZ] [char](2) NOT NULL,
	[CIA_RPT_DTZ] [date] NULL,
	[REVRS_RPT_STAT_CDZ] [char](2) NOT NULL,
	[REVRS_RPT_DTZ] [date] NULL,
	[XFER_IN_RPT_CDZ] [char](2) NOT NULL,
	[XFER_IN_RPT_DTZ] [date] NULL,
	[CIA_DED_SHRT_COI_AMTZ] [decimal](15, 2) NOT NULL,
	[CIA_DED_SHRT_MGMT_AMTZ] [decimal](15, 2) NOT NULL,
	[CIA_PRST_BON_AMT] [decimal](15, 2) NOT NULL,
	[GUAR_BNFT_CHRG_AMT] [decimal](13, 2) NOT NULL,
	[REMN_INIT_PREM_AMT] [decimal](13, 2) NOT NULL,
	[NXT_GIA_MAX_AMT] [decimal](15, 2) NOT NULL,
	[ROP_AMT] [decimal](15, 2) NOT NULL,
	[NLG_FEE_AMT] [decimal](15, 2) NOT NULL,
	[FND_CF_INT_RPT_CDZ] [char](2) NOT NULL,
	[FND_CF_INT_RPT_DTZ] [date] NULL,
	[DYTIME_RPT_DTZ] [date] NULL,
	[TPZ_PRCES_IND] [char](1) NOT NULL,
	[CLOS_DY_MAX_RPT_DTZ] [date] NULL,
	[CIA_OL_SUR_IND] [char](1) NOT NULL,
	[CIA_ETF_PCHRG_AMT] [decimal](15, 2) NOT NULL,
 CONSTRAINT [PK_TFA_Dity] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[CIA_IDT_NUM] ASC,
	[CIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TFD]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFD](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CVG_NUM] [char](2) NOT NULL,
	[FND_ID] [char](5) NOT NULL,
	[FIA_IDT_NUM] [char](7) NOT NULL,
	[FIA_SEQ_NUM] [smallint] NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[FIA_EFF_DT] [date] NULL,
	[NXT_FIA_FND_ID] [char](5) NULL,
	[FIA_REVRS_STAT_CD] [char](1) NOT NULL,
	[FIA_UNIT_STAT_CD] [char](1) NOT NULL,
	[FIA_IN_ALLOC_PCT] [decimal](7, 4) NOT NULL,
	[FIA_OUT_ALLOC_PCT] [decimal](7, 4) NOT NULL,
	[FIA_VALU_SURR_PCT] [decimal](7, 4) NOT NULL,
	[FIA_FND_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[FIA_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[PEND_DPOS_INT_AMT] [decimal](15, 2) NOT NULL,
	[FIA_PEND_AMT] [decimal](15, 2) NOT NULL,
	[FIA_SURR_UNIT_QTY] [decimal](18, 9) NOT NULL,
	[CFN_TRXN_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CFN_LOAD_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CFN_INT_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CFN_PEND_LTD_AMT] [decimal](17, 2) NOT NULL,
	[FIA_GLA_CD] [char](1) NOT NULL,
	[FIA_FND_GLA_AMT] [decimal](15, 2) NOT NULL,
	[FIA_GNRL_GLA_AMT] [decimal](15, 2) NOT NULL,
	[FIA_REVRS_GLA_CD] [char](1) NOT NULL,
	[REVRS_FND_GLA_AMT] [decimal](15, 2) NOT NULL,
	[REVRS_GNRL_GLA_AMT] [decimal](15, 2) NOT NULL,
	[FIA_CRCY_CD] [char](2) NOT NULL,
	[FIA_ORIG_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[FIA_ORIG_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[FIA_XCHNG_CNVR_RT] [decimal](18, 9) NOT NULL,
	[FIA_XCHNG_TYP_CD] [char](1) NOT NULL,
	[FIA_CMPLT_DTZ] [date] NULL,
	[FIA_PRST_BON_AMT] [decimal](15, 2) NOT NULL,
	[CUM_DEP_AMT] [decimal](15, 2) NOT NULL,
	[CUM_DEP_FEE_AMT] [decimal](15, 2) NOT NULL,
	[CUM_SUR_AMT] [decimal](15, 2) NOT NULL,
	[CUM_MTHV_AMT] [decimal](15, 2) NOT NULL,
	[CUM_XFER_OUT_AMT] [decimal](15, 2) NOT NULL,
	[CUM_XFER_IN_AMT] [decimal](15, 2) NOT NULL,
	[CUM_ROI_RT] [decimal](7, 4) NOT NULL,
	[FIA_XCHNG_EFF_DTZ] [date] NULL,
	[CLOS_DY_RPT_DTZ] [date] NULL,
	[ORIG_ETF_PCHRG_AMT] [decimal](15, 2) NOT NULL,
	[FIA_ETF_PCHRG_AMT] [decimal](15, 2) NOT NULL,
	[FIA_ETF_PCHRG_PCT] [decimal](7, 4) NOT NULL,
 CONSTRAINT [Q_IPRDW10_TFD_CO_ID_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TFD_Dity]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFD_Dity](
	[FIA_CMPLT_DTZ_ORIG] [date] NULL,
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CVG_NUM] [char](2) NOT NULL,
	[FND_ID] [char](5) NOT NULL,
	[FIA_IDT_NUM] [char](7) NOT NULL,
	[FIA_SEQ_NUM] [smallint] NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[FIA_EFF_DT] [date] NULL,
	[NXT_FIA_FND_ID] [char](5) NULL,
	[FIA_REVRS_STAT_CD] [char](1) NOT NULL,
	[FIA_UNIT_STAT_CD] [char](1) NOT NULL,
	[FIA_IN_ALLOC_PCT] [decimal](7, 4) NOT NULL,
	[FIA_OUT_ALLOC_PCT] [decimal](7, 4) NOT NULL,
	[FIA_VALU_SURR_PCT] [decimal](7, 4) NOT NULL,
	[FIA_FND_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[FIA_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[PEND_DPOS_INT_AMT] [decimal](15, 2) NOT NULL,
	[FIA_PEND_AMT] [decimal](15, 2) NOT NULL,
	[FIA_SURR_UNIT_QTY] [decimal](18, 9) NOT NULL,
	[CFN_TRXN_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CFN_LOAD_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CFN_INT_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CFN_PEND_LTD_AMT] [decimal](17, 2) NOT NULL,
	[FIA_GLA_CD] [char](1) NOT NULL,
	[FIA_FND_GLA_AMT] [decimal](15, 2) NOT NULL,
	[FIA_GNRL_GLA_AMT] [decimal](15, 2) NOT NULL,
	[FIA_REVRS_GLA_CD] [char](1) NOT NULL,
	[REVRS_FND_GLA_AMT] [decimal](15, 2) NOT NULL,
	[REVRS_GNRL_GLA_AMT] [decimal](15, 2) NOT NULL,
	[FIA_CRCY_CD] [char](2) NOT NULL,
	[FIA_ORIG_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[FIA_ORIG_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[FIA_XCHNG_CNVR_RT] [decimal](18, 9) NOT NULL,
	[FIA_XCHNG_TYP_CD] [char](1) NOT NULL,
	[FIA_CMPLT_DTZ] [date] NULL,
	[FIA_PRST_BON_AMT] [decimal](15, 2) NOT NULL,
	[CUM_DEP_AMT] [decimal](15, 2) NOT NULL,
	[CUM_DEP_FEE_AMT] [decimal](15, 2) NOT NULL,
	[CUM_SUR_AMT] [decimal](15, 2) NOT NULL,
	[CUM_MTHV_AMT] [decimal](15, 2) NOT NULL,
	[CUM_XFER_OUT_AMT] [decimal](15, 2) NOT NULL,
	[CUM_XFER_IN_AMT] [decimal](15, 2) NOT NULL,
	[CUM_ROI_RT] [decimal](7, 4) NOT NULL,
	[FIA_XCHNG_EFF_DTZ] [date] NULL,
	[CLOS_DY_RPT_DTZ] [date] NULL,
	[ORIG_ETF_PCHRG_AMT] [decimal](15, 2) NOT NULL,
	[FIA_ETF_PCHRG_AMT] [decimal](15, 2) NOT NULL,
	[FIA_ETF_PCHRG_PCT] [decimal](7, 4) NOT NULL,
 CONSTRAINT [Q_IPRDW10_TFD_Dity_CO_ID_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectTrxnRowData]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



























-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	
-- 1. 由IGM資料，組出ilp.Policy、ilp.Trxn所需資料，僅取交易完成資料
-- 2. 而且TFA要有對應TFD的資料，否則視為無交易記錄，不需匯入
-- Exemple: Select * From [ilp].[v_SelectTrxnRowData] Order by Pol_Id, Fnd_ID, PRocess_Date
-- =============================================
CREATE View [ilp].[v_SelectTrxnRowData]
AS

Select 
	 TFA.Pol_Id --保單號碼
	,TMAST.BTCH_PRCES_DT As 'IGM_Batch_Date' --資料處理時間
	,TFA.CIA_EFF_DT As 'Effective_Date' --交易生效日
	,TFA.CIA_PRCES_DT As 'Process_Date' --原始交易執行日
	,TFA.CIA_ORIG_PRCES_DTZ As 'Orig_Process_Date' --當次交易執行日
	,TFD.FIA_CMPLT_DTZ As 'Complete_Date' --當次交易執行日
	,TFA.CIA_REVRS_PRCES_DT As 'Rverse_Date' --回溯執行日期
	,'S' As 'Alloc_Type' --投入類別
	,TFD.FIA_SEQ_NUM   Seq_No --序號
	,TFA.CIA_TYP_CD --交易類別
	,TFA.CIA_REASN_CD --交易原因
	,TFA.CIA_CRCY_CD --保單幣別
	,TFD.FIA_CRCY_CD --基金幣別
	,TFD.FND_ID --標的代號
	--,TEDIT.ETBL_DESC_TXT--標的名稱
	,TFDUT.FIA_UNIT_QTY --當次交易單位數
	,TFDUT.FIA_UNIT_CUM_QTY --交易後單位數
	,Convert(varchar,TFDUT.FIA_UNIT_PRIC_DT,111) As FIA_UNIT_PRIC_DT --交易淨值日期
	,TFDUT.FIA_UNIT_PRIC_AMT --交易淨值
	,Convert(varchar,TFD.FIA_XCHNG_EFF_DTZ,111) As FIA_XCHNG_EFF_DTZ ---交易匯率日期
	,TFD.FIA_XCHNG_CNVR_RT ---交易匯率(標的幣別)
	,LocalCrcy.XCHNG_RT As Trxn_Fixing_Rate_LocalCrcy ---交易匯率(當地幣別)
	,TFD.FIA_ORIG_TRXN_AMT--當次交易金額(保單幣別)
	,TFD.FIA_FND_TRXN_AMT--當次交易金額(基金幣別)
	,Round(TFD.FIA_XCHNG_CNVR_RT * TFD.FIA_FND_TRXN_AMT,0) As Trxn_Amt_LocalCrcy --當次交易金額(當地幣別)
	--,LookUp.Type_Name Trxn_Type
	--,LookUp.Type_Val1 Trxn_Method
From igm.TFA_Dity TFA
Inner Join igm.TMAST ON 1=1
Left Join igm.TFD_Dity TFD ON 1=1
	And TFD.CO_ID = TFA.CO_ID
	And TFD.POL_ID = TFA.POL_ID 
	And TFD.CVG_NUM = TFA.CVG_NUM
	And TFD.FIA_EFF_DT = TFA.CIA_EFF_DT
	And TFD.FIA_SEQ_NUM = TFA.CIA_SEQ_NUM
Left Join igm.TFDUT ON 1=1
	And TFDUT.CO_ID = TFD.CO_ID
	And TFDUT.POL_ID = TFD.POL_ID 
	And TFDUT.CVG_NUM = TFD.CVG_NUM
	And TFDUT.FIA_IDT_NUM = TFD.FIA_IDT_NUM
	And TFDUT.FND_ID = TFD.FND_ID
	And TFDUT.FIA_SEQ_NUM = TFD.FIA_SEQ_NUM
Left Join igm.TCXRT As LocalCrcy ON 1=1
	And XCHNG_FROM_CRCY_CD = TFD.FIA_CRCY_CD
	And XCHNG_TO_CRCY_CD = 'NT' 
	And XCHNG_RT_GR_CD = 'D' 
	And XCHNG_RT_TYP_CD = 3
	And XCHNG_EFF_DT = TFD.FIA_XCHNG_EFF_DTZ
--Left Join igm.TEDIT ON 1=1
--	AND TEDIT.ETBL_TYP_ID='SEGFD' 
--	AND TEDIT.ETBL_LANG_CD = 'T' 
--	AND TEDIT.ETBL_VALU_ID = TFD.FND_ID
--Left Join ilp.LookUp ON 1=1
--	AND LookUp.Type_Group = 'TrxnType' 
--	AND LookUp.Type_ID = TFA.CIA_TYP_CD + '/' + TFA.CIA_REASN_CD 
Where 1=1
--取已完成交易
--AND TFA.CIA_UNIT_STAT_CD IN ('U','E') 
--確認每個標的都是已完成交易
AND TFD.FIA_CMPLT_DTZ Is Not Null
--而且TFA要有對應TFD的資料，否則視為無交易記錄，不需匯入
--可能發生在每月扣管理費時，發現標的單位數已不夠扣除
AND EXISTS
  (Select 1 from igm.TFD where 1=1
   AND TFA.POL_ID = TFD.POL_ID
   AND TFA.CIA_EFF_DT = TFD.FIA_EFF_DT
   AND TFA.CIA_SEQ_NUM = TFD.FIA_SEQ_NUM
   )
GO
/****** Object:  Table [ilp].[LookUp]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[LookUp](
	[Type_Group] [varchar](50) NOT NULL,
	[Type_ID] [varchar](50) NOT NULL,
	[Type_Name] [nvarchar](50) NULL,
	[Type_Val1] [nvarchar](500) NULL,
	[Type_Val2] [nvarchar](500) NULL,
	[Type_Val3] [nvarchar](500) NULL,
	[Type_Val4] [nvarchar](500) NULL,
	[Type_Val5] [nvarchar](500) NULL,
	[Type_Descript] [nvarchar](200) NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NULL,
	[Updated_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_LookUp] PRIMARY KEY CLUSTERED 
(
	[Type_Group] ASC,
	[Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [ilp].[v_SelectTrxnStageNotFinish]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





















-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	由ilp.TrxnStage，取出所有未完成更新資料
-- Exemple: Select * From [ilp].[v_SelectTrxnStageNotFinish]
-- =============================================
CREATE View [ilp].[v_SelectTrxnStageNotFinish]
AS
		Select
		  T.* 
		 ,L.Type_ID
		 ,L.Type_Name
		 ,L.Type_Val1 
		 From ilp.TrxnStage T  
		Left Join ilp.LookUp L ON 1=1
			AND L.Type_Group = 'TrxnType' 
			AND L.Type_ID = T.Type_Cd + '/' + T.Reason_Cd 	
		 Where 1=1
			And (Avg_Nav_Val Is Null OR Avg_Fixing_Rate Is Null)  
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Pol_ID] [varchar](10) NULL,
	[Log_Level] [varchar](10) NULL,
	[Caller] [nvarchar](30) NULL,
	[Logs] [nvarchar](max) NULL,
	[Created_DateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sys_RunJob_Rec]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RunJob_Rec](
	[TABLE_NAME] [nvarchar](100) NULL,
	[START_DATETIME] [datetime] NULL,
	[END_DATETIME] [datetime] NULL,
	[STATUS] [nvarchar](100) NULL,
	[RUN_START] [datetime] NULL,
	[JOB_NAME] [nvarchar](100) NULL,
	[JOB_TYPE] [nvarchar](100) NULL,
	[RUN_END] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[T9F19]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[T9F19](
	[BTCH_PRCES_DT] [date] NOT NULL,
	[POL_ID] [char](10) NULL,
	[FND_ID] [char](5) NULL,
	[FND_XCHNG_RT] [decimal](18, 9) NULL,
	[XCHNG_EFF_DT] [date] NULL,
	[FND_CRCY_CV_AMT] [decimal](15, 2) NULL,
	[POL_CRCY_CV_AMT] [decimal](15, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TBNDV]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TBNDV](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CVG_NUM] [char](2) NOT NULL,
	[BON_DIV_TYP_CD] [char](1) NOT NULL,
	[BON_DIV_IDT_NUM] [char](7) NOT NULL,
	[BON_DIV_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[EFF_IDT_NUM] [char](7) NOT NULL,
	[BON_DIV_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[BON_DIV_STAT_CD] [char](1) NOT NULL,
	[BON_DIV_TRXN_CD] [char](1) NOT NULL,
	[BON_DIV_PUA_AMT] [decimal](15, 2) NOT NULL,
	[FND_ID] [char](5) NULL,
	[DLR_REDC_APP_AMT] [decimal](15, 2) NOT NULL,
	[CDA_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[BON_REPAY_MTHD_CD] [char](1) NOT NULL,
	[FND_UNIT_QTY] [decimal](18, 6) NOT NULL,
	[BNK_ID] [char](4) NOT NULL,
	[BNK_ACCT_ID] [char](17) NOT NULL,
	[MSK_BNK_ACCT_ID] [char](17) NOT NULL,
	[CLI_ID] [char](10) NOT NULL,
	[FND_BON_UNIT_AMT] [decimal](12, 6) NOT NULL,
	[XCHNG_RT] [decimal](18, 9) NOT NULL,
	[FND_TRXN_AMT] [decimal](17, 2) NOT NULL,
	[TRI_FND_ID] [char](5) NOT NULL,
	[BON_DIV_REVRS_DT] [date] NULL,
	[BON_DIV_STAT_DT] [date] NULL,
	[SPL_DCLR_IDT_NUM] [char](7) NOT NULL,
 CONSTRAINT [QSYS_TBNDV_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[BON_DIV_TYP_CD] ASC,
	[BON_DIV_IDT_NUM] ASC,
	[BON_DIV_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TCDSI_ILP]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TCDSI_ILP](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CDI_TYP_CD] [char](2) NOT NULL,
	[POL_PAYO_NUM] [decimal](5, 0) NOT NULL,
	[CDI_EFF_IDT_NUM] [char](7) NOT NULL,
	[CDI_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[CDI_ALLOC_NUM] [decimal](3, 0) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[CDI_EFF_DT] [date] NULL,
	[CDI_ALLOC_CD] [char](1) NOT NULL,
	[CDI_ALLOC_AMT] [decimal](15, 2) NOT NULL,
	[CDI_ALLOC_PCT] [decimal](7, 4) NOT NULL,
	[CDI_ALLOC_UNIT_QTY] [decimal](18, 9) NOT NULL,
	[CDI_PAYO_MTHD_CD] [char](1) NOT NULL,
	[DPOS_TRM_MO_DUR] [char](3) NOT NULL,
	[DPOS_TRM_DY_DUR] [char](3) NOT NULL,
	[DEST_POL_ID] [char](10) NULL,
	[DEST_CVG_NUM] [char](2) NULL,
	[DEST_FND_ID] [char](5) NULL,
	[CLI_ID] [char](10) NULL,
	[CLI_BNK_ACCT_NUM] [decimal](3, 0) NOT NULL,
	[CDI_GUAR_INT_RT] [decimal](7, 4) NOT NULL,
	[INT_RT_IDZ] [char](8) NOT NULL,
	[IVL_OPT_APP_DTZ] [date] NULL,
	[IVL_OPT_STRT_DTZ] [date] NULL,
	[CDI_SUB_TYP_CDZ] [char](1) NOT NULL,
	[CLOS_DY_RPT_DTZ] [date] NULL,
 CONSTRAINT [QSYS_TCDSI_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CDI_TYP_CD] ASC,
	[POL_PAYO_NUM] ASC,
	[CDI_EFF_IDT_NUM] ASC,
	[CDI_SEQ_NUM] ASC,
	[CDI_ALLOC_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TCRCY]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TCRCY](
	[CRCY_CD] [char](2) NOT NULL,
	[CO_ID] [char](2) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[CRCY_SYMBL_CD] [char](3) NOT NULL,
	[CRCY_PLACE_CD] [char](1) NOT NULL,
	[CRCY_NEG_PLACE_CD] [char](1) NOT NULL,
	[CRCY_DCML_SPRT_CD] [char](1) NOT NULL,
	[CRCY_THOU_SPRT_CD] [char](1) NOT NULL,
	[CRCY_SCALE_QTY] [smallint] NOT NULL,
 CONSTRAINT [QSYS_TCRCY_00001] PRIMARY KEY CLUSTERED 
(
	[CRCY_CD] ASC,
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TEDIT]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TEDIT](
	[CO_ID] [char](2) NOT NULL,
	[ETBL_TYP_ID] [char](30) NOT NULL,
	[ETBL_VALU_ID] [char](30) NOT NULL,
	[ETBL_LANG_CD] [char](1) NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NULL,
	[PREV_UPDT_TS] [varchar](50) NULL,
	[ETBL_DESC_TXT] [nvarchar](100) NULL,
 CONSTRAINT [PK_TEDIT] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[ETBL_TYP_ID] ASC,
	[ETBL_VALU_ID] ASC,
	[ETBL_LANG_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TFA]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFA](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[CVG_NUM] [char](2) NOT NULL,
	[CIA_IDT_NUM] [char](7) NOT NULL,
	[CIA_SEQ_NUM] [smallint] NOT NULL,
	[PREV_UPDT_USER_ID] [char](8) NOT NULL,
	[PREV_UPDT_TS] [varchar](50) NOT NULL,
	[CIA_TYP_CD] [char](3) NOT NULL,
	[CIA_REVRS_PRCES_DT] [date] NULL,
	[CIA_EFF_DT] [date] NULL,
	[CIA_REASN_CD] [char](3) NOT NULL,
	[CIA_REVRS_REASN_CD] [char](3) NOT NULL,
	[FRST_FIA_FND_ID] [char](5) NULL,
	[PREV_CIA_IDT_NUM] [char](7) NULL,
	[PREV_CIA_SEQ_NUM] [smallint] NULL,
	[CIA_PRCES_DT] [date] NULL,
	[CIA_UNIT_STAT_CD] [char](1) NOT NULL,
	[CIA_SRC_DEST_CD] [char](1) NOT NULL,
	[CIA_REG_FND_SRC_CD] [char](1) NOT NULL,
	[CIA_CLI_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[CIA_LOAD_AMT] [decimal](15, 2) NOT NULL,
	[CIA_ALLOC_CD] [char](1) NOT NULL,
	[CIA_COMM_PRCES_IND] [char](1) NOT NULL,
	[CIA_LOAD_FORCE_IND] [char](1) NOT NULL,
	[CIA_FIA_REC_CTR] [smallint] NOT NULL,
	[CIA_FND_TRXN_AMT] [decimal](15, 2) NOT NULL,
	[PEND_DPOS_INT_PCT] [decimal](9, 6) NOT NULL,
	[CVG_PMT_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CVG_SURR_LTD_AMT] [decimal](17, 2) NOT NULL,
	[CVG_SHRT_LTD_AMT] [decimal](15, 2) NOT NULL,
	[CVG_GUAR_VALU_AMT] [decimal](15, 2) NOT NULL,
	[CIA_SURR_DIFF_AMT] [decimal](15, 2) NOT NULL,
	[CIA_TAXWH_IND] [char](1) NOT NULL,
	[CIA_TAX_YR] [decimal](4, 0) NOT NULL,
	[CIA_7702_DECR_DT] [date] NULL,
	[CIA_SHRT_AMT] [decimal](13, 2) NOT NULL,
	[CIA_REVRS_STAT_CD] [char](1) NOT NULL,
	[CIA_VALU_SURR_PCT] [decimal](7, 4) NOT NULL,
	[PREV_SURR_IDT_NUM] [char](7) NULL,
	[PREV_SURR_SEQ_NUM] [smallint] NULL,
	[GUAR_VALU_ESTB_IND] [char](1) NOT NULL,
	[CIA_RMND_REASN_CD] [char](1) NOT NULL,
	[CIA_FREE_WTHDR_AMT] [decimal](15, 2) NOT NULL,
	[CIA_FREE_XFER_AMT] [decimal](15, 2) NOT NULL,
	[POL_PAYO_NUM] [decimal](5, 0) NOT NULL,
	[CDA_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[CIA_SUSP_ACCT_IND] [char](1) NOT NULL,
	[BON_DIV_SEQ_NUM] [decimal](3, 0) NOT NULL,
	[CIA_CRCY_CD] [char](2) NOT NULL,
	[CIA_ACCT_TYP_CDZ] [char](1) NOT NULL,
	[CIA_ORIG_PRCES_DTZ] [date] NULL,
	[CIA_RPT_STAT_CDZ] [char](2) NOT NULL,
	[CIA_RPT_DTZ] [date] NULL,
	[REVRS_RPT_STAT_CDZ] [char](2) NOT NULL,
	[REVRS_RPT_DTZ] [date] NULL,
	[XFER_IN_RPT_CDZ] [char](2) NOT NULL,
	[XFER_IN_RPT_DTZ] [date] NULL,
	[CIA_DED_SHRT_COI_AMTZ] [decimal](15, 2) NOT NULL,
	[CIA_DED_SHRT_MGMT_AMTZ] [decimal](15, 2) NOT NULL,
	[CIA_PRST_BON_AMT] [decimal](15, 2) NOT NULL,
	[GUAR_BNFT_CHRG_AMT] [decimal](13, 2) NOT NULL,
	[REMN_INIT_PREM_AMT] [decimal](13, 2) NOT NULL,
	[NXT_GIA_MAX_AMT] [decimal](15, 2) NOT NULL,
	[ROP_AMT] [decimal](15, 2) NOT NULL,
	[NLG_FEE_AMT] [decimal](15, 2) NOT NULL,
	[FND_CF_INT_RPT_CDZ] [char](2) NOT NULL,
	[FND_CF_INT_RPT_DTZ] [date] NULL,
	[DYTIME_RPT_DTZ] [date] NULL,
	[TPZ_PRCES_IND] [char](1) NOT NULL,
	[CLOS_DY_MAX_RPT_DTZ] [date] NULL,
	[CIA_OL_SUR_IND] [char](1) NOT NULL,
	[CIA_ETF_PCHRG_AMT] [decimal](15, 2) NOT NULL,
 CONSTRAINT [Q_IPRDW10_TFA_CO_ID_00001] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[CIA_IDT_NUM] ASC,
	[CIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TFBND]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TFBND](
	[CO_ID] [char](2) NULL,
	[FND_ID] [char](5) NULL,
	[SBSDRY_CO_ID] [char](2) NULL,
	[FND_BON_IDT_NUM] [char](7) NULL,
	[PREV_UPDT_USER_ID] [char](8) NULL,
	[PREV_UPDT_TS] [varchar](50) NULL,
	[FND_BON_EFF_DT] [date] NULL,
	[FND_BON_STAT_CD] [char](1) NULL,
	[FND_EX_DIV_DT] [date] NULL,
	[FND_BON_UNIT_AMT] [decimal](12, 6) NULL,
	[FND_BON_CALC_DT] [date] NULL,
	[CUT_XFER_DT] [date] NULL,
	[CUT_SELL_DT] [date] NULL,
	[CUT_BUY_DT] [date] NULL,
	[CUT_MTHV_DT] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [igm].[TPOLP_ILP]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [igm].[TPOLP_ILP](
	[CO_ID] [char](2) NOT NULL,
	[POL_ID] [char](10) NOT NULL,
	[POL_PAYO_NUM] [decimal](5, 0) NOT NULL,
	[POL_PAYO_STAT_CD] [char](1) NULL,
	[POL_PAYO_NXT_DT] [date] NULL,
	[PREV_UPDT_USER_ID] [char](8) NULL,
	[PREV_UPDT_TS] [varchar](50) NULL,
	[CVG_NUM] [char](2) NULL,
	[FND_ID] [char](5) NULL,
	[POL_PAYO_EFF_DT] [date] NULL,
	[POL_PAYO_END_DT] [date] NULL,
	[POL_PAYO_MODE_CD] [char](2) NULL,
	[POL_PAYO_AMT] [decimal](15, 2) NULL,
	[POL_PAYO_PCT] [decimal](7, 4) NULL,
	[POL_PAYO_UNIT_QTY] [decimal](18, 9) NULL,
	[TRXN_FEE_OVRID_IND] [char](1) NULL,
	[TRXN_FEE_AMT] [decimal](15, 2) NULL,
	[SURR_AMT_TYP_CD] [char](1) NULL,
	[SURR_TAX_OVRID_CD] [char](2) NULL,
	[POL_PAYO_ALLOC_CD] [char](1) NULL,
	[POL_PAYO_TYP_CD] [char](2) NULL,
	[PAYO_LEAD_TIME_DUR] [decimal](3, 0) NULL,
	[FED_TAXWH_CALC_CD] [char](1) NULL,
	[FED_TAXWH_RQST_AMT] [decimal](13, 2) NULL,
	[FED_TAXWH_RQST_PCT] [decimal](7, 4) NULL,
	[LTAXWH_CALC_CD] [char](1) NULL,
	[LTAXWH_FLAT_AMT] [decimal](13, 2) NULL,
	[LTAXWH_PCT] [decimal](5, 2) NULL,
	[SUPRES_CNFRM_IND] [char](1) NULL,
	[AFR_OVRID_IND] [char](1) NULL,
	[XFER_OVRID_IND] [char](1) NULL,
	[DTH_REASN_CD] [char](2) NULL,
	[NTU_RFND_DEST_CD] [char](2) NULL,
	[OVRID_ALLOC_TYP_CD] [char](1) NULL,
	[ANNV_VALU_IND] [char](1) NULL,
	[POL_PAYO_MAV_IND] [char](1) NULL,
	[POL_PAYO_ROLU_IND] [char](1) NULL,
	[POL_PAYO_CREAT_CD] [char](1) NULL,
	[POL_PAYO_RENW_AMT] [decimal](13, 2) NULL,
	[POL_ACCT_TYP_CDZ] [char](1) NULL,
	[POL_PAYO_PRCES_DTZ] [date] NULL,
	[POL_RPT_STAT_CDZ] [char](2) NULL,
	[POL_RPT_DTZ] [date] NULL,
	[REVRS_RPT_STAT_CDZ] [char](2) NULL,
	[REVRS_RPT_DTZ] [date] NULL,
	[GIA_APP_DT] [date] NULL,
	[GIA_CNCL_DT] [date] NULL,
	[DYTIME_RPT_DTZ] [date] NULL,
	[TPZ_PRCES_IND] [char](1) NULL,
	[CLOS_DY_MAX_RPT_DTZ] [date] NULL,
	[CIA_OL_SUR_IND] [nchar](10) NULL,
 CONSTRAINT [PK_TPOLP] PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[POL_PAYO_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ilp].[HitTakeProfitStopLoss]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[HitTakeProfitStopLoss](
	[Pol_Id] [varchar](10) NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Fnd_Crcy] [varchar](3) NULL,
	[Nav_Val] [numeric](18, 6) NULL,
	[Nav_Date] [date] NULL,
	[ROI_Non_Div_Fnd] [numeric](18, 6) NULL,
	[Stop_Loss_ROI] [numeric](18, 6) NULL,
	[Take_Profit_ROI] [numeric](18, 6) NULL,
	[Stop_Loss_Nav] [numeric](18, 6) NULL,
	[Take_Profit_Nav] [numeric](18, 6) NULL,
	[Created_By] [varchar](8) NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[Update_By] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
	[ToTCWB] [datetime2](3) NULL,
	[Memo] [nvarchar](100) NULL,
 CONSTRAINT [PK_HitTakeProfitStopLoss] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Fnd_Id] ASC,
	[IGM_Batch_Date] ASC,
	[Created_DateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ilp].[InTransit]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[InTransit](
	[Pol_Id] [varchar](10) NOT NULL,
	[Effective_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Pol_Crcy] [nchar](3) NOT NULL,
	[Fnd_Crcy] [nchar](3) NOT NULL,
	[Type_Cd] [nchar](3) NOT NULL,
	[Reason_Cd] [nchar](3) NOT NULL,
	[Trxn_Amt_PolCrcy] [numeric](18, 6) NOT NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[UpdatedBy] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_InTransit] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Effective_Date] ASC,
	[Seq_No] ASC,
	[Fnd_Id] ASC,
	[IGM_Batch_Date] ASC,
	[Type_Cd] ASC,
	[Reason_Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ilp].[InTransitStage]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[InTransitStage](
	[Pol_Id] [varchar](10) NOT NULL,
	[Effective_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[IGM_Batch_Date] [date] NOT NULL,
	[Pol_Crcy] [nchar](3) NOT NULL,
	[Fnd_Crcy] [nchar](3) NOT NULL,
	[Type_Cd] [nchar](3) NOT NULL,
	[Reason_Cd] [nchar](3) NOT NULL,
	[Trxn_Amt_PolCrcy] [numeric](18, 6) NOT NULL,
	[CreatedBy] [varchar](8) NOT NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[UpdatedBy] [varchar](8) NULL,
	[Update_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_InTransitStage] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Effective_Date] ASC,
	[Seq_No] ASC,
	[Fnd_Id] ASC,
	[IGM_Batch_Date] ASC,
	[Type_Cd] ASC,
	[Reason_Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ilp].[TakeProfitStopLoss]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[TakeProfitStopLoss](
	[Enable] [char](1) NULL,
	[Pol_Id] [varchar](10) NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[Fnd_Crcy] [varchar](3) NULL,
	[Stop_Loss_ROI] [numeric](18, 6) NULL,
	[Take_Profit_ROI] [numeric](18, 6) NULL,
	[Stop_Loss_Nav] [numeric](18, 6) NULL,
	[Take_Profit_Nav] [numeric](18, 6) NULL,
	[Invalid] [char](1) NULL,
	[Created_DateTime] [datetime2](3) NULL,
 CONSTRAINT [PK_TakeProfitStopLoss] PRIMARY KEY CLUSTERED 
(
	[Pol_Id] ASC,
	[Fnd_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ilp].[TakeProfitStopLoss_History]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ilp].[TakeProfitStopLoss_History](
	[Enable] [char](1) NULL,
	[Pol_Id] [varchar](10) NOT NULL,
	[Fnd_Id] [varchar](10) NOT NULL,
	[Fnd_Crcy] [varchar](3) NULL,
	[Stop_Loss_ROI] [numeric](18, 6) NULL,
	[Take_Profit_ROI] [numeric](18, 6) NULL,
	[Stop_Loss_Nav] [numeric](18, 6) NULL,
	[Take_Profit_Nav] [numeric](18, 6) NULL,
	[Invalid] [char](1) NULL,
	[Created_DateTime] [datetime2](3) NOT NULL,
	[Update_DateTime] [datetime2](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TCDSI]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCDSI] ON [igm].[TCDSI_ILP]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CDI_TYP_CD] ASC,
	[POL_PAYO_NUM] ASC,
	[CDI_EFF_IDT_NUM] ASC,
	[CDI_SEQ_NUM] ASC,
	[CDI_ALLOC_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01CDSI]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01CDSI] ON [igm].[TCDSI_ILP]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CDI_TYP_CD] ASC,
	[POL_PAYO_NUM] ASC,
	[CDI_EFF_IDT_NUM] ASC,
	[CDI_SEQ_NUM] ASC,
	[CDI_ALLOC_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X02CDSI]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X02CDSI] ON [igm].[TCDSI_ILP]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CDI_TYP_CD] ASC,
	[CDI_EFF_IDT_NUM] ASC,
	[POL_PAYO_NUM] ASC,
	[CDI_ALLOC_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TCRCY]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TCRCY] ON [igm].[TCRCY]
(
	[CRCY_CD] ASC,
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01CRCY]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01CRCY] ON [igm].[TCRCY]
(
	[CRCY_CD] ASC,
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TFD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TFD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC,
	[FIA_EFF_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01FD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X02FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X02FD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X03FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X03FD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC,
	[FND_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X04FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X04FD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_CMPLT_DTZ] ASC,
	[FIA_IDT_NUM] DESC,
	[FIA_SEQ_NUM] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X05FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X05FD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[FIA_CMPLT_DTZ] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FIA_IDT_NUM] DESC,
	[FIA_SEQ_NUM] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X06FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X06FD] ON [igm].[TFD]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FIA_CMPLT_DTZ] ASC,
	[FIA_IDT_NUM] DESC,
	[FIA_SEQ_NUM] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [F01FD]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [F01FD] ON [igm].[TFDUT]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TFDUT]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TFDUT] ON [igm].[TFDUT]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC,
	[FIA_UNIT_TYP_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01FDUT]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01FDUT] ON [igm].[TFDUT]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC,
	[FIA_UNIT_TYP_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X02FDUT]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X02FDUT] ON [igm].[TFDUT]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[CVG_NUM] ASC,
	[FND_ID] ASC,
	[FIA_UNIT_TYP_CD] ASC,
	[FIA_IDT_NUM] ASC,
	[FIA_SEQ_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X03FDUT]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X03FDUT] ON [igm].[TFDUT]
(
	[CO_ID] ASC,
	[FND_ID] ASC,
	[FIA_UNIT_PRIC_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TFV]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TFV] ON [igm].[TFV]
(
	[CO_ID] ASC,
	[FND_ID] ASC,
	[FNDVL_UNIT_TYP_CD] ASC,
	[FNDVL_IDT_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01FV]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01FV] ON [igm].[TFV]
(
	[CO_ID] ASC,
	[FND_ID] ASC,
	[FNDVL_UNIT_TYP_CD] ASC,
	[FNDVL_IDT_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X02FV]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X02FV] ON [igm].[TFV]
(
	[CO_ID] ASC,
	[FND_ID] ASC,
	[FNDVL_IDT_NUM] ASC,
	[FNDVL_UNIT_TYP_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X03FV]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X03FV] ON [igm].[TFV]
(
	[CO_ID] ASC,
	[FNDVL_IDT_NUM] ASC,
	[FND_ID] ASC,
	[FNDVL_UNIT_TYP_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TMAST]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TMAST] ON [igm].[TMAST]
(
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01MAST]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01MAST] ON [igm].[TMAST]
(
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [TPOL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [TPOL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X01POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [X01POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X02POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X02POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[POL_NXT_ACTV_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X03POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X03POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[AGT_XFR_CHNG_DTZ] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X04POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X04POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[POL_BILL_TYP_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X05POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X05POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_INFC_DT] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X06POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X06POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_BILL_TYP_CD] ASC,
	[POL_MPREM_AMT] ASC,
	[POL_ID] ASC,
	[POL_CEAS_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X07POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X07POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X09POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X09POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_APP_FORM_ID] ASC,
	[POL_OPTL_CD] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X10POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X10POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_NXT_BILL_CD] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X11POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X11POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_DELIV_DTZ] ASC,
	[SERV_BR_ID] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X12POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X12POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[SERV_AGT_ID] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X13POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X13POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_APP_ENTR_DTZ] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X14POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X14POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[FREE_LK_CHNG_DTZ] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X15POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X15POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[SERV_BR_ID] ASC,
	[POL_CRCY_CD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X16POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X16POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_ID] ASC,
	[SERV_BR_ID] ASC,
	[POL_APP_RECV_DT] ASC,
	[POL_CSTAT_CD] ASC,
	[POL_FINAL_DISP_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X17POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X17POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[GIA_WTHDR_STRT_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X18POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X18POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[POL_FINAL_DISP_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X19POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X19POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[PADM_CANC_DTZ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X20POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X20POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[AUTO_AGT_XFER_DT] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X21POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X21POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_APP_RECV_DT] ASC,
	[POL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X22POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X22POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_APP_RECV_DT] ASC,
	[SERV_AGT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X23POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X23POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[GIA_RMND_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [X24POL]    Script Date: 2025/6/25 下午 04:40:49 ******/
CREATE NONCLUSTERED INDEX [X24POL] ON [igm].[TPOL_ILP]
(
	[CO_ID] ASC,
	[POL_CSTAT_CD] ASC,
	[POL_NF_PRCES_DTZ] ASC,
	[VULR_NF_PRCES_DT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Logs] ADD  CONSTRAINT [DF_Log_Created_DateTime]  DEFAULT (getdate()) FOR [Created_DateTime]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__PREV_UPDT__36FC065D]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__EFF_IDT_N__37F02A96]  DEFAULT (' ') FOR [EFF_IDT_NUM]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BON_DIV_T__38E44ECF]  DEFAULT ((0)) FOR [BON_DIV_TRXN_AMT]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BON_DIV_S__39D87308]  DEFAULT (' ') FOR [BON_DIV_STAT_CD]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BON_DIV_T__3ACC9741]  DEFAULT (' ') FOR [BON_DIV_TRXN_CD]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BON_DIV_P__3BC0BB7A]  DEFAULT ((0)) FOR [BON_DIV_PUA_AMT]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__DLR_REDC___3CB4DFB3]  DEFAULT ((0)) FOR [DLR_REDC_APP_AMT]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__CDA_SEQ_N__3DA903EC]  DEFAULT ((0)) FOR [CDA_SEQ_NUM]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BON_REPAY__3E9D2825]  DEFAULT (' ') FOR [BON_REPAY_MTHD_CD]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__FND_UNIT___3F914C5E]  DEFAULT ((0)) FOR [FND_UNIT_QTY]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BNK_ID__40857097]  DEFAULT (' ') FOR [BNK_ID]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__BNK_ACCT___417994D0]  DEFAULT (' ') FOR [BNK_ACCT_ID]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__MSK_BNK_A__426DB909]  DEFAULT (' ') FOR [MSK_BNK_ACCT_ID]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__CLI_ID__4361DD42]  DEFAULT (' ') FOR [CLI_ID]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__FND_BON_U__4456017B]  DEFAULT ((0)) FOR [FND_BON_UNIT_AMT]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__XCHNG_RT__454A25B4]  DEFAULT ((0)) FOR [XCHNG_RT]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__FND_TRXN___463E49ED]  DEFAULT ((0)) FOR [FND_TRXN_AMT]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__TRI_FND_I__47326E26]  DEFAULT (' ') FOR [TRI_FND_ID]
GO
ALTER TABLE [igm].[TBNDV] ADD  CONSTRAINT [DF__TBNDV__SPL_DCLR___4826925F]  DEFAULT (' ') FOR [SPL_DCLR_IDT_NUM]
GO
ALTER TABLE [igm].[TBNDV_Dity] ADD  CONSTRAINT [DF__TBNDV_Dity__BON_DIV_T__38E44ECF]  DEFAULT ((0)) FOR [BON_DIV_TRXN_AMT]
GO
ALTER TABLE [igm].[TBNDV_Dity] ADD  CONSTRAINT [DF__TBNDV_Dity__BON_DIV_S__39D87308]  DEFAULT (' ') FOR [BON_DIV_STAT_CD]
GO
ALTER TABLE [igm].[TBNDV_Dity] ADD  CONSTRAINT [DF__TBNDV_Dity__FND_UNIT___3F914C5E]  DEFAULT ((0)) FOR [FND_UNIT_QTY]
GO
ALTER TABLE [igm].[TBNDV_Dity] ADD  CONSTRAINT [DF__TBNDV_Dity__FND_BON_U__4456017B]  DEFAULT ((0)) FOR [FND_BON_UNIT_AMT]
GO
ALTER TABLE [igm].[TBNDV_Dity] ADD  CONSTRAINT [DF__TBNDV_Dity__XCHNG_RT__454A25B4]  DEFAULT ((0)) FOR [XCHNG_RT]
GO
ALTER TABLE [igm].[TBNDV_Dity] ADD  CONSTRAINT [DF__TBNDV_Dity__FND_TRXN___463E49ED]  DEFAULT ((0)) FOR [FND_TRXN_AMT]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__PREV_UPDT__5F141958]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_ALLOC__60083D91]  DEFAULT (' ') FOR [CDI_ALLOC_CD]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_ALLOC__60FC61CA]  DEFAULT ((0)) FOR [CDI_ALLOC_AMT]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_ALLOC__61F08603]  DEFAULT ((0)) FOR [CDI_ALLOC_PCT]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_ALLOC__62E4AA3C]  DEFAULT ((0)) FOR [CDI_ALLOC_UNIT_QTY]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_PAYO___63D8CE75]  DEFAULT (' ') FOR [CDI_PAYO_MTHD_CD]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__DPOS_TRM___64CCF2AE]  DEFAULT (' ') FOR [DPOS_TRM_MO_DUR]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__DPOS_TRM___65C116E7]  DEFAULT (' ') FOR [DPOS_TRM_DY_DUR]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CLI_BNK_A__66B53B20]  DEFAULT ((0)) FOR [CLI_BNK_ACCT_NUM]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_GUAR___67A95F59]  DEFAULT ((0)) FOR [CDI_GUAR_INT_RT]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__INT_RT_ID__689D8392]  DEFAULT (' ') FOR [INT_RT_IDZ]
GO
ALTER TABLE [igm].[TCDSI_ILP] ADD  CONSTRAINT [DF__TCDSI__CDI_SUB_T__6991A7CB]  DEFAULT (' ') FOR [CDI_SUB_TYP_CDZ]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__PREV_UPDT__18EBB532]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__CRCY_SYMB__19DFD96B]  DEFAULT (' ') FOR [CRCY_SYMBL_CD]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__CRCY_PLAC__1AD3FDA4]  DEFAULT (' ') FOR [CRCY_PLACE_CD]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__CRCY_NEG___1BC821DD]  DEFAULT (' ') FOR [CRCY_NEG_PLACE_CD]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__CRCY_DCML__1CBC4616]  DEFAULT (' ') FOR [CRCY_DCML_SPRT_CD]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__CRCY_THOU__1DB06A4F]  DEFAULT (' ') FOR [CRCY_THOU_SPRT_CD]
GO
ALTER TABLE [igm].[TCRCY] ADD  CONSTRAINT [DF__TCRCY__CRCY_SCAL__1EA48E88]  DEFAULT ((0)) FOR [CRCY_SCALE_QTY]
GO
ALTER TABLE [igm].[TCXRT] ADD  CONSTRAINT [DF__TCXRT__PREV_UPDT__5B438874]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TCXRT] ADD  CONSTRAINT [DF__TCXRT__XCHNG_RT__5C37ACAD]  DEFAULT ((0)) FOR [XCHNG_RT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__PREV_UPDT_U__2645B050]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_TYP_CD__2739D489]  DEFAULT (' ') FOR [CIA_TYP_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_REASN_C__282DF8C2]  DEFAULT (' ') FOR [CIA_REASN_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_REVRS_R__29221CFB]  DEFAULT (' ') FOR [CIA_REVRS_REASN_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_UNIT_ST__2A164134]  DEFAULT (' ') FOR [CIA_UNIT_STAT_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_SRC_DES__2B0A656D]  DEFAULT (' ') FOR [CIA_SRC_DEST_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_REG_FND__2BFE89A6]  DEFAULT (' ') FOR [CIA_REG_FND_SRC_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_CLI_TRX__2CF2ADDF]  DEFAULT ((0)) FOR [CIA_CLI_TRXN_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_LOAD_AM__2DE6D218]  DEFAULT ((0)) FOR [CIA_LOAD_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_ALLOC_C__2EDAF651]  DEFAULT (' ') FOR [CIA_ALLOC_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_COMM_PR__2FCF1A8A]  DEFAULT (' ') FOR [CIA_COMM_PRCES_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_LOAD_FO__30C33EC3]  DEFAULT (' ') FOR [CIA_LOAD_FORCE_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_FIA_REC__31B762FC]  DEFAULT ((0)) FOR [CIA_FIA_REC_CTR]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_FND_TRX__32AB8735]  DEFAULT ((0)) FOR [CIA_FND_TRXN_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__PEND_DPOS_I__339FAB6E]  DEFAULT ((0)) FOR [PEND_DPOS_INT_PCT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CVG_PMT_LTD__3493CFA7]  DEFAULT ((0)) FOR [CVG_PMT_LTD_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CVG_SURR_LT__3587F3E0]  DEFAULT ((0)) FOR [CVG_SURR_LTD_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CVG_SHRT_LT__367C1819]  DEFAULT ((0)) FOR [CVG_SHRT_LTD_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CVG_GUAR_VA__37703C52]  DEFAULT ((0)) FOR [CVG_GUAR_VALU_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_SURR_DI__3864608B]  DEFAULT ((0)) FOR [CIA_SURR_DIFF_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_TAXWH_I__395884C4]  DEFAULT (' ') FOR [CIA_TAXWH_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_TAX_YR__3A4CA8FD]  DEFAULT ((0)) FOR [CIA_TAX_YR]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_SHRT_AM__3B40CD36]  DEFAULT ((0)) FOR [CIA_SHRT_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_REVRS_S__3C34F16F]  DEFAULT (' ') FOR [CIA_REVRS_STAT_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_VALU_SU__3D2915A8]  DEFAULT ((0)) FOR [CIA_VALU_SURR_PCT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__GUAR_VALU_E__3E1D39E1]  DEFAULT (' ') FOR [GUAR_VALU_ESTB_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_RMND_RE__3F115E1A]  DEFAULT (' ') FOR [CIA_RMND_REASN_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_FREE_WT__40058253]  DEFAULT ((0)) FOR [CIA_FREE_WTHDR_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_FREE_XF__40F9A68C]  DEFAULT ((0)) FOR [CIA_FREE_XFER_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__POL_PAYO_NU__41EDCAC5]  DEFAULT ((0)) FOR [POL_PAYO_NUM]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CDA_SEQ_NUM__42E1EEFE]  DEFAULT ((0)) FOR [CDA_SEQ_NUM]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_SUSP_AC__43D61337]  DEFAULT (' ') FOR [CIA_SUSP_ACCT_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__BON_DIV_SEQ__44CA3770]  DEFAULT ((0)) FOR [BON_DIV_SEQ_NUM]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_CRCY_CD__45BE5BA9]  DEFAULT (' ') FOR [CIA_CRCY_CD]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_ACCT_TY__46B27FE2]  DEFAULT (' ') FOR [CIA_ACCT_TYP_CDZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_RPT_STA__47A6A41B]  DEFAULT (' ') FOR [CIA_RPT_STAT_CDZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__REVRS_RPT_S__489AC854]  DEFAULT (' ') FOR [REVRS_RPT_STAT_CDZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__XFER_IN_RPT__498EEC8D]  DEFAULT (' ') FOR [XFER_IN_RPT_CDZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_DED_SHR__4A8310C6]  DEFAULT ((0)) FOR [CIA_DED_SHRT_COI_AMTZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_DED_SHR__4B7734FF]  DEFAULT ((0)) FOR [CIA_DED_SHRT_MGMT_AMTZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_PRST_BO__4C6B5938]  DEFAULT ((0)) FOR [CIA_PRST_BON_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__GUAR_BNFT_C__4D5F7D71]  DEFAULT ((0)) FOR [GUAR_BNFT_CHRG_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__REMN_INIT_P__4E53A1AA]  DEFAULT ((0)) FOR [REMN_INIT_PREM_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__NXT_GIA_MAX__4F47C5E3]  DEFAULT ((0)) FOR [NXT_GIA_MAX_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__ROP_AMT__503BEA1C]  DEFAULT ((0)) FOR [ROP_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__NLG_FEE_AMT__51300E55]  DEFAULT ((0)) FOR [NLG_FEE_AMT]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__FND_CF_INT___5224328E]  DEFAULT (' ') FOR [FND_CF_INT_RPT_CDZ]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__TPZ_PRCES_I__531856C7]  DEFAULT (' ') FOR [TPZ_PRCES_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_OL_SUR___540C7B00]  DEFAULT (' ') FOR [CIA_OL_SUR_IND]
GO
ALTER TABLE [igm].[TFA] ADD  CONSTRAINT [DF__TFA__CIA_ETF_PCH__55009F39]  DEFAULT ((0)) FOR [CIA_ETF_PCHRG_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__PREV_UPDT_U__2645B050]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_TYP_CD__2739D489]  DEFAULT (' ') FOR [CIA_TYP_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_REASN_C__282DF8C2]  DEFAULT (' ') FOR [CIA_REASN_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_REVRS_R__29221CFB]  DEFAULT (' ') FOR [CIA_REVRS_REASN_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_UNIT_ST__2A164134]  DEFAULT (' ') FOR [CIA_UNIT_STAT_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_SRC_DES__2B0A656D]  DEFAULT (' ') FOR [CIA_SRC_DEST_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_REG_FND__2BFE89A6]  DEFAULT (' ') FOR [CIA_REG_FND_SRC_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_CLI_TRX__2CF2ADDF]  DEFAULT ((0)) FOR [CIA_CLI_TRXN_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_LOAD_AM__2DE6D218]  DEFAULT ((0)) FOR [CIA_LOAD_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_ALLOC_C__2EDAF651]  DEFAULT (' ') FOR [CIA_ALLOC_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_COMM_PR__2FCF1A8A]  DEFAULT (' ') FOR [CIA_COMM_PRCES_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_LOAD_FO__30C33EC3]  DEFAULT (' ') FOR [CIA_LOAD_FORCE_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_FIA_REC__31B762FC]  DEFAULT ((0)) FOR [CIA_FIA_REC_CTR]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_FND_TRX__32AB8735]  DEFAULT ((0)) FOR [CIA_FND_TRXN_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__PEND_DPOS_I__339FAB6E]  DEFAULT ((0)) FOR [PEND_DPOS_INT_PCT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CVG_PMT_LTD__3493CFA7]  DEFAULT ((0)) FOR [CVG_PMT_LTD_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CVG_SURR_LT__3587F3E0]  DEFAULT ((0)) FOR [CVG_SURR_LTD_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CVG_SHRT_LT__367C1819]  DEFAULT ((0)) FOR [CVG_SHRT_LTD_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CVG_GUAR_VA__37703C52]  DEFAULT ((0)) FOR [CVG_GUAR_VALU_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_SURR_DI__3864608B]  DEFAULT ((0)) FOR [CIA_SURR_DIFF_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_TAXWH_I__395884C4]  DEFAULT (' ') FOR [CIA_TAXWH_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_TAX_YR__3A4CA8FD]  DEFAULT ((0)) FOR [CIA_TAX_YR]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_SHRT_AM__3B40CD36]  DEFAULT ((0)) FOR [CIA_SHRT_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_REVRS_S__3C34F16F]  DEFAULT (' ') FOR [CIA_REVRS_STAT_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_VALU_SU__3D2915A8]  DEFAULT ((0)) FOR [CIA_VALU_SURR_PCT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__GUAR_VALU_E__3E1D39E1]  DEFAULT (' ') FOR [GUAR_VALU_ESTB_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_RMND_RE__3F115E1A]  DEFAULT (' ') FOR [CIA_RMND_REASN_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_FREE_WT__40058253]  DEFAULT ((0)) FOR [CIA_FREE_WTHDR_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_FREE_XF__40F9A68C]  DEFAULT ((0)) FOR [CIA_FREE_XFER_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__POL_PAYO_NU__41EDCAC5]  DEFAULT ((0)) FOR [POL_PAYO_NUM]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CDA_SEQ_NUM__42E1EEFE]  DEFAULT ((0)) FOR [CDA_SEQ_NUM]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_SUSP_AC__43D61337]  DEFAULT (' ') FOR [CIA_SUSP_ACCT_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__BON_DIV_SEQ__44CA3770]  DEFAULT ((0)) FOR [BON_DIV_SEQ_NUM]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_CRCY_CD__45BE5BA9]  DEFAULT (' ') FOR [CIA_CRCY_CD]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_ACCT_TY__46B27FE2]  DEFAULT (' ') FOR [CIA_ACCT_TYP_CDZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_RPT_STA__47A6A41B]  DEFAULT (' ') FOR [CIA_RPT_STAT_CDZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__REVRS_RPT_S__489AC854]  DEFAULT (' ') FOR [REVRS_RPT_STAT_CDZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__XFER_IN_RPT__498EEC8D]  DEFAULT (' ') FOR [XFER_IN_RPT_CDZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_DED_SHR__4A8310C6]  DEFAULT ((0)) FOR [CIA_DED_SHRT_COI_AMTZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_DED_SHR__4B7734FF]  DEFAULT ((0)) FOR [CIA_DED_SHRT_MGMT_AMTZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_PRST_BO__4C6B5938]  DEFAULT ((0)) FOR [CIA_PRST_BON_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__GUAR_BNFT_C__4D5F7D71]  DEFAULT ((0)) FOR [GUAR_BNFT_CHRG_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__REMN_INIT_P__4E53A1AA]  DEFAULT ((0)) FOR [REMN_INIT_PREM_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__NXT_GIA_MAX__4F47C5E3]  DEFAULT ((0)) FOR [NXT_GIA_MAX_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__ROP_AMT__503BEA1C]  DEFAULT ((0)) FOR [ROP_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__NLG_FEE_AMT__51300E55]  DEFAULT ((0)) FOR [NLG_FEE_AMT]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__FND_CF_INT___5224328E]  DEFAULT (' ') FOR [FND_CF_INT_RPT_CDZ]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__TPZ_PRCES_I__531856C7]  DEFAULT (' ') FOR [TPZ_PRCES_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_OL_SUR___540C7B00]  DEFAULT (' ') FOR [CIA_OL_SUR_IND]
GO
ALTER TABLE [igm].[TFA_Dity] ADD  CONSTRAINT [DF__TFA_Dity__CIA_ETF_PCH__55009F39]  DEFAULT ((0)) FOR [CIA_ETF_PCHRG_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__PREV_UPDT_U__73BA3083]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_REVRS_S__74AE54BC]  DEFAULT (' ') FOR [FIA_REVRS_STAT_CD]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_UNIT_ST__75A278F5]  DEFAULT (' ') FOR [FIA_UNIT_STAT_CD]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_IN_ALLO__76969D2E]  DEFAULT ((0)) FOR [FIA_IN_ALLOC_PCT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_OUT_ALL__778AC167]  DEFAULT ((0)) FOR [FIA_OUT_ALLOC_PCT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_VALU_SU__787EE5A0]  DEFAULT ((0)) FOR [FIA_VALU_SURR_PCT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_FND_TRX__797309D9]  DEFAULT ((0)) FOR [FIA_FND_TRXN_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_LOAD_AM__7A672E12]  DEFAULT ((0)) FOR [FIA_LOAD_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__PEND_DPOS_I__7B5B524B]  DEFAULT ((0)) FOR [PEND_DPOS_INT_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_PEND_AM__7C4F7684]  DEFAULT ((0)) FOR [FIA_PEND_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_SURR_UN__7D439ABD]  DEFAULT ((0)) FOR [FIA_SURR_UNIT_QTY]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CFN_TRXN_LT__7E37BEF6]  DEFAULT ((0)) FOR [CFN_TRXN_LTD_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CFN_LOAD_LT__7F2BE32F]  DEFAULT ((0)) FOR [CFN_LOAD_LTD_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CFN_INT_LTD__00200768]  DEFAULT ((0)) FOR [CFN_INT_LTD_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CFN_PEND_LT__01142BA1]  DEFAULT ((0)) FOR [CFN_PEND_LTD_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_GLA_CD__02084FDA]  DEFAULT (' ') FOR [FIA_GLA_CD]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_FND_GLA__02FC7413]  DEFAULT ((0)) FOR [FIA_FND_GLA_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_GNRL_GL__03F0984C]  DEFAULT ((0)) FOR [FIA_GNRL_GLA_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_REVRS_G__04E4BC85]  DEFAULT (' ') FOR [FIA_REVRS_GLA_CD]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__REVRS_FND_G__05D8E0BE]  DEFAULT ((0)) FOR [REVRS_FND_GLA_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__REVRS_GNRL___06CD04F7]  DEFAULT ((0)) FOR [REVRS_GNRL_GLA_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_CRCY_CD__07C12930]  DEFAULT (' ') FOR [FIA_CRCY_CD]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_ORIG_TR__08B54D69]  DEFAULT ((0)) FOR [FIA_ORIG_TRXN_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_ORIG_LO__09A971A2]  DEFAULT ((0)) FOR [FIA_ORIG_LOAD_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_XCHNG_C__0A9D95DB]  DEFAULT ((0)) FOR [FIA_XCHNG_CNVR_RT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_XCHNG_T__0B91BA14]  DEFAULT (' ') FOR [FIA_XCHNG_TYP_CD]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_PRST_BO__0C85DE4D]  DEFAULT ((0)) FOR [FIA_PRST_BON_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_DEP_AMT__0D7A0286]  DEFAULT ((0)) FOR [CUM_DEP_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_DEP_FEE__0E6E26BF]  DEFAULT ((0)) FOR [CUM_DEP_FEE_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_SUR_AMT__0F624AF8]  DEFAULT ((0)) FOR [CUM_SUR_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_MTHV_AM__10566F31]  DEFAULT ((0)) FOR [CUM_MTHV_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_XFER_OU__114A936A]  DEFAULT ((0)) FOR [CUM_XFER_OUT_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_XFER_IN__123EB7A3]  DEFAULT ((0)) FOR [CUM_XFER_IN_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__CUM_ROI_RT__1332DBDC]  DEFAULT ((0)) FOR [CUM_ROI_RT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__ORIG_ETF_PC__14270015]  DEFAULT ((0)) FOR [ORIG_ETF_PCHRG_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_ETF_PCH__151B244E]  DEFAULT ((0)) FOR [FIA_ETF_PCHRG_AMT]
GO
ALTER TABLE [igm].[TFD] ADD  CONSTRAINT [DF__TFD__FIA_ETF_PCH__160F4887]  DEFAULT ((0)) FOR [FIA_ETF_PCHRG_PCT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__PREV_UPDT_U__73BA3083]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_REVRS_S__74AE54BC]  DEFAULT (' ') FOR [FIA_REVRS_STAT_CD]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_UNIT_ST__75A278F5]  DEFAULT (' ') FOR [FIA_UNIT_STAT_CD]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_IN_ALLO__76969D2E]  DEFAULT ((0)) FOR [FIA_IN_ALLOC_PCT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_OUT_ALL__778AC167]  DEFAULT ((0)) FOR [FIA_OUT_ALLOC_PCT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_VALU_SU__787EE5A0]  DEFAULT ((0)) FOR [FIA_VALU_SURR_PCT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_FND_TRX__797309D9]  DEFAULT ((0)) FOR [FIA_FND_TRXN_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_LOAD_AM__7A672E12]  DEFAULT ((0)) FOR [FIA_LOAD_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__PEND_DPOS_I__7B5B524B]  DEFAULT ((0)) FOR [PEND_DPOS_INT_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_PEND_AM__7C4F7684]  DEFAULT ((0)) FOR [FIA_PEND_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_SURR_UN__7D439ABD]  DEFAULT ((0)) FOR [FIA_SURR_UNIT_QTY]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CFN_TRXN_LT__7E37BEF6]  DEFAULT ((0)) FOR [CFN_TRXN_LTD_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CFN_LOAD_LT__7F2BE32F]  DEFAULT ((0)) FOR [CFN_LOAD_LTD_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CFN_INT_LTD__00200768]  DEFAULT ((0)) FOR [CFN_INT_LTD_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CFN_PEND_LT__01142BA1]  DEFAULT ((0)) FOR [CFN_PEND_LTD_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_GLA_CD__02084FDA]  DEFAULT (' ') FOR [FIA_GLA_CD]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_FND_GLA__02FC7413]  DEFAULT ((0)) FOR [FIA_FND_GLA_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_GNRL_GL__03F0984C]  DEFAULT ((0)) FOR [FIA_GNRL_GLA_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_REVRS_G__04E4BC85]  DEFAULT (' ') FOR [FIA_REVRS_GLA_CD]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__REVRS_FND_G__05D8E0BE]  DEFAULT ((0)) FOR [REVRS_FND_GLA_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__REVRS_GNRL___06CD04F7]  DEFAULT ((0)) FOR [REVRS_GNRL_GLA_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_CRCY_CD__07C12930]  DEFAULT (' ') FOR [FIA_CRCY_CD]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_ORIG_TR__08B54D69]  DEFAULT ((0)) FOR [FIA_ORIG_TRXN_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_ORIG_LO__09A971A2]  DEFAULT ((0)) FOR [FIA_ORIG_LOAD_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_XCHNG_C__0A9D95DB]  DEFAULT ((0)) FOR [FIA_XCHNG_CNVR_RT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_XCHNG_T__0B91BA14]  DEFAULT (' ') FOR [FIA_XCHNG_TYP_CD]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_PRST_BO__0C85DE4D]  DEFAULT ((0)) FOR [FIA_PRST_BON_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_DEP_AMT__0D7A0286]  DEFAULT ((0)) FOR [CUM_DEP_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_DEP_FEE__0E6E26BF]  DEFAULT ((0)) FOR [CUM_DEP_FEE_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_SUR_AMT__0F624AF8]  DEFAULT ((0)) FOR [CUM_SUR_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_MTHV_AM__10566F31]  DEFAULT ((0)) FOR [CUM_MTHV_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_XFER_OU__114A936A]  DEFAULT ((0)) FOR [CUM_XFER_OUT_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_XFER_IN__123EB7A3]  DEFAULT ((0)) FOR [CUM_XFER_IN_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__CUM_ROI_RT__1332DBDC]  DEFAULT ((0)) FOR [CUM_ROI_RT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__ORIG_ETF_PC__14270015]  DEFAULT ((0)) FOR [ORIG_ETF_PCHRG_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_ETF_PCH__151B244E]  DEFAULT ((0)) FOR [FIA_ETF_PCHRG_AMT]
GO
ALTER TABLE [igm].[TFD_Dity] ADD  CONSTRAINT [DF__TFD_Dity__FIA_ETF_PCH__160F4887]  DEFAULT ((0)) FOR [FIA_ETF_PCHRG_PCT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__PREV_UPDT__46486B8E]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FIA_UNIT___473C8FC7]  DEFAULT ((0)) FOR [FIA_UNIT_PRIC_AMT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FIA_UNIT___4830B400]  DEFAULT ((0)) FOR [FIA_UNIT_QTY]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FIA_UNIT___4924D839]  DEFAULT ((0)) FOR [FIA_UNIT_CUM_QTY]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__REVRS_UNI__4A18FC72]  DEFAULT ((0)) FOR [REVRS_UNIT_QTYZ]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FND_CF_IN__4B0D20AB]  DEFAULT ((0)) FOR [FND_CF_INT_BAL_AMT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FND_CF_IN__4C0144E4]  DEFAULT ((0)) FOR [FND_CF_INT_PCT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__INT_FROM___4CF5691D]  DEFAULT ((0)) FOR [INT_FROM_PREV_FDCF_AMT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FDCF_ACUM__4DE98D56]  DEFAULT ((0)) FOR [FDCF_ACUM_INT_LTD_AMT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__FND_CF_IN__4EDDB18F]  DEFAULT ((0)) FOR [FND_CF_INT_TRXN_AMT]
GO
ALTER TABLE [igm].[TFDUT] ADD  CONSTRAINT [DF__TFDUT__REVRS_INT__4FD1D5C8]  DEFAULT ((0)) FOR [REVRS_INT_TRXN_AMT]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__PREV_UPDT_U__52AE4273]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__SELL_PRIC_A__53A266AC]  DEFAULT ((0)) FOR [SELL_PRIC_AMT]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__PURCH_PRIC___54968AE5]  DEFAULT ((0)) FOR [PURCH_PRIC_AMT]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__FNDVL_SPLT___558AAF1E]  DEFAULT ((0)) FOR [FNDVL_SPLT_FCT]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__FNDVL_SPLT___567ED357]  DEFAULT (' ') FOR [FNDVL_SPLT_CD]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__FNDVL_CHNG___5772F790]  DEFAULT (' ') FOR [FNDVL_CHNG_IND]
GO
ALTER TABLE [igm].[TFV] ADD  CONSTRAINT [DF__TFV__XTRNL_UNIT___58671BC9]  DEFAULT ((0)) FOR [XTRNL_UNIT_PRIC_AMT]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__PREV_UPDT__2200E977]  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__CHQ_REF_S__22F50DB0]  DEFAULT ((0)) FOR [CHQ_REF_SEQ_NUM]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__STOP_SIGN__23E931E9]  DEFAULT (' ') FOR [STOP_SIGN_ON_IND]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__APPL_STAT__24DD5622]  DEFAULT (' ') FOR [APPL_STAT_CD]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__BEG_MO_ST__25D17A5B]  DEFAULT (' ') FOR [BEG_MO_STAT_CD]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__APPL_CTL___26C59E94]  DEFAULT (' ') FOR [APPL_CTL_CTRY_CD]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__APPL_CTL___27B9C2CD]  DEFAULT (' ') FOR [APPL_CTL_CRCY_CD]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__CHNG_LEAD__28ADE706]  DEFAULT ((0)) FOR [CHNG_LEAD_TIME_DUR]
GO
ALTER TABLE [igm].[TMAST] ADD  CONSTRAINT [DF__TMAST__TOT_ACTV___29A20B3F]  DEFAULT ((0)) FOR [TOT_ACTV_POL_CNTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREV_UPDT_USER_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CSTAT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PREV_CSTAT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_INS_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_INS_PURP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_ISS_DT_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CEAS_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_BASE_CVG_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PREV_BASE_CVG_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PAR_CVG_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CVG_REC_CTR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NXT_ACTV_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MAIL_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [APP_FORM_TYP_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_BUS_CLAS_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PREM_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PNSN_QUALF_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PREV_ANNV_DUR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CTRY_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SYS_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_RESET_YR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SPND_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_ACCT_PAR_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_GL_ACCT_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CRCY_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MULT_CRCY_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CLI_CRNT_LOC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_ISS_LOC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_BILL_MODE_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_BILL_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SFB_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PD_TO_DT_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [BILL_RMND_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_BILL_TO_DT_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [BILL_LEAD_TIME_DUR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PMT_DRW_DY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PMT_REDRW_OPT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_TOT_BILL_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_MPREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_SNDRY_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_SNDRY_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SNDRY_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_LOAN_REPAY_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_RBILL_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_GRS_APREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_CRNT_MODE_FCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_FACE_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PFEE_FCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [MODE_FCT_RESTR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PFEE_RESTR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_PFEE_FCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PMT_RETRN_1_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PMT_RETRN_2_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_MPREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_MODE_FCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PREV_MODE_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREV_BILL_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREV_PD_TO_DT_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREM_RECALC_OPT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_NFO_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_APL_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [AUTO_PREM_PMT_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_VPO_PU_DUR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREM_DSCNT_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREM_DSCNT_PCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [MPREM_DSCNT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DIV_OPT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PREV_DIV_DUR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [DIV_DCLR_DUR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [DIV_DCLR_LTD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_DOD_ACUM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_DOD_AVB_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [DOD_CRNT_INT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_DOD_INT_RT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_DOD_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [DOD_INT_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [DOD_AVB_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PUA_LTD_FACE_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PUA_YTD_FACE_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PUA_CLR_FACE_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PUA_CLR_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_OYT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_CRNT_OYT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_DIV_SUSP_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PDF_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PDF_INT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PDF_AVB_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PDF_INT_RT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PDF_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PDF_INT_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PDF_AVB_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PDF_SUSP_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_MISC_SUSP_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREM_SUSP_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_OS_DISB_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_REG_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_LOCK_FND_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PNSN_SRC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_REG_FND_SRC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [REG_SPCL_HNDL_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [REG_SAV_PORTN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [REG_SAV_PORTN_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_REG_TOT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_REJ_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_APP_SIGN_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MIB_SIGN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_APP_FORM_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_APP_CTR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [LOAN_INT_DEDBL_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_TAX_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_TXEMP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_PDF_RFND_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [TAX_RPT_FREQ_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [GAIN_RPT_TIME_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ACRU_CALC_TIME_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ANNV_ACB_OVRID_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_TAX_RESTR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_7702_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_TAMRA_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MEC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_7PAY_ANN_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_7PAY_CUM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREV_XEMP_TST_DUR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANPAYO_YTD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANPAYO_PYR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANPAYO_LTD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANPAYO_NYR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_ANPAYO_MODE_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANPAYO_1_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ANPAYO_1_MTHD_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ANPAYO_1_DEST_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANPAYO_2_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ANPAYO_2_MTHD_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ANPAYO_2_DEST_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_RRIF_MNPMT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [RRIF_MNPMT_PYR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_LIF_MXPMT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [LIF_MXPMT_PYR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [CASL_PMT_YTD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [CASL_PMT_PYR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ANTY_SUSP_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DB_OPT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [UL_INIT_PREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_UL_SHRT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SHRT_CALC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [UL_LAPS_NOTI_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_MNPMT_TRG_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PLAN_PERI_PREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_GDLN_APREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_GDLN_SPREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [ACUM_GDLN_PREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [SE_GDLN_APREM_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_SE_GDLN_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_SE_XSLD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SE_XSLD_RETRN_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SE_XSLD_CLR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SE_SALE_LOAD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ENHC_UWG_REQIR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ENHC_UWG_APROV_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_ENHC_NELCT_QTY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CLM_PAYO_MTHD_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CLM_PAYE_REL_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CLM_PAYE_POL_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CLM_PAYE_CVG_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DI_CLM_REC_CTR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CLM_STAT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_OPTL_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FREE_WTHDR_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [FREE_WTHDR_QTY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FREE_WTHDR_PERI_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [FREE_WTHDR_TOT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_FREE_XFER_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_FREE_XFER_QTY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FREE_XFER_PERI_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [FREE_XFER_TOT_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_CRNT_PSUR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PREV_PSUR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [AFR_THRSHD_PERI_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_AFR_ALLOC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_AFR_THRSHD_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_TOT_AFR_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_REINS_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [XHBT_CRNT_LOC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [XHBT_ISS_LOC_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SURR_DIV_ACUM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_SURR_LOAN_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_TRMN_PUA_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [TRMN_PUA_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_EDIT_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_COMNT_TXT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_RUSH_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [UNMTCH_MAIL_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SUPRES_ISS_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [LINK_POL_ISS_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CNFD_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_TIA_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CVG_ERROR_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_BNFY_PCT_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FREE_LK_FND_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FREE_LK_XFER_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [NTU_TRMN_VALU_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MTHV_PRCES_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SETL_OPT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_SETL_OPT_DUR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DBG_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DBG_LOAN_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_UNIT_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_NXT_MODE_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_NXT_BILL_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_NXT_MODE_FCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_NXT_PFEE_FCT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NXT_FCT_RESTR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NXT_PFEE_RESTR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_NXT_SNDRY_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NXT_SNDRY_REASN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_NXT_PMT_DRW_DY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DIV_XCES_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MED_REASN_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_ENDOW_FACE_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PUA_SUM_INS_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [AGT_XFER_STAT_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [AGT_CNFRM_RECV_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PADM_SUPRES_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FINAL_SUPRES_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [DIV_PMT_MTHDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_NF_GRCE_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NXT_SERV_AGT_IDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_BILL_SUB_TYP_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_APL_BILL_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_NOTE_RECV_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_SUSP_DPOS_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_LAPS_RFND_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_OEA_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_CSTAT_REASN_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_TRM_CNVR_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_LEGAL_SIGN_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_INS_HLTH_SIGN_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_INS_SIGN_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_MGMT_SIGN_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_WITNS_CTZN_IDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [WK_SEQ_NUMZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_TOT_MNB_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [APP_ENTR_USER_IDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ATTDE_INV_RSK_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [STRAT_INV_OPT_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [SPL_BILL_TO_DT_NUMZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_XTRA_PREM_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [VUL_DRW_FAIL_NUMZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [XFER_OVRID_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [BCK_FILL_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_SPDY_SERV_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NXT_BILL_SUB_TYP_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CORDR_TST_INDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PSUS_CLR_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_MSUS_CLR_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [PREV_BILL_TO_DT_NUMZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NLG_STAT_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NLG_XPRY_REASN_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SHRT_COI_ONLY_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SHRT_MGMT_ONLY_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [RETIR_AGEZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_LAST_BILL_AMTZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FREE_LK_CHNG_CDZ]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_EARLY_WTHDR_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [BNK_CHNL_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [APP_AGT_SIGN_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ANTY_DEFR_XPRY_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_DELIV_MTHD_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_E_CHNG_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_E_LOAN_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [INIT_RMTT_DSCNT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [PREM_DRW_FAIL_QTY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [FAX_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [SETL_OPT_STRT_DY]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [VULR_MPREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [VULR_PD_TO_DT_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [VULR_PREV_PTD_NUM]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [SETL_OPT_STAT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [NXT_XTRA_PREM_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [GIA_WTHDR_OPT_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [SAME_DIA_XFER_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [POL_ATD_OF_AGE]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [AUTO_AGT_XFER_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_RETRN_DISB_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [POL_PEND_DISB_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ('N') FOR [AGT_LPC_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [TEAS_SYS_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [INS_GUARD_DEC_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [SPRD_ACCT_OPT_1_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [SPRD_ACCT_OPT_2_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [INS_NHI_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NHI_REVW_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [NHI_SIGN_RECV_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [RSK_DSCLSRE_RECV_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [CUST_STAT_RECV_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [LP_RECV_STAT_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [LOVE_GIFT_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [TSB_PROJ_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [MTG_LOAN_AMT]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [MTG_LI_BNFY_CVG_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [MTG_PRVD_REVW_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [TSB_BR_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [ANTY_GUAR_PERI_YR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT ((0)) FOR [ANNY_ACCU_PERI_YR]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [RT_ADJ_NOTI_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [RT_ADJ_WAV_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [E_POL_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [UPD_POL_CLIC_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [INIT_PAYMENT_MODE]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [RENEW_PAYMENT_MODE]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [MLOAN_EXTR_IND]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [OCCP_CLAS_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [OCCP_ID]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [OCCP_ID_2Z]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ICC_ELDER_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ICC_3MO_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [ICC_SURR_TYP_CD]
GO
ALTER TABLE [igm].[TPOL_ILP] ADD  DEFAULT (' ') FOR [REIMB_LTR_IND]
GO
/****** Object:  StoredProcedure [dbo].[sp_pageSQL_passPageNum]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	給前端應用程式分頁的預存程序(傳頁數版)
-- Exemple: 
/*Exec [dbo].[SP_pageSQL_passPageNum] 'Select * FROM igm.TFDUT','order by pol_id','5','50'*/
-- =============================================
CREATE PROCEDURE [dbo].[sp_pageSQL_passPageNum]
	(@SqlQuery varchar(max),--Sql Query的部份(不含排序)
	 @SqlOrder varchar(max),--Sql排序
	 @PageNmber int,--目前在第幾頁
	 @PageSize int)--每頁顯示幾筆資料
AS
BEGIN
	
	Declare @SelectSqlScript varchar(max)--要執行的SQL字串
	Set @SelectSqlScript = 
	' Declare @TotalRow bigint --總筆數
	  Declare @TotalPages bigint --總頁數
	  
	  
	--從先將要查詢的資料依指定排序編上序號
	Select * ,Row_Number() over (order by '+@SqlOrder+') as rowNo into #Temp from ('+@SqlQuery+') SubTable
    

    --開資料，從第幾筆到第幾筆
    Select * From #Temp Where RowNo Between ' + Convert(varchar(max),(@PageNmber*@PageSize)-(@PageSize-1)) +' And ' + Convert(varchar(max),(@PageNmber*@pageSize)) + 'Order by rowNo
    
	--Query的總筆數
    Select @TotalRow = count(*)  From  #Temp SubTable  ' + '

	--Query的總頁數
    Set @TotalPages = (@TotalRow/'+Convert(varchar(max),@PageSize) +')' + '

	--設定總頁數
    If (@TotalRow%'+Convert(varchar(max),@pageSize)+'>0) Set @TotalPages=(@TotalPages+1) ' + '

    Select @TotalPages AS Total_Pages,@TotalRow AS Total_Row'
         
    --Debug用  
	--print @SelectSqlScript 

	--回傳兩個資料集
	EXECUTE(@SelectSqlScript) 
      
END
GO
/****** Object:  StoredProcedure [dbo].[sp_WriteLog]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/08
-- Description: 提供預存程序記錄Log
-- Exemple: Set @Log = '取得交易資料'+char(10) + '換行後繼續記錄' 
-- =============================================

CREATE PROCEDURE [dbo].[sp_WriteLog]
(
  @Pol_Id char(10), --保單號碼
  @Log_Level varchar(10),
  @Caller nvarchar(30),
  @Logs nvarchar(max) 
)
AS
BEGIN

	Insert Into dbo.Logs Values (@Pol_Id,@Log_Level,@Caller,@Logs,GetDate())
    
  
END;
GO
/****** Object:  StoredProcedure [igm].[sp_ClearData]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/11
-- Description:	重新整理髒資料，髒資料一律整張保單清除
-- Exemple:  
--  Exec [igm].[sp_ClearData]
-- =============================================

CREATE PROCEDURE [igm].[sp_ClearData]
AS
BEGIN



	Drop Table IF Exists #Pol_ID

	Declare 
		@Caller nvarchar(30),
		@Logs nvarchar(max)='無任何錯誤資料',
		@StartDateTime datetime,
		@EndDateTime datetime
		Set @Caller = '[ilp].[sp_ClearData]'


	Set @Logs = dbo.fn_Logs(@Logs,'igm.sp_TBNDV_Dity檢查')
	Set @Logs = dbo.fn_Logs(@Logs,'TBNDV的Bon_Div_Idt_Num對應不到TFBND的FND_BON_IDT_NUM')


	Select @Logs= dbo.fn_Logs(@Logs,(
	Select Distinct ',PolId:' + TBNDV.POL_ID + ' , Bon_Div_Idt_Num:' + TBNDV.BON_DIV_IDT_NUM  
	From igm.TBNDV
	Left Join igm.TFBND On 1=1
	And TBNDV.FND_ID = TFBND.FND_ID
	And TBNDV.BON_DIV_IDT_NUM = TFBND.FND_BON_IDT_NUM 
	Where 1=1
	and TFBND.FND_BON_EFF_DT  is null
	FOR XML PATH('')))  

	Select distinct POL_ID Into #Pol_ID From igm.TBNDV  Where POL_ID In  (
	Select TBNDV.POL_ID
	From igm.TBNDV
	Left Join igm.TFBND On 1=1
	And TBNDV.FND_ID = TFBND.FND_ID
	And TBNDV.BON_DIV_IDT_NUM = TFBND.FND_BON_IDT_NUM 
	Where 1=1
	and TFBND.FND_BON_EFF_DT  is null)


	Set @Logs = dbo.fn_Logs(@Logs,'保單無標的幣別')
	Select @Logs= dbo.fn_Logs(@Logs,(
	Select Distinct ',PolId:' + POL_ID 
	From 
	(
		Select Pol_Id
		From  [TILP].[ilp].[v_SelectTrxnRowData] Where FIA_CRCY_CD Is Null
		UNION ALL
		Select Pol_Id
		From  [TILP].[ilp].[v_SelectBonRowData]  Where FIA_CRCY_CD Is Null
	) A 
	FOR XML PATH('')))  

	Insert Into #Pol_ID
	Select Pol_Id
	From 
	(
		Select Pol_Id
		From  [TILP].[ilp].[v_SelectTrxnRowData] Where FIA_CRCY_CD Is Null
		UNION ALL
		Select Pol_Id
		From  [TILP].[ilp].[v_SelectBonRowData]  Where FIA_CRCY_CD Is Null
	) A  


	Set @Logs = dbo.fn_Logs(@Logs,'v_SelectTrxnRowData有Current_In是Null')

	Select @Logs= dbo.fn_Logs(@Logs,(
	 Select Distinct ',PolId:' + POL_ID  From [ilp].[v_SelectTrxnRowData] Where FIA_UNIT_CUM_QTY is null
	 FOR XML PATH('')))  

	Insert Into #Pol_ID
	Select Distinct POL_ID  From [ilp].[v_SelectTrxnRowData] Where FIA_UNIT_CUM_QTY is null


	Delete From igm.TFA Where Exists (Select 1 From #Pol_ID P Where TFA.POL_ID = P.POL_ID )
	Delete From igm.TFD Where Exists (Select 1 From #Pol_ID P Where TFD.POL_ID = P.POL_ID )
	Delete From igm.TFDUT Where Exists (Select 1 From #Pol_ID P Where TFDUT.POL_ID = P.POL_ID )
	Delete From igm.TBNDV Where Exists (Select 1 From #Pol_ID P Where TBNDV.POL_ID = P.POL_ID )

	Exec sp_WriteLog 'Mutilp','Info',@Caller,@Logs
	 


End
GO
/****** Object:  StoredProcedure [igm].[sp_TBNDV_Dity]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/11/12
-- Description:	重新整理TBNDV資料
-- Exemple:  
--  Exec igm.sp_TBNDV_Dity '','',''
-- =============================================

CREATE PROCEDURE [igm].[sp_TBNDV_Dity] 
(	
	@PolId nchar(10),--保單號碼
	@FndId varchar(10),--標的代號	
	@CompleteDate varchar(10)--交易完成日
)
AS
BEGIN


Drop Table IF Exists #TBNDV_Dity

Delete From 
TBNDV_Dity
Where 1=1
--指定交易完成日
And (@CompleteDate IS NULL OR @CompleteDate = '' OR BON_DIV_STAT_DT >= @CompleteDate) 
--指定保單號碼
And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
--指定標的代號
And (@FndId IS NULL OR @FndId = '' OR FND_ID = @FndId)


--將改用TBNDV的 BON_DIV_STAT_DT當配息的在Trxn的CompleteDate
--如有Reverse,因TBNDV的 BON_DIV_STAT_DT有的資料被改成ReverseDate，
--造成無法正確判斷該配息歸屬哪一天的帳戶價值，
--會採用TFBND的FND_BON_EFF_DT欄位，還原確切的入帳日。
Select TBNDV.*,TFBND.FND_BON_EFF_DT Into #TBNDV_Dity
From igm.TBNDV
Left Join igm.TFBND On 1=1
And TBNDV.FND_ID = TFBND.FND_ID
And TBNDV.BON_DIV_IDT_NUM = TFBND.FND_BON_IDT_NUM 
Where 1=1
--指定交易完成日
And (@CompleteDate IS NULL OR @CompleteDate = '' OR TFBND.FND_BON_EFF_DT >= @CompleteDate) 
--指定保單號碼
And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
--指定標的代號
And (@FndId IS NULL OR @FndId = '' OR TBNDV.FND_ID = @FndId)


Insert Into igm.TBNDV_Dity
  Select 
	   POL_ID
      ,BON_DIV_SEQ_NUM
      ,Sum(BON_DIV_TRXN_AMT) As BON_DIV_TRXN_AMT
      ,BON_DIV_STAT_CD
      ,FND_ID
      ,Sum(FND_UNIT_QTY) As FND_UNIT_QTY
      ,Sum(FND_BON_UNIT_AMT) As FND_BON_UNIT_AMT
      ,Avg(XCHNG_RT) As XCHNG_RT
      ,Sum(FND_TRXN_AMT) As FND_TRXN_AMT
	  --原欄位此為配息基準日，因TBNDV會等到配息入帳日才會出現資料，故如用此欄位比對TMAST的BatchDate會抓不到資料
      --,CONVERT(VARCHAR(10), CAST( CAST(28000000-BON_DIV_IDT_NUM AS varchar) AS DATE), 120) As BON_DIV_STAT_DT
	  --配息入帳日(保險公司收到基金公司的配息)
	  ,FND_BON_EFF_DT
	  ,BON_DIV_REVRS_DT
  From 
  #TBNDV_Dity
  Where 1=1
	--指定交易完成日
	And (@CompleteDate IS NULL OR @CompleteDate = '' OR FND_BON_EFF_DT >= @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
	--指定標的代號
	And (@FndId IS NULL OR @FndId = '' OR FND_ID = @FndId)
  Group By 
	   POL_ID
      ,BON_DIV_SEQ_NUM
      ,BON_DIV_STAT_CD
      ,FND_ID 
      ,FND_BON_EFF_DT
	  ,BON_DIV_REVRS_DT

End
GO
/****** Object:  StoredProcedure [igm].[sp_TFA_Dity]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/11
-- Description:	重新整理TFA資料
-- Exemple:  
--  Exec [igm].[sp_TFA_Dity] '5568804490' 
-- =============================================

CREATE PROCEDURE [igm].[sp_TFA_Dity] 
(	
	@PolId nchar(10) --保單號碼 
)
AS
BEGIN

	--測試TFA同保單、同CIA_IDT_NUM、CIA_TYP_CD會有不同的CIA_PRCES_DT
	--Select A.CIA_PRCES_DT, A.CIA_EFF_DT, B.CIA_PRCES_DT, B.CIA_EFF_DT, * From igm.TFA A
	--Inner Join igm.TFA B On A.POL_ID = B.POL_ID 
	--And A.CIA_IDT_NUM = B.CIA_IDT_NUM  
	--AND A.CIA_TYP_CD = B.CIA_TYP_CD 
	--AND A.CIA_PRCES_DT <> B.CIA_PRCES_DT
	--where b.CIA_IDT_NUM is not null

	--Select POL_ID,CVG_NUM,CIA_IDT_NUM,CIA_SEQ_NUM,CIA_TYP_CD,CIA_PRCES_DT,CIA_REVRS_PRCES_DT,CIA_PRCES_DT_DITY  From igm.TFA_Dity
	--WHERE POL_ID = '1680047180' and CIA_IDT_NUM = '7759180' and CIA_TYP_CD = 'TRS'

	--將TFA_Dity清空
	Delete From 
	igm.TFA_Dity
	Where 1=1
	--指定交易完成日
	--And (@CompleteDate IS NULL OR @CompleteDate = '' OR BON_DIV_STAT_DT >= @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId) 


	--將TFA倒入TFA_Dity
	Insert Into igm.TFA_Dity 
	Select Null,* From igm.TFA
	Where 1=1
	--指定交易完成日
	--And (@CompleteDate IS NULL OR @CompleteDate = '' OR Complete_Date = @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
	--指定序號 
	--And (@SeqNo IS NULL OR @SeqNo = '' OR Seq_No = @SeqNo)
	 


	--同一筆保單、交易申請日、CIA_IDT_NUM、CIA_TYP_CD，Reverse有可能好幾次，取出每筆Reverse的第一筆，找出最初的交易完成日期
	--SeqNo不應加入在群組裡面，因為同一筆保單、交易申請日，Reverse後會往下排序(原999，Reverse後變998)
	Drop Table IF Exists #FirstReverseData
	Select Distinct POL_ID,CVG_NUM,CIA_IDT_NUM,CIA_TYP_CD,MIN(CIA_PRCES_DT) CIA_PRCES_DT
	Into #FirstReverseData
	From igm.TFA 
	Where  CIA_REVRS_STAT_CD <> 'N'  
	--指定交易完成日
	--And (@CompleteDate IS NULL OR @CompleteDate = '' OR Complete_Date = @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId) 
	Group by POL_ID,CVG_NUM,CIA_IDT_NUM,CIA_TYP_CD
	Order By POL_ID
	--Select  * From #FirstReverseData

	--將相同保單、交易申請日、CIA_IDT_NUM、CIA_TYP_CD的交易完成日期更新成與第一筆相同的交易完成日期
	--Update igm.TFA_Dity
	--Set CIA_PRCES_DT_DITY = B.CIA_PRCES_DT
	--From #FirstReverseData B Where 1=1
	--And TFA_Dity.POL_ID = B.POL_ID
	--And TFA_Dity.CVG_NUM = B.CVG_NUM
	--And TFA_Dity.CIA_IDT_NUM = B.CIA_IDT_NUM
	--And TFA_Dity.CIA_TYP_CD = B.CIA_TYP_CD
	--指定交易完成日
	--And (@CompleteDate IS NULL OR @CompleteDate = '' OR Complete_Date = @CompleteDate) 
	--指定保單號碼
	--And (@PolId IS NULL OR @PolId = '' OR TFA_Dity.Pol_Id = @PolId)  

	--確認TFA_Dity是否還有同保單、同CIA_IDT_NUM、CIA_TYP_CD會有不同的CIA_PRCES_DT
	--Select A.CIA_PRCES_DT_DITY,A.CIA_PRCES_DT, A.CIA_EFF_DT, B.CIA_PRCES_DT, B.CIA_EFF_DT, * From igm.TFA_Dity A
	--Inner Join igm.TFA_Dity B On A.POL_ID = B.POL_ID 
	--And A.CIA_IDT_NUM = B.CIA_IDT_NUM  
	--AND A.CIA_TYP_CD = B.CIA_TYP_CD 
	--AND A.CIA_PRCES_DT_DITY <> B.CIA_PRCES_DT_DITY
	--where b.CIA_IDT_NUM is not null



End
GO
/****** Object:  StoredProcedure [igm].[sp_TFD_Dity]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/11
-- Description:	重新整理TFD資料
-- 因TFD的FIA_CMPLT_DTZ，交易完成日期有些資料因為Reverse被改變，所以需要重新整理
-- 將相同保單、交易申請日、CIA_IDT_NUM、CIA_TYP_CD的交易完成日期更新成與第一筆相同的交易完成日期
-- Exemple:  
--  Exec [igm].[sp_TFD_Dity] 
--  Exec [igm].[sp_TFD_Dity] '5568804490',''

-- =============================================

CREATE PROCEDURE [igm].[sp_TFD_Dity] 
(	
	@PolId nchar(10),--保單號碼
	@FndId varchar(10),--標的代號	
	@CompleteDate varchar(10) --交易完成日 
)
AS
BEGIN

	--測試TFD同保單、同FIA_IDT_NUM、FIA_EFF_DT會有不同的FIA_CMPLT_DTZ
	--Select  A.FIA_EFF_DT, A.FIA_CMPLT_DTZ,A.FIA_REVRS_STAT_CD, B.FIA_EFF_DT,B.FIA_CMPLT_DTZ, B.FIA_REVRS_STAT_CD, * From igm.TFD A
	--Inner Join igm.TFD B On A.POL_ID = B.POL_ID 
	--And A.FIA_IDT_NUM = B.FIA_IDT_NUM  
	--AND A.FIA_EFF_DT = B.FIA_EFF_DT   
	--And A.FND_ID = B.FND_ID 
	--AND A.FIA_CMPLT_DTZ <> B.FIA_CMPLT_DTZ   
	--AND B.FIA_REVRS_STAT_CD <> 'N'
	--Where A.FIA_REVRS_STAT_CD = 'N'
	 

	--將TFD_Dity清空
	Delete From 
	igm.TFD_Dity
	Where 1=1
	--指定交易完成日
	And (@CompleteDate IS NULL OR @CompleteDate = '' OR FIA_CMPLT_DTZ >= @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
	--指定標的代號
	And (@FndId IS NULL OR @FndId = '' OR FND_ID = @FndId)
	OR FIA_CMPLT_DTZ IS NULL


	--將TFD倒入TFD_Dity
	Insert Into igm.TFD_Dity 
	Select FIA_CMPLT_DTZ,* 
	From igm.TFD
	Where 1=1
	--指定交易完成日
	And (@CompleteDate IS NULL OR @CompleteDate = '' OR FIA_CMPLT_DTZ >= @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
	--指定標的代號
	And (@FndId IS NULL OR @FndId = '' OR FND_ID = @FndId)

	--同一筆保單、交易申請日、CIA_IDT_NUM、CIA_TYP_CD，Reverse有可能好幾次，取出每筆Reverse的第一筆，找出最初的交易完成日期
	--SeqNo不應加入在群組裡面，因為同一筆保單、交易申請日，Reverse後會往下排序(原999，Reverse後變998)
	Drop Table IF Exists #FirstReverseData
	Select Distinct POL_ID,FND_ID,CVG_NUM,FIA_IDT_NUM,FIA_EFF_DT,MIN(FIA_CMPLT_DTZ) FIA_CMPLT_DTZ
	Into #FirstReverseData
	From igm.TFD 
	Where  FIA_REVRS_STAT_CD <> 'N'  
	--指定交易完成日
	And (@CompleteDate IS NULL OR @CompleteDate = '' OR FIA_CMPLT_DTZ >= @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
	--指定標的代號
	And (@FndId IS NULL OR @FndId = '' OR FND_ID = @FndId)
	Group by POL_ID,FND_ID,CVG_NUM,FIA_IDT_NUM,FIA_EFF_DT
	Order By POL_ID
	
	--Select  * From #FirstReverseData Where POL_ID = '1680047180'

	--將相同保單、交易申請日、CIA_IDT_NUM、CIA_TYP_CD的交易完成日期更新成與第一筆相同的交易完成日期
	--Update igm.TFD_Dity
	--Set FIA_CMPLT_DTZ_ORIG = B.FIA_CMPLT_DTZ
	--From #FirstReverseData B Where 1=1
	--And TFD_Dity.POL_ID = B.POL_ID
	--And TFD_Dity.FND_ID = B.FND_ID
	--And TFD_Dity.CVG_NUM = B.CVG_NUM
	--And TFD_Dity.FIA_IDT_NUM = B.FIA_IDT_NUM
	--And TFD_Dity.FIA_EFF_DT = B.FIA_EFF_DT

	--測試TFD同保單、同FIA_IDT_NUM、FIA_EFF_DT會有不同的FIA_CMPLT_DTZ
	--還有一些的原因是，該筆資料Reverse一次以上，所以中間的Reverse日期與第一筆Reverse日期不同
	--Select  A.FIA_EFF_DT, A.FIA_CMPLT_DTZ,A.FIA_REVRS_STAT_CD, B.FIA_EFF_DT,B.FIA_CMPLT_DTZ, B.FIA_REVRS_STAT_CD, * From igm.TFD_Dity A
	--Inner Join igm.TFD_Dity B On A.POL_ID = B.POL_ID 
	--And A.FIA_IDT_NUM = B.FIA_IDT_NUM  
	--AND A.FIA_EFF_DT = B.FIA_EFF_DT   
	--And A.FND_ID = B.FND_ID 
	--AND B.FIA_REVRS_STAT_CD <> 'N' 
	--Where A.FIA_REVRS_STAT_CD = 'N' 
	--AND A.FIA_CMPLT_DTZ_ORIG <> B.FIA_CMPLT_DTZ  



End
GO
/****** Object:  StoredProcedure [ilp].[sp_CalcAcctVal]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	計算標的帳戶價值
-- Exemple: 2
-- Exec [ilp].[sp_CalcAcctVal] '','','2027-01-07'
-- =============================================

CREATE PROCEDURE [ilp].[sp_CalcAcctVal]
	@Pol_Id char(10),
	--保單號碼
	@Fnd_Id char(10),
	--標的代號 
	@IGM_Batch_Date Date
--核心批次日
AS
BEGIN

	--Begin --測試用的變數宣告
	--Declare 
	--	@Pol_Id char(10) = '', --保單號碼
	--	@Fnd_Id char(10) = '', --標的代號 
	--	@IGM_Batch_Date Date ='2026-05-27' --核心批次日
	--End


	BEGIN
		--先清除AcctValStage重覆資料，避免重跑時重覆產生相同資料進AcctValStage而失敗
		DELETE
		FROM ilp.AcctValStage
		WHERE Pol_Id = CASE WHEN ISNULL(@Pol_Id, '') = '' Then Pol_Id Else @Pol_Id End  
			AND Fnd_Id = CASE WHEN ISNULL(@Fnd_Id, '') = '' Then Fnd_Id Else @Fnd_Id End  
			AND IGM_Batch_Date >= CASE WHEN ISNULL(@IGM_Batch_Date, '') = '' Then IGM_Batch_Date Else @IGM_Batch_Date End  
			Select @Pol_Id
	END


	Begin--取淨值檔(igm.TFV)每種標的生效日期最後一筆的淨值
		Drop Table If Exists #NavMaxEffDt
		Select
			FND_ID,
			Max(FNDVL_EFF_DT) AS FNDVL_EFF_DT
		Into #NavMaxEffDt
		From igm.TFV
		Group By FND_ID
	End


	Begin--用淨值檔每種標的最後一筆的生效日期取相對應日期的淨值
		Drop Table If Exists #LatestNav
		Select NavMaxEffDt.*, TFV.SELL_PRIC_AMT
		Into #LatestNav
		From igm.TFV
			Inner Join #NavMaxEffDt NavMaxEffDt On 1=1
				And NavMaxEffDt.FND_ID = TFV.FND_ID
				And NavMaxEffDt.FNDVL_EFF_DT = TFV.FNDVL_EFF_DT
	End


	Begin--用淨值日取匯率資料，要取與淨值同一天的匯率
		Drop Table If Exists #FixingRateMaxEffDt
		Select XCHNG_RT_TYP_CD 
		  , XCHNG_FROM_CRCY_CD
		  , XCHNG_TO_CRCY_CD
		  , XCHNG_EFF_DT
		Into #FixingRateMaxEffDt
		From igm.TCXRT
			Inner Join #NavMaxEffDt NavMaxEffDt On 1=1
				And NavMaxEffDt.FNDVL_EFF_DT = TCXRT.XCHNG_EFF_DT
		Where 1=1
			And XCHNG_RT_GR_CD = 'D'
			And XCHNG_RT_TYP_CD  IN ('3')
	End


	Begin--用每種匯率最後一筆日期取該日期匯率(ps.***公司匯率是站在保戶角度，用標的幣買入保單幣)
		Drop Table If Exists #FixingRate
		Select
			FixingRateMaxEffDt.*
		, TCXRT.XCHNG_RT
		Into #FixingRate
		From igm.TCXRT
			Inner Join #FixingRateMaxEffDt FixingRateMaxEffDt On 1=1
				And FixingRateMaxEffDt.XCHNG_RT_TYP_CD  =  TCXRT.XCHNG_RT_TYP_CD
				And FixingRateMaxEffDt.XCHNG_EFF_DT  =  TCXRT.XCHNG_EFF_DT
				And FixingRateMaxEffDt.XCHNG_FROM_CRCY_CD  =  TCXRT.XCHNG_FROM_CRCY_CD
				And FixingRateMaxEffDt.XCHNG_TO_CRCY_CD  =  TCXRT.XCHNG_TO_CRCY_CD
		Where 1=1
			And TCXRT.XCHNG_RT_GR_CD = 'D'
			And TCXRT.XCHNG_RT_TYP_CD  IN ('3')
	End


	Drop Table If Exists #AcctValStage
	Select
		T.Pol_Id --保單號碼
	, T.Complete_Date --交易完成日
	, T.Alloc_Type --投入類別
	, T.Seq_No --序號	
	, T.Fnd_Id --標的代號
	, TMAST.BTCH_PRCES_DT As IGM_Batch_Date --資料處理時間
	, T.Pol_Crcy --保單幣別 
	, T.Fnd_Crcy --基金幣別、標的幣別
	, Round(Round(Avg_Nav_Val * Current_In, FndCrcyScaleQty.CRCY_SCALE_QTY) * Avg_Fixing_Rate, PolCrcyScaleQty.CRCY_SCALE_QTY)  AS Net_Alloc_Cost_PolCrcy --淨投入成本(保單幣別)
	, Round(Avg_Nav_Val * Current_In, FndCrcyScaleQty.CRCY_SCALE_QTY) AS Net_Alloc_Cost_FndCrcy --淨投入成本(標的幣別)
    , Round(Round(Avg_Nav_Val * Current_In, FndCrcyScaleQty.CRCY_SCALE_QTY) * Avg_Fixing_Rate , LocalCrcyScaleQty.CRCY_SCALE_QTY) AS Net_Alloc_Cost_LocalCrcy --淨投入成本(當地幣別)
	--, Ceiling(Round(LatestNav.SELL_PRIC_AMT * IsNull(T.Current_In,0),FndCrcyScaleQty.CRCY_SCALE_QTY) * FixingRate.XCHNG_RT * dbo.fn_CeilingCrcyScaleQty(3)) / dbo.fn_CeilingCrcyScaleQty(3) As Fnd_Acc_Val_PolCrcy --目前價值(保單幣別) --Round(Round(目前淨值*標的單位數餘額)*目前匯率)
	, Case PolCrcyScaleQty.CRCY_SCALE_QTY 
	When 0 Then Ceiling(Floor( Round(LatestNav.SELL_PRIC_AMT * IsNull(T.Current_In,0),FndCrcyScaleQty.CRCY_SCALE_QTY) * FixingRate.XCHNG_RT * dbo.fn_CeilingCrcyScaleQty(3)) / dbo.fn_CeilingCrcyScaleQty(3)) 
	Else Round( Round(LatestNav.SELL_PRIC_AMT * IsNull(T.Current_In,0),FndCrcyScaleQty.CRCY_SCALE_QTY) * FixingRate.XCHNG_RT ,PolCrcyScaleQty.CRCY_SCALE_QTY )  
	End As Fnd_Acc_Val_PolCrcy --目前價值(保單幣別) --Round(Round(目前淨值*標的單位數餘額)*目前匯率)
	, Round (LatestNav.SELL_PRIC_AMT * IsNull(T.Current_In,0),FndCrcyScaleQty.CRCY_SCALE_QTY)  As Fnd_Acc_Val_FndCrcy--目前價值(標的幣別) --Round(目前淨值*標的單位數餘額)
	, Round(Round(LatestNav.SELL_PRIC_AMT * IsNull(T.Current_In,0),FndCrcyScaleQty.CRCY_SCALE_QTY) * LocalFixingRate.XCHNG_RT ,PolCrcyScaleQty.CRCY_SCALE_QTY)  As Fnd_Acc_Val_LocalCrcy --目前價值(當地幣別) --Round(Round(目前淨值*標的單位數餘額)*目前匯率)
	, LatestNav.SELL_PRIC_AMT Nav_Val --目前最新淨值
	, LatestNav.FNDVL_EFF_DT  Nav_Date--目前最新淨值日期
	, FixingRate.XCHNG_RT  AS XChng_RT_Pol --目前保單幣最新匯率
	, LocalFixingRate.XCHNG_RT AS XChng_RT_Local --目前當地幣最新匯率
	, FixingRate.XCHNG_EFF_DT --目前最新匯率日期
	, 0 As Fnd_Alloc_Ratio --標的分佈比例
	, '' As Cal_Fomula
	, 'Batch' As Created_By
	, GetDate() As Created_DateTime
	, Null As Updated_By
	, Null As Update_DateTime
	Into #AcctValStage
	From ilp.v_SelectTrxnStageLastInfo T
		Inner Join igm.TMAST ON 1=1
		--最新淨值
		Left Join #LatestNav LatestNav On 1=1
			And T.Fnd_Id = LatestNav.FND_ID
		--依最新的淨值日抓取對應的匯率日匯率
		Left Join igm.TCXRT   FixingRate On 1=1
			And T.Fnd_Crcy = FixingRate.XCHNG_FROM_CRCY_CD
			And T.Pol_Crcy = FixingRate.XCHNG_TO_CRCY_CD
			And LatestNav.FNDVL_EFF_DT = FixingRate.XCHNG_EFF_DT
			And FixingRate.XCHNG_RT_TYP_CD = '3'
			And FixingRate.XCHNG_RT_GR_CD = 'D'
		--依最新的淨值日抓取對應的匯率日匯率
		Left Join igm.TCXRT LocalFixingRate On 1=1
			And T.Fnd_Crcy = LocalFixingRate.XCHNG_FROM_CRCY_CD
			And 'NT' = LocalFixingRate.XCHNG_TO_CRCY_CD
			And LatestNav.FNDVL_EFF_DT = LocalFixingRate.XCHNG_EFF_DT
			And LocalFixingRate.XCHNG_RT_TYP_CD = '3'
			And LocalFixingRate.XCHNG_RT_GR_CD = 'D'
		--標的幣別取位數
		Left Join igm.TCRCY FndCrcyScaleQty On 1=1
			And FndCrcyScaleQty.CRCY_CD = T.Fnd_Crcy
		--保單幣別取位數
		Left Join igm.TCRCY PolCrcyScaleQty On 1=1
			And PolCrcyScaleQty.CRCY_CD = T.Pol_Crcy
		--當地幣別取位數
		Left Join igm.TCRCY LocalCrcyScaleQty On 1=1
			And LocalCrcyScaleQty.CRCY_CD = 'NT'
	Where 1=1
		And T.Current_In <> 0
		And T.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then T.Pol_Id Else @Pol_Id End)
		And T.Fnd_Id = (Case When @Fnd_Id is null or @Fnd_Id = '' Then T.Fnd_Id Else @Fnd_Id End)
	--And TMAST.BTCH_PRCES_DT = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then TMAST.BTCH_PRCES_DT Else @IGM_Batch_Date End)


	IF(ilp.fn_GetEnviroment() <> 'SIT')
Begin
		Update #AcctValStage Set
	--Select
		   XChng_RT_Pol = T9F19.FND_XCHNG_RT
		  ,XCHNG_EFF_DT = T9F19.XCHNG_EFF_DT
		  ,Fnd_Acc_Val_FndCrcy = T9F19.FND_CRCY_CV_AMT
		  ,Fnd_Acc_Val_PolCrcy = T9F19.POL_CRCY_CV_AMT
		  ,Fnd_Acc_Val_LocalCrcy =  Round(T9F19.FND_CRCY_CV_AMT * LocalFixingRate.XCHNG_RT,LocalCrcyScaleQty.CRCY_SCALE_QTY)   --目前價值(當地幣別) --Round(Round(目前淨值*標的單位數餘額)*目前匯率)
		  --,AcctValStage.*
	From #AcctValStage AcctValStage
			Left Join igm.TFH ON 1=1
				And TFH.FND_ID = AcctValStage.Fnd_Id
			Inner Join igm.T9F19 ON 1=1
				And T9F19.BTCH_PRCES_DT = AcctValStage.IGM_Batch_Date
				And T9F19.POL_ID = AcctValStage.Pol_Id
				And T9F19.FND_ID = AcctValStage.Fnd_Id
			Left Join igm.TCXRT LocalFixingRate On 1=1
				And TFH.FND_CRCY_CD = LocalFixingRate.XCHNG_FROM_CRCY_CD
				And 'NT' = LocalFixingRate.XCHNG_TO_CRCY_CD
				And AcctValStage.XCHNG_EFF_DT = LocalFixingRate.XCHNG_EFF_DT
				And LocalFixingRate.XCHNG_RT_TYP_CD = '3'
				And LocalFixingRate.XCHNG_RT_GR_CD = 'D'
			--標的幣別取位數
			Left Join igm.TCRCY FndCrcyScaleQty On 1=1
				And FndCrcyScaleQty.CRCY_CD = TFH.FND_CRCY_CD
			--當地幣別取位數
			Left Join igm.TCRCY LocalCrcyScaleQty On 1=1
				And LocalCrcyScaleQty.CRCY_CD = 'NT'
	Where 1=1
			And TFH.FND_TYP_CD = 'M'
	END

	IF(ilp.fn_GetEnviroment() = 'UAT')
	Begin
		Update #AcctValStage
		Set Fnd_Acc_Val_PolCrcy = Fnd_Acc_Val_FndCrcy,
			Fnd_Acc_Val_LocalCrcy = Fnd_Acc_Val_FndCrcy,
			XChng_RT_Local = 1,
			XChng_RT_Pol = 1,
			XCHNG_EFF_DT = Nav_Date
		Where 1=1
			And Pol_Crcy = Fnd_Crcy
	End

	Insert Into ilp.AcctValStage
		(
		[Pol_Id]
		,[Complete_Date]
		,[Alloc_Type]
		,[Seq_No]
		,[Fnd_Id]
		,[IGM_Batch_Date]
		,[Pol_Crcy]
		,[Fnd_Crcy]
		,[Net_Alloc_Cost_PolCrcy]
		,[Net_Alloc_Cost_FndCrcy]
		,[Net_Alloc_Cost_LocalCrcy]
		,[Fnd_Acc_Val_PolCrcy]
		,[Fnd_Acc_Val_FndCrcy]
		,[Fnd_Acc_Val_LocalCrcy]
		,[Nav_Val]
		,[Nav_Date]
		,[Fixing_Rate]
		,[Fixing_Rate_LocalCrcy]
		,[Fixing_Rate_Date]
		,[Fnd_Alloc_Ratio]
		,[Cal_Fomula]
		,[Created_By]
		,[Created_DateTime]
		)
	Select [Pol_Id]
	, [Complete_Date]
	, [Alloc_Type]
	, [Seq_No]
	, [Fnd_Id]
	, [IGM_Batch_Date]
	, [Pol_Crcy]
	, [Fnd_Crcy]
	, [Net_Alloc_Cost_PolCrcy]
	, [Net_Alloc_Cost_FndCrcy]
	, [Net_Alloc_Cost_LocalCrcy]
	, [Fnd_Acc_Val_PolCrcy]
	, [Fnd_Acc_Val_FndCrcy]
	, [Fnd_Acc_Val_LocalCrcy]
	, [Nav_Val]
	, [Nav_Date]
	, XChng_RT_Pol
	, XChng_RT_Local
	, XCHNG_EFF_DT
	, [Fnd_Alloc_Ratio] 
	, [Cal_Fomula]
	, [Created_By]			 
	, [Created_DateTime]
	From #AcctValStage

	--計算各保單的標的帳戶價值加總
	Drop Table If Exists #Fnd_Acc_Val_PolCrcy_Total

	Select
		Pol_Id,
		Sum(Fnd_Acc_Val_PolCrcy) Fnd_Acc_Val_PolCrcy_Total
	Into #Fnd_Acc_Val_PolCrcy_Total
	From ilp.AcctValStage
	Where 1=1
		And AcctValStage.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then AcctValStage.Pol_Id Else @Pol_Id End)
		And AcctValStage.IGM_Batch_Date = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then AcctValStage.IGM_Batch_Date Else @IGM_Batch_Date End)
	Group By Pol_Id

	--更新各帳戶的分佈比例
	Update ilp.AcctValStage
Set Fnd_Alloc_Ratio = Case When Total.Fnd_Acc_Val_PolCrcy_Total = 0 Then 0 Else Round(AcctValStage.Fnd_Acc_Val_PolCrcy / Total.Fnd_Acc_Val_PolCrcy_Total  * 100, 2) End
From #Fnd_Acc_Val_PolCrcy_Total Total
Where 1=1
		And Total.Pol_Id = AcctValStage.Pol_Id
		And AcctValStage.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then AcctValStage.Pol_Id Else @Pol_Id End)
		And AcctValStage.IGM_Batch_Date = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then AcctValStage.IGM_Batch_Date Else @IGM_Batch_Date End)

	--取出保單各標的加總分佈比例不為100的保單
	Drop Table If Exists #ProblemData
	Select Pol_Id, (100 - Sum(Fnd_Alloc_Ratio)) Fnd_Alloc_Ratio
	Into #ProblemData
	From ilp.AcctValStage
	Where 1=1
		And AcctValStage.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then AcctValStage.Pol_Id Else @Pol_Id End)
		And AcctValStage.IGM_Batch_Date = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then AcctValStage.IGM_Batch_Date Else @IGM_Batch_Date End)
	Group by Pol_Id
	Having 100 - Sum(Fnd_Alloc_Ratio) <> 0

	--依問題保單，排序依分佈比例最大到最小
	Drop Table If Exists #Sort
	SELECT * , ROW_NUMBER() OVER (PARTITION BY Pol_Id ORDER BY Fnd_Alloc_Ratio Desc) AS RowNum
	Into #Sort
	FROM ilp.AcctValStage
	Where Exists (Select 1
		From #ProblemData P
		Where AcctValStage.Pol_Id = P.Pol_Id)
		And AcctValStage.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then AcctValStage.Pol_Id Else @Pol_Id End)
		And AcctValStage.IGM_Batch_Date = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then AcctValStage.IGM_Batch_Date Else @IGM_Batch_Date End)

	--挑出最後一筆(分佈比例最小)資料，
	Drop Table If Exists #MaxRowNum
	Select Pol_Id, Max(RowNum) MaxRowNum
	Into #MaxRowNum
	From #Sort
	Group By Pol_Id

	--將最小的Fnd_Alloc_Ratio 加上 應補足100%的差額再更新回資料
	Update ilp.AcctValStage Set Fnd_Alloc_Ratio = S.Fnd_Alloc_Ratio + P.Fnd_Alloc_Ratio
From #Sort S
		Inner Join #MaxRowNum M On S.Pol_Id = M.Pol_Id And S.RowNum = M.MaxRowNum
		Inner Join #ProblemData P On S.Pol_Id = P.Pol_Id 
Where 1=1
		And S.Pol_Id = AcctValStage.Pol_Id
		And S.Fnd_Id = AcctValStage.Fnd_Id
		And AcctValStage.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then AcctValStage.Pol_Id Else @Pol_Id End)
		And AcctValStage.IGM_Batch_Date = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then AcctValStage.IGM_Batch_Date Else @IGM_Batch_Date End)








END
GO
/****** Object:  StoredProcedure [ilp].[sp_CalcPolicy]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/22
-- Description:	計算保單層資訊
-- Exemple: 

-- Exec ilp.sp_CalcPolicy '1680037550',''
-- =============================================

CREATE PROCEDURE [ilp].[sp_CalcPolicy] 
@Pol_Id char(10), --保單號碼
@IGM_Batch_Date Date --完成日期
AS
BEGIN

--清除重覆資料
Delete From ilp.PolicyStage Where 1=1
And Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then Pol_Id Else @Pol_Id End)
And IGM_Batch_Date >= (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then Complete_Date Else @IGM_Batch_Date End)

 
   Insert into ilp.PolicyStage
	  (
		   Pol_Id
		  ,Complete_Date
		  ,Alloc_Type
		  ,IGM_Batch_Date
		  ,Pol_Crcy
		  ,Reverse_Date
		  ,Acum_Div_Amt_PolCrcy --累積現金配息/撥回(保單幣別)
		  ,Acum_Div_Amt_LocalCrcy --累積現金配息/撥回(當地幣別)
		  ,Acum_Inv_Cost --累積投入成本
		  ,Net_Alloc_Cost_PolCrcy --淨投入成本(保單幣別)
		  ,Net_Alloc_Cost_LocalCrcy --淨投入成本(當地幣別)
		  ,Acct_Value_PolCrcy --目前帳戶價值(保單幣別)
		  ,Acct_Value_LoaclCrcy --目前帳戶價值(當地幣別)
		  ,ROI_Inv_Div --報酬率(含息)		  
		  ,ROI_Non_Div --報酬率(不含息) Round(目前帳戶價值(保單幣別)/淨投入成本-1)
		  ,Cal_Fomula
		  ,Created_By
		  ,Created_DateTime 
	  )
	Select  
		 AcctValStage.Pol_Id
		,AcctValStage.IGM_Batch_Date
		,AcctValStage.Alloc_Type 
		,AcctValStage.IGM_Batch_Date
		,AcctValStage.Pol_Crcy
		,''
		,Sum(TrxnStage.Acum_Div_Amt_PolCrcy) As Acum_Div_Amt_PolCrcy --累積現金配息/撥回(保單幣別)
		,Sum(TrxnStage.Acum_Div_Amt_LocalCrcy) As  Acum_Div_Amt_LocalCrcy --累積現金配息/撥回(當地幣別)
		,Sum(TrxnStage.Acum_Alloc_Cost_PolCrcy) As Acum_Inv_Cost --累積投入成本
		,Sum(AcctValStage.Net_Alloc_Cost_PolCrcy) --淨投入成本(保單幣別)
		,Sum(AcctValStage.Net_Alloc_Cost_LocalCrcy) --淨投入成本(當地幣別)
		,Sum(AcctValStage.Fnd_Acc_Val_PolCrcy) --目前帳戶價值(保單幣別)
		,Sum(AcctValStage.Fnd_Acc_Val_LocalCrcy) --目前帳戶價值(當地幣別)	

		--報酬率(含息): "計算規則: Round((目前帳戶價值(保單幣別)+累積現金配息/撥回)/淨投入成本-1)
		,Round( ( (Sum(AcctValStage.Fnd_Acc_Val_PolCrcy) + Sum(TrxnStage.Acum_Div_Amt_PolCrcy)) / Sum(AcctValStage.Net_Alloc_Cost_PolCrcy))  -1 ,4) * 100 As ROI_Inv_Div 
		
		--報酬率(不含息) Round(目前帳戶價值(保單幣別)/淨投入成本-1)
		,Round( (Sum(AcctValStage.Fnd_Acc_Val_PolCrcy)  / Sum(AcctValStage.Net_Alloc_Cost_PolCrcy) )  -1 ,4) * 100 As ROI_Inv_Div 		  

		,'' As Cal_Fomula
		,'Batch'
		,Getdate() 
	From ilp.AcctValStage 
	  Left Join ilp.v_SelectLastTrxnStageSeq LastTrxnSeq On 1=1
	  And LastTrxnSeq.Pol_Id = AcctValStage.Pol_Id
	  And LastTrxnSeq.Fnd_Id = AcctValStage.Fnd_Id
	  Left Join ilp.TrxnStage On 1=1
	  And LastTrxnSeq.Pol_Id = TrxnStage.Pol_Id
	  And LastTrxnSeq.Fnd_Id = TrxnStage.Fnd_Id
	  And TrxnStage.Trxn_Seq = LastTrxnSeq.Trxn_Seq
	Where 1=1
	And AcctValStage.Pol_Id = (Case When IsNull(@Pol_Id,'') <> '' Then @Pol_Id Else AcctValStage.Pol_Id End)
	And AcctValStage.IGM_Batch_Date = (Case When IsNull(@IGM_Batch_Date,'') <> '' Then @IGM_Batch_Date Else AcctValStage.IGM_Batch_Date End)
	And Net_Alloc_Cost_PolCrcy <> 0
	Group by 
		 AcctValStage.Pol_Id
		,AcctValStage.Alloc_Type 
		,AcctValStage.IGM_Batch_Date
		,AcctValStage.Pol_Crcy 

END
GO
/****** Object:  StoredProcedure [ilp].[sp_CalcROI]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	計算標的報酬率
-- Exemple: 
-- Exec ilp.sp_CalcROI '','','2027-01-04'
-- =============================================

CREATE PROCEDURE [ilp].[sp_CalcROI] 
@Pol_Id char(10), --保單號碼
@Fnd_Id char(10), --標的代號 
@IGM_Batch_Date Date --完成日期
AS
BEGIN

 
 --清除重覆資料
Delete From ilp.ROIStage Where 1=1
And Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then Pol_Id Else @Pol_Id End)
And Fnd_Id = (Case When @Fnd_Id is null or @Fnd_Id = '' Then Fnd_Id Else @Fnd_Id End)
And IGM_Batch_Date >= (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then IGM_Batch_Date Else @IGM_Batch_Date End)


Insert Into ilp.ROIStage
SELECT Distinct 
	   AcctValStage.Pol_Id
      ,AcctValStage.Fnd_Id
      ,AcctValStage.Complete_Date
      ,AcctValStage.Alloc_Type
      ,AcctValStage.IGM_Batch_Date
      ,AcctValStage.Pol_Crcy
      ,AcctValStage.Fnd_Crcy

	  -- 中文名稱: 報酬率(含息)
	  --"計算規則:Round((目前帳戶價值(保單幣別)+基金累計現金配息/撥回(保單幣別))/淨投入成本(保單幣別)-1)
      , Round(((AcctValStage.Fnd_Acc_Val_PolCrcy + TrxnStage.Acum_Div_Amt_PolCrcy) / Net_Alloc_Cost_PolCrcy) -1,4) * 100  As ROI_Inv_Div_Fnd 

	   --中文名稱:報酬率(不含息)
	   --Round(目前帳戶價值(保單幣別)/淨投入成本(保單幣別)-1)
	   , Round((Fnd_Acc_Val_PolCrcy / Net_Alloc_Cost_PolCrcy) -1,4) * 100  As ROI_Non_Div_Fnd

	   --中文名稱: 報酬率(含息及累積贖回金額)
	   --Round((目前帳戶價值(保單幣別)+基金累計現金配息/撥回(保單幣別)+基金累計贖回金額-部分提領及轉出(保單幣別)) /(基金累計贖回金額-部分提領及轉出(保單幣別)+淨投入成本(保單幣別)) -1)
	  , Round(((Fnd_Acc_Val_PolCrcy+ TrxnStage.Acum_Div_Amt_PolCrcy + (-TrxnStage.Acum_Sur2_Amt_PolCrcy)) /  ((-TrxnStage.Acum_Sur2_Amt_PolCrcy) + Net_Alloc_Cost_PolCrcy)) -1 , 4) * 100  As ROI_Inv_Div_Sur2_Fnd

      ,'' AsCal_Fomula
      ,AcctValStage.Created_By
      ,AcctValStage.Created_DateTime
      ,AcctValStage.Updated_By
      ,AcctValStage.Update_DateTime
  FROM ilp.AcctValStage  
  Left Join ilp.v_SelectLastTrxnStageSeq LastTrxnSeq On 1=1
  And LastTrxnSeq.Pol_Id = AcctValStage.Pol_Id
  And LastTrxnSeq.Fnd_Id = AcctValStage.Fnd_Id
  Left Join ilp.TrxnStage On 1=1
  And LastTrxnSeq.Pol_Id = TrxnStage.Pol_Id
  And LastTrxnSeq.Fnd_Id = TrxnStage.Fnd_Id
  And TrxnStage.Trxn_Seq = LastTrxnSeq.Trxn_Seq
  Where 1=1
   --And Net_Alloc_Cost_PolCrcy <> 0
	And AcctValStage.Pol_Id = (Case When @Pol_Id is null or @Pol_Id = '' Then AcctValStage.Pol_Id Else @Pol_Id End)
	And AcctValStage.Fnd_Id = (Case When @Fnd_Id is null or @Fnd_Id = '' Then AcctValStage.Fnd_Id Else @Fnd_Id End)
	And AcctValStage.IGM_Batch_Date = (Case When @IGM_Batch_Date is null or @IGM_Batch_Date = '' Then AcctValStage.IGM_Batch_Date Else @IGM_Batch_Date End)
	And Net_Alloc_Cost_PolCrcy <> 0
END
GO
/****** Object:  StoredProcedure [ilp].[sp_CalcTrxn]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	計算標的成本
-- Exemple:  
--  Exec [ilp].[sp_CalcTrxn] '6610024610','FT001',2
-- =============================================

CREATE PROCEDURE [ilp].[sp_CalcTrxn] 
	@Pol_Id char(10), --保單號碼
	@Fnd_Id char(10), --標的代號 
	@Trxn_Seq int --交易序號
AS
BEGIN
	-----------------------------------------------------------------------------------------------
	-------------------------------------------取得本次與前次交易資料------------------------------
	-----------------------------------------------------------------------------------------------
--測試時以下要拿掉註解
	-- Declare 
	-- @Pol_Id nchar(10) = '6610024610' --保單號碼
	--,@Fnd_Id nchar(10) ='FT001'--標的代號
	--,@Trxn_Seq int = 14--交易序號
	
	--IF(
	--	ISNULL(@Pol_Id,'') = '' OR
	--	ISNULL(@Fnd_Id,'') = '' OR
	--	@Trxn_Seq Is Null OR
	--	@Trxn_Seq_Prev Is Null 
	--)
	--Begin
	--	Select '傳入參數不可為空白、Null'
	--End
	
	Declare 
	@Caller nvarchar(30),
	@Logs nvarchar(max) = ''
	Set @Caller = '[ilp].[sp_CalcTrxn]'

	Declare @Trxn_Seq_Prev int = @Trxn_Seq -1 --前次交易排序序號 

	--本次交易資料
	Declare 	
	 @Trxn_Unit Numeric(18,6) = 0 --當次交易單位數
	,@Current_In  Numeric(18,6) = 0 --目前單位數
	,@Trxn_Nav Numeric(18,6) --交易淨值 
	,@Pol_Crcy nchar(3) = 0 --保單幣別 
	,@Fnd_Crcy nchar(3) = 0 --基金幣別
	,@Type_Cd nchar(3) = 0 --交易類別
	,@Reason_Cd nchar(3) = 0 --交易原因
	,@Trxn_Fixing_Rate_Buy Numeric(18,6) = 0 --目前買入匯率(站在公司角度) = 0
	,@Trxn_Fixing_Rate_Sell Numeric(18,6) = 0 --目前賣出匯率(站在公司角度) = 0
	,@PolCrcyScaleQty smallint --保單幣別取位數
	,@FndCrcyScaleQty smallint --基金幣別取位數
	,@Avg_Nav_Val Numeric(18,6) = 0 --平均淨值
	,@Avg_Fixing_Rate Numeric(18,6) = 0 --平均匯率
	,@Fnd_Acc_Val_PolCrcy Numeric(18,6) = 0 --目前價值(保單幣別) = 0
	,@Fnd_Acc_Val_FndCrcy Numeric(18,6) = 0 --目前價值(基金幣別) = 0
	,@Trxn_Amt_PolCrcy Numeric(18,6) = 0 --交易金額(保單幣別) = 0
	,@Trxn_Amt_FndCrcy Numeric(18,6) = 0 --交易金額(基金幣別) = 0
	,@Trxn_Amt_LocalCrcy Numeric(18,6) = 0 --交易金額(當地幣別) = 0
	,@Acum_Alloc_Cost_PolCrcy Numeric(18,6) = 0 --累積投入成本(保單幣別) = 0
	,@Acum_Alloc_Cost_FndCrcy Numeric(18,6) = 0 --累積投入成本(基金幣別) = 0
	,@Net_Alloc_Cost_PolCrcy Numeric(18,6) = 0 --淨投入成本(保單幣別) = 0
	,@Net_Alloc_Cost_FndCrcy Numeric(18,6) = 0 --淨投入成本(基金幣別) = 0
	,@Avg_Inv_Cost_Div_ROI Numeric(18,6) = 0 --含息報酬率(保單幣別) = 0
	,@Avg_Inv_Cost_ROI Numeric(18,6) = 0 --不含息報酬率(保單幣別) = 0
	,@Acum_Buy_Unit Numeric(18,6) = 0 --基金累計申購單位數
	,@Type_Name nvarchar(20) = 0 --交易種類中文名稱
	,@Type_Method nvarchar(20) = 0 --交易方式(買或賣) = 0
	,@Sur_Avg_Cost Numeric(18,6) = 0 --基金累計申購單位數
	,@Sur_Gain_Loss Numeric(18,6) = 0 --贖回損益
	,@Sur_ROI_Non_Div_Fnd Numeric(18,6) = 0 --贖回報酬率	
	,@Acum_Div_Amt_PolCrcy numeric(18,6) = 0--基金累計現金配息/撥回(保單幣別) = 0	
	,@Acum_Div_Amt_FndCrcy numeric(18,6) = 0--基金累計現金配息/撥回(標的幣別) = 0	
	,@Acum_Div_Amt_LocalCrcy numeric(18,6) = 0--基金累計現金配息/撥回(當地幣別) = 0	
	,@Acum_Sur2_Amt_PolCrcy  numeric(18,6) = 0--基金累計贖回金額-部分提領及轉出(保單幣別) = 0	
	,@Acum_Sur2_Amt_FndCrcy  numeric(18,6) = 0--基金累計贖回金額-部分提領及轉出(標的幣別)
	 
	--將指定要計算的交易資料取出
	Drop Table if Exists #SortTrxnStage
	Select  
	--Row_Number() over(PARTITION BY Pol_Id, Fnd_Id ORDER BY Pol_Id, Fnd_Id,Complete_Date ,Effective_Date Desc,Seq_No) AS SN,
	*
	Into #SortTrxnStage 
	From ilp.TrxnStage where 1=1
	And Pol_Id = @Pol_Id
	And Fnd_Id = @Fnd_Id
	And (
	   Trxn_Seq = @Trxn_Seq
	   OR Trxn_Seq = (Case When @Trxn_Seq_Prev = 0 Then @Trxn_Seq Else @Trxn_Seq_Prev End)
	)

	--取出當前交易、前一筆交易的排序序號
	--Declare @SN int,@Prev_SN int

	--Select @SN = SN,@Prev_SN = SN-1 From #SortTrxnStage 
	--Where 1=1
	--And Process_Date = @Process_Date 
	--And Effective_Date = @Effective_Date
	--And Seq_No = @Seq_No
	  
--測試用
	--Select * From #SortTrxnStage Order By Pol_Id, Fnd_Id, Process_Date, Effective_Date, Seq_No Desc
	--Select @SN SN,@Prev_SN Prev_SN

	-----------------------------------------------------------------------------------------------
	--從該筆交易資料與該筆資料前一筆交易資料，取出計算所需要的參數
	-----------------------------------------------------------------------------------------------
	--取得本次交易要計算的資料
	Select 
	 @Trxn_Unit = Trxn_Unit --當次交易單位數
	,@Current_In = Current_In --目前單位數
	,@Trxn_Nav = Trxn_Nav --交易淨值 
	,@Type_Cd = Type_Cd  --交易類別
	,@Reason_Cd = Reason_Cd --交易原因
	,@Fnd_Crcy = Fnd_Crcy --基金幣別、標的幣別 
	,@Trxn_Fixing_Rate_Buy = Trxn_Fixing_Rate --目前買入匯率(站在公司角度)
	,@Trxn_Fixing_Rate_Sell = TCXRT.XCHNG_RT  --目前賣出匯率(站在公司角度)
	,@Pol_Crcy = Pol_Crcy --保單幣別
	,@PolCrcyScaleQty = TCRCY_Pol.CRCY_SCALE_QTY --保單幣別取位
	,@FndCrcyScaleQty = TCRCY_Fnd.CRCY_SCALE_QTY --基金幣別取位
	,@Pol_Id = Pol_Id--保單號碼
	--,@Process_Date = Process_Date --執行交易日期
	--,@Seq_No = Seq_No --序號
	,@Fnd_Id = Fnd_Id --標的代號
	,@Trxn_Amt_PolCrcy = Trxn_Amt_PolCrcy --交易金額(保單幣別)
	,@Trxn_Amt_FndCrcy = Trxn_Amt_FndCrcy --交易金額(基金幣別)
	,@Trxn_Amt_LocalCrcy = Trxn_Amt_LocalCrcy --交易金額(當地幣別)
	,@Acum_Alloc_Cost_PolCrcy = Acum_Alloc_Cost_PolCrcy --累積投入成本(保單幣別)
	,@Acum_Alloc_Cost_FndCrcy = Acum_Alloc_Cost_FndCrcy --累積投入成本(基金幣別)
	,@Type_Name = L.Type_Name
	,@Type_Method = L.Type_Val1  
	From #SortTrxnStage
	Left Join ilp.LookUp L ON 1=1
			AND L.Type_Group = 'TrxnType' 
			AND L.Type_ID = Type_Cd + '/' + Reason_Cd 	
	Left join igm.TCRCY TCRCY_Pol on TCRCY_Pol.CRCY_CD = Pol_Crcy --保單幣別取位
	Left join igm.TCRCY TCRCY_Fnd on TCRCY_Fnd.CRCY_CD = Fnd_Crcy --基金幣別取位
	Left join igm.TCXRT on 1=1
	And XCHNG_FROM_CRCY_CD = Fnd_Crcy 
	And XCHNG_EFF_DT =Trxn_Fixing_Rate_Date
	And XCHNG_TO_CRCY_CD = Pol_Crcy 
	And XCHNG_RT_TYP_CD = 3
	Where  Trxn_Seq = @Trxn_Seq

	Declare 
	 @Prev_Fnd_Unit Numeric(18,6) = 0 --前次交易單位數餘額
	,@Prev_Avg_Nav_Val Numeric(18,6) = 0 --前次交易前平均淨值
	,@Prev_Avg_Fixing_Rate Numeric(18,6) = 0 --前次交易平均匯率
	,@Prev_Acum_Alloc_Cost_PolCrcy Numeric(18,6) = 0 --前次交易累積投入成本(保單幣別)
	,@Prev_Acum_Alloc_Cost_FndCrcy Numeric(18,6) = 0 --前次交易累積投入成本(基金幣別)
	,@Prev_Acum_Buy_Unit Numeric(18,6) = 0 --前次交易基金累計申購單位數	
	,@Prev_Acum_Div_Amt_PolCrcy numeric(18,6) = 0 --前次交易基金累計現金配息/撥回(保單幣別)	
	,@Prev_Acum_Div_Amt_FndCrcy numeric(18,6) = 0 --前次交易基金累計現金配息/撥回(標的幣別)	
	,@Prev_Acum_Div_Amt_LocalCrcy numeric(18,6) = 0--前次交易基金累計現金配息/撥回(當地幣別)	
	,@Prev_Acum_Sur2_Amt_PolCrcy  numeric(18,6) = 0--前次交易基金累計贖回金額-部分提領及轉出(保單幣別)	
	,@Prev_Acum_Sur2_Amt_FndCrcy  numeric(18,6) = 0--前次交易基金累計贖回金額-部分提領及轉出(標的幣別)

	--取得上次交易的資料供計算過程使用
	Select 
	 @Prev_Fnd_Unit = Current_In --前次交易單位數餘額
	,@Prev_Avg_Nav_Val = Avg_Nav_Val --前次交易前平均淨值
	,@Prev_Avg_Fixing_Rate = Avg_Fixing_Rate --前次交易平均匯率
	,@Prev_Acum_Alloc_Cost_PolCrcy = Acum_Alloc_Cost_PolCrcy --前次交易累積投入成本(保單幣別)
	,@Prev_Acum_Alloc_Cost_FndCrcy = Acum_Alloc_Cost_FndCrcy --前次交易累積投入成本(基金幣別)
	,@Prev_Acum_Buy_Unit = Acum_Buy_Unit --前次交易基金累計申購單位數	
	,@Prev_Acum_Div_Amt_PolCrcy = Acum_Div_Amt_PolCrcy --前次基金累計現金配息/撥回(保單幣別)	
	,@Prev_Acum_Div_Amt_FndCrcy = Acum_Div_Amt_FndCrcy  --前次基金累計現金配息/撥回(標的幣別)	
	,@Prev_Acum_Div_Amt_LocalCrcy = Acum_Div_Amt_LocalCrcy --前次交易基金累計現金配息/撥回(當地幣別)	
	,@Prev_Acum_Sur2_Amt_PolCrcy = Acum_Sur2_Amt_PolCrcy --前次交易基金累計贖回金額-部分提領及轉出(保單幣別)	
	,@Prev_Acum_Sur2_Amt_FndCrcy = Acum_Sur2_Amt_FndCrcy --前次交易基金累計贖回金額-部分提領及轉出(標的幣別)
	From #SortTrxnStage 
	Where 1=1
	And Trxn_Seq = @Trxn_Seq_Prev --上一次交易的排序
	--And Current_In <> 0 --交易後單位數餘額為0，則以上皆歸0重新計算


	-----------------------------------------------------------------------------------------------
	-------------------------------------------計算交易資料----------------------------------------
	-----------------------------------------------------------------------------------------------	
	--平均淨值
	--只要交易單位數大於0，則需要計算平均淨值
	--	Set @Logs = dbo.fn_Logs(@Logs,
	--'呼叫sp_InsertStageRowData重新從TFA、TFD抓取指定要處理的交易資料 @Prev_Fnd_Unit:' + ISNULL(Convert(varchar,@Prev_Fnd_Unit),'') + ' @Prev_Avg_Nav_Val:' + ISNULL(Convert(varchar,@Prev_Avg_Nav_Val),'')  + ' @Trxn_Unit:' + ISNULL(Convert(varchar,@Trxn_Unit),'') + ' @Trxn_Nav:' + ISNULL(Convert(varchar,@Trxn_Nav ),'')
	--)
	 
	--單位數餘額
	Set @Current_In = CASE WHEN ((@Type_Cd+'/'+@Reason_Cd In ('BON/DIV') And @Prev_Fnd_Unit = 0)) 
			Then 
				0
			Else  
			   CASE WHEN (@Type_Cd+'/'+@Reason_Cd In ('BON/DIV')) Then @Prev_Fnd_Unit Else @Current_In End
			End 

 	--如果單位數餘額大於0，才有計算成本的必要
	--交易為申購類的，才有需要重新計算成本
	IF(@Current_In > 0)
	Begin 
		 
		Set @Avg_Nav_Val = CASE WHEN (@Trxn_Unit >= 0 And (@Type_Cd+'/'+@Reason_Cd Not In ('BON/DIV') )) THEN 
				ilp.fn_Avg_Nav_Val(@Prev_Fnd_Unit,@Prev_Avg_Nav_Val,@Trxn_Unit,@Trxn_Nav)
				ELSE  ISNULL(@Prev_Avg_Nav_Val,0) END

		--平均匯率
		Set @Avg_Fixing_Rate = CASE WHEN (@Trxn_Unit >= 0 And (@Type_Cd+'/'+@Reason_Cd Not In ('BON/DIV'))) THEN 
				ilp.fn_Avg_Fixing_Rate(@Prev_Fnd_Unit,@Prev_Avg_Nav_Val,@Prev_Avg_Fixing_Rate,@Trxn_Unit,@Trxn_Nav,@Trxn_Fixing_Rate_Buy)
		ELSE ISNULL(@Prev_Avg_Fixing_Rate,0) END
		
		--累積投入成本(保單幣別)
		Set @Acum_Alloc_Cost_PolCrcy =  @Prev_Acum_Alloc_Cost_PolCrcy + 
										(CASE WHEN @Trxn_Amt_PolCrcy > 0 And (@Type_Cd+'/'+@Reason_Cd Not In ('BON/DIV')) Then @Trxn_Amt_PolCrcy ELSE 0 END) 

		--累積投入成本(基金幣別)
		Set @Acum_Alloc_Cost_FndCrcy =	@Prev_Acum_Alloc_Cost_FndCrcy  + 
										(CASE WHEN @Trxn_Amt_FndCrcy > 0 And (@Type_Cd+'/'+@Reason_Cd Not In ('BON/DIV')) Then @Trxn_Amt_FndCrcy ELSE 0 END) 


		--基金累計申購單位數(買入、配息再投入、轉入、加值給付)
		Set @Acum_Buy_Unit =  @Prev_Acum_Buy_Unit + 
			(CASE WHEN @Trxn_Unit > 0 And (@Type_Cd+'/'+@Reason_Cd Not In ('BON/DIV'))  Then @Trxn_Unit ELSE 0 END) 

		
		--基金累計現金配息/撥回(保單幣別)	
		Set @Acum_Div_Amt_PolCrcy = @Prev_Acum_Div_Amt_PolCrcy + (CASE WHEN @Type_Cd+'/'+@Reason_Cd IN ('BON/DIV') And @Prev_Fnd_Unit > 0 THEN  @Trxn_Amt_PolCrcy Else 0 End)	  

		--基金累計現金配息/撥回(標的幣別)
		Set @Acum_Div_Amt_FndCrcy = @Prev_Acum_Div_Amt_FndCrcy + (CASE WHEN @Type_Cd+'/'+@Reason_Cd IN ('BON/DIV') And @Prev_Fnd_Unit > 0 THEN  @Trxn_Amt_FndCrcy Else 0 End)  
	
		--基金累計現金配息/撥回(當地幣別)	
		Set @Acum_Div_Amt_LocalCrcy = @Prev_Acum_Div_Amt_LocalCrcy + (CASE WHEN @Type_Cd+'/'+@Reason_Cd IN ('BON/DIV') And @Prev_Fnd_Unit > 0 THEN  @Trxn_Amt_LocalCrcy Else 0 End) 

		--基金累計贖回金額-部分提領及轉出(保單幣別)
		Set @Acum_Sur2_Amt_PolCrcy  = @Prev_Acum_Sur2_Amt_PolCrcy + 
		CASE WHEN (@Type_Cd+'/'+@Reason_Cd IN ('SUR/GRS','SUR/SUR','TRS/TRO') AND @Trxn_Unit < 0) THEN 
				 ROUND(@Trxn_Amt_PolCrcy,4)
		ELSE 0 END
	
		--基金累計贖回金額-部分提領及轉出(標的幣別)
		Set @Acum_Sur2_Amt_FndCrcy  = @Prev_Acum_Sur2_Amt_FndCrcy + 
		CASE WHEN (@Type_Cd+'/'+@Reason_Cd IN ('SUR/GRS','SUR/SUR','TRS/TRO') AND @Trxn_Unit < 0) THEN 
				 ROUND(@Trxn_Amt_FndCrcy,4)
		ELSE 0 END

	End
	Else
	BEGIN
		--如果單位數餘額為0
		--累積投入成本(保單幣別)
		Set @Acum_Alloc_Cost_PolCrcy =  0;
		--累積投入成本(基金幣別)
		Set @Acum_Alloc_Cost_FndCrcy =	0;
	END

	IF(@Trxn_Unit < 0)
	Begin
		 
	    --贖回平均成本
		--欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回平均成本
		--計算規則：Round(Round(當次交易單位數(或異動單位數)*平均淨值)*平均匯率)
		--備註：平均淨值/平均匯率則為抓取該筆贖回交易前之數值
		Set @Sur_Avg_Cost = CASE WHEN (@Type_Cd+'/'+@Reason_Cd IN ('SUR/GRS','SUR/SUR','TRS/TRO') AND @Trxn_Unit < 0) THEN 
				 ROUND(ROUND(@Trxn_Unit * @Prev_Avg_Nav_Val,@FndCrcyScaleQty) * @Prev_Avg_Fixing_Rate,@PolCrcyScaleQty) * -1
		ELSE 0 END


		--贖回損益
		--"欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回損益
		--計算規則：交易金額(保單幣別)-贖回平均成本
		Set @Sur_Gain_Loss = CASE WHEN (@Type_Cd+'/'+@Reason_Cd IN ('SUR/GRS','SUR/SUR','TRS/TRO') AND @Trxn_Unit < 0) THEN 
				 @Trxn_Amt_PolCrcy * -1 - @Sur_Avg_Cost
		ELSE 0 END


		--贖回報酬率
		--欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回報酬率
		--計算規則：Round(贖回損益/贖回平均成本)
		Set @Sur_ROI_Non_Div_Fnd = CASE WHEN (@Type_Cd+'/'+@Reason_Cd IN ('SUR/GRS','SUR/SUR','TRS/TRO') AND @Trxn_Unit < 0 And @Sur_Avg_Cost <> 0) 
										THEN 
											 Round((@Sur_Gain_Loss / @Sur_Avg_Cost) ,4) * 100  
										ELSE 0 
									END	

	End



	

	Declare 
	------------------------------------------------------------
	--基金累計轉出金額(保單幣別)
	@Acum_Switch_Out_Amt_PolCrcy  numeric(18,6),
	--基金累計轉出金額(標的幣別)
	@Acum_Switch_Out_Amt_FndCrcy  numeric(18,6),

	--基金累計現金配息/撥回再投入(保單幣別)
	@Acum_Reinv_Div_Amt_PolCrcy numeric(18,6),
	--基金累計現金配息/撥回再投入(標的幣別)
	@Acum_Reinv_Div_Amt_FndCrcy numeric(18,6),	


	--基金累計贖回金額(保單幣別)
	@Acum_Sur_Amt_PolCrcy  numeric(18,6),
	--基金累計贖回金額(標的幣別)
	@Acum_Sur_Amt_FndCrcy  numeric(18,6),

	--基金累計申購費用(保單幣別)
	@Acum_Subscription_Fee_PolCrcy  numeric(18,6),
	--基金累計申購回費用(標的幣別)
	@Acum_Subscription_Fee_FndCrcy  numeric(18,6),

	--基金累計轉入金額(保單幣別)
	@Acum_Switch_In_Amt_PolCrcy  numeric(18,6),
	--基金累計轉入金額(標的幣別)
	@Acum_Switch_In_Amt_FndCrcy  numeric(18,6),

	--基金累計轉換費用(保單幣別)
	@Acum_Switch_In_Fee_PolCrcy  numeric(18,6),
	--基金累計轉換費用(標的幣別)
	@Acum_Switch_In_Fee_FndCrcy  numeric(18,6),

	--基金累計保障費用(保單幣別)
	@Acum_Adm_Fee_PolCrcy  numeric(18,6),
	--基金累計保障費用(標的幣別)
	@Acum_Adm_Fee_FndCrcy  numeric(18,6),

	--基金累計附約保險成本(保單幣別)
	@Acum_Rider_ROI_PolCrcy  numeric(18,6),
	--基金累計附約保險成本(標的幣別)
	@Acum_Rider_ROI_FndCrcy  numeric(18,6),

	--基金累計保證費用(保單幣別)
	@Acum_Guad_Amt_PolCrcy  numeric(18,6),
	--基金累計保證費用(標的幣別)
	@Acum_Guad_Amt_FndCrcy  numeric(18,6),

	--基金累計加值給付金額(保單幣別)
	@Acum_Loyalty_Bonus_Amt_PolCrcy  numeric(18,6),
	--基金累計加值給付金額(標的幣別)
	@Acum_Loyalty_Bonus_Amt_FndCrcy  numeric(18,6)

	
	--目前帳戶價值(保單幣別) <-- 要用最新淨值，非交易淨值
	--Set @Fnd_Acc_Val_PolCrcy = Round(Round(@Trxn_Nav * @Current_In,@FndCrcyScaleQty) * @Trxn_Fixing_Rate_Sell,@PolCrcyScaleQty)
 
	--目前帳戶價值(基金幣別) <-- 要用最新淨值，非交易淨值
	--Set @Fnd_Acc_Val_FndCrcy = Round(@Trxn_Nav * @Current_In,@FndCrcyScaleQty) 

	--含息報酬率(保單幣別)-------------------------------------------------------------------利息尚未處理
	--(目前價值(保單幣別)+累計配息金額(現金)_保單幣別)/淨投入成本(保單幣別)-1
	--Set @Avg_Inv_Cost_Div_ROI = Case When @Net_Alloc_Cost_PolCrcy <> 0 
	--Then Round(((@Fnd_Acc_Val_PolCrcy + 0) / @Net_Alloc_Cost_PolCrcy) -1,4) * 100
	--Else 0 End

	--不含息報酬率(保單幣別)
	--Set @Avg_Inv_Cost_ROI = Case When @Net_Alloc_Cost_PolCrcy <> 0 
	--Then Round((@Fnd_Acc_Val_PolCrcy / @Net_Alloc_Cost_PolCrcy) -1,4) * 100
	--Else 0 End

	-----------------------------------------------------------------------------------------------
	-------------------------------------------顯示交易資料----------------------------------------
	-----------------------------------------------------------------------------------------------
 
	--Select  
	-- @Type_Cd + '/' + @Reason_Cd + '-' +@Type_Name AS '交易類型中文名稱'
	--,@Type_Method AS 'Buy/Sell'	
	--,@Prev_Fnd_Unit AS '買入前單位數餘額'
	--,@Prev_Avg_Nav_Val AS '買入前平均淨值'
	--,@Prev_Avg_Fixing_Rate AS '買入前平均匯率'
	--,@Pol_Id AS '保單號碼'
	--,@Fnd_Id AS '標的代號'
	--,@Pol_Crcy AS '保單幣別'
	--,@Fnd_Crcy AS '基金幣別'
	--,@Current_In AS '目前單位數'
	--,@Acum_Alloc_Cost_PolCrcy AS '累積投入成本(保單幣別)'
	--,@Acum_Alloc_Cost_FndCrcy AS '累積投入成本(基金幣別)'
	--,@Avg_Nav_Val AS '平均淨值'
	--,@Avg_Fixing_Rate AS '平均匯率'
	--,@Net_Alloc_Cost_PolCrcy AS '淨投入成本(保單幣別)'
	--,@Net_Alloc_Cost_FndCrcy AS '淨投入成本(基金幣別)'
	--,@Fnd_Acc_Val_PolCrcy AS '目前價值(保單幣別)'
	--,@Fnd_Acc_Val_FndCrcy AS '目前價值(基金幣別)'
	--,@Avg_Inv_Cost_Div_ROI AS '含息報酬率(保單幣別)'
	--,@Avg_Inv_Cost_ROI AS '不含息報酬率(保單幣別)'
	--,@Acum_Buy_Unit AS '基金累計申購單位數'
	--,'' AS '交易類別'
	--,ABS(@Trxn_Unit) '交易單位數'
	--,@Trxn_Nav AS '目前淨值'
	--,@Trxn_Fixing_Rate_Buy AS '目前買入匯率'
	--,ABS(@Trxn_Amt_PolCrcy) AS '交易金額(保單幣別)'
	--,ABS(@Trxn_Amt_FndCrcy) AS '交易金額(基金幣別)'
	--,@Trxn_Nav AS '目前淨值'
	--,@Trxn_Fixing_Rate_Sell AS '匯率'
	--,@Sur_Avg_Cost AS '贖回平均成本'
	--,@Sur_Gain_Loss AS '贖回損益'
	--,@Sur_ROI_Non_Div_Fnd AS '贖回報酬率'
	-----------------------------------------------------------------------------------------------
	-------------------------------------------更新交易資料--------------------------------
	--------
	-----------------------------------------------------------------------------------------------
	Update ilp.TrxnStage SET 
	 Current_In = @Current_In --單位數餘額
	,Avg_Nav_Val = @Avg_Nav_Val --平均淨值
	,Avg_Fixing_Rate = @Avg_Fixing_Rate --平均匯率
	,Trxn_Amt_PolCrcy = @Trxn_Amt_PolCrcy--交易金額(保單幣別)
	,Trxn_Amt_FndCrcy = @Trxn_Amt_FndCrcy --交易金額(基金幣別)
	,Prev_Fnd_Unit = @Prev_Fnd_Unit --買入前單位餘額
	,Prev_Avg_Net_Nav = @Prev_Avg_Nav_Val --買入前平均淨值
	,Prev_Avg_Fixing_Rate = @Prev_Avg_Fixing_Rate --買入前平均匯率
	,Acum_Alloc_Cost_PolCrcy = @Acum_Alloc_Cost_PolCrcy --累積投入成本(保單幣別)
	,Acum_Alloc_Cost_FndCrcy = @Acum_Alloc_Cost_FndCrcy --累積投入成本(基金幣別)
	--,Net_Alloc_Cost_PolCrcy = @Net_Alloc_Cost_PolCrcy --淨投入成本(保單幣別)
	--,Net_Alloc_Cost_FndCrcy = @Net_Alloc_Cost_FndCrcy --淨投入成本(基金幣別)
	,Acum_Buy_Unit = @Acum_Buy_Unit --基金累計申購單位數
	,Sur_Avg_Cost = @Sur_Avg_Cost --贖回平均成本
	,Sur_Gain_Loss = @Sur_Gain_Loss --贖回損益
	,Sur_ROI_Non_Div_Fnd = @Sur_ROI_Non_Div_Fnd --贖回報酬率
	,Acum_Div_Amt_PolCrcy = @Acum_Div_Amt_PolCrcy--基金累計現金配息/撥回(保單幣別)	
	,Acum_Div_Amt_FndCrcy = @Acum_Div_Amt_FndCrcy--基金累計現金配息/撥回(基金幣別)	
	,Acum_Div_Amt_LocalCrcy = @Acum_Div_Amt_LocalCrcy--基金累計現金配息/撥回(當地幣別)	
	,Acum_Sur2_Amt_PolCrcy = @Acum_Sur2_Amt_PolCrcy--基金累計贖回金額-部分提領及轉出(保單幣別)
	,Acum_Sur2_Amt_FndCrcy = @Acum_Sur2_Amt_FndCrcy--基金累計贖回金額-部分提領及轉出(基金幣別)
	From  ilp.TrxnStage
	WHERE 1=1
	And Pol_Id=@Pol_Id 
	And Fnd_Id = @Fnd_Id
	And Trxn_Seq = @Trxn_Seq  

	--Exec sp_WriteLog @Caller,@Logs

	--Select * From #SortTrxnStage

	--SELECT * FROM  ilp.Fund WHERE Pol_Id=@Pol_Id AND Process_Date = @Process_Date AND Fnd_Id = @Fnd_Id AND Seq_No = @Seq_No


END
GO
/****** Object:  StoredProcedure [ilp].[sp_chkMima]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_001 - 取API Token時，比對帳密
-- 1. 比對資料庫該System所存的Key是否相符
-- 2. 使用該保單查詢PlanID，IssueDate後，判斷是否為ILP商品範圍內
-- Exemple: 
-- Exec [ilp].[sp_chkMima] 'TBKS','wUNdVz5SJS'
-- Exec [ilp].[sp_chkMima] 'TBKS','wUNdVz5SJS3'
-- =============================================

CREATE PROCEDURE [ilp].[sp_chkMima] 
@SysId varchar(10), --系統代碼 
@Mima varchar(100) --Key 
AS
BEGIN 

Declare @Result char(2) ='98'

 SELECT @Result = '00'
  FROM ilp.LookUp
  Where 1=1
  And Type_Group ='chkMima'
  And Type_ID = @SysId
  And Type_Val1 = @Mima

  Select @Result As chkMimaResult
END
GO
/****** Object:  StoredProcedure [ilp].[sp_chkRunBATCH]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	檢核批次是否執行成功
-- Exemple: 
-- Exec [ilp].[sp_chkRunBATCH]  
-- =============================================

CREATE PROCEDURE [ilp].[sp_chkRunBATCH]  
AS
BEGIN

Declare @Error varchar(10)
 

Select TOP 1 @Error = Log_Level From dbo.Logs Where Caller = '[ilp].[sp_RunBatch]'  order by Created_DateTime desc
 
 If @Error = 'Error'
	BEGIN
		;THROW 50002, 'sp_RunBatch 出現Error', 1;
	END

END
GO
/****** Object:  StoredProcedure [ilp].[sp_getAcctValue]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_004 - 取得保單帳戶價值資訊
-- Exemple: 
-- Exec [ilp].[sp_getAcctValue] '6660060280' 
-- =============================================

CREATE PROCEDURE [ilp].[sp_getAcctValue] 
@PolId varchar(10) --保單號碼 
AS
BEGIN

--Declare @PolId varchar(10) = '6610015340'

Drop Table If Exists #AcctVal

Select ilp.fn_GetCrcyName(ilp.fn_GetPolCrcy(@PolId)) As Pol_Crcy;

WITH MonthlyFirstRecord AS (
    Select 
        Acct_Value_PolCrcy,
		Complete_Date,
        ROW_NUMBER() OVER (PARTITION BY YEAR(Complete_Date), MONTH(Complete_Date) ORDER BY Complete_Date) AS RowNum
    From 
        ilp.Policy Policy
	Where Pol_Id = @PolId And Acct_Value_PolCrcy >0 
)

SELECT  Top 12
     Acct_Value_PolCrcy,
		Convert(varchar(10),Complete_Date,111) As Complete_Date
FROM 
    MonthlyFirstRecord
WHERE  
    RowNum = 1
Order by Complete_Date ;


END
GO
/****** Object:  StoredProcedure [ilp].[sp_getFndAllocRatio]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_003 - 取得保單標的投資分配比例資訊
-- Exemple: 
-- Exec [ilp].[sp_getFndAllocRatio] '5568802050' 
-- =============================================

CREATE PROCEDURE [ilp].[sp_getFndAllocRatio] 
@PolId char(10) --保單號碼 
AS
BEGIN
 

Drop Table If Exists #Max_IGM_Batch_Date

Select max(IGM_Batch_Date) Max_IGM_Batch_Date Into #Max_IGM_Batch_Date From ilp.AcctVal 
Where 1=1
And Pol_Id = @PolId
And Fnd_Acc_Val_PolCrcy > 0 


Drop Table If Exists #AcctVal

Select
	Pol_Crcy,
	RTrim(LTrim(Fnd_Id)) As Fnd_Id,	
	ilp.fn_FilterFndName(Fnd_Id,ETBL_DESC_TXT) As Fnd_Name,
	Fnd_Acc_Val_PolCrcy,
	Fnd_Alloc_Ratio Into #AcctVal
From ilp.AcctVal AcctVal
Inner Join #Max_IGM_Batch_Date Max_IGM_Batch_Date On AcctVal.IGM_Batch_Date = Max_IGM_Batch_Date
Left Join igm.TEDIT On TEDIT.ETBL_TYP_ID = 'SEGFD' And TEDIT.ETBL_VALU_ID = AcctVal.Fnd_Id
Where 1=1
And Pol_Id = @PolId
And Fnd_Acc_Val_PolCrcy > 0

Select Top 1 ilp.fn_GetCrcyName(ilp.fn_GetPolCrcy(@PolId)) As Pol_Crcy From #AcctVal 

Select 
	Fnd_Id,
	Fnd_Name,
	Fnd_Acc_Val_PolCrcy,
	Fnd_Alloc_Ratio
From #AcctVal
Order by Fnd_Acc_Val_PolCrcy Desc

Select 
Sum(Fnd_Acc_Val_PolCrcy) As Acc_Val_Dist_Tot, 
100 As Acc_Val_Dist_Ratio_Tot 
--Sum(Fnd_Alloc_Ratio) As Acc_Val_Dist_Ratio_Tot 
From #AcctVal 
 
 

END
GO
/****** Object:  StoredProcedure [ilp].[sp_getFndIDName]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_006 - 取得交易類別下拉選單
-- Exemple: 
-- Exec [ilp].[sp_getFndIDName] '1680037340' 
-- =============================================

CREATE PROCEDURE [ilp].[sp_getFndIDName] 
@PolId varchar(20) --保單號碼 
AS
BEGIN


Select
	Distinct
	Fnd_Id,
	ilp.fn_FilterFndName(Fnd_Id,ETBL_DESC_TXT) As Fnd_Name 
From ilp.Trxn 
Left Join igm.TEDIT On TEDIT.ETBL_TYP_ID = 'SEGFD' And TEDIT.ETBL_VALU_ID = Trxn.Fnd_Id
Where 1=1
And Pol_Id = @PolId   

END
GO
/****** Object:  StoredProcedure [ilp].[sp_getFndROI]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description:	API_005 - 報酬率
-- Exemple: 
-- Exec ilp.sp_getFndROI '1680037340','2024-10-22','2','1','99999'
-- Exec ilp.sp_getFndROI '1680037340','2024/10/22','1','1','10'
-- Exec ilp.sp_getFndROI '5568804550',Null,Null,'1','10'
-- =============================================

CREATE PROCEDURE [ilp].[sp_getFndROI] 
(
	@PolId varchar(10),--保單號碼
	@BatchDate varchar(10),--核心批次日
	@DateType char(1),--日期格式 (傳入參數1: 日期格式:yyyy/MM/dd、2: 日期格式:yyyy-MM-dd)
	@PageNumber int,--目前在第幾頁
	@PageSize int --每頁顯示幾筆資料
)
AS
BEGIN

--Declare
-- 	@PolId varchar(10) ='5568804030',--保單號碼
--	@BatchDate varchar(10) = '2026/05/07',--核心批次日
--	@DateType char(1)=1,--日期格式 (傳入參數1: 日期格式:yyyy/MM/dd、2: 日期格式:yyyy-MM-dd)
--	@PageNumber int=1,--目前在第幾頁
--	@PageSize int=10 --每頁顯示幾筆資料 	 

Set @DateType = IsNull(@DateType,1)
	 
Select Top 1
	@BatchDate = IGM_Batch_Date
From ilp.AcctVal 
Where 1=1
And Pol_Id = @PolId
And IGM_Batch_Date <= (Case When @BatchDate is null or @BatchDate = '' Then IGM_Batch_Date Else @BatchDate End)
Order by IGM_Batch_Date Desc

Select  Top 1
	Convert(Varchar(10),IGM_Batch_Date,111)  As Batch_Date,
	ilp.fn_GetCrcyName(Pol_Crcy) As Pol_Crcy
From ilp.Policy 
Where 1=1
And Pol_Id = @PolId
And IGM_Batch_Date = @BatchDate


  
Declare @Script  Nvarchar(max) = '
		Select 
		   vLast.Fnd_Id
		  ,ilp.fn_FilterFndName(AcctVal.Fnd_Id,ETBL_DESC_TXT) As Fnd_Name
		  ,ilp.fn_GetCrcyName(AcctVal.Fnd_Crcy) As Fnd_Crcy
		  ,Acum_Alloc_Cost_PolCrcy  --累積投入成本(保單幣別)
		  ,IsNull(FndNet_Alloc_Cost_PolCrcy,0) As Net_Alloc_Cost_PolCrcy--淨投入成本(保單幣別)
		  ,Current_In --標的單位數餘額
		  ,Avg_Nav_Val--平均淨值
		  ,Avg_Fixing_Rate --平均匯率
		  ,AcctVal.Nav_Val --目前淨值
		  ,Case When '+@DateType+' = 1 Then Convert(Varchar(10),AcctVal.Nav_Date,111) Else Convert(Varchar(10),AcctVal.Nav_Date) End  As Nav_Date--目前淨值的公告日期
		  ,AcctVal.Fixing_Rate --目前匯率
		  ,Case When '+@DateType+' = 1 Then Convert(Varchar(10),AcctVal.Fixing_Rate_Date,111) Else Convert(Varchar(10),AcctVal.Fixing_Rate_Date) End  As Fixing_Rate_Date--目前匯率的公告日期
		  ,AcctVal.Fnd_Acc_Val_PolCrcy --目前帳戶價值(保單幣別)
		  ,AcctVal.Fnd_Acc_Val_FndCrcy --目前帳戶價值(標的幣別)
		  ,IsNull(FndAcum_Div_Amt_PolCrcy,0) As Acum_Div_Amt_PolCrcy --累積現金配息/撥回(保單幣別)
		  ,IsNull(Acum_Sur2_Amt_PolCrcy,0) * -1 As Acum_Sur_Amt_PolCrcy --累積贖回金額(保單幣別)
		  ,ROI_Non_Div_Fnd --報酬率(不含息)
		  ,ROI_Inv_Div_Fnd --報酬率(含息)
		  ,ROI_Inv_Div_Sur2_Fnd --報酬率(含息及累積贖回金額)		  
	From ilp.AcctVal
	Left Join ilp.v_SelectTrxnLastInfo vLast On vLast.Pol_Id = AcctVal.Pol_Id And vLast.Fnd_Id = AcctVal.Fnd_Id
	Left Join igm.TEDIT On TEDIT.ETBL_TYP_ID = ''SEGFD'' And TEDIT.ETBL_VALU_ID = AcctVal.Fnd_Id
	Where 1=1
	And AcctVal.Pol_Id = (Case When ''' + IsNull(@PolId,'') + ''' <> '''' Then ''' + IsNull(@PolId,'') + '''  Else AcctVal.Pol_Id End)
	And AcctVal.IGM_Batch_Date = (Case When ''' + IsNull(@BatchDate,'') + ''' <> '''' Then ''' + IsNull(@BatchDate,'') + '''  Else AcctVal.IGM_Batch_Date End)
	And Current_In <> 0
' 
 
Exec [dbo].[sp_pageSQL_passPageNum] @Script,'Fnd_Acc_Val_PolCrcy Desc',@PageNumber,@PageSize



Select 
	   IsNull(Acum_Inv_Cost,0) As Acum_Inv_Cost
	  ,IsNull(Net_Alloc_Cost_PolCrcy,0) As Net_Inv_Cost
	  ,IsNull(Acct_Value_PolCrcy,0) As Acct_Value
	  ,IsNull(Acum_Inv_Cost,0) As Acum_Alloc_Cost_PolCrcy
	  ,IsNull(Acum_Div_Amt_PolCrcy,0) As Acum_Div_Amt
	  ,IsNull(ROI_Non_Div,0) As ROI_Non_Div
	  ,IsNull(ROI_Inv_Div,0) As ROI_Inv_Div
From ilp.Policy
Where Pol_Id = @PolId And IGM_Batch_Date = @BatchDate 

END
GO
/****** Object:  StoredProcedure [ilp].[sp_getInTransit]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_011 - 取得在途交易資訊
-- Exemple: 
-- Exec ilp.sp_getInTransit '1680055890',1,99 
-- =============================================

CREATE PROCEDURE [ilp].[sp_getInTransit] 
(
	@PolId nchar(10),--保單號碼
	@PageNumber int,--目前在第幾頁
	@PageSize int --每頁顯示幾筆資料
)
AS
BEGIN
  
 Select Top 1 ilp.fn_GetCrcyName(CIA_CRCY_CD) As Pol_Crcy From igm.TFA Where POL_ID = @PolId
  
Declare @Script  Nvarchar(max) = '
	Select Distinct 
	 Effective_Date
	,Fnd_Id
	,ilp.fn_FilterFndName(Fnd_Id,TEDIT.ETBL_DESC_TXT) As Fnd_Name 
	, LookUp.Type_Name  Trxn_Name
	,(Case When T.Type_Cd + ''/'' + T.Reason_Cd IN (''SUR/SUR'',''TRS/TRO'') And Trxn_Amt_PolCrcy = 0 Then NULL Else T.Trxn_Amt_PolCrcy End) As Trxn_Amt_PolCrcy
	,T.Type_Cd
	,T.Reason_Cd
	From ilp.InTransit T
	Left Join igm.TFA On TFA.Pol_Id = T.Pol_Id
	Left Join igm.TEDIT ON TEDIT.ETBL_TYP_ID=''SEGFD'' AND TEDIT.ETBL_LANG_CD = ''T'' AND TEDIT.ETBL_VALU_ID = T.FND_ID
	Left Join ilp.LookUp ON LookUp.Type_Group = ''TrxnType'' AND LookUp.Type_ID = T.Type_Cd + ''/'' + T.Reason_Cd
	Where T.Pol_Id = (Case When ''' + IsNull(@PolId,'') + ''' <> '''' Then ''' + IsNull(@PolId,'') + '''  Else T.Pol_Id End)
'
--Select @Script
 
Exec [dbo].[sp_pageSQL_passPageNum] @Script,'Effective_Date',@PageNumber,@PageSize

END
GO
/****** Object:  StoredProcedure [ilp].[sp_getJudgeIlpPlanCode]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	API_002 - 判斷是否為ILP 2.0 商品 
-- Exemple: 
-- Exec [ilp].[sp_getJudgeIlpPlanCode] '','1981/01/01' 
-- =============================================

CREATE   PROCEDURE [ilp].[sp_getJudgeIlpPlanCode] 
@PlanID char(10), --商品代號
@IssueDate char(10) --保單生效日
AS
BEGIN

Declare @Result char(1) = 'N'

--上線前要拿掉
IF(@PlanID IN ('UVLA8N','UVLA82','UVLB8N','UVLB82','TVLA8N','TVLA82','TVLB8N','TVLB82','UVA08N','UVA082','TVA08N','TVA082'))
BEGIN
	Select @Result  As getJudgeIlpPlanCodeResult
END

--如果TPOL_ILP取不到PLAN_ID即代表非台新後投資型商品
IF(@PlanID IS NULL)
BEGIN
	Select @Result  As getJudgeIlpPlanCodeResult
END

Select @Result = (Case When Count(*) > 0 Then 'N' Else 'Y' End) 
From ilp.LookUp 
Where 1=1 
And Type_Group = 'JudgeIlpPlanCode' 
And Type_Val1 = 'Phase2' 
And Type_ID = @PlanID --正式啟用要拿掉註解

--And Type_Val2 <= @IssueDate
 

Select @Result  As getJudgeIlpPlanCodeResult
END
GO
/****** Object:  StoredProcedure [ilp].[sp_getTakeProfitStopLoss]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/17
-- Description:	API_009 - 停利停損標的清單
-- Exemple: 
-- Exec [ilp].[sp_getTakeProfitStopLoss] '6680223890',1,99 
-- 未排除單位數為0的設定資料
-- =============================================

CREATE PROCEDURE [ilp].[sp_getTakeProfitStopLoss] 
	@PolId varchar(10),--保單號碼
	@PageNumber int,--目前在第幾頁
	@PageSize int --每頁顯示幾筆資料
AS
BEGIN

 	Declare 
	@Caller nvarchar(30),
	@Logs nvarchar(max) = ''
	Set @Caller = '[ilp].[sp_getTakeProfitStopLoss]'

	Set @Logs = dbo.fn_Logs(@Logs,
	'呼叫sp_getTakeProfitStopLoss  
	    @PolId:' + ISNULL(@PolId,'')  ) 
  
Declare @Script  Nvarchar(max) = '
SELECT 
	   ISNull(Setting.Enable,''N'') As Enable
	  ,(Case When TFH.FND_TYP_CD = ''M'' Then ''Y'' Else ''N'' End)  AS ''ReadOnly''
      ,LastInfo.Fnd_Id
	  ,ilp.fn_FilterFndName(LastInfo.Fnd_Id,TEDIT.ETBL_DESC_TXT) As Fnd_Name 
      ,ilp.fn_GetCrcyName(LastInfo.Fnd_Crcy) As Fnd_Crcy
      ,LastInfo.Nav_Val As Nav_Val
      ,LastInfo.ROI_Non_Div_Fnd As ROI_Non_Div_Fnd
      ,Stop_Loss_ROI
      ,Take_Profit_ROI
      ,Stop_Loss_Nav
      ,Take_Profit_Nav      
  FROM ilp.v_SelectTrxnLastInfo LastInfo
  Left Join ilp.TakeProfitStopLoss Setting On Setting.Pol_Id = LastInfo.Pol_Id And Setting.Fnd_Id = LastInfo.Fnd_Id
  Left Join igm.TEDIT ON TEDIT.ETBL_TYP_ID=''SEGFD'' AND TEDIT.ETBL_LANG_CD = ''T'' AND TEDIT.ETBL_VALU_ID =  LastInfo.Fnd_Id
  Left Join igm.TFH ON TFH.FND_ID = LastInfo.Fnd_Id 
  Where Current_In <> 0  And LastInfo.Pol_Id = (Case When ''' + IsNull(@PolId,'') + ''' <> '''' Then ''' + IsNull(@PolId,'') + '''  Else  LastInfo.Pol_Id End)

'


--Select @Script
 
Exec [dbo].[sp_pageSQL_passPageNum] @Script,'Fnd_Id',@PageNumber,@PageSize


	Exec sp_WriteLog @PolId,'Info',@Caller,@Logs
END
GO
/****** Object:  StoredProcedure [ilp].[sp_getToken]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_001 - 取得API Token
-- 1. 比對資料庫該System所存的Key是否相符
-- 2. 使用該保單查詢PlanID，IssueDate後，判斷是否為ILP商品範圍內
-- Exemple: 
-- Exec [ilp].[sp_getToken] 'TBKS','wUNdVz5SJS','1680037340'
-- Exec [ilp].[sp_getToken] 'TBKS','wUNdVz5SJS3','1680037340'
-- =============================================

CREATE PROCEDURE [ilp].[sp_getToken] 
@SysId varchar(10), --系統代碼 
@Mima varchar(100), --Key 
@PolId varchar(10) --保單號碼 
AS
BEGIN 

Declare @chkMima int = 1

--1. 比對資料庫該System所存的Key是否相符
	Exec [ilp].[sp_chkMima] @SysId,@Mima

	--驗證帳密失敗
	--IF @chkMima <> '00'
	--Begin 
	--	Select '98' As getTokenResult
	--End

--2. 使用該保單查詢PlanID，IssueDate後，判斷是否為ILP商品範圍內
	Declare @IsNewILP int = 1
	Declare @PlanID varchar(20) = (Select PLAN_ID From igm.TPOL_ILP Where POL_ID = @PolId)
	Declare @IssueDate varchar(20) = (Select POL_ISS_EFF_DT From igm.TPOL_ILP Where POL_ID = @PolId)
	

	Exec [ilp].[sp_getJudgeIlpPlanCode] @PlanID,@IssueDate

	----非ILP 2.0商品
	--IF @IsNewILP <> 0
	--Begin 
	--    Select '96' As getTokenResult
	--End


	--驗證皆成功
	--Select '00' As getTokenResult
END
GO
/****** Object:  StoredProcedure [ilp].[sp_getTrxnRecord]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/23
-- Description:	API_008 - 交易記錄查詢
-- Exemple: 
-- Exec ilp.sp_getTrxnRecord '5568802740','','','2023-05-13','2025-05-12','2','10'
-- =============================================

CREATE PROCEDURE [ilp].[sp_getTrxnRecord] 
(
	@PolId varchar(10),--保單號碼
	@TypeCd varchar(10),--交易類別代號
	@FndId varchar(10),--投資標的代號
	@EffectiveDateStart varchar(10),--交易生效日查詢起日
	@EffectiveDateEnd varchar(10),--交易生效日查詢迄日
	@PageNumber int,--目前在第幾頁
	@PageSize int --每頁顯示幾筆資料
)
AS
BEGIN
 
--Declare
--	@PolId varchar(10) = '6610025900',--保單號碼 
--	@TypeCd varchar(10) = 'ADM/MOR',--交易類別代號	
--	@FndId varchar(10) = '',--投資標的代號	 
--	@EffectiveDateStart varchar(10) = '2020-05-13',--交易生效日查詢起日Select Top 1
--	@EffectiveDateEnd varchar(10) = '2024-05-13',--交易生效日查詢迄日	@BatchDate = IGM_Batch_Date
--	@PageNumber int = 1,--目前在第幾頁 
--	@PageSize int = 3 --每頁顯示幾筆資料 

Set @TypeCd = Case When @TypeCd = 'ALL' Then '' Else @TypeCd End 

Set @FndId = Case When @FndId = 'ALL' Then '' Else @FndId End 


Select ilp.fn_GetCrcyName(ilp.fn_GetPolCrcy(@PolId)) As PolCrcy
  
Declare @Script  Nvarchar(max) = '
	Select 
		 Convert(Varchar(10),Effective_Date,111) As Effective_Date --交易申請日
		,Trxn.Fnd_Id --標的代號
		,ilp.fn_FilterFndName(Trxn.Fnd_Id,ETBL_DESC_TXT) As Fnd_Name --標的中文名稱
		,ilp.fn_GetCrcyName(Fnd_Crcy) As Fnd_Crcy --標的幣別
		,LookUp.Type_Name As Type_Cd--交易類別
		,Trxn_Amt_PolCrcy --交易金額(保單幣別)
		,Trxn_Amt_FndCrcy --交易金額(標的幣別)
		,Trxn_Fixing_Rate --當次交易匯率
		,Convert(Varchar(10),Trxn_Fixing_Rate_Date,111) As Trxn_Fixing_Rate_Date --當次交易匯率日期
		,Case When (Type_Cd+''/''+Reason_Cd IN (''BON/DIV'')) Then Null Else Trxn_Nav End As Trxn_Nav  --當次交易淨值
		,Case When (Type_Cd+''/''+Reason_Cd IN (''BON/DIV'')) Then Null Else Convert(Varchar(10),Trxn_Nav_Date,111) End As Trxn_Nav_Date --當次交易淨值公告日期
		,Trxn_Unit --當次交易淨值公告日期
		,Case When ( (Type_Cd+''/''+Reason_Cd IN (''SUR/GRS'',''SUR/SUR'')) OR (Type_Cd+''/''+Reason_Cd IN (''TRS/TRO'') And Trxn_Unit < 0) ) And TFH.FND_TYP_CD <> ''M'' Then  Sur_Avg_Cost Else Null End As Sur_Avg_Cost--贖回平均成本
		,Case When ( (Type_Cd+''/''+Reason_Cd IN (''SUR/GRS'',''SUR/SUR'')) OR (Type_Cd+''/''+Reason_Cd IN (''TRS/TRO'') And Trxn_Unit < 0) ) And TFH.FND_TYP_CD <> ''M'' Then  Sur_Gain_Loss Else Null End As Sur_Gain_Loss--贖回損益
		,Case When ( (Type_Cd+''/''+Reason_Cd IN (''SUR/GRS'',''SUR/SUR'')) OR (Type_Cd+''/''+Reason_Cd IN (''TRS/TRO'') And Trxn_Unit < 0) ) And TFH.FND_TYP_CD <> ''M'' Then  Sur_ROI_Non_Div_Fnd Else Null End As Sur_ROI_Non_Div_Fnd--贖回投資報酬率 
	From ilp.Trxn 
	Left Join igm.TEDIT On TEDIT.ETBL_TYP_ID = ''SEGFD'' And TEDIT.ETBL_VALU_ID = Trxn.Fnd_Id
	Left Join igm.TFH ON 1=1 And TFH.FND_ID = Trxn.FND_ID
	Left Join ilp.LookUp  On LookUp.Type_Group = ''TrxnType'' And LookUp.Type_ID = (Case When Trxn_Unit > 0 AND  Type_Cd+''/''+ Reason_Cd = ''TRS/TRO'' Then ''TRS/TRI'' Else Type_Cd+''/''+Reason_Cd end) 
	Where 1=1
	And Pol_Id = (Case When ''' + IsNull(@PolId,'') + ''' <> '''' Then ''' + IsNull(@PolId,'') + '''  Else Pol_Id End)
	And (Case When Trxn_Unit > 0 AND  Type_Cd+''/''+Reason_Cd = ''TRS/TRO'' Then ''TRS/TRI'' Else Type_Cd+''/''+Reason_Cd end) = (Case When ''' + IsNull(@TypeCd,'') + ''' <> '''' Then ''' + IsNull(@TypeCd,'') + '''  Else (Case When Trxn_Unit > 0 AND  Type_Cd+''/''+Reason_Cd = ''TRS/TRO'' Then ''TRS/TRI'' Else Type_Cd+''/''+Reason_Cd end) End)
	And Trxn.Fnd_Id = (Case When ''' + IsNull(@FndId,'') + ''' <> '''' Then ''' + IsNull(@FndId,'') + '''  Else Trxn.Fnd_Id End)
	And (Effective_Date Between
			(Case When ''' + IsNull(@EffectiveDateStart,'') + ''' <> '''' Then ''' + IsNull(@EffectiveDateStart,'') + '''  Else Effective_Date End)
			And
			(Case When ''' + IsNull(@EffectiveDateEnd,'') + ''' <> '''' Then ''' + IsNull(@EffectiveDateEnd,'') + '''  Else Effective_Date End)	
		)
	And Reverse_Date IS NULL
'
--Select @Script
 
Exec [dbo].[sp_pageSQL_passPageNum] @Script,'Effective_Date Desc',@PageNumber,@PageSize

 

END
GO
/****** Object:  StoredProcedure [ilp].[sp_getTrxnType]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	API_006 - 交易類別下拉選單
-- Exemple: 
-- Exec [ilp].[sp_getTrxnType] 'TrxnType' 
-- =============================================

CREATE PROCEDURE [ilp].[sp_getTrxnType] 
@GroupID varchar(20) --群組代號 
AS
BEGIN

 
Select Type_ID,TYPE_NAME
From ilp.LookUp  
Where Type_Group = @GroupID

END 
GO
/****** Object:  StoredProcedure [ilp].[sp_HitTakeProfitStopLoss]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	
-- 1. 比對確認是否觸擊停利停損點
-- 2. 並將觸發資料送往保e發送e-mail
-- 3. 將觸發結果由HitTakeProfitStopLoss資料夾移到HitTakeProfitStopLossToTCWB
-- Exemple: 
-- Exec [ilp].[sp_HitTakeProfitStopLoss]
-- ============================================= 
CREATE PROCEDURE [ilp].[sp_HitTakeProfitStopLoss]  
AS
BEGIN  Try

	Declare 
	@Caller nvarchar(30),
	@Logs nvarchar(max),
	@Log_Level varchar(10) = 'Info',
	@StartDateTime datetime,
	@EndDateTime datetime
	Set @Caller = '[ilp.[sp_HitTakeProfitStopLoss'
	Set @StartDateTime = GetDate();
	Set @Logs = dbo.fn_Logs(@Logs,'比對確認是否觸擊停利停損點-開始' )
	 
	Drop Table If Exists #HitTakeProfitStopLoss
 	SELECT TPS.Pol_Id
		  ,TPS.Fnd_Id
		  ,TMAST.BTCH_PRCES_DT As IGM_Batch_Date
		  ,TPS.Fnd_Crcy
		  ,LastInfo.Nav_Val
		  ,LastInfo.Nav_Date
		  ,LastInfo.ROI_Non_Div_Fnd
		  ,TPS.Stop_Loss_ROI
		  ,TPS.Take_Profit_ROI
		  ,TPS.Stop_Loss_Nav
		  ,TPS.Take_Profit_Nav
		  ,'Batch' As Created_By
		  ,GetDate() As Created_DateTime
		  ,NULL As Update_By
		  ,Convert(datetime, NULL) As Update_DateTime Into #HitTakeProfitStopLoss
	  FROM ilp.TakeProfitStopLoss TPS 
	  Inner Join igm.TMAST On 1=1
	  Left Join ilp.v_SelectTrxnStageLastInfo LastInfo On TPS.Pol_Id = LastInfo.Pol_Id And  TPS.Fnd_Id = LastInfo.Fnd_Id
	  Where 1=1
	  And Enable = 'Y'
	  And ISNULL(Invalid,'N') = 'N' 
	  And (LastInfo.ROI_Non_Div_Fnd >= TPS.Take_Profit_ROI 
			OR LastInfo.ROI_Non_Div_Fnd <= TPS.Stop_Loss_ROI
				OR LastInfo.Nav_Val >= TPS.Take_Profit_Nav
					OR LastInfo.Nav_Val <= TPS.Stop_Loss_Nav)

	Declare @Created_DateTime Datetime = GetDate()
	
	Insert Into ilp.HitTakeProfitStopLoss
	(
	   Pol_Id
      ,Fnd_Id
      ,IGM_Batch_Date
      ,Fnd_Crcy
      ,Nav_Val
      ,Nav_Date
      ,ROI_Non_Div_Fnd
      ,Stop_Loss_ROI
      ,Take_Profit_ROI
      ,Stop_Loss_Nav
      ,Take_Profit_Nav
      ,Created_By
      ,Created_DateTime
	)
	Select 
	   Pol_Id
      ,Fnd_Id
      ,IGM_Batch_Date
      ,Fnd_Crcy
      ,Nav_Val
	  ,Nav_Date
      ,ROI_Non_Div_Fnd
      ,Stop_Loss_ROI
      ,Take_Profit_ROI
      ,Stop_Loss_Nav	  
	  ,Take_Profit_Nav 
	  ,'Batch' Created_By
	  ,@Created_DateTime Created_DateTime
      From #HitTakeProfitStopLoss
	Except
	Select 
	   Pol_Id
      ,Fnd_Id
      ,IGM_Batch_Date
      ,Fnd_Crcy
      ,Nav_Val
	  ,Nav_Date
      ,ROI_Non_Div_Fnd
      ,Stop_Loss_ROI
      ,Take_Profit_ROI
      ,Stop_Loss_Nav
      ,Take_Profit_Nav 
	  ,'Batch' Created_By
	  ,@Created_DateTime Created_DateTime	  
	  From  ilp.HitTakeProfitStopLoss
	
	Set @Logs = dbo.fn_Logs(@Logs,'確認是否觸擊停利停損點-結束' )
END Try
BEGIN CATCH


	Set @Logs = dbo.fn_Logs(@Logs,
	'ErrorNumber: ' + Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)+
	'ErrorSeverity: ' +  Convert(varchar,ISNULL(ERROR_SEVERITY(),''))  +char(10)+
	'ErrorState: ' +  Convert(varchar,ISNULL(ERROR_STATE(),''))  +char(10)+
	'ErrorProcedure: ' +  Convert(varchar,ISNULL(ERROR_PROCEDURE(),''))  +char(10)+
	'ErrorLine: ' +  Convert(varchar,ISNULL(ERROR_LINE(),''))  +char(10)+
	'ErrorMessage: ' +  Convert(nvarchar(1000),ISNULL(ERROR_MESSAGE(),''))  +char(10)+
	'ErrorNumber: ' +  Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)) 
	
	Set @Log_Level = 'Error'
	Select @Logs As 'sp_HitTakeProfitStopLoss  ErrorMessage'

END CATCH
 
	Set @EndDateTime = GetDate();
 
	Set @Logs = dbo.fn_Logs(@Logs,'共耗時:' + dbo.fn_DateTimeDiff(@StartDateTime,@EndDateTime))	 

	Exec sp_WriteLog 'Mutile',@Log_Level,@Caller,@Logs
GO
/****** Object:  StoredProcedure [ilp].[sp_InsertInTransitStage]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/19
-- Description:	撈取當日在途件
-- Exemple: Exec ilp.sp_InsertInTransitStage
-- =============================================

CREATE PROCEDURE [ilp].[sp_InsertInTransitStage]

AS
BEGIN

Delete From ilp.InTransitStage 
Where IGM_Batch_Date = (Select BTCH_PRCES_DT From igm.TMAST)

Drop Table If Exists #Temp

Select  
	   Result.Pol_Id
      ,Result.Eff_DT
      ,Result.Fnd_Id
      ,Seq_No
      ,TMAST.BTCH_PRCES_DT
      ,Type_Cd
      ,Reason_Cd
      ,Amt
      ,'Batch' As 'CreatedBy'
      ,GetDate() As 'CreatedTimestamp'
Into #Temp From (
	Select--新契約
		TFA.POL_ID AS 'Pol_ID',
		TFA.CIA_EFF_DT AS 'Eff_DT',
		TFD.FND_ID,
		TFD.FIA_SEQ_NUM As Seq_No,
		TFA.CIA_TYP_CD As 'Type_Cd',
		TFA.CIA_REASN_CD As 'Reason_Cd',
		TFD.FIA_ORIG_TRXN_AMT AS 'Amt'
	From igm.TFA 
	LEFT JOIN igm.TFD  ON 
	TFD.POL_ID = TFA.POL_ID 
	AND TFD.FIA_EFF_DT = TFA.CIA_EFF_DT 
	AND TFA.CDA_SEQ_NUM = TFD.FIA_SEQ_NUM
	WHERE 1=1 
	AND ((CIA_TYP_CD = 'TRS' AND CIA_REASN_CD='FLK') OR (CIA_TYP_CD = 'DEP' AND CIA_REASN_CD='INI')) 
	AND CIA_UNIT_STAT_CD = 'N' 
	Union All
	Select--單追保費Table
		TFA.POL_ID AS 'Pol_ID',
		TFA.CIA_EFF_DT AS 'Eff_DT',
		TFD.FND_ID,
		TFD.FIA_SEQ_NUM As Seq_No,
		TFA.CIA_TYP_CD As 'Type_Cd',
		TFA.CIA_REASN_CD As 'Reason_Cd',
		TFD.FIA_ORIG_TRXN_AMT AS 'Amt'
	From igm.TFA 
	LEFT JOIN igm.TFD  ON 
	TFD.POL_ID = TFA.POL_ID 
	AND TFD.FIA_EFF_DT = TFA.CIA_EFF_DT 
	AND TFA.CDA_SEQ_NUM = TFD.FIA_SEQ_NUM
	LEFT JOIN igm.TEDIT ON TEDIT.ETBL_TYP_ID='SEGFD' AND TEDIT.ETBL_LANG_CD = 'T' AND TEDIT.ETBL_VALU_ID = TFD.FND_ID
	LEFT JOIN ilp.LookUp ON LookUp.Type_Group = 'TrxnType' AND LookUp.Type_ID = TFA.CIA_TYP_CD + '/' + TFA.CIA_REASN_CD  
	WHERE 1=1 
	AND (
		(CIA_TYP_CD = 'DEP' AND CIA_REASN_CD='DRP') 
	OR (CIA_TYP_CD = 'DEP' AND CIA_REASN_CD='TRG')
	OR (CIA_TYP_CD = 'DEP' AND CIA_REASN_CD='XTR')
	   ) 
	And CIA_UNIT_STAT_CD = 'N'
	Union All
	SELECT  --標的轉換 
		TPOLP_ILP.POL_ID AS 'Pol_ID',
		TPOLP_ILP.POL_PAYO_EFF_DT AS 'Eff_DT',
		TCDSI_ILP.DEST_FND_ID,
		000 As Seq_No,
		'TRS',
		'TRO',
		0 AS 'Amt'
	FROM igm.TPOLP_ILP 
	LEFT JOIN igm.TCDSI_ILP ON TCDSI_ILP.POL_ID = TPOLP_ILP.POL_ID AND TCDSI_ILP.POL_PAYO_NUM = TPOLP_ILP.POL_PAYO_NUM
	Where 1=1 
	AND POL_PAYO_TYP_CD='T'
	AND POL_PAYO_STAT_CD='D' 
	AND TCDSI_ILP.CDI_ALLOC_PCT < 0 
	Union All
	SELECT --標的轉換-轉入 
		TPOLP_ILP.POL_ID AS 'Pol_ID',
		TPOLP_ILP.POL_PAYO_EFF_DT AS 'Eff_DT',
		TCDSI_ILP.DEST_FND_ID,
		000,
		'TRS',
		'TRI',
		TCDSI_ILP.CDI_ALLOC_AMT AS 'Amt'
	FROM igm.TPOLP_ILP 
	LEFT JOIN igm.TCDSI_ILP ON TCDSI_ILP.POL_ID = TPOLP_ILP.POL_ID AND TCDSI_ILP.POL_PAYO_NUM = TPOLP_ILP.POL_PAYO_NUM
	Where 1=1 
	AND POL_PAYO_TYP_CD='T'
	AND POL_PAYO_STAT_CD='D' 
	AND TCDSI_ILP.CDI_ALLOC_PCT > 0 
	Union All
	 Select  --部份提領(商品:FVA02N/FVA01N、標的:FF001 - FF010)
		TPOLP_ILP.POL_ID AS 'Pol_ID',
		TPOLP_ILP.POL_PAYO_EFF_DT AS 'Eff_DT',
		TCDSI_ILP.DEST_FND_ID,
		000 As Seq_No,
		'SUR' As 'Type_Cd',
		'GRS' As 'Reason_Cd',
		TCDSI_ILP.CDI_ALLOC_AMT AS 'Amt'		
	From igm.TPOLP_ILP  
	LEFT JOIN igm.TCDSI_ILP ON TCDSI_ILP.POL_ID = TPOLP_ILP.POL_ID AND TCDSI_ILP.POL_PAYO_NUM = TPOLP_ILP.POL_PAYO_NUM
	Where 1=1 
	AND POL_PAYO_TYP_CD='W'
	AND POL_PAYO_STAT_CD='D' 
	Union All
	SELECT  --解約
		TPOLP_ILP.POL_ID AS 'Pol_ID',
		TPOLP_ILP.POL_PAYO_EFF_DT AS 'Eff_DT',
		TCDSI_ILP.DEST_FND_ID,
		000 As Seq_No,
		'SUR',
		'SUR',
		0 AS 'Amt'
	FROM igm.TPOLP_ILP 
	LEFT JOIN igm.TCDSI_ILP ON TCDSI_ILP.POL_ID = TPOLP_ILP.POL_ID AND TCDSI_ILP.POL_PAYO_NUM = TPOLP_ILP.POL_PAYO_NUM
	Where 1=1 
	AND POL_PAYO_TYP_CD='ST'
	AND POL_PAYO_STAT_CD='D' 


) Result
Inner Join igm.TMAST On 1=1
  
  
Insert Into ilp.InTransitStage
	  (Pol_Id
      ,Effective_Date
      ,Seq_No
      ,Fnd_Id
      ,IGM_Batch_Date
      ,Type_Cd
      ,Reason_Cd
      ,Trxn_Amt_PolCrcy
	  ,Pol_Crcy
	  ,Fnd_Crcy
      ,CreatedBy
      ,Created_DateTime)
Select Distinct T.Pol_Id
      ,T.Eff_DT
      ,T.Seq_No
      ,T.Fnd_Id
      ,T.BTCH_PRCES_DT
      ,T.Type_Cd
      ,T.Reason_Cd
      ,T.Amt
	  ,TFA.CIA_CRCY_CD
	  ,ISNULL(TFD.FIA_CRCY_CD,'')
      ,T.CreatedBy
      ,T.CreatedTimestamp
From #Temp T
Left Join igm.TFA On 1=1
And TFA.POL_ID = T.Pol_ID 
Left Join igm.TFD On 1=1
And TFD.POL_ID = T.Pol_ID 
And TFD.FND_ID = T.FND_ID 
Where 1=1
--部提會自動在TCDSI長出一筆加總，無標的代號，所以要排除此加總資料
And NOT (T.Fnd_Id = '' And Type_Cd='SUR' And Reason_Cd = 'GRS')

End
GO
/****** Object:  StoredProcedure [ilp].[sp_InsertStageRowData]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [ilp].[sp_InsertStageRowData]    Script Date: 2024/12/27 下午 02:56:37 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--SET NOCOUNT ON
--GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/19
-- Description:	將指定的交易資料先存到Stage，後續進行計算使用
-- Exemple: 
-- 清除全部交易資料，重新倒入所有交易資料
-- Exec [ilp].[sp_InsertStageRowData] '', '','' 

-- 清除特定交易資料，重新倒入特定交易資料
-- Exec [ilp].[sp_InsertStageRowData] '0000043360','NTD01','2025-03-21' 
---- =============================================
CREATE PROCEDURE [ilp].[sp_InsertStageRowData]
(	
	@Pol_Id nchar(10),--保單號碼
	@Fnd_Id varchar(10),--標的代號
	@Complete_Date varchar(10) --交易完成日 
)
AS
BEGIN Try

--Begin --測試用的變數宣告
	
--	Declare
--	@Pol_Id nchar(10) = '0000043360',--保單號碼
--	@Fnd_Id varchar(10) = 'NTD01',--標的代號
--	@Complete_Date varchar(10) = '2025-03-21'--交易生效日
--End

Begin --宣告Log要用的變數
	Declare 
	@Caller nvarchar(30),
	@Log_Level varchar(10) = 'Info',
	@Logs nvarchar(max) = ''
	Set @Caller = '[ilp].[sp_InsertStageRowData]'	
	Set @Logs = dbo.fn_Logs(@Logs,'開始執行[ilp].[sp_InsertStageRowData] ' +' Complete_Date:' + ISNULL(@Complete_Date,'') +  ' Pol_Id:' + ISNULL(@Pol_Id,'') + ' Fnd_Id:' + ISNULL(@Fnd_Id,'')) 
	
End

Begin --整理各交易檔的資料

	--Set @Logs = dbo.fn_Logs(@Logs,'整理各交易檔的資料 ') 
	 

	DECLARE @sp_TFA_Dity_ReturnCode INT;

	Exec @sp_TFA_Dity_ReturnCode = igm.sp_TFA_Dity @Pol_Id

	IF @sp_TFA_Dity_ReturnCode =1 
	Begin 
	Set @Logs = dbo.fn_Logs(@Logs,'sp_TFA_Dity執行失敗 ') 
	End


	DECLARE @sp_TFD_Dity_ReturnCode INT;

	Exec @sp_TFD_Dity_ReturnCode = igm.sp_TFD_Dity @Pol_Id,@Fnd_Id,@Complete_Date

	IF @sp_TFD_Dity_ReturnCode =1 
	Begin 
	Set @Logs = dbo.fn_Logs(@Logs,'sp_TFD_Dity執行失敗 ') 
	End


	DECLARE @sp_TBNDV_Dity_ReturnCode INT;

	Exec @sp_TBNDV_Dity_ReturnCode = igm.sp_TBNDV_Dity @Pol_Id,@Fnd_Id,@Complete_Date  

	IF @sp_TBNDV_Dity_ReturnCode =1 
	Begin 
	Set @Logs = dbo.fn_Logs(@Logs,'sp_TBNDV_Dity執行失敗 ') 
	End
	
End

Begin --取得當次要處理的交易資料
---------------------------------------------------------------------------------------------------------------------
--1. 由v_SelectTrxnRowData、v_SelectBonRowData取得當次要處理的交易資料
--2. 將 TrxnStage 暫存資料壓上ReverseDate,Trxn資料
--3. 等待所有Stage都確認跑完後再壓上ReverseDate，再將Stage複製到Trxn
---------------------------------------------------------------------------------------------------------------------

	Set @Logs = dbo.fn_Logs(@Logs,'取得當次要處理的交易資料 ') 

	--清空暫存區 
	Drop Table IF Exists #RowDataTemp

	Select * 
	Into #RowDataTemp
	From 
	(
		Select 
			 Pol_Id --保單號碼
			,IGM_Batch_Date --資料處理時間
			,Effective_Date --交易生效日
			,Orig_Process_Date --當次交易執行日
			,Complete_Date --交易完成日
			,Rverse_Date --回溯執行日期
			,Alloc_Type --投入類別
			,Seq_No --序號
			,CIA_TYP_CD --交易類別
			,CIA_REASN_CD --交易原因
			,CIA_CRCY_CD --保單幣別
			,FIA_CRCY_CD --基金幣別
			,FND_ID --標的代號
			,FIA_UNIT_QTY --當次交易單位數
			,FIA_UNIT_CUM_QTY --交易後單位數
			,FIA_UNIT_PRIC_DT --交易淨值日期
			,FIA_UNIT_PRIC_AMT --交易淨值
			,FIA_XCHNG_EFF_DTZ --交易匯率日期
			,FIA_XCHNG_CNVR_RT --交易匯率(基金幣別)
			,Trxn_Fixing_Rate_LocalCrcy--交易匯率(當地幣別)
			,FIA_ORIG_TRXN_AMT--當次交易金額(保單幣別)
			,FIA_FND_TRXN_AMT--當次交易金額(基金幣別)	
			,Trxn_Amt_LocalCrcy--當次交易金額(當地幣別)
		From  [ilp].[v_SelectTrxnRowData]
		Where 1=1
		--指定交易完成日
		And (@Complete_Date IS NULL OR @Complete_Date = '' OR Complete_Date >= @Complete_Date )
		--指定保單號碼
		And (@Pol_Id IS NULL OR @Pol_Id = '' OR Pol_Id = @Pol_Id)
		--指定標的代號
		And (@Fnd_Id IS NULL OR @Fnd_Id = '' OR FND_ID = @Fnd_Id) 

		Union All

		Select 
			 Pol_Id --保單號碼
			,IGM_Batch_Date --資料處理時間
			,Effective_Date --交易生效日
			,NULL Orig_Process_Date --當次交易執行日
			,Complete_Date --交易完成日
			,Rverse_Date --回溯執行日期
			,Alloc_Type --投入類別
			,Seq_No --序號
			,CIA_TYP_CD --交易類別
			,CIA_REASN_CD --交易原因
			,CIA_CRCY_CD --保單幣別
			,FIA_CRCY_CD --基金幣別
			,FND_ID --標的代號
			,FIA_UNIT_QTY --當次交易單位數
			,FIA_UNIT_CUM_QTY --交易後單位數
			,NULL As FIA_UNIT_PRIC_DT --交易淨值日期
			,FIA_UNIT_PRIC_AMT --交易淨值
			,NULL As FIA_XCHNG_EFF_DTZ ---交易匯率日期
			,FIA_XCHNG_CNVR_RT ---交易匯率(基金幣別)
			,Trxn_Amt_LocalCrcy ---交易匯率(當地幣別)
			,FIA_ORIG_TRXN_AMT--當次交易金額(保單幣別)
			,FIA_FND_TRXN_AMT--當次交易金額(基金幣別)
			,Trxn_Amt_LocalCrcy--當次交易金額(當地幣別)
		From  [ilp].[v_SelectBonRowData]
		Where 1=1
		--指定保單號碼
		And (@Pol_Id IS NULL OR @Pol_Id = '' OR Pol_Id = @Pol_Id)
		--指定標的代號
		And (@Fnd_Id IS NULL OR @Fnd_Id = '' OR FND_ID = @Fnd_Id)  
		--指定交易完成日
		And (@Complete_Date IS NULL OR @Complete_Date = '' OR Complete_Date >= @Complete_Date
		--指定Reverse執行日
		OR ISNULL( @Complete_Date ,'') = '' OR Rverse_Date >= @Complete_Date)
	) A 
End  

Begin --預防性刪除，防止重跑時重覆塞資料
	Set @Logs = dbo.fn_Logs(@Logs,'預防性刪除，防止重跑時重覆塞資料') 

	Delete From  
			ilp.TrxnStage
	Where 1=1
	--指定保單號碼
	And (@Pol_Id IS NULL OR @Pol_Id = '' OR Pol_Id = @Pol_Id)
	--指定標的代號
	And (@Fnd_Id IS NULL OR @Fnd_Id = '' OR FND_ID = @Fnd_Id)  
	--指定交易完成日
	And (@Complete_Date IS NULL OR @Complete_Date = '' OR Complete_Date >= @Complete_Date)
End

Begin --新增 TrxnStage 暫存資料
---------------------------------------------------------------------------------------------------------------------
--1. 新增 TrxnStage 暫存資料
---------------------------------------------------------------------------------------------------------------------
Set @Logs = dbo.fn_Logs(@Logs,'新增 TrxnStage 暫存資料') 
	Insert Into ilp.TrxnStage
	(
		 Pol_Id --保單號碼
		,IGM_Batch_Date --資料處理時間
		,Effective_Date --交易生效日
		,Process_Date --交易執行日
		,Complete_Date --交易完成日
		,Reverse_Date --回溯實際執行日
		,Alloc_Type --投入類別
		,Seq_No --依交易生效日由999往下排的交易序號
		,Trxn_Seq --該筆交易在該標的中，排除回溯後的交易排序
		,Type_Cd --交易類別
		,Reason_Cd --交易原因
		,Pol_Crcy --保單幣別
		,Fnd_Crcy --基金幣別
		,FND_ID --標的代號
		,Trxn_Unit --當次交易單位數
		,Current_In --交易後單位數
		,Trxn_Nav_Date --交易淨值日期
		,Trxn_Nav --交易淨值
		,Trxn_Fixing_Rate ---交易匯率
		,Trxn_Fixing_Rate_Date ---交易匯率日期
		,Trxn_Fixing_Rate_LocalCrcy ---交易匯率(當地幣別)
		,Trxn_Amt_PolCrcy--當次交易金額(保單幣別)
		,Trxn_Amt_FndCrcy--當次交易金額(基金幣別)
		,Trxn_Amt_LocalCrcy--當次交易金額(當地幣別)
		,Prev_Avg_Fixing_Rate
		,Prev_Avg_Net_Nav
		,Created_By
		,Created_DateTime
	)
	Select 
		 Pol_Id --保單號碼
		,IGM_Batch_Date --核心批次日
		,Effective_Date --交易生效日
		,Orig_Process_Date --交易執行日
		,Complete_Date  --交易完成日
		,Rverse_Date --回溯實際執行日
		,Alloc_Type --投入類別
		,Seq_No --依交易生效日由999往下排的交易序號
		,0 --該筆交易在該標的中，排除回溯後的交易排序
		,CIA_TYP_CD --交易類別
		,CIA_REASN_CD --交易原因
		,CIA_CRCY_CD --保單幣別
		,FIA_CRCY_CD --基金幣別
		,FND_ID --標的代號
		,FIA_UNIT_QTY --當次交易單位數
		,FIA_UNIT_CUM_QTY --交易後單位數
		,FIA_UNIT_PRIC_DT --交易淨值日期
		,FIA_UNIT_PRIC_AMT --交易淨值
		,FIA_XCHNG_CNVR_RT ---交易匯率
		,FIA_XCHNG_EFF_DTZ ---交易匯率日期
		--如果已經是台幣保單，則不用再重取得當地幣的交易匯率，直接取用交易的匯率即可
		--如果是美元保單，才有需要換算成台(當地)幣的交易匯率
		,Trxn_Fixing_Rate_LocalCrcy --當地幣交易匯率
		,FIA_ORIG_TRXN_AMT--當次交易金額(保單幣別)
		,FIA_FND_TRXN_AMT--當次交易金額(基金幣別) 
		,Trxn_Amt_LocalCrcy --當次交易金額(當地幣別)
		,0 As Prev_Avg_Fixing_Rate
		,0 As Prev_Avg_Net_Nav
		,'Batch' As Created_By 
		,GetDate() As Created_DateTime 
	From #RowDataTemp 
End

Begin --更新ilp.TrxnStage 
--	1. 有被Reverse的資料要壓上Reverse_Date
--	2. 更新交易資料的排序
	Update ilp.TrxnStage 
	Set Reverse_Date = A.Rverse_Date
	From ilp.v_SelectTrxnRowData A
	Where 1=1
	And TrxnStage.Pol_Id = A.Pol_Id
	And TrxnStage.Fnd_Id = A.Fnd_Id
	And TrxnStage.Effective_Date = A.Effective_Date
	And TrxnStage.Seq_No = A.Seq_No

	Drop Table IF Exists #Trxn_Seq
	Select 
		Row_Number() over(PARTITION BY Pol_Id, Fnd_Id ORDER BY Pol_Id, Fnd_Id,Complete_Date ,Effective_Date ,Seq_No Desc) AS SN,*
		Into #Trxn_Seq
	From ilp.TrxnStage
	Where Reverse_Date is null


	Update ilp.TrxnStage 
		Set Trxn_Seq = A.SN  
	From #Trxn_Seq A
	Where 1=1
	And TrxnStage.Pol_Id = A.Pol_Id
	And TrxnStage.Fnd_Id = A.Fnd_Id
	And TrxnStage.Effective_Date = A.Effective_Date
	And TrxnStage.Seq_No = A.Seq_No
End


END Try
BEGIN CATCH
	Set @Logs = dbo.fn_Logs(@Logs,
	'ErrorNumber: ' + Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)+
	'ErrorSeverity: ' +  Convert(varchar,ISNULL(ERROR_SEVERITY(),''))  +char(10)+
	'ErrorState: ' +  Convert(varchar,ISNULL(ERROR_STATE(),''))  +char(10)+
	'ErrorProcedure: ' +  Convert(varchar,ISNULL(ERROR_PROCEDURE(),''))  +char(10)+
	'ErrorLine: ' +  Convert(varchar,ISNULL(ERROR_LINE(),''))  +char(10)+
	'ErrorMessage: ' +  Convert(nvarchar(max),ISNULL(ERROR_MESSAGE(),''))  +char(10)+
	'ErrorNumber: ' +  Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)) 	
	Set @Log_Level = 'Error'
	Select @Logs As 'sp_InsertStageRowData  ErrorMessage'
END CATCH

	Exec sp_WriteLog @Pol_Id,@Log_Level,@Caller,@Logs
GO
/****** Object:  StoredProcedure [ilp].[sp_postTakeProfitStopLoss]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		David Yeh
-- Create date: 2024/10/17
-- Description:	API_010 - 停利停損通知設定
-- Exemple: 
-- Exec [ilp].[sp_postTakeProfitStopLoss] 'Y','1680037340','AY017','25','1','12','99' 
-- Exec [ilp].[sp_postTakeProfitStopLoss] 'N','1680037340','AY017',NULL,NULL,NULL,NULL
-- ============================================= 
CREATE PROCEDURE [ilp].[sp_postTakeProfitStopLoss] 
	@Enable char(1),--停利停損設定狀態
	@PolId varchar(10),--保單號碼
	@FndId varchar(10),--標的代號
	@StopLossROI numeric(18, 6),--約定停損報酬率
	@TakeProfitROI numeric(18, 6),--約定停利報酬率
	@StopLossNav numeric(18, 6),--約定停損淨值
	@TakeProfitNav numeric(18, 6)--約定停利淨值
AS
BEGIN

	Declare 
	@Caller nvarchar(30),
	@Logs nvarchar(max) = ''
	Set @Caller = '[ilp].[sp_postTakeProfitStopLoss]'


	Set @Logs = dbo.fn_Logs(@Logs,
	'呼叫sp_postTakeProfitStopLoss  
	    @Enable:' + ISNULL(@Enable,'') + 
	 '  @PolId:' + ISNULL(@PolId,'') + 
	 '  @FndId:' + ISNULL(@FndId,'')  + 
	 '  @StopLossROI:' + Convert(varchar,Isnull(@StopLossROI,0)) + 
	 '  @StopLossNav:' + Convert(varchar,Isnull(@TakeProfitROI,0))+ 
	 '  @TakeProfitNav:' + Convert(varchar,Isnull(@TakeProfitNav,0)) ) 


	Insert Into ilp.TakeProfitStopLoss_History
	Select *,GetDate() From ilp.TakeProfitStopLoss Where Pol_Id = @PolId And Fnd_Id = @FndId

	Delete From ilp.TakeProfitStopLoss Where Pol_Id = @PolId And Fnd_Id = @FndId

		Insert Into ilp.TakeProfitStopLoss
		  (
			   Enable
			  ,Pol_Id
			  ,Fnd_Id
			  ,Fnd_Crcy
			  ,Stop_Loss_ROI
			  ,Take_Profit_ROI
			  ,Stop_Loss_Nav
			  ,Take_Profit_Nav
			  ,Created_DateTime
			  ,Invalid
		  )
		  Values
		  (
			  @Enable,
			  @PolId,
			  @FndId,
			  ilp.fn_GetFndCrcy(@FndId),
			  @StopLossROI,
			  @TakeProfitROI,
			  @StopLossNav,
			  @TakeProfitNav,
			  GETDATE(),
			  'N'
		  )

	Exec sp_WriteLog @PolId,'Info',@Caller,@Logs
END
GO
/****** Object:  StoredProcedure [ilp].[sp_RunBatch]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/08/28
-- Description:	成本、現價、報酬率、保單層資訊 計算批次
-- Exemple: 
-- Exec [ilp].[sp_RunBatch] '','','2026-11-25'
-- Exec [ilp].[sp_RunBatch] NULL,NULL,NULL
-- =============================================
CREATE PROCEDURE [ilp].[sp_RunBatch]
	(	
		@PolId nchar(10),--保單號碼
		@FndId varchar(10),--標的代號	
		@CompleteDate varchar(10) --交易完成日
	 )
AS
BEGIN  Try

	--測試用指定參數
	--Declare
	--@PolId varchar(10) =  '6610024610',--保單號碼
	--@FndId varchar(10)  = 'FT001',--標的代號
	--@CompleteDate varchar(10) = '',--交易生效日
	--@SeqNo int = null --序號 
	
	--先整理傳入的參數，如有Null直接為空白
	Set @PolId = ISNULL(@PolId,'')
	Set @FndId = ISNULL(@FndId,'') 

	Declare 
	@Caller nvarchar(30),
	@Logs nvarchar(max),
	@Log_Level varchar(10) = 'Info',
	@StartDateTime datetime,
	@EndDateTime datetime
	Set @Caller = '[ilp].[sp_RunBatch]'


	Set @StartDateTime = GetDate(); 
	Set @Logs = dbo.fn_Logs(@Logs,'成本、現價、報酬率、保單層資訊 計算批次-開始') 

	-----------------------------------------------------------------------------------------------
    -------------------------------------------指定要處理的交易資料------------------------------------
    -----------------------------------------------------------------------------------------------
	Set @Logs = dbo.fn_Logs(@Logs,
	'呼叫sp_InsertStageRowData重新從TFA、TFD抓取指定要處理的交易資料 Pol_Id:' + ISNULL(@PolId,'') + ' Fnd_Id:' + ISNULL(@FndId,'')   + ' Complete_Date:' + Convert(varchar,ISNULL(@CompleteDate,'')) )

	Exec ilp.sp_InsertStageRowData @PolId,@FndId,@CompleteDate
	 
	Delete From ilp.TrxnStage Where Complete_Date > @CompleteDate
	
	Set @Logs = dbo.fn_Logs(@Logs,'取出TrxnStage中，平均淨值、平均匯率為空值的資料') 

	--取出TrxnStage中，平均淨值、平均匯率為空值的資料，代表未完成計算
	Drop Table if Exists #TrxnStageNotFinish	
	Select 	
	 --本次所有要計算的資料排序
	  Row_Number() over(ORDER BY Pol_id,Fnd_ID,Complete_Date, Effective_Date , Seq_No desc ) AS SN  
	,* Into #TrxnStageNotFinish 
	From ilp.TrxnStage 
	Where 1=1
	--指定交易完成日
	And (@CompleteDate IS NULL OR @CompleteDate = '' OR Complete_Date = @CompleteDate) 
	--指定保單號碼
	And (@PolId IS NULL OR @PolId = '' OR Pol_Id = @PolId)
	--指定標的代號
	And (@FndId IS NULL OR @FndId = '' OR FND_ID = @FndId)
	And Reverse_Date IS NULL


	Declare 
		@TrxnStageNotFinishCount int = 0,
		@StepCount int = 0
    --要計算成本的總筆數
	Select @TrxnStageNotFinishCount = Count(*)  From #TrxnStageNotFinish
		

	Set @Logs = dbo.fn_Logs(@Logs,'01.計算成本(平均淨值、平均匯率)與累計')
	Set @Logs = dbo.fn_Logs(@Logs,'迴圈開始計算共'+ Convert(Varchar,@TrxnStageNotFinishCount)+'筆') 
	 
	Declare @Trxn_Seq int = 0, 
		    @Trxn_Seq_Prev int = 0,
			@PolId_Trxn nchar(10),--保單號碼
			@FndId_Trxn varchar(10),--標的代號	
			@CompleteDate_Trxn varchar(10), --交易完成日
			@SeqNo_Trxn int --交易序號
	Print Convert(varchar, Getdate(), 120) 
	While(@TrxnStageNotFinishCount > @StepCount)
	Begin  	
		Select 
			@PolId_Trxn = Pol_Id,--保單號碼
			@FndId_Trxn = Fnd_Id,--標的代號
			@SeqNo_Trxn = Trxn_Seq--該筆交易在該保單號碼、標的代號的排序序號
		From #TrxnStageNotFinish Where Sn = @StepCount +1 
		
		--Set @Logs = dbo.fn_Logs(@Logs,
		--'Exec ilp.sp_CalcTrxn @Pol_Id:' + ISNULL(@PolId,'') + ' @Fnd_Id:' + ISNULL(@FndId,'')  + ' @Trxn_Seq:' + Convert(varchar,@Trxn_Seq) + ' @Trxn_Seq_Prev:' + @Trxn_Seq_Prev ) 

	    Exec ilp.sp_CalcTrxn  @PolId_Trxn,@FndId_Trxn,@SeqNo_Trxn		

		Set @StepCount = @StepCount +1 
	End
	    --Select @PolId,@FndId,@CompleteDate
		Set @Logs = dbo.fn_Logs(@Logs,'02.計算標的帳戶價值')
		Exec [ilp].[sp_CalcAcctVal] @PolId,@FndId,@CompleteDate

		Set @Logs = dbo.fn_Logs(@Logs,'03.計算標的報酬率')
		Exec [ilp].[sp_CalcROI] @PolId,@FndId,@CompleteDate

		Set @Logs = dbo.fn_Logs(@Logs,'04.計算保單報酬率')		 
		Exec [ilp].[sp_CalcPolicy] @PolId,@CompleteDate

		----***上線後將改為由另一個Trinitry於Batch後的特定時間才執行搬移
		--Set @Logs = dbo.fn_Logs(@Logs,'從暫存區(Stage)搬移到正式區')	
		--Exec [ilp].[sp_StageToFormal] ''  
		
--上PROD要移除
BEGIN
	declare @IGM_Batch_Date varchar(10);  
	Select @IGM_Batch_Date = BTCH_PRCES_DT From igm.TMAST;
	Exec [ilp].[sp_StageToFormal] @IGM_Batch_Date;
END
	Set @Logs = dbo.fn_Logs(@Logs,'成本、現價、報酬率、保單層資訊 計算批次-結束') 
END Try
BEGIN CATCH


	Set @Logs = dbo.fn_Logs(@Logs,
	'ErrorNumber: ' + Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)+
	'ErrorSeverity: ' +  Convert(varchar,ISNULL(ERROR_SEVERITY(),''))  +char(10)+
	'ErrorState: ' +  Convert(varchar,ISNULL(ERROR_STATE(),''))  +char(10)+
	'ErrorProcedure: ' +  Convert(varchar,ISNULL(ERROR_PROCEDURE(),''))  +char(10)+
	'ErrorLine: ' +  Convert(varchar,ISNULL(ERROR_LINE(),''))  +char(10)+
	'ErrorMessage: ' +  Convert(nvarchar(1000),ISNULL(ERROR_MESSAGE(),''))  +char(10)+
	'ErrorNumber: ' +  Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)) 
	
	Set @Log_Level = 'Error'
	Select @Logs As 'sp_RunBatch  ErrorMessage'

END CATCH

	Set @EndDateTime = GetDate(); 
	Set @Logs = dbo.fn_Logs(@Logs,'共耗時:' + dbo.fn_DateTimeDiff(@StartDateTime,@EndDateTime))	
	Exec sp_WriteLog @PolId,@Log_Level,@Caller,@Logs
GO
/****** Object:  StoredProcedure [ilp].[sp_StageToFormal]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	將Stage資料搬移至各正式資料表
-- Exemple: 
-- Exec [ilp].[sp_StageToFormal]  ''
-- =============================================

CREATE PROCEDURE [ilp].[sp_StageToFormal] 
@IGM_Batch_Date varchar(10)
AS
BEGIN  Try

Declare 
@Caller nvarchar(30),
@Logs nvarchar(max),
@Log_Level varchar(10) = 'Info',
@StartDateTime datetime,
@EndDateTime datetime
Set @Caller = '[ilp].[sp_StageToFormal]'
Set @StartDateTime = GetDate();
Set @Logs = dbo.fn_Logs(@Logs,'將Stage資料搬移至各正式資料表-開始' )

Delete From ilp.Trxn 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date)
OR (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR Complete_Date = @IGM_Batch_Date);

Insert Into ilp.Trxn
Select * From ilp.TrxnStage 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Delete From ilp.AcctVal 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Insert Into ilp.AcctVal
Select * From ilp.AcctValStage 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Delete From ilp.ROI 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Insert Into ilp.ROI
Select * From ilp.ROIStage 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Delete From ilp.Policy 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Insert Into ilp.Policy
Select * From ilp.PolicyStage 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);

Delete From ilp.InTransit 

Insert Into ilp.InTransit  
Select * From ilp.InTransitStage 
Where 1=1
And (@IGM_Batch_Date IS NULL OR @IGM_Batch_Date = '' OR IGM_Batch_Date = @IGM_Batch_Date);



Declare @Update_DateTime Datetime = GETDATE();

Drop Table If Exists #HitTakeProfitStopLossDiff
--比對同一個IGM_Batch_Date是否有未曾經送到保e的資料
Select * Into #HitTakeProfitStopLossDiff From (
--未發送至保e的資料
Select [Pol_Id]
      ,[Fnd_Id]
	  From  ilp.HitTakeProfitStopLoss 
	  Where IGM_Batch_Date = @IGM_Batch_Date And ToTCWB is null
EXCEPT --比對是否存在於，不存在即撈取出來
--已發送至保e的資料
SELECT  [Pol_Id]
      ,[Fnd_Id]
	  From ilp.HitTakeProfitStopLoss
	  Where IGM_Batch_Date = @IGM_Batch_Date And ToTCWB is not null
) A


Drop Table If Exists #MaxCreateDateTime
Select Pol_Id,Fnd_Id,IGM_Batch_Date,Max(Created_DateTime) Created_DateTime Into #MaxCreateDateTime 
From ilp.HitTakeProfitStopLoss 
Where IGM_Batch_Date = @IGM_Batch_Date
Group By Pol_Id,Fnd_Id,IGM_Batch_Date
Order by IGM_Batch_Date

-- 將停利停損觸發資料送往保e發送e-mail
Insert Into TCWB.dbo.HitTakeProfitStopLoss
Select A.[Pol_Id]
      ,A.[Fnd_Id]
      ,A.[IGM_Batch_Date]
      ,A.[Fnd_Crcy]
      ,A.[Nav_Val]
      ,A.[ROI_Non_Div_Fnd]
      ,A.[Stop_Loss_ROI]
      ,A.[Take_Profit_ROI]
      ,A.[Stop_Loss_Nav]
      ,A.[Take_Profit_Nav]
      ,A.[Created_By]
      ,A.[Created_DateTime]
      ,'Batch'
      ,@Update_DateTime
      ,A.[Nav_Date]
From ilp.HitTakeProfitStopLoss A
inner join #HitTakeProfitStopLossDiff B ON A.Pol_Id = B.Pol_Id And A.Fnd_Id = B.Fnd_Id 
inner join #MaxCreateDateTime C ON A.Pol_Id = C.Pol_Id And A.Fnd_Id = C.Fnd_Id And A.IGM_Batch_Date = C.IGM_Batch_Date And a.Created_DateTime = C.Created_DateTime 
Where A.IGM_Batch_Date = @IGM_Batch_Date And ToTCWB is null

-- 將觸發結果由HitTakeProfitStopLoss資料夾移到HitTakeProfitStopLossToTCWB
Update ilp.HitTakeProfitStopLoss
Set ToTCWB = @Update_DateTime, Update_By = 'Batch', Update_DateTime = @Update_DateTime , Memo = ''
From  ilp.HitTakeProfitStopLoss A
inner join  #HitTakeProfitStopLossDiff B ON A.Pol_Id = B.Pol_Id And A.Fnd_Id = B.Fnd_Id 
inner join #MaxCreateDateTime C ON A.Pol_Id = C.Pol_Id And A.Fnd_Id = C.Fnd_Id And A.IGM_Batch_Date = C.IGM_Batch_Date And a.Created_DateTime = C.Created_DateTime 
Where A.IGM_Batch_Date = @IGM_Batch_Date And ToTCWB is null


-- 刪除超過90天的資料
Delete From ilp.HitTakeProfitStopLoss Where DateDiff(day,Created_DateTime,GetDate()) >= 90


	Set @Logs = dbo.fn_Logs(@Logs,'將Stage資料搬移至各正式資料表-結束' )
END Try
BEGIN CATCH


	Set @Logs = dbo.fn_Logs(@Logs,
	'ErrorNumber: ' + Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)+
	'ErrorSeverity: ' +  Convert(varchar,ISNULL(ERROR_SEVERITY(),''))  +char(10)+
	'ErrorState: ' +  Convert(varchar,ISNULL(ERROR_STATE(),''))  +char(10)+
	'ErrorProcedure: ' +  Convert(varchar,ISNULL(ERROR_PROCEDURE(),''))  +char(10)+
	'ErrorLine: ' +  Convert(varchar,ISNULL(ERROR_LINE(),''))  +char(10)+
	'ErrorMessage: ' +  Convert(nvarchar(1000),ISNULL(ERROR_MESSAGE(),''))  +char(10)+
	'ErrorNumber: ' +  Convert(varchar,ISNULL(ERROR_NUMBER(),''))  +char(10)) 
	
	Set @Log_Level = 'Error'
	Select @Logs As 'sp_HitTakeProfitStopLoss  ErrorMessage'

END CATCH
 
	Set @EndDateTime = GetDate();
 
	Set @Logs = dbo.fn_Logs(@Logs,'共耗時:' + dbo.fn_DateTimeDiff(@StartDateTime,@EndDateTime))	 

	Exec sp_WriteLog 'Mutile',@Log_Level,@Caller,@Logs
GO
/****** Object:  StoredProcedure [ilp].[sp_TakeProfitStopLoss_Invalid]    Script Date: 2025/6/25 下午 04:40:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		David Yeh
-- Create date: 2024/09/18
-- Description:	將單位數餘額為0的停利停損設定，改為失效並移至到歷史記錄
-- Exemple: 
-- Exec [ilp].[sp_TakeProfitStopLoss_Invalid]  
-- =============================================

CREATE PROCEDURE [ilp].[sp_TakeProfitStopLoss_Invalid] 
AS
BEGIN 
Declare 
	@Caller nvarchar(30),
	@Logs nvarchar(max),
	@Log_Level varchar(10) = 'Info',
	@StartDateTime datetime,
	@EndDateTime datetime
	Set @Caller = '[ilp].[sp_TakeProfitStopLoss_Invalid]'


	Set @StartDateTime = GetDate();
	Set @Logs = dbo.fn_Logs(@Logs,'sp_TakeProfitStopLoss_Invalid開始時間:' + Convert(varchar(20),@StartDateTime)) 

Insert Into ilp.TakeProfitStopLoss_History
SELECT TPS.Enable 
	  ,TPS.Pol_Id
      ,TPS.Fnd_Id
      ,TPS.Fnd_Crcy
      ,TPS.Stop_Loss_ROI
      ,TPS.Take_Profit_ROI
      ,TPS.Stop_Loss_Nav
      ,TPS.Take_Profit_Nav
	  ,'Y'
	  ,TPS.Created_DateTime
      ,GetDate()
  FROM ilp.TakeProfitStopLoss TPS 
  Left Join ilp.v_SelectTrxnLastInfo LastInfo On TPS.Pol_Id = LastInfo.Pol_Id And  TPS.Fnd_Id = LastInfo.Fnd_Id
  Where 1=1
  And  ISNULL(LastInfo.Current_In,0) = 0


  Delete TPS From ilp.TakeProfitStopLoss TPS
  Left Join ilp.v_SelectTrxnLastInfo LastInfo On TPS.Pol_Id = LastInfo.Pol_Id And  TPS.Fnd_Id = LastInfo.Fnd_Id
  Where 1=1
  And  ISNULL(LastInfo.Current_In,0) = 0

  
	Set @EndDateTime = GetDate();
 
	Set @Logs = dbo.fn_Logs(@Logs,'結束時間:' + Convert(varchar(20),@EndDateTime)) 
	Set @Logs = dbo.fn_Logs(@Logs,'共耗時:' + dbo.fn_DateTimeDiff(@StartDateTime,@EndDateTime))	 

	Exec sp_WriteLog 'Mutile',@Log_Level,@Caller,@Logs

END
GO
EXEC [TILP].sys.sp_addextendedproperty @name=N'DB_DESC', @value=N'PUN2404612 ILP 2.0 UAT資料庫上版' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配息檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TBNDV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'POL_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 類型
欄位說明:
I:InitialPremium
IE:InitialExtraPremium
S:SubPremium
SE:SubExtraPremium' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CDI_TYP_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 給付順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'POL_PAYO_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 日期編號' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CDI_EFF_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CDI_SEQ_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 資產配置順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CDI_ALLOC_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CDI_EFF_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 資產配置比例' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'CDI_ALLOC_PCT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保項' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'DEST_CVG_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 資產配置基金' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP', @level2type=N'COLUMN',@level2name=N'DEST_FND_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'資產配置檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCDSI_ILP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 幣別' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY', @level2type=N'COLUMN',@level2name=N'CRCY_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 3碼幣別' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY', @level2type=N'COLUMN',@level2name=N'CRCY_SYMBL_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: Rounding的小數位數' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY', @level2type=N'COLUMN',@level2name=N'CRCY_SCALE_QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幣別檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TCRCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'參數設定表' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TEDIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'POL_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保項代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CVG_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 日期編號' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當日交易順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_SEQ_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易類別' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_TYP_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: Undo/Reversal的日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_REVRS_PRCES_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 申請交易日期
欄位說明: 客戶申請交易日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_EFF_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易原因' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_REASN_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易系統日
欄位說明: 使用者在系統上執行交易作業所壓的系統日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_PRCES_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易狀態
欄位說明: U、E為交易完成，N為交易未完成' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_UNIT_STAT_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 實際交易金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_CLI_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 費用金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_LOAD_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA', @level2type=N'COLUMN',@level2name=N'CIA_FND_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易主檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 系統日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_PRCES_DT_DITY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'POL_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保項代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CVG_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 日期編號' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當日交易順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_SEQ_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易類別' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_TYP_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: Undo/Reversal的日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_REVRS_PRCES_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 作業日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_EFF_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易原因' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_REASN_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 系統日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_PRCES_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易狀態
欄位說明: U、E為交易完成，N為交易未完成' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_UNIT_STAT_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 實際交易金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_CLI_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 費用金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_LOAD_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity', @level2type=N'COLUMN',@level2name=N'CIA_FND_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易主檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFA_Dity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基金和子公司的紅利申報' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFBND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'POL_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保項代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'CVG_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金名稱' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FND_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 日期編號' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當日交易順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_SEQ_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 作業日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_EFF_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易金額(基金幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_FND_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 費用金額(基金幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_LOAD_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 實際交易金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_ORIG_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 費用金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_ORIG_LOAD_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_XCHNG_CNVR_RT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD', @level2type=N'COLUMN',@level2name=N'FIA_XCHNG_EFF_DTZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易明細檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'POL_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保項代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'CVG_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金名稱' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FND_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 日期編號' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當日交易順序' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_SEQ_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 作業日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_EFF_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易金額(基金幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_FND_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 費用金額(基金幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_LOAD_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 實際交易金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_ORIG_TRXN_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 費用金額(保單幣別)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_ORIG_LOAD_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_XCHNG_CNVR_RT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_CMPLT_DTZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity', @level2type=N'COLUMN',@level2name=N'FIA_XCHNG_EFF_DTZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易明細檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFD_Dity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'POL_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保項代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'CVG_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金名稱' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FND_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 日期編號 
欄位說明:
1.其計算方式為28000000-FIA_EFF_DT,主要目的是加速索引
2.用意用FIA_EFF_DT' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當日交易順序
欄位說明:由999為第1筆,998為第2筆,依此類推' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_SEQ_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易單位類別
欄位說明:固定為01' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_UNIT_TYP_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨值' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_UNIT_PRIC_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易單位數' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_UNIT_QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前累計單位數' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_UNIT_CUM_QTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨值日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT', @level2type=N'COLUMN',@level2name=N'FIA_UNIT_PRIC_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易明細檔(單位數)' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFDUT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 公司代碼' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'CO_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金名稱' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'FND_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱:
欄位說明: 目前Distinct IUTDW25環境，此欄位都是01' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'FNDVL_UNIT_TYP_CD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 1.其計算方式為28000000-FNDVL_EFF_DT,主要目的是加速索引
2.用意用FNDVL_EFF_DT' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'FNDVL_IDT_NUM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_USER_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新時間' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'PREV_UPDT_TS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨值日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'FNDVL_EFF_DT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 賣出淨值' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'SELL_PRIC_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入淨值' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV', @level2type=N'COLUMN',@level2name=N'PURCH_PRIC_AMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'淨值檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TFV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核心排程日期' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TMAST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保單主檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TPOL_ILP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保單幾付檔' , @level0type=N'SCHEMA',@level0name=N'igm', @level1type=N'TABLE',@level1name=N'TPOLP_ILP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 序號
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Seq_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號
欄位說明: FF001、FF002
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金幣別、標的幣別 
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(保單幣別)
欄位說明: 
1. 使用"標的單位數餘額"、"平均淨值"及"平均匯率"計算之
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Round(Round(平均淨值*標的單位數餘額)*平均匯率))
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(標的幣別)
欄位說明: 
1. 使用"標的單位數餘額"、"平均淨值"及"平均匯率"計算之
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Round(平均淨值*標的單位數餘額)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前價值(保單幣別)
計算規則: Round(Round(目前淨值*標的單位數餘額)*目前匯率)
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fnd_Acc_Val_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前價值(標的幣別)
計算規則: Round(目前淨值*標的單位數餘額)
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fnd_Acc_Val_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前價值(當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fnd_Acc_Val_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新淨值
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Nav_Val'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新淨值日期
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Nav_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新匯率
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率(保單幣別換成當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fixing_Rate_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新匯率日期
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fixing_Rate_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的分佈比例' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Fnd_Alloc_Ratio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳戶價值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctVal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 序號
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Seq_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號
欄位說明: FF001、FF002
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金幣別、標的幣別 
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(保單幣別)
欄位說明: 
1. 使用"標的單位數餘額"、"平均淨值"及"平均匯率"計算之
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Round(Round(平均淨值*標的單位數餘額)*平均匯率))
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(標的幣別)
欄位說明: 
1. 使用"標的單位數餘額"、"平均淨值"及"平均匯率"計算之
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Round(平均淨值*標的單位數餘額)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前價值(保單幣別)
計算規則: Round(Round(目前淨值*標的單位數餘額)*目前匯率)
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fnd_Acc_Val_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前價值(標的幣別)
計算規則: Round(目前淨值*標的單位數餘額)
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fnd_Acc_Val_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前價值(當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fnd_Acc_Val_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新淨值
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Nav_Val'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新淨值日期
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Nav_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新匯率
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率(保單幣別換成當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fixing_Rate_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新匯率日期
計算順序：02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fixing_Rate_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的分佈比例' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Fnd_Alloc_Ratio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帳戶價值_暫存' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'AcctValStage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前最新淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Nav_Val'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停損報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Stop_Loss_ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停利報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Take_Profit_ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停損淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Stop_Loss_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停利淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Take_Profit_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Update_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停利停損比對結果' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'HitTakeProfitStopLoss'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Effective_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 序號
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Seq_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易類別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Type_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易原因' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Reason_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易金額' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'UpdatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在途件' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Effective_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 序號
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Seq_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易類別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Type_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易原因' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Reason_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易金額' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'UpdatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保留每一次的計算公式及結果,利於日後查詢
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在途件_暫存' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'InTransitStage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 群組' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 代號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 代號名稱' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 值1' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Val1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 值2' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Val2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 值3' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Val3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 值4' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Val4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 值5' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Val5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 說明' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Type_Descript'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'參數設定表' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'LookUp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼
欄位說明: 10碼數字' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 生效日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Description_Detail', @value=N'1. 預設單一帳戶(S)、母子(衛星)帳戶(M)

2. 目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 回溯實際執行日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Reverse_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別

欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積現金配息/撥回(保單幣別)
計算規則: SUM(Fund Level_基金累計現金配息/撥回(保單幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積現金配息/撥回(當地幣別)
計算規則: SUM(Fund Level_基金累計現金配息/撥回(當地幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積投入成本
計算規則: SUM(Fund Level_累積投入成本(保單幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Acum_Inv_Cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(保單幣別)
計算規則: SUM(Fund Level_淨投入成本(保單幣別))所有標的' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(當地幣別)
計算規則: SUM(Fund Level_淨投入成本(當地幣別))所有標的
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前帳戶價值(保單幣別)
計算規則: SUM(Fund Level_目前帳戶價值(保單幣別))所有標的
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Acct_Value_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前帳戶價值(當地幣別)
計算規則: SUM(Fund Level_目前帳戶價值(當地幣別))所有標的
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Acct_Value_LoaclCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(含息)
計算規則: Round((目前帳戶價值(保單幣別)+累積現金配息/撥回)/淨投入成本-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'ROI_Inv_Div'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(不含息)
計算規則: Round(目前帳戶價值(保單幣別)/淨投入成本-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'ROI_Non_Div'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Update_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保單層' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Policy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼
欄位說明: 10碼數字' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'Description_Detail', @value=N'1. 預設單一帳戶(S)、母子(衛星)帳戶(M)

2. 目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 回溯實際執行日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Reverse_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別

欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積現金配息/撥回(保單幣別)
計算規則: SUM(Fund Level_基金累計現金配息/撥回(保單幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積現金配息/撥回(當地幣別)
計算規則: SUM(Fund Level_基金累計現金配息/撥回(當地幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積投入成本
計算規則: SUM(Fund Level_累積投入成本(保單幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Acum_Inv_Cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(保單幣別)
計算規則: SUM(Fund Level_淨投入成本(保單幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 淨投入成本(當地幣別)
計算規則: SUM(Fund Level_淨投入成本(當地幣別))所有標的
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Net_Alloc_Cost_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前帳戶價值(保單幣別)
計算規則: SUM(Fund Level_目前帳戶價值(保單幣別))所有標的
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Acct_Value_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 目前帳戶價值(當地幣別)
計算規則: SUM(Fund Level_目前帳戶價值(當地幣別))所有標的
計算順序: 02' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Acct_Value_LoaclCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(含息)
計算規則: Round((目前帳戶價值(保單幣別)+累積現金配息/撥回)/淨投入成本-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'ROI_Inv_Div'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(不含息)
計算規則: Round(目前帳戶價值(保單幣別)/淨投入成本-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'ROI_Non_Div'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Update_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保單層_暫存' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'PolicyStage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號
欄位說明: FF001、FF002
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱:交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金幣別、標的幣別 
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(含息)
計算規則:Round((目前帳戶價值(保單幣別)+基金累計現金配息/撥回(保單幣別))/淨投入成本(保單幣別)-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'ROI_Inv_Div_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱:報酬率(不含息)
計算規則: Round(目前帳戶價值(保單幣別)/淨投入成本(保單幣別)-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'ROI_Non_Div_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(含息及累積贖回金額)
計算規則: Round((目前帳戶價值(保單幣別)+基金累計現金配息/撥回(保單幣別)+基金累計贖回金額-部分提領及轉出(保單幣別)) /(基金累計贖回金額-部分提領及轉出(保單幣別)+淨投入成本(保單幣別)) -1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'ROI_Inv_Div_Sur2_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號
欄位說明: FF001、FF002
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱:交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金幣別、標的幣別 
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(含息)
計算規則:Round((目前帳戶價值(保單幣別)+基金累計現金配息/撥回(保單幣別))/淨投入成本(保單幣別)-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'ROI_Inv_Div_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱:報酬率(不含息)
計算規則: Round(目前帳戶價值(保單幣別)/淨投入成本(保單幣別)-1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'ROI_Non_Div_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 報酬率(含息及累積贖回金額)
計算規則: Round((目前帳戶價值(保單幣別)+基金累計現金配息/撥回(保單幣別)+基金累計贖回金額-部分提領及轉出(保單幣別)) /(基金累計贖回金額-部分提領及轉出(保單幣別)+淨投入成本(保單幣別)) -1)
計算順序: 03' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'ROI_Inv_Div_Sur2_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'報酬率_暫存' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'ROIStage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 停利停損設定狀態' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Enable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停損報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Stop_Loss_ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停利報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Take_Profit_ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停損淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Stop_Loss_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停利淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Take_Profit_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 失效
欄位說明: Y: 失效、N:有效
如標的單位數歸0則該筆設定需自動失效' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停利停損設定檔' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 停利停損設定狀態' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Enable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的幣別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停損報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Stop_Loss_ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停利報酬率' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Take_Profit_ROI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停損淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Stop_Loss_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 約定停利淨值' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Take_Profit_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 失效
欄位說明: Y: 失效、N:有效
如標的單位數歸0則該筆設定需自動失效' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Invalid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停利停損設定歷程檔' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TakeProfitStopLoss_History'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易生效日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Effective_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 序號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Seq_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號
欄位說明: FF001、FF002
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易執行日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Process_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易在標的中的排序序號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易類別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Type_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易原因' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Reason_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金幣別、標的幣別 
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易單位數
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易淨值
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易淨值日期
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Nav_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易匯率
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率(保單幣別換成當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Fixing_Rate_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易匯率日期
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Fixing_Rate_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易金額(保單幣別)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易金額(基金幣別)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易金額(當地幣別)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入前單位數餘額
欄位說明: 計算平均淨值/平均匯率時，需確認贖回跟申購交易順序' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Prev_Fnd_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入前平均淨值 
欄位說明: 
1.首筆為0(基金首次交易)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Prev_Avg_Net_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入前平均匯率
欄位說明: 
1.首筆為0(基金首次交易)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Prev_Avg_Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的單位數餘額
欄位說明：累計所有交易後的單位數
計算規則：Sum(當次交易單位數)，申購為+/贖回為-
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Current_In'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 平均淨值
欄位說明：如有申購交易時，就會啟動重新計算平均淨值
計算規則：Round((買入前單位數餘額*買入前平均淨值+當次交易單位數*當次交易淨值)/(買入前單位數餘額+當次交易單位數))
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Avg_Nav_Val'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 平均匯率
欄位說明：如有申購交易時，就會啟動重新計算平均匯率
計算規則：Round((買入前單位數餘額*買入前平均淨值*買入前平均匯率+當次交易單位數*當次交易淨值*當次交易匯率)/(買入前單位數餘額*買入前平均淨值+當次交易單位數*當次交易淨值))
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Avg_Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積投入成本(保單幣別)
欄位說明: 
1. 累積申購該標的之金額(買入/轉入/配息或撥回再投入/加值給付)，不包含贖回標的之金額
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Sum(交易金額(保單幣別))，考慮所有申購
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Alloc_Cost_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積投入成本(標的幣別)
欄位說明: 
1. 累積申購該標的之金額(買入/轉入/配息或撥回再投入/加值給付)，不包含贖回標的之金額
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Sum(交易金額(標的幣別))，考慮所有申購交易
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Alloc_Cost_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計申購單位數
欄位說明：
1. 累積申購該標的之單位數(買入/轉入/配息或撥回再投入/加值給付)，不包含贖回標的之單位數
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(當次交易單位數)，考慮所有申購
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Buy_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 贖回損益
欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回損益
計算規則：交易金額(保單幣別)-贖回平均成本
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Sur_Gain_Loss'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 贖回平均成本
欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回平均成本
計算規則：Round(Round(當次交易單位數(或異動單位數)*平均淨值)*平均匯率)
備註：平均淨值/平均匯率則為抓取該筆贖回交易前之數值
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Sur_Avg_Cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 贖回報酬率
欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回報酬率
計算規則：Round(贖回損益/贖回平均成本)
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Sur_ROI_Non_Div_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回(保單幣別)
欄位說明: 
1. 如現金配息/撥回後，保戶有申請將該筆金額再投入，也是要計入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01
備註：當標的單位數餘額為0，後續有在申購時，則基金累計現金配息/撥回(保單幣別)要重新累積。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回(標的幣別)
欄位說明: 
1. 如現金配息/撥回後，保戶有申請將該筆金額再投入，也是要計入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回(當地幣別)
欄位說明: 
1. 如現金配息/撥回後，保戶有申請將該筆金額再投入，也是要計入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回再投入(保單幣別)
欄位說明: 
1. 僅考慮配息/撥回再投入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Reinv_Div_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回再投入(標的幣別)
欄位說明: 
1. 僅考慮配息/撥回再投入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Reinv_Div_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額(保單幣別)
欄位說明: 
1. 部分提領、轉出、解約
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅考慮部分提領、轉出、解約之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Sur_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額(標的幣別)
欄位說明: 
1. 部分提領、轉出、解約
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算說明：Sum(交易金額(標的幣別))，僅考慮部分提領、轉出、解約之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Sur_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額-部分提領及轉出(保單幣別)
欄位說明: 
1. 部分提領、轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅考慮部分提領、轉出之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Sur2_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額-部分提領及轉出(標的幣別)
欄位說明: 
1. 部分提領、轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算說明：Sum(交易金額(標的幣別))，僅考慮部分提領、轉出之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Sur2_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計申購費用(保單幣別)
欄位說明：如投資標的有收取申購費用，目前僅ETF有收取
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Subscription_Fee_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計申購回費用(標的幣別)
欄位說明：如投資標的有收取申購費用，目前僅ETF有收取
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Subscription_Fee_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉入金額(保單幣別)
欄位說明：
1. 投資標的轉換之轉入(已扣除轉換、ETF申購費用)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅投資標的轉換(轉入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉入金額(標的幣別)
欄位說明：
1. 投資標的轉換之轉入(已扣除轉換、ETF申購費用)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(標的幣別))，僅投資標的轉換(轉入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉換費用(保單幣別)
欄位說明：
1. 投資標的轉換所收取之費用
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Fee_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉換費用(標的幣別)
欄位說明：
1. 投資標的轉換所收取之費用
2. 當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Fee_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉出金額(保單幣別)
欄位說明：
1. 投資標的轉換之轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅投資標的轉換(轉出)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Switch_Out_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉出金額(標的幣別)
欄位說明：
1. 投資標的轉換之轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(標的幣別))，僅投資標的轉換(轉出)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Switch_Out_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保障費用(保單幣別)
欄位說明：每月扣除額(保單管理費&保險成本)
計算規則：Sum(交易金額(保單幣別))，僅考慮每月扣除額之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Adm_Fee_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保障費用(標的幣別)
欄位說明：每月扣除額(保單管理費&保險成本)
計算規則：Sum(交易金額(標的幣別))，僅考慮每月扣除額之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Adm_Fee_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計附約保險成本(標的幣別)
欄位說明：適用於內扣式附約，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Rider_ROI_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計附約保險成本(標的幣別)
欄位說明：適用於內扣式附約，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Rider_ROI_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保證費用(保單幣別)
欄位說明：適用於GMXB商品，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Guad_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保證費用(標的幣別)
欄位說明：適用於GMXB商品，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Guad_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計加值給付金額(保單幣別)
欄位說明：
1. 累計加值給付金配置於該檔標的之金額(保單幣別)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅考慮加值給付金(投入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Loyalty_Bonus_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計加值給付金額(標的幣別)
欄位說明：
1. 累計加值給付金配置於該檔標的之金額(標的幣別)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(標的幣別))，僅考慮加值給付金(投入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Acum_Loyalty_Bonus_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢

' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易層' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'Trxn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單號碼' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Pol_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易生效日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Effective_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 投入類別
欄位說明: 預設單一帳戶(S)、母子(衛星)帳戶(M)，目前公司皆為單一帳戶' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Alloc_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 序號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Seq_No'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的代號
欄位說明: FF001、FF002
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Fnd_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 核心批次日
欄位說明: TMAST的BTCH_PRCES_DT' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'IGM_Batch_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易執行日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Process_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易完成日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Complete_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 回溯實際執行日' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Reverse_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易在標的中的排序序號' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易類別' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Type_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 交易原因' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Reason_Cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保單幣別
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Pol_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金幣別、標的幣別 
欄位說明: NTD、USD
欄位說明: 目前公司僅有NTD/USD收付幣別，未來會新增加其他外幣收付幣別，所以避免用非NTD則USD這種寫法。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Fnd_Crcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易單位數
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易淨值
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易淨值日期
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Nav_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易匯率
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 匯率(保單幣別換成當地幣別)' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Fixing_Rate_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易匯率日期
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Fixing_Rate_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易金額(保單幣別)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易金額(基金幣別)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 當次交易金額(當地幣別)
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Trxn_Amt_LocalCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入前單位數餘額
欄位說明: 計算平均淨值/平均匯率時，需確認贖回跟申購交易順序' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Prev_Fnd_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入前平均淨值 
欄位說明: 
1.首筆為0(基金首次交易)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Prev_Avg_Net_Nav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 買入前平均匯率
欄位說明: 
1.首筆為0(基金首次交易)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Prev_Avg_Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 標的單位數餘額
欄位說明：累計所有交易後的單位數
計算規則：Sum(當次交易單位數)，申購為+/贖回為-
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Current_In'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 平均淨值
欄位說明：如有申購交易時，就會啟動重新計算平均淨值
計算規則：Round((買入前單位數餘額*買入前平均淨值+當次交易單位數*當次交易淨值)/(買入前單位數餘額+當次交易單位數))
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Avg_Nav_Val'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 平均匯率
欄位說明：如有申購交易時，就會啟動重新計算平均匯率
計算規則：Round((買入前單位數餘額*買入前平均淨值*買入前平均匯率+當次交易單位數*當次交易淨值*當次交易匯率)/(買入前單位數餘額*買入前平均淨值+當次交易單位數*當次交易淨值))
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Avg_Fixing_Rate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積投入成本(保單幣別)
欄位說明: 
1. 累積申購該標的之金額(買入/轉入/配息或撥回再投入/加值給付)，不包含贖回標的之金額
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Sum(交易金額(保單幣別))，考慮所有申購
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Alloc_Cost_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 累積投入成本(標的幣別)
欄位說明: 
1. 累積申購該標的之金額(買入/轉入/配息或撥回再投入/加值給付)，不包含贖回標的之金額
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則: Sum(交易金額(標的幣別))，考慮所有申購交易
計算順序: 01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Alloc_Cost_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計申購單位數
欄位說明：
1. 累積申購該標的之單位數(買入/轉入/配息或撥回再投入/加值給付)，不包含贖回標的之單位數
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(當次交易單位數)，考慮所有申購
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Buy_Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 贖回損益
欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回損益
計算規則：交易金額(保單幣別)-贖回平均成本
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Sur_Gain_Loss'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 贖回平均成本
欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回平均成本
計算規則：Round(Round(當次交易單位數(或異動單位數)*平均淨值)*平均匯率)
備註：平均淨值/平均匯率則為抓取該筆贖回交易前之數值
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Sur_Avg_Cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 贖回報酬率
欄位說明: 當交易類別為部分提領、解約或轉出時，會計算該贖回報酬率
計算規則：Round(贖回損益/贖回平均成本)
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Sur_ROI_Non_Div_Fnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回(保單幣別)
欄位說明: 
1. 如現金配息/撥回後，保戶有申請將該筆金額再投入，也是要計入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01
備註：當標的單位數餘額為0，後續有在申購時，則基金累計現金配息/撥回(保單幣別)要重新累積。' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回(標的幣別)
欄位說明: 
1. 如現金配息/撥回後，保戶有申請將該筆金額再投入，也是要計入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Div_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回再投入(保單幣別)
欄位說明: 
1. 僅考慮配息/撥回再投入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Reinv_Div_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計現金配息/撥回再投入(標的幣別)
欄位說明: 
1. 僅考慮配息/撥回再投入
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Reinv_Div_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額(保單幣別)
欄位說明: 
1. 部分提領、轉出、解約
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅考慮部分提領、轉出、解約之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Sur_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額(標的幣別)
欄位說明: 
1. 部分提領、轉出、解約
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算說明：Sum(交易金額(標的幣別))，僅考慮部分提領、轉出、解約之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Sur_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額-部分提領及轉出(保單幣別)
欄位說明: 
1. 部分提領、轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅考慮部分提領、轉出之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Sur2_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計贖回金額-部分提領及轉出(標的幣別)
欄位說明: 
1. 部分提領、轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算說明：Sum(交易金額(標的幣別))，僅考慮部分提領、轉出之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Sur2_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計申購費用(保單幣別)
欄位說明：如投資標的有收取申購費用，目前僅ETF有收取
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Subscription_Fee_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計申購回費用(標的幣別)
欄位說明：如投資標的有收取申購費用，目前僅ETF有收取
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Subscription_Fee_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉入金額(保單幣別)
欄位說明：
1. 投資標的轉換之轉入(已扣除轉換、ETF申購費用)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅投資標的轉換(轉入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉入金額(標的幣別)
欄位說明：
1. 投資標的轉換之轉入(已扣除轉換、ETF申購費用)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(標的幣別))，僅投資標的轉換(轉入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉換費用(保單幣別)
欄位說明：
1. 投資標的轉換所收取之費用
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Fee_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉換費用(標的幣別)
欄位說明：
1. 投資標的轉換所收取之費用
2. 當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Switch_In_Fee_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉出金額(保單幣別)
欄位說明：
1. 投資標的轉換之轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅投資標的轉換(轉出)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Switch_Out_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計轉出金額(標的幣別)
欄位說明：
1. 投資標的轉換之轉出
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(標的幣別))，僅投資標的轉換(轉出)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Switch_Out_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保障費用(保單幣別)
欄位說明：每月扣除額(保單管理費&保險成本)
計算規則：Sum(交易金額(保單幣別))，僅考慮每月扣除額之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Adm_Fee_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保障費用(標的幣別)
欄位說明：每月扣除額(保單管理費&保險成本)
計算規則：Sum(交易金額(標的幣別))，僅考慮每月扣除額之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Adm_Fee_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計附約保險成本(保單幣別)
欄位說明：適用於內扣式附約，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Rider_ROI_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計附約保險成本(標的幣別)
欄位說明：適用於內扣式附約，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Rider_ROI_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保證費用(保單幣別)
欄位說明：適用於GMXB商品，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Guad_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計保證費用(標的幣別)
欄位說明：適用於GMXB商品，目前暫時用不到
計算規則：TBD
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Guad_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計加值給付金額(保單幣別)
欄位說明：
1. 累計加值給付金配置於該檔標的之金額(保單幣別)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(保單幣別))，僅考慮加值給付金(投入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Loyalty_Bonus_Amt_PolCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 基金累計加值給付金額(標的幣別)
欄位說明：
1. 累計加值給付金配置於該檔標的之金額(標的幣別)
2.當標的單位數餘額為0，後續有再申購時，則該值將歸0重新計算
計算規則：Sum(交易金額(標的幣別))，僅考慮加值給付金(投入)之交易
計算順序：01' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Acum_Loyalty_Bonus_Amt_FndCrcy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 保留計算公式
欄位名稱: 保留每一次的計算公式及結果,利於日後查詢

' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Cal_Fomula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立人員ID' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Created_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 建立資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Created_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 異動ID
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Updated_By'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名稱: 更新資料日期時間
' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage', @level2type=N'COLUMN',@level2name=N'Update_DateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易層_暫存' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage'
GO
EXEC sys.sp_addextendedproperty @name=N'SerialNo', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'ilp', @level1type=N'TABLE',@level1name=N'TrxnStage'
GO
USE [master]
GO
ALTER DATABASE [TILP] SET  READ_WRITE 
GO
