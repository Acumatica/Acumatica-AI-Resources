# Case Management: Implementation Checklist {#_a117141a-52ee-4a2c-9d0b-f03ae5d1e169 .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing cases, and to understand \(and change, if needed\) the settings that affect the workflow of case management.

## Mandatory Configuration { .section}

To ensure that the basic CRM configuration for managing cases has been implemented properly, make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
-   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.

|
|[Case Classes](CR_20_60_00.md) \(CR206000\)|The needed case classes have been created with the necessary settings and attributes, as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md).|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|On the **General** tab \(**Data Entry Settings** section\), in the **Default Case Class** box, the default case class, that is, the case class that will be used for most cases.|
|[Employee Classes](EP_20_20_00.md) \(EP202000\)|The needed employee classes have been created with the necessary settings and attributes.|
|[Employees](EP_20_30_00.md) \(EP203000\)|Employee records have been created in the system.|
|[Users](SM_20_10_10.md) \(SM201010\)|User profiles have been created for employees.|

## Recommended Configuration { .section}

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:

 -   *Scheduled Processing* \(under the *Monitoring &amp; Automation* group of features\): This feature gives you the ability to create schedules for the automatic processing of documents, including the sending of emails.
-   *Time Management*: This feature gives you the ability to track the time your organization's employees spend on activities that can be included in time cards.

|
|[Email Accounts](SM_20_40_02.md) \(SM204002\)|A system email account has been configured, as described in [Configuring Email Accounts](EM__con_Configuring_Email_Accounts.md).|
|[Business Events](SM_30_20_50.md) \(SM302050\)|A business event that causes the system to send emails to customers has been created.|
|[Email Templates](SM_20_40_03.md) \(SM204003\)|A notification template that is a subscriber for the business event has been created.|
|[Automation Schedules](SM_20_50_20.md) \(SM205020\)|A schedule for the sending of emails has been created, as described in [Managing Emails](EP__con_Email_Management.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The required non-stock items of the *Labor* type with needed settings have been created, as described in [Creating Labor Items](Non_Stock_Item_Projects_Mapref.md).|
|[Labor Rates](PM_20_99_00.md) \(PM209900\)|The cost rates that are specific to particular labor items have been created, as described in [Creating Labor Items](Non_Stock_Item_Projects_Mapref.md).|
|[Attributes](CS_20_50_00.md) \(CS205000\)|Attributes have been created with the necessary settings.|
|[Cases](CR_30_60_00.md) \(CR306000\)|The **User-Defined Fields** tab, which holds the values of attributes required by your company for cases, has been added.|
|[Earning Types](EP_10_20_00.md) \(EP102000\)|If you will be using the *Per Activity* billing mode, the needed earning types that are used in activities have been created.**Tip:** A predefined set of earning types has been created in the system. You can modify this set as needed.

|
|[Activity Types](CR_10_20_00.md) \(CR102000\)|The activity types that you plan to use are defined and have the **Active** check box selected.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of case management by specifying additional settings as follows:

-   To cause the system to associate a case with a contract, do the following:
    -   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Contract Management* feature in the *Advanced Financials* group of features: This feature provides the support of contracts, including case processing and contract billing. It makes available all forms related to contract processing and provides integration with accounts receivable and tracking of time and expenses.
    -   On the [Contract Templates](CT_20_20_00.md) \(CT202000\) form, activate case counting by specifying a case count item \(in the **Case Billing Settings** section of the **Summary** tab\).
-   If your company’s customer support processes include the approval of cases, configure an approval map, as described in [Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md).
-   If you want to associate activities with projects and project tasks, enable the *Projects* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and configure the project accounting functionality, as described in [Basic Project Accounting](../ImplementationGuide/config_Project_Basic_Config_Mapref.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in the following topics:

-   [Case Management: To Process a Non-Billable Case](CRM_Support_Managing_Cases_To_Process_a_Non-Billable_Case.md)
-   [Case Management: To Process a Billable Case](CRM_Support_Managing_Cases_To_Process_a_Billable_Case.md)

**Parent topic:**[Managing Cases](../UserGuide/CRM_Support_Managing_Cases_Mapref.md)

