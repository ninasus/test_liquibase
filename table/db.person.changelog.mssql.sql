<?xml version="1.1" encoding="UTF-8" standalone="no"?>
<databaseChangeLog xmlns="http://www.liquibase.org/xml/ns/dbchangelog" xmlns:ext="http://www.liquibase.org/xml/ns/dbchangelog-ext" xmlns:pro="http://www.liquibase.org/xml/ns/pro" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog-ext http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-ext.xsd http://www.liquibase.org/xml/ns/pro http://www.liquibase.org/xml/ns/pro/liquibase-pro-latest.xsd http://www.liquibase.org/xml/ns/dbchangelog http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-latest.xsd">
    <changeSet author="root (generated)" id="1732562236765-1">
        <createTable schemaName="dbo" tableName="person">
            <column computed="false" name="id" type="int">
                <constraints nullable="false" primaryKey="true" primaryKeyName="PK_person"/>
            </column>
            <column computed="false" name="name" type="varchar(50)">
                <constraints nullable="false"/>
            </column>
            <column computed="false" name="surname" type="varchar(50)">
                <constraints nullable="false"/>
            </column>
            <column computed="false" name="age" type="smallint">
                <constraints nullable="false"/>
            </column>
        </createTable>
    </changeSet>
</databaseChangeLog>
