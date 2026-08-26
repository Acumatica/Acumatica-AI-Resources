# Payroll Basic Configuration: Implementation Checklist {#_8bc40f1a-f5aa-4a1c-bcaf-babbe2e282c4 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing payroll documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Prerequisites { .section}

We recommend that before you start performing the minimum configuration of payroll, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Minimum company settings have been specified and the minimal required functionality has been implemented for all other functional areas to be integrated with the payroll functionality, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).|
|[Work Calendar](CS_20_90_00.md) \(CS209000\)|The work calendar that reflects the work days, work times for each day, and unpaid break time of the employees that are involved in payroll has been defined.|
|[Numbering Sequences](CS_20_10_10.md) \(CS201010\)|The numbering sequences have been created for payroll batches and transactions.|
|[Departments](EP_20_15_00.md) \(EP201500\)|The departments that are used in your organization have been created.|
|[Positions](EP_20_10_00.md) \(EP201000\)|The positions taken by the employees in your organization have been defined.|
|[Employees](EP_20_30_00.md) \(EP203000\)|The employees involved in payroll processes have been defined in the system.|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Payment methods and a cash account for each payment method to be used to generate paychecks for an employee have been defined.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Vendors to be used with payroll, such as tax agencies, benefit providers, and unions, have been created.|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Payroll* feature has been enabled, which adds the forms and UI elements related to the payroll functionality.|

## Minimum Required Settings { .section}

To make it possible for users to process payroll documents, you should navigate to the forms listed below and perform the tasks described in the table.

|Form|Criteria to Check|
|----|-----------------|
|[Payroll Preferences](PR_10_10_00.md) \(PR101000\)|The numbering sequences have been specified and the settings have been saved.|

**Parent topic:**[Configuring Payroll](../UserGuide/config_Payroll_Functionality_mapref.md)

