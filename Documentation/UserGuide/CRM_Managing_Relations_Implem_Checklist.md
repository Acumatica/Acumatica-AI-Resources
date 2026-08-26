# Relations: Implementation Checklist {#_3bdb70e4-efa8-4423-abcd-c13b4b4466b4 .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing relations between the associated records.

## Mandatory Configuration { .section}

We recommend that before you start managing relations, you make sure the needed CRM features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Sales Quotes* in the *Customer Management* group of features: This feature gives you the ability to create opportunity-based sales quotes, send them to customers for review, and create sales orders and invoices based on these quotes.
-   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.

|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|The predefined settings in the **Numbering Sequences** section of the **General** tab have been saved, as described in [Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md).|
|[Lead Classes](CR_20_70_00.md) \(CR207000\)|Lead classes with the necessary settings, attributes, and stages have been created, as described in [Defining Lead Classes](CRM_Lead_Classes_Mapref.md).|
|[Contact Classes](CR_20_50_00.md) \(CR205000\)|Contact classes with the necessary settings, attributes, and stages have been created, as described in [Defining Contact Classes](CRM_Contact_Classes_Mapref.md).|
|[Business Account Classes](CR_20_80_00.md) \(CR208000\)|Business account classes with the necessary settings and attributes have been created, as described in [Defining Business Account Classes](CRM_Bus_Account_Classes_Mapref.md).|
|[Opportunity Classes](CR_20_90_00.md) \(CR209000\)|Opportunity classes with the necessary settings and attributes have been created, as described in [Creating Leads](CRM_Mktg_Creating_Leads_Mapref.md).|
|[Case Classes](CR_20_60_00.md) \(CR206000\)|Case classes with the necessary settings, attributes, and stages have been created, as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md).|
|[Leads](CR_30_10_00.md) \(CR301000\)|Leads with the necessary settings and attributes have been created, as described in [Creating Leads](CRM_Mktg_Creating_Leads_Mapref.md).|
|[Contacts](CR_30_20_00.md) \(CR302000\)|Contacts with the necessary settings and attributes have been created, as described in [Creating Contacts](CRM_Sales_Creating_Contacts_Mapref.md).|
|[Business Accounts](CR_30_30_00.md) \(CR303000\)|Business accounts with the necessary settings and attributes have been created, as described in [Creating Business Accounts](CRM_Sales_Creating_Bus_Accounts_Mapref.md).|
|[Opportunities](CR_30_40_00.md) \(CR304000\)|Opportunities with the necessary settings and attributes have been created, as described in [Creating Opportunities](CRM_Sales_Creating_Opportunities_Mapref.md).|
|[Cases](CR_30_60_00.md) \(CR306000\)|Cases with the necessary settings and attributes have been created, as described in [Creating Cases](CRM_Support_Creating_Cases_Mapref.md).|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Relations: Process Activity](CRM_Managing_Relations_Process_Activity.md).

**Parent topic:**[Managing Relations](../UserGuide/CRM_Managing_Relations_Mapref.md)

