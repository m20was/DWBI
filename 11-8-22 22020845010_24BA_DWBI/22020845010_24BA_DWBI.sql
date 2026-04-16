create database manny;
if OBJECT_ID('[dbo].[fraudTrans]','U') is not null
drop table [dbo].[fraudTrans]

CREATE TABLE [fraudTrans] (
    [Row ID] int, 
    [step] varchar(50),
    [type] varchar(50),
    [amount] varchar(50),
    [nameOrig] varchar(50),
    [oldbalanceOrg] varchar(50),
    [newbalanceOrig] varchar(50),
    [nameDest] varchar(50),
    [oldbalanceDest] varchar(50),
    [newbalanceDest] varchar(50),
    [isFraud] varchar(50),
    [isFlaggedFraud] varchar(50)
)

INSERT INTO [dbo].[fraudTrans]
           ([Row ID],
		    [step],
            [type],
            [amount],
            [nameOrig],
            [oldbalanceOrg],
            [newbalanceOrig],
            [nameDest],
            [oldbalanceDest],
            [newbalanceDest],
            [isFraud],
           [isFlaggedFraud])

SELECT 
			[Row ID],
			[step],
			[type],
			[amount],
			[nameOrig],
			[oldbalanceOrg],
			[newbalanceOrig],
			[nameDest],
			[oldbalanceDest],
			[newbalanceDest],
			[isFraud],
			[isFlaggedFraud]
  FROM [manny].[dbo].[fraudTrans]