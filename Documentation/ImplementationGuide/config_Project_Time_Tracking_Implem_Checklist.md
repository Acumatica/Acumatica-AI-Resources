# Time Tracking Configuration: Implementation Checklist

The following sections provide details you can use to ensure that the time tracking functionality in the system is configured properly to be used in accounting for projects.

## Prerequisite Configuration

To ensure that the prerequisite configuration has been implemented properly, make sure that the necessary entities have been defined,and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|The minimum company settings have been specified, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).|
|[Earning Types](../UserGuide/EP_10_20_00.md) \(EP102000\)|Additional earning types, if needed, have been defined in addition to the predefined earning types. Also, for the earning types that relate to the employee time to be billed within the project, the **Billable** check box will be selected. For information on earning types, see [Employee Time Entry: Time Activities](../UserGuide/TimeExpenses_Entering_Employee_Time_Time_Activities.md).|
|[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\)|All employees for whom time will be tracked have been defined. For details, see [Employee Settings](../UserGuide/OS__con_Employee_Settings.md).|
|[Activity Types](../UserGuide/CR_10_20_00.md) \(CR102000\) form|Activity types have been defined, if needed, in addition to those that are predefined in the system|

## Configuration of Reporting Time with Time Cards

To ensure that the basic time reporting configuration has been implemented properly and the employees will be able to log time spent on projects in time cards, make sure that the necessary features have been enabled, entities have been defined, and settings have been specified, as described in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)

</td><td>

The *Advanced Financials* and *Projects* features are enabled.

</td></tr><tr><td>

[Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\)

</td><td>

In the **Posting Option for Non-Payroll Employee** box \(in the **Time Reporting Settings** section of the **General Settings** tab\), *Post PM and GL Transactions* is selected, which means that on release of time cards and time activities, the system generates project accounting and general ledger transactions.

</td></tr><tr><td>

[Projects Preferences](../UserGuide/PM_10_10_00.md) \(PO101000\)

</td><td>

In the **Visibility Settings** section, the **Time Entries** and **Expenses** check boxes are selected.

 In the **Expense Account Source** and **Expense Accrual Account** boxes of the **Account Settings** section, the sources for the expense account and expense accrual account have been selected; these settings define the debit and credit accounts to be used in the project transactions generated on release of time cards.

</td></tr><tr><td>

[Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\)

</td><td>

The labor items that are needed for all employees for all available earning types have been created, as illustrated in the [Labor Items: To Configure a Labor Item](../UserGuide/Non_Stock_Item_Projects_Implem_Activity.md).

</td></tr><tr><td>

[Labor Rates](../UserGuide/PM_20_99_00.md) \(PM209900\)

</td><td>

Labor cost rates for employees have been defined, as illustrated in [Labor Items: To Define Labor Cost Rates](../UserGuide/Non_Stock_Item_Projects_Implem_Activity_LaborCostRates.md).

</td></tr></tbody>
</table>

## Configuration of Reporting Time with Time Activities

To ensure that the employees will be able to log time with time activities, make sure that the necessary features have been enabled and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|The *Time Management* feature is enabled.|
|[Activity Types](../UserGuide/CR_10_20_00.md) \(CR102000\)|The **Track Time and Costs** check box is selected for the activity types for which you want to track billable time in projects.|

## Other Settings That Affect the Workflow

You can affect the workflow of time reporting by specifying additional settings as follows:

-   To cause the system to require a particular employee to enter time cards, select the **Time Card is Required** check box on the [Employees](../Shared/../UserGuide/EP_20_30_00.md) \(EP203000\) form. If the reporting of time with time activities is configured, the selection of this check box means that time activities can be released only within a time card.
-   To cause the system to post project transactions that have been generated on release of time activities to the off-balance account group, select *Post PM to Off-Balance Account Group* in the **Posting Option for Non-Payroll Employee** box, and specify the account group of the *Off-Balance Type* in the **Off-Balance Account Group** on the [Time and Expenses Preferences](../Shared/../UserGuide/EP_10_10_00.md) \(EP101000\) form.
-   To cause project transactions to be automatically generated and released on release of time cards, select the **Automatically Release PM Documents** on the [Time and Expenses Preferences](../Shared/../UserGuide/EP_10_10_00.md) \(EP101000\) form.
-   To associate an earning type with a particular project or project task, on the [Earning Types](../Shared/../UserGuide/EP_10_20_00.md) \(EP102000\) form, for an earning type, specify the project or project task in the **Default Project Code** box and **Default Task** box, respectively.
-   To copy notes and attached documents from time cards to generated project transactions, select the **Copy Files to PM Documents** and **Copy Notes to PM Documents** check boxes on the [Time and Expenses Preferences](../Shared/../UserGuide/EP_10_10_00.md) form.
-   To cause the system to automatically align branches in time cards, time activities, and the related project and GL transactions, specify the settings on the [Projects Preferences](../Shared/../UserGuide/PM_10_10_00.md) \(PM101000\) form, as described in [Employee Time Billing: Branch Alignment in Time Tracking and Correction](../Shared/../UserGuide/Projects_Tracking_Time_Branch_Alignment.md).

**Parent topic:**[Employee Time Tracking](../ImplementationGuide/config_Project_Time_Tracking_Mapref.md)

