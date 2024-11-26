-- Lock Database
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '38281133911c (172.17.0.2)', LOCKGRANTED = GETDATE() WHERE ID = 1 AND LOCKED = 0
GO

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: db.person.changelog.xml
-- Ran at: 11/26/24, 9:40 AM
-- Against: ninasus@jdbc:sqlserver://10.87.16.30:1433;connectRetryInterval=10;connectRetryCount=1;maxResultBuffer=-1;sendTemporalDataTypesAsStringForBulkCopy=true;delayLoadingLobs=true;useFmtOnly=false;cacheBulkCopyMetadata=false;useBulkCopyForBatchInsert=false;cancelQueryTimeout=-1;sslProtocol=TLS;calcBigDecimalPrecision=false;useDefaultJaasConfig=false;jaasConfigurationName=SQLJDBCDriver;statementPoolingCacheSize=0;serverPreparedStatementDiscardThreshold=10;enablePrepareOnFirstPreparedStatementCall=false;fips=false;socketTimeout=0;authentication=NotSpecified;authenticationScheme=nativeAuthentication;xopenStates=false;datetimeParameterType=datetime2;sendTimeAsDatetime=true;replication=false;trustStoreType=JKS;trustServerCertificate=true;TransparentNetworkIPResolution=true;iPAddressPreference=IPv4First;serverNameAsACE=false;sendStringParametersAsUnicode=true;selectMethod=direct;responseBuffering=adaptive;queryTimeout=-1;packetSize=8000;multiSubnetFailover=false;loginTimeout=30;lockTimeout=-1;lastUpdateCount=true;useDefaultGSSCredential=false;prepareMethod=prepexec;encrypt=True;disableStatementPooling=true;databaseName=test1;columnEncryptionSetting=Disabled;applicationName=Microsoft JDBC Driver for SQL Server;applicationIntent=readwrite;
-- Liquibase version: 4.30.0
-- *********************************************************************

USE test1;
GO

-- Changeset db.person.changelog.xml::1732614034851-1::root (generated)
CREATE TABLE person (id int NOT NULL, name varchar(50) NOT NULL, surname varchar(50) NOT NULL, age smallint NOT NULL, CONSTRAINT PK_person PRIMARY KEY (id));
GO

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('1732614034851-1', 'root (generated)', 'db.person.changelog.xml', GETDATE(), 1, '9:69f97412a82e72eb7911202209b711d8', 'createTable tableName=person', '', 'EXECUTED', NULL, NULL, '4.30.0', '2614037661')
GO

-- Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1
GO

