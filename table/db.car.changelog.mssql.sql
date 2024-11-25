<?xml version="1.1" encoding="UTF-8" standalone="no"?>
<databaseChangeLog xmlns="http://www.liquibase.org/xml/ns/dbchangelog" xmlns:ext="http://www.liquibase.org/xml/ns/dbchangelog-ext" xmlns:pro="http://www.liquibase.org/xml/ns/pro" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog-ext http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-ext.xsd http://www.liquibase.org/xml/ns/pro http://www.liquibase.org/xml/ns/pro/liquibase-pro-latest.xsd http://www.liquibase.org/xml/ns/dbchangelog http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-latest.xsd">
    <changeSet author="root (generated)" id="1732562224645-1">
        <createTable schemaName="dbo" tableName="car">
            <column computed="false" name="id" type="int">
                <constraints nullable="false" primaryKey="true" primaryKeyName="PK_car"/>
            </column>
            <column computed="false" name="mark" type="varchar(250)">
                <constraints nullable="false"/>
            </column>
            <column computed="false" name="prod_year" type="smallint">
                <constraints nullable="false"/>
            </column>
            <column computed="false" name="model" type="varchar(250)">
                <constraints nullable="false"/>
            </column>
            <column computed="false" name="ownerId" type="int">
                <constraints nullable="false"/>
            </column>
            <column computed="false" name="color" type="varchar(250)"/>
        </createTable>
    </changeSet>
    <changeSet author="root (generated)" id="1732562224645-2">
        <addForeignKeyConstraint baseColumnNames="ownerId" baseTableName="car" baseTableSchemaName="dbo" constraintName="FK_car_car" deferrable="false" initiallyDeferred="false" onDelete="NO ACTION" onUpdate="NO ACTION" referencedColumnNames="id" referencedTableName="person" referencedTableSchemaName="dbo" validate="true"/>
    </changeSet>
</databaseChangeLog>
