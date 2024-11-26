-- Lock Database
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = '38281133911c (172.17.0.2)', LOCKGRANTED = GETDATE() WHERE ID = 1 AND LOCKED = 0
GO

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: db.car.changelog.xml
-- Ran at: 11/26/24, 9:40 AM
-- Against: ninasus@jdbc:sqlserver://10.87.16.30:1433;connectRetryInterval=10;connectRetryCount=1;maxResultBuffer=-1;sendTemporalDataTypesAsStringForBulkCopy=true;delayLoadingLobs=true;useFmtOnly=false;cacheBulkCopyMetadata=false;useBulkCopyForBatchInsert=false;cancelQueryTimeout=-1;sslProtocol=TLS;calcBigDecimalPrecision=false;useDefaultJaasConfig=false;jaasConfigurationName=SQLJDBCDriver;statementPoolingCacheSize=0;serverPreparedStatementDiscardThreshold=10;enablePrepareOnFirstPreparedStatementCall=false;fips=false;socketTimeout=0;authentication=NotSpecified;authenticationScheme=nativeAuthentication;xopenStates=false;datetimeParameterType=datetime2;sendTimeAsDatetime=true;replication=false;trustStoreType=JKS;trustServerCertificate=true;TransparentNetworkIPResolution=true;iPAddressPreference=IPv4First;serverNameAsACE=false;sendStringParametersAsUnicode=true;selectMethod=direct;responseBuffering=adaptive;queryTimeout=-1;packetSize=8000;multiSubnetFailover=false;loginTimeout=30;lockTimeout=-1;lastUpdateCount=true;useDefaultGSSCredential=false;prepareMethod=prepexec;encrypt=True;disableStatementPooling=true;databaseName=test1;columnEncryptionSetting=Disabled;applicationName=Microsoft JDBC Driver for SQL Server;applicationIntent=readwrite;
-- Liquibase version: 4.30.0
-- *********************************************************************

USE test1;
GO

-- Changeset db.car.changelog.xml::1732614029182-1::root (generated)
CREATE TABLE car (id int NOT NULL, mark varchar(250) NOT NULL, prod_year smallint NOT NULL, model varchar(250) NOT NULL, ownerId int NOT NULL, color varchar(250), CONSTRAINT PK_car PRIMARY KEY (id));
GO

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('1732614029182-1', 'root (generated)', 'db.car.changelog.xml', GETDATE(), 1, '9:91bd256b898fc3633e32cb431ca18987', 'createTable tableName=car', '', 'EXECUTED', NULL, NULL, '4.30.0', '2614031990')
GO

-- Changeset db.car.changelog.xml::1732614029182-2::root (generated)
ALTER TABLE car ADD CONSTRAINT FK_car_car FOREIGN KEY (ownerId) REFERENCES person (id) ON UPDATE NO ACTION ON DELETE NO ACTION;
GO

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('1732614029182-2', 'root (generated)', 'db.car.changelog.xml', GETDATE(), 2, '9:1c02419556d124fb3ee5935ffd995216', 'addForeignKeyConstraint baseTableName=car, constraintName=FK_car_car, referencedTableName=person', '', 'EXECUTED', NULL, NULL, '4.30.0', '2614031990')
GO

-- Release Database Lock
UPDATE DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1
GO

