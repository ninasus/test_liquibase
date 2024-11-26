-- Create Database Lock Table
CREATE TABLE DATABASECHANGELOGLOCK (ID int NOT NULL, LOCKED bit NOT NULL, LOCKGRANTED datetime2(3), LOCKEDBY nvarchar(255), CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID))
GO

-- Initialize Database Lock Table
DELETE FROM DATABASECHANGELOGLOCK
GO

INSERT INTO DATABASECHANGELOGLOCK (ID, LOCKED) VALUES (1, 0)
GO

-- Lock Database
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '38281133911c (172.17.0.2)', LOCKGRANTED = GETDATE() WHERE ID = 1 AND LOCKED = 0
GO

-- Create Database Change Log Table
CREATE TABLE DATABASECHANGELOG (ID nvarchar(255) NOT NULL, AUTHOR nvarchar(255) NOT NULL, FILENAME nvarchar(255) NOT NULL, DATEEXECUTED datetime2(3) NOT NULL, ORDEREXECUTED int NOT NULL, EXECTYPE nvarchar(10) NOT NULL, MD5SUM nvarchar(35), DESCRIPTION nvarchar(255), COMMENTS nvarchar(255), TAG nvarchar(255), LIQUIBASE nvarchar(20), CONTEXTS nvarchar(255), LABELS nvarchar(255), DEPLOYMENT_ID nvarchar(10))
GO

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: db.testTable.changelog.xml
-- Ran at: 11/26/24, 9:40 AM
-- Against: ninasus@jdbc:sqlserver://10.87.16.30:1433;connectRetryInterval=10;connectRetryCount=1;maxResultBuffer=-1;sendTemporalDataTypesAsStringForBulkCopy=true;delayLoadingLobs=true;useFmtOnly=false;cacheBulkCopyMetadata=false;useBulkCopyForBatchInsert=false;cancelQueryTimeout=-1;sslProtocol=TLS;calcBigDecimalPrecision=false;useDefaultJaasConfig=false;jaasConfigurationName=SQLJDBCDriver;statementPoolingCacheSize=0;serverPreparedStatementDiscardThreshold=10;enablePrepareOnFirstPreparedStatementCall=false;fips=false;socketTimeout=0;authentication=NotSpecified;authenticationScheme=nativeAuthentication;xopenStates=false;datetimeParameterType=datetime2;sendTimeAsDatetime=true;replication=false;trustStoreType=JKS;trustServerCertificate=true;TransparentNetworkIPResolution=true;iPAddressPreference=IPv4First;serverNameAsACE=false;sendStringParametersAsUnicode=true;selectMethod=direct;responseBuffering=adaptive;queryTimeout=-1;packetSize=8000;multiSubnetFailover=false;loginTimeout=30;lockTimeout=-1;lastUpdateCount=true;useDefaultGSSCredential=false;prepareMethod=prepexec;encrypt=True;disableStatementPooling=true;databaseName=emptyDb;columnEncryptionSetting=Disabled;applicationName=Microsoft JDBC Driver for SQL Server;applicationIntent=readwrite;
-- Liquibase version: 4.30.0
-- *********************************************************************

USE emptyDb;
GO

-- Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1
GO

