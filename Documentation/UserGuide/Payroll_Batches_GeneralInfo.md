# Payroll Batches: General Information {#_81524fd9-84c3-4554-90f1-0ba1a6b568cc .concept}

Typically, employees are paid not on an individual basis but based on their membership in a pay group. In Acumatica ERP, you divide your workforce into pay groups that have the same schedule of pay period, such as weekly, biweekly, or monthly. You create a payroll batch to collect a pay group's payroll data, which is extracted from various sources, such as time activities, time cards, sales commissions, and employee default setup, and process it in batch mode. As a result of the payroll batch processing, the system creates one paycheck for each employee included in the batch.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create payroll batches
-   Add earning details about employees and their time activities to a payroll batch
-   Import time activities from a file
-   Release payroll batches

## Applicable Scenarios { .section}

You use payroll batches as a way to quickly create multiple paychecks for employees from one pay group.

## Creating a Payroll Batch { .section}

By using the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, you can create a payroll batch for a specific pay group. To create a payroll batch, first you need to select the type of batch you want to create \(regular or special\), specify a pay group, and then select a pay period.

You can add to a regular payroll batch only an employee that belongs to the selected pay group and has no paycheck created for the selected pay period. If the employee already has a regular paycheck for the selected pay period, the system displays a warning, and you cannot select this employee for the pay run.

For a special paycheck, no restrictions apply.

## Processing of Payroll Batches { .section}

A payroll batch can have one of the following statuses:

-   *On Hold*: The batch is a draft. This is the default status of a new batch, which also has the **Hold** check box selected. If you clear the **Hold** check box when you finish editing the batch details, the status changes to *Balanced*.
-   *Balanced*: The batch is assigned this status when it is taken off hold, which you do when you finish editing the batch and no additional processing is required.
-   *Open*: The batch has been released and the paychecks have been created but not yet released.
-   *Closed*: All the paychecks included in the payroll batch have been released.

## Adding Employees { .section}

On the **Employee** tab of the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, you can add one employee or multiple employees at a time by clicking the **Add Employees** button on the table toolbar. In the **Add Employees** dialog box, which opens, you can do any of the following:

-   Select the **Pre-Populate with Employee Defaults \(Quick Pay\)** check box to use the *Quick Pay* functionality which brings hours using the calendar assigned to the employee . To populate the earning code, the system uses the settings specified on the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form.
-   Select the **Time Activities \(will override defaults as applicable\)** check box to import the time from the released time activities entered for the employee bringing all the details linked to them.
-   Select the **Sales Commissions** check box to import the unpaid commission. It will create an amount-based earning line for each employee having unpaid commissions. The check box is available if the *Commissions* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Importing Time Worked from a File { .section}

On the **Earning** tab of the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, you can upload earned hours from an Excel file directly to a payroll batch without having to use time cards. To do this, you need to use the **Load Records from File** button on the table toolbar. Only records related to employees who belong to the selected pay group and records whose date is within the specified pay period can be imported.

When importing records, the system uses the settings you specify in the **Mode** box in the **Common Settings** dialog box, which opens when you upload an Excel file, and the identifiers in the **Record ID** column of the table on the **Earning** tab in the following manner:

-   If you select **Update Existing**, the system will replace only the records that are already in the batch by using the **Record ID** values to determine which record must be replaced.
-   If you select **Bypass Existing**, the system will do nothing with the records that are already in the batch by using the **Record ID** values to determine which records must be bypassed.
-   If you select **Insert All Records**, the system will import all the records from the file, regardless of the **Record ID** values.

If a GL account \(and subaccount, if applicable\) is specified for a record in the Excel file, this information is imported as is. For a record without an account \(and subaccount\), the system inserts the account \(and subaccount\) from the source entity according to the settings specified in the **Account Settings** section on the **General** tab of the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form.

Similarly, the following happens during the import if the *Shift Differential* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   If a work shift is specified for a record, the shift code is imported as is.
-   If no work shift is specified for a record, the system inserts by default the shift code specified in the **Shift Code** box in the **Employee Settings** section on the **General Info** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form.

The system allows importing time activities with negative hours specified, which may be useful in some cases. For instance, if you want to cancel an activity that was associated with a wrong project, you can enter a similar time activity for that project but with the negative time specified, and then you need to enter the same time activity with the positive number of hours and associate it with the correct project. However, the system does not allow releasing payroll batches with negative time entries; to be able to release such a batch, in the employee earning details, you need to manually change to *0* the time of the both positive and negative time activities associated with the wrong project.

## Adjusting Earning Details {#section_vv2_1y4_y4b .section}

On the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, you can review, edit, remove, or enter earning details for each employee included in the batch by using the **Employee Earning Details** dialog box, which opens if you click **Employee Earning Details** on the table toolbar of the **Employee** tab, or by using the **Earning** tab. If you insert overtime hours for a salaried exempt employee or import time activities that include overtime hours for such an employee, an error message will be displayed until you delete the overtime record or change the employee type.

When you have the gross pay calculated for each employee, you may want to exclude a specific deductions or benefits or to prevent the system from using an overtime rule for a specific batch of employees. On the **Deductions and Benefits** and **Overtime Rules** tabs, you can deactivate an item specifically for the payroll batch.

You can edit a payroll batch only if its status is *On Hold*, which is when the **Hold** check box is selected for the batch in the Summary area of the [Payroll Batches](PR_30_10_00.md) form.

## Releasing a Payroll Batch { .section}

If you have finished editing a payroll batch, you release it from hold by clearing the **Hold** check box in the Summary area of the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form. Then you can release the batch by clicking **Release** on the form toolbar of the same form.

Upon the release of the batch, the system creates a paycheck for each selected employee. After that, you need to calculate a paycheck to apply the taxes and deductions and benefits, print the paycheck, and then release it.

**Parent topic:**[Processing Payroll Batches](../UserGuide/process_Payroll_Payroll_Batches_mapref.md)

