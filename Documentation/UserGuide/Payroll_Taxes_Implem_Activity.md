# Taxes: Implementation Activity {#_3a3c7858-df52-42b5-b505-be72870c1f1d .task}

In the following implementation activity, you will learn how to set up taxes in payroll.

## Story { .section}

Suppose that you as a system administrator need to create all necessary tax codes related to the work locations stored in the system.

## Configuration Overview {#section_chl_5gs_hrb .section}

In the *U100 Payroll* snapshot, the following tasks have been performed for the purposes of this activity:

-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* and *EXEMPT* tax categories have been configured.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, all GL accounts that you will use for tax reporting purposes, including *24100 \(Tax Payable\)* and *65100 \(Other Tax Expenses\)*, have been added.

    The *24100* liability account will be used for accumulating the tax amounts to be paid to the tax agency in a tax period. The *65100* expense account will be used to record tax adjustments and expenses for the tax agency.

-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *IRS* and *NYTAXDEP* tax agencies have been configured.

## Process Overview { .section}

You download the latest tax details from the Symmetry tax engine by clicking **Update Taxes** on the form toolbar of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form and then you enter missing required settings on the **Tax Codes** tab of that form.

## System Preparation { .section}

Before you start setting up taxes in the system, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Work Locations: Implementation Activity](config_Payroll_Work_Locations_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Creating Taxes { .section}

To download tax details from the tax engine and create all necessary taxes in the system, do the following:

1.  On the form toolbar of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form, click **Update Taxes**.

    Wait until the update process is completed. As a result, the **Tax Codes** and **Global Tax Settings** tabs of the form become populated with tax data.

2.  Review the data downloaded from the tax engine on the **Tax Codes** tab and the error messages about missing tax settings.

## Step 2: Specifying Missing Settings { .section}

Because required settings are missing in the tax codes listed on the **Tax Codes** tab of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form, do the following:

1.  In the **Tax Codes** table of the **Tax Codes** tab, do the following:
    -   For all federal taxes \(the *FED* tax state\), select the *IRS* vendor in the **Vendor** column.
    -   For all New York taxes \(the *NY* tax state\), and select the *NYTAXDEP* vendor in the **Vendor** column.
    -   For each tax, select *Code Name* in the **Invoice Description Source** column.
    -   For each tax, select *24050* in the **Liability Account** column.
    -   For all taxes of the *Employer Tax* category, select *65100* in the **Expense Account** column.
2.  On the **Tax Codes** tab, for each tax that has an error message displayed in the **Tax Codes** table, specify appropriate default values for the required settings in the **Tax Settings** table. While updating default values, in the **Update Default Value** dialog box that the system shows, click **Yes**.

    Click rows with the following taxes in the **Tax Codes** table, and enter the corresponding values in the **Tax Settings** table for the *Rate* setting in the **Default Value** column:

    -   *ER FUTA*: `6.2`
    -   *NY ER SUTA*: `3.2`
    -   *NY ER SUTA SC*: `0.5`
3.  On the **Tax Codes** tab, update the *New York City Tax* as follows:
    1.  In the **Tax Codes** table, click a row with the *NY CITY 975772* code.
    2.  In the **Tax Settings** table, in the row with the *Employee is a resident of the state or location* setting, select *Employee* in the **Setting Level** column.

        This will allow overriding the default value of this setting of the *New York City Tax* at the employee level.

    3.  In the **Change Setting Level** dialog box, which opens, click **Yes**.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Setting Up Taxes](../UserGuide/config_Payroll_Taxes_Mapref.md)

