# Configuring CRM Functionality: Implementation Checklist {#_a2d688e6-0462-42d4-813c-79e5c51e78e5 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the customer relationship management \(CRM\) functionality in Acumatica ERP, and to specify settings that affect the CRM workflows.

## Mandatory Configuration { .section}

To ensure that the basic CRM configuration has been implemented properly, make sure that the necessary features have been enabled and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|The following tasks have been performed:

 1.  The initial configuration of the instance has been performed, as described in [Preparing an Instance for Implementation](config_SA_Prep_Instance_for_Implem_Mapref.md)
2.  The minimum company settings have been specified and at least the minimum required functionality has been implemented for all other functional areas to be integrated with the CRM functionality as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md)
3.  The system email accounts to be used for CRM have been configured, as described in [System Email Accounts](../UserGuide/EM__con_System_Email_Accounts.md).

|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|The *Customer Management* feature has been enabled. This feature provides the customer relationship management functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.|

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|The following features have been enabled:

 -   *Duplicate Validation* in the *Customer Management* group of features: Provides the duplicate validation functionality, which you can use to set up and perform automatic validation of lead and contact records for duplicates. For an example of configuration, see [Duplicate Validation](config_CRM_Duplicate_Validation_Mapref.md).
-   *Sales Quotes* in the *Customer Management* group of features: Gives you the ability to create opportunity-based sales quotes, send them to customers for review, and create sales orders and invoices based on these quotes.
-   *Address Lookup Integration* in the *Customer Management* group of features: Gives you the ability to use the address enrichment functionality. With this feature enabled, integration with a web map service can be set up, and you can add new addresses, update existing addresses, and fill in the missing address information on the forms that have address information. For details, see [Integrating Acumatica ERP with Web Map Services](../UserGuide/config_Web_Map_Services_Mapref.md).
-   *Scheduled Processing* in the *Monitoring &amp; Automation* group of features: Gives you the ability to create schedules for the automatic processing of documents. For details, see [Scheduling Automated Processing](../UserGuide/SA_Scheduling_Automated_Processing_Mapref.md).

|
|[Lead Classes](../UserGuide/CR_20_70_00.md) \(CR207000\)|Lead classes with the necessary details and attributes have been created.|
|[Contact Classes](../UserGuide/CR_20_50_00.md) \(CR205000\)|Contact classes with the necessary details and attributes have been created.|
|[Business Account Classes](../UserGuide/CR_20_80_00.md) \(CR208000\)|Business account classes with the necessary details and attributes have been created.|
|[Campaign Classes](../UserGuide/CR_20_25_00.md) \(CR202500\)|Campaign classes with the necessary details and attributes have been created.|
|[Opportunity Classes](../UserGuide/CR_20_90_00.md) \(CR209000\)|Opportunity classes with the necessary details and attributes have been created.|
|[Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\)|On the **General** tab \(**Numbering Sequences**\) section, numbering sequences have been saved and classes with the necessary settings have been specified.|

**Parent topic:**[Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md)

