# Configuring Case Management in the Self-Service Portal: Implementation Checklist {#_d6022adc-8fea-4754-b0fd-fca2e6c036ae .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing cases in the Acumatica Self-Service Portal, and to understand \(and change, if needed\) the settings that affect theworkflow of case management.

## Mandatory Configuration in Acumatica ERP { .section}

To ensure that the basic CRM configuration in Acumatica ERP for managing cases in the Acumatica Self-Service Portal has been implemented properly, make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|The following tasks have been performed: -   The CRM functionality has been implemented, as described in [Implementing Customer Relationship Management](../ImplementationGuide/config_Mapref_CRM.md).
-   The Acumatica Self-Service Portal has been configured as described in [Configuring the Self-Service Portal](config_SSP_Admin_Mapref.md).

|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
-   *Customer Portal*. This feature gives users the ability to use the Acumatica Self-Service Portal.
-   *Case Management on Portal* in the *Customer Portal* group of features. This feature gives your customers the ability to add cases and track case processing through the Self-Service Portal.
-   *Financials on Portal* in the *Customer Portal* group of features. This feature gives the Self-Service Portal users \(customers\) to view the documents associated with their company accounts in Acumatica ERP.

|
|[Case Classes](CR_20_60_00.md) \(CR206000\)|The needed case classes have been created with the necessary settings, as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md).|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|On the **General Settings** tab, numbering sequences have been saved and default classes with the necessary settings and attributes have been specified.|

## Mandatory Configuration in the Acumatica Self-Service Portal { .section}

Make sure that on the **General Settings** tab of the Portal Preferences \(SP800000\) form, the settings for case management have been specified as described in [Configuring Case Management in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Configuring_Case_Management_in_SSP_Implem_Activity.md).

## Recommended Configuration in Acumatica ERP { .section}

|Form|Criteria to Check|
|----|-----------------|
|[Attributes](CS_20_50_00.md) \(CS205000\)|Attributes to be used for case classes have been created with the necessary settings.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The required non-stock items of the *Labor* type with needed settings have been created, as described in [Creating Labor Items](Non_Stock_Item_Projects_Mapref.md).|
|[Email Accounts](SM_20_40_02.md) \(SM204002\)|A system email account has been configured, as described in [Configuring Email Accounts](EM__con_Configuring_Email_Accounts.md).|
|[Business Events](SM_30_20_50.md) \(SM302050\)|A business event that causes the system to send emails to customer has been created.|
|[Email Templates](SM_20_40_03.md) \(SM204003\)|A notification template that is a subscriber for the business event has been created.|
|[Automation Schedules](SM_20_50_20.md) \(SM205020\)|The schedule for sending of emails has been created, as described in [Managing Emails](EP__con_Email_Management.md).|
|[Labor Rates](PM_20_99_00.md) \(PM209900\)|The cost rates that are specific to particular labor items have been created, as described in [Creating Labor Items](Non_Stock_Item_Projects_Mapref.md).|
|[Earning Types](EP_10_20_00.md) \(EP102000\)|If you will be using the *Per Activity* billing mode, the needed earning types that are used in activities have been created.**Tip:** A predefined set of earning types has been created in the system. You can modify this set as needed.

|

## Other Settings in Acumatica ERP That Affect the Workflow { .section}

You can affect the workflow of case management in the Acumatica Self-Service Portal by specifying additional settings in Acumatica ERP as follows:

-   If you use a multicompany Acumatica ERP instance, the company that will be available for the Self-Service Portal users has been specified, as described in [Instance Deployment: To Specify the Tenant Available for Self-Service Portal Users](INST_Installing_Portal_Configuring.md).
-   To cause the system to associate a case with a contract, do the following:
    -   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Contract Management* feature in the *Advanced Financials* group of features: This feature provides the support of contracts, including case processing and contract billing. It makes available all forms related to contract processing and provides integration with accounts receivable and tracking of time and expenses.
    -   On the [Contract Templates](CT_20_20_00.md) \(CT202000\) form, activate case counting by specifying a case count item \(in the **Case Billing Settings** section of the **Summary** tab\).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Configuring Case Management in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Configuring_Case_Management_in_SSP_Implem_Activity.md).

**Parent topic:**[Configuring Case Management in the Self-Service Portal](../UserGuide/config_SSP_Admin_Configuring_Case_Management_in_SSP_Mapref.md)

