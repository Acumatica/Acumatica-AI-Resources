# General Ledger: To Define a Financial Year {#_bbfe5ea4-00c8-421d-9efc-f426f6edc3aa .task}

In this activity, you will learn how to set up a financial year, generate periods for the first year, and open the generated periods.

## Story { .section}

Suppose that the SweetLife company starts its operations in January 2026, each of its financial periods lasts one month, and an additional period for posting adjustments is necessary. Acting as an administrator, you need to set up the financial year that meets these criteria, generate periods for the financial year, and open them.

## Process Activity { .section}

In this activity, you will configure the structure of the financial year on the [Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form. On the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form, you will generate periods of the first financial year. Finally, on the [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form, you will open the financial periods.

## System Preparation { .section}

Before you start defining the financial year, make sure that the company with an actual ledger has been created, as described in [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step 1: Setting Up a Financial Year { .section}

To set up the first financial year, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Open the [Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form.
3.  In the **Financial Year Starts On** box of the Summary area, select *1/1/2026*.
4.  In the **Period Type** box, make sure that *Month* is selected.
5.  Select the **Has Adjustment Period** check box.
6.  On the form toolbar, click **Create Periods**.
7.  Click **Save** to save the settings of the financial year.

## Step 2: Generating Periods for the First Financial Year { .section}

To generate the financial periods for the first financial year, do the following:

1.  Open the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form.
2.  In the **Financial Year** box of the Summary area, make sure that *2026* is selected.
3.  On the form toolbar, click **Generate Calendar**.
4.  In the **Generate GL Calendar** dialog box, which opens, make sure that *2026* is selected in the **From Year** and **To Year** boxes, and click **Generate**.

    The system generates periods for the *2026* financial year.

    **Tip:** We do not recommend generating financial periods in the distant future, because doing so would limit and complicate any changes to the configuration of the financial year that may be needed because of organizational changes.


## Step 3: Opening the Periods { .section}

To open the periods you have generated, do the following:

1.  While you are still on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form, on the More menu, click **Open Periods**.

    The [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form opens with the *Open* option selected in the **Action** box of the Summary area.

2.  On the form toolbar, click **Process All**.

    The system opens the **Processing** dialog box and runs the process of opening periods.

3.  Close the **Processing** dialog box.

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

