# Data Migration Process: General Information {#_ddff01df-c86f-4cd0-8bd0-7ab7ee0a8e64 .concept}

Data migration is a crucial process that is performed before the company goes live on a new ERP platform. The process involves moving data from the old system to the new one while ensuring data integrity and minimizing disruptions.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Plan the needed steps of data migration based on your organization’s business requirements
-   Create a company in Acumatica ERP that is ready for the migration of financial data from the legacy system
-   Prepare the import scenarios and the data to be uploaded

## Applicable Scenario { .section}

You are planning to migrate data from a legacy system before you start to use Acumatica ERP as an ERP system. You want to prepare carefully for this process to keep the history of company operations that preceded the transition to new system and to ensure the continuity of business processes.

## Configuration of the Basic System { .section}

Prior to data migration, you need to plan and configure the company’s structure and perform the basic configuration in Acumatica ERP based on the business requirements of the company. To do this, you perform the following general steps:

1.  You prepare the instance, enable the features, and activate the license, as described in [Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md).
2.  You configure the company’s structure in the system, as described in [Preparing a Company for Implementation](../ImplementationGuide/config_Mapref_Basic_Company.md).
3.  You configure the basic financial settings in the system, as described in [Implementing Basic Financials](../ImplementationGuide/config_GL_Mapref.md).

    **Attention:** The complete set of configuration tasks depends on the company's business processes. For more information about configuring other system areas, see [Acumatica ERP Implementation Guide](../ImplementationGuide/Implementation_Guide.md).


## Data Preparation and Migration Stages { .section}

Once the tenant is ready, you perform data migration in the following general steps:

1.  You assess the legacy ERP system and identify data to be migrated.
2.  You extract data from the legacy ERP system, taking into account data integrity, quality, and compatibility with the new system. This process involves identifying and cleansing duplicate, outdated, or irrelevant data. You ensure that all existing information is accurate and up-to-date. Also, you remove incorrect, redundant, or out-of-date data \(such as discontinued vendors, contacts that are no longer with the company, and discontinued products\).
3.  You transform and map the extracted data to fit the structure and format of the new ERP system \(that is, prepare the data providers that will be used with the import scenarios\).
4.  You prepare import scenarios and test them with sample data to ensure that all needed information is included and mapped correctly.
5.  You transfer the data to the new system.
6.  You cross-check the uploaded data to ensure completeness, correctness, and integrity. This involves running test scenarios, reconciling data, and resolving any discrepancies or errors to ensure that legacy data has been moved and is accessible. For recommendation on data verification, see [Data Migration Process: Recommendations for Data Verification](DataMigration_DM_Process_Data_Crosscheck.md).

Once the data migration is complete and the data is verified for consistency, the system is ready to use.

## Preparation of Import Scenarios { .section}

To speed up data migration, you use import scenarios to import business accounts and financial data other than trial balances. An import scenario is a set of instructions for the system that specifies the actions to be executed for each record of the imported data as if the data is being entered manually on the specified form.

To import data by using an import scenario, you do the following:

1.  You convert the data in the external format to data in the format of Acumatica ERP. For this purpose, on the [Data Providers](SM_20_60_15.md) \(SM206015\) form, you create a data provider. The data provider defines the data source type \(Excel\), the name of the spreadsheet that should be used for the data import, the list of the columns on the spreadsheet, and the data type of each column.
2.  On the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, you prepare the import scenario that uses the data provider. An import scenario defines the mapping of the source columns to the destination fields of the entry in the system. The **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) form holds the list of steps of the scenario that imports the records into the system as if each record is being manually entered through the corresponding data entry form.

    Acumatica ERP provides a set of predefined import scenarios that you can use to migrate financial data, adapting them for your needs. For more information, see [Predefined Import Scenarios for Migrating Financial Data](AR__con_Predefined_Import_Scenarios.md).

3.  On the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, you prepare and import the data. For each imported record, the system executes the mapping steps one after another in the order in which they are listed in the executed import scenario on the [Import Scenarios](SM_20_60_25.md) form.

**Parent topic:**[Preparing System to Migrating Data](../UserGuide/DataMigration_DM_Process_Mapref.md)

