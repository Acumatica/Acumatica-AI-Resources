# Employee Payroll Settings: Implementation Activity {#_52e4bab0-93d2-4839-8338-e5bc3ba45fc7 .task}

In the following implementation activity, you will learn how to create a payroll employee record and specify payroll settings for that employee.

## Story { .section}

Suppose that a payroll employee record should be created for Anna Johnson, an accountant in the SweetLife company, and the relative taxes, earnings, and other payroll settings need to be specified for this employee so that the necessary deductions and benefits are included in the paycheck calculation.

## Process Overview { .section}

On the [Employees](EP_20_30_00.md) \(EP203000\) form, you open the employee record and click **Create Payroll Employee** on the More menu to create a payroll employee record. Then, on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, you specify necessary payroll settings for the employee.

## System Preparation { .section}

Before you start creating a payroll employee record and specifying employee payroll settings, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Employee Payroll Classes: Implementation Activity](config_Payroll_Employee_Classes_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating a Payroll Employee { .section}

To perform a step, do the following:

1.  On the [Employees](EP_20_30_00.md) \(EP203000\) form, open the *EP00000013* \(*Anna Johnson*\) employee.
2.  On the **History** tab, add a row and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Position**: *ACCOUNTANT*
    -   **Start Date**: *1/1/2021*
    -   **Start Reason**: *New Hire*
    -   **Probation Period End Date**: *7/1/2021*
3.  On the form toolbar, click **Save**.
4.  On the More menu on the form toolbar, click **Create Payroll Employee**.

    As a result, the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form opens on the same tab, populated with the settings of the *Anna Johnson* employee.


## Step 2: Specifying Required Payroll Settings { .section}

To specify the required payroll settings for Anna Johnson, while you are viewing her record on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, do the following:

1.  On the **General** tab, in the **General Info** section, do the following:
    1.  In the **Class ID** box, select *HOURLY*.
    2.  Clear the **Use Default** check box right to the **Default Union** box, and in the box, select *NYS*.
2.  On the **Tax Settings** tab, in the *Social Security Number* line, specify the employee's SSN in the **Value** column \(for example, `887-56-4321`\).
3.  In the Summary area of the **Payment** tab, specify the following settings:
    -   **Payment Method**: *DIRDEPOSIT*
    -   **Cash Account**: *10200WH*
4.  In the **Direct Deposit** table on the same tab, add two rows with the following settings:

    |Account Number|Type|Bank Name|Bank Routing Number|Percent|Sequence|Gets Remainder|
    |--------------|----|---------|-------------------|-------|--------|--------------|
    |`1565462`|*Checking*|`Bank of America`|`125000024`|`90`|`1`|Cleared|
    |`1562315`|*Savings*|`Bank of America`|`125000024`|Empty|`2`|Selected|

5.  On the form toolbar, click **Save**.

## Step 3: Specifying the Address Information { .section}

While you are still reviewing Anna Johnson's record on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, specify the address information as follows:

1.  On the **General** tab, in the **Address Info** section, specify the following information:
    -   **Address Line 1**: `90 1ST Ave`
    -   **City**: `New York`
    -   **Country**: *US*
    -   **State**: *NY*
    -   **Postal Code**: `10009`
2.  On the form toolbar, click **Save**.

## Step 4: Importing Taxes { .section}

To update the employee's tax details with the relevant taxes based on the work locations and the address specified for the employee, while you are still reviewing Anna Johnson's record on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, do the following:

1.  On the **Taxes** tab, click **Import Taxes** on the toolbar of the left table.

    As a result, the table becomes populated with the relevant tax details.

2.  In the left table, click the row with the *New York City Tax* name.
3.  In the right **Tax Settings** table, select the check box in the **Value** column for the *Employee is a resident of the state or location* setting.
4.  On the form toolbar, click **Save**.

## Step 5: Defining the Regular Earnings { .section}

To define the regular earnings of the employee, while you are still reviewing Anna Johnson's record on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, do the following:

1.  On the **Compensation** tab, add a row and specify the following settings in the added row:
    -   **Earning Type**: *RG*
    -   **Active**: Selected
    -   **Pay Rate**: `30.00`
    -   **Unit of Pay**: *Hour*
    -   **Start Date**: *1/1/2021*
2.  On the form toolbar, click **Save**.

## Step 6: Specifying Deductions and Benefits { .section}

To specify deductions and benefits for the employee, while you are still reviewing Anna Johnson's record on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, do the following:

1.  On the **Deductions and Benefits** tab, add a row and specify the following settings in the added row:
    -   **Deduction Code**: *401K*
    -   **Active**: Selected
    -   **Start**: *1/1/2021*
2.  Add another row and specify the following settings in the added row:
    -   **Deduction Code**: *CHILD*
    -   **Active**: Selected
    -   **Sequence**: `1`
    -   **Start**: *1/1/2021*
3.  While the second row is selected in the table, click **Garnishment Details** on the table toolbar.
4.  In the **Garnishment Details** dialog box, which opens, specify the following information:
    -   **Vendor**: Empty

        The system will use the vendor specified for the deduction code on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

    -   **Court Name**: `Washington Labor Court`
    -   **Document ID**: `00003578`
    -   **Court Date**: *12/1/2020*
    -   **Original Amount**: `5000.00`
5.  Click **OK** to apply the changes and close the dialog box.
6.  On the form toolbar, click **Save**.

## Step 7: Specifying PTO Banks { .section}

To specify the PTO banks that the employee will be able to use, while you are still reviewing Anna Johnson's record on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, do the following:

1.  On the **Paid Time Off** tab of them, which already contains a row for the *VLC* bank associated with the selected employee payroll class, in the Summary area, select the **Use Custom Settings** check box.
2.  Add a new row and specify the following settings in the added row:

    -   **Active**: Selected
    -   **PTO Bank**: *PTO*
    -   **Start Date**: *1/1/2021*

        This is the date when the PTO bank becomes effective for the employee and accrual of PTO hours starts. \(Usually it is the same date as the employee's anniversary date of employment.\)

    Leave the default values for the remaining settings.

3.  On the form toolbar, click **Save**.

## Step 8 \(Optional\): Updating Taxes in the System { .section}

After the payroll settings of multiple payroll employees have been specified, you may need to update taxes in the system. Do the following:

1.  On the form toolbar of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form, click **Update Taxes**.

    Wait until the update process is completed. As a result, the data on the **Tax Codes** tab of the form is updated. Review the data downloaded from the tax engine and make sure that there are no error messages about missing tax settings.

2.  On the form toolbar, click **Save** to save new tax information \(if any\).
3.  On the form toolbar, click **Assign Taxes to Employees** to assign the relevant taxes to all payroll employees based on their addresses and work locations.
4.  Wait until the update process is completed and close the **Processing** dialog box.

**Parent topic:**[Specifying Employee Payroll Settings](../UserGuide/config_Payroll_Employee_Payroll_Settings_Mapref.md)

