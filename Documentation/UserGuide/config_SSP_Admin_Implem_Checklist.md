# Configuring the Self-Service Portal: Implementation Checklist {#_a09e21e4-bb1c-40ad-822d-7cae32b07042 .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing cases in the Acumatica Self-Service Portal, and to understand \(and change, if needed\) the settings that affect the workflow of case management.

## Mandatory Configuration in Acumatica ERP { .section}

To ensure that the basic CRM configuration in Acumatica ERP for managing cases in Acumatica Self-Service Portal has been implemented properly, make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|The CRM functionality has been implemented, as described in [Configuring CRM Functionality: General Information](../ImplementationGuide/config_CRM_Basic_GeneralInfo.md).|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
-   *Customer Portal*. This feature gives users the ability to use the Acumatica Self-Service Portal.
-   *Case Management on Portal* in the *Customer Portal* group of features. This feature gives your customers the ability to add cases and track case processing through the Self-Service Portal.
-   *Financials on Portal* in the *Customer Portal* group of features. This feature gives the Self-Service Portal users \(customers\) to view the documents associated with their company accounts in Acumatica ERP.

|
|[Activate License](SM_20_15_10.md) \(SM201510\)|A license for the Self-Service Portal instance has been activated, as described in [Configuring the Self-Service Portal: To License the Self-Service Portal Instance](config_SSP_Admin_To_License_SSP_Instance.md).|
|[Contact Classes](CR_20_50_00.md) \(CR205000\)|The needed contact classes have been created with the necessary settings, as described in [Defining Contact Classes](CRM_Contact_Classes_Mapref.md).|
|[Business Account Classes](CR_20_80_00.md) \(CR208000\)|The needed business account classes have been created with the necessary settings, as described in [Defining Business Account Classes](CRM_Bus_Account_Classes_Mapref.md).|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|On the **General Settings** tab, numbering sequences have been saved and default classes with the necessary settings and attributes have been specified.|
|[Contacts](CR_30_20_00.md) \(CR302000\)|The contact records for customer representatives and potential clients have been created and user accounts for these contacts have been created and assigned the needed roles, as described in [Creating Contacts](CRM_Sales_Creating_Contacts_Mapref.md).|
|[Business Accounts](CR_30_30_00.md) \(CR303000\)|Business account records have been created, as described in [Creating Business Accounts](CRM_Sales_Creating_Bus_Accounts_Mapref.md).|
|[Employee Classes](EP_20_20_00.md) \(EP202000\)|The needed employee classes have been created with the necessary settings and attributes.|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system.|
|[User Roles](SM_20_10_05.md) \(SM201005\)|The needed roles have been created and assigned to the needed user accounts, as described in [Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees](config_SSP_Admin_Managing_Access_to_SSP_Create_Roles_for_Customer_Employees.md).|
|[User Types](EP_20_25_00.md) \(EP202500\)|The needed user type has been created and assigned to the needed roles as described in [Managing Access to the Self-Service Portal: To Create User Types for User Accounts](config_SSP_Admin_Managing_Access_to_SSP_To_Create_User_Type_SSP.md).|
|[Users](SM_20_10_10.md) \(SM201010\)|User accounts have been created for employees and customer contacts as described in [Managing Access to the Self-Service Portal: To Create User Accounts for Contacts](config_SSP_Admin_Access_to_SSP_Add_User_Account_for_Contact.md).|

## Mandatory Configuration in the Acumatica Self-Service Portal { .section}

Make sure that on the **General Settings** tab of the Portal Preferences \(SP800000\) form, the general settings of the Self-Service Portal have been specified as described in [Configuring the Self-Service Portal: To Specify the General Settings of the Self-Service Portal](config_SSP_Admin_To_Specify_General_Settings_of_Instance.md).

**Parent topic:**[Configuring the Self-Service Portal](../UserGuide/config_SSP_Admin_Mapref.md)

