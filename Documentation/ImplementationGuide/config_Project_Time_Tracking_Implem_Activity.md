# Time Tracking Configuration: To Configure Time Tracking in Projects {#_46c5ad83-c10f-4f63-a52b-94e225bc6dfa .task}

In this implementation activity, you will learn how to configure the system to track time spent on particular projects.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_b3m_2q2_dmb .section}

Suppose that you, as an administrative user of the SweetLife Fruits &amp; Jams company, are configuring accounting for projects. The manager of the company has decided to track employee time spent on each project and bill the customer based on employee time spent on work related to the customer's project. The employees should report their working time on a weekly basis by using time cards.

You must configure the basic time tracking configuration and specify the time tracking settings in the project accounting preferences.

## System Preparation { .section}

To prepare to perform the instructions of the activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.

## Step 1: Reviewing the Basic Configuration for Time Reporting {#section_nby_scf_dmb .section}

Make sure the minimum required configuration for time reporting has been performed by doing the following:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Advanced Financials* feature is enabled.
2.  On the [Earning Types](../UserGuide/EP_10_20_00.md) \(EP102000\) form, review the default earning types. Make sure that the **Billable** check box is selected for the *RG \(Regular Hours\)* and *OT \(Overtime\)* earning types, which will be used for time tracking in projects.

    **Attention:** If the *Payroll* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, earning types are defined on the [Earning Type Codes](../UserGuide/PR_10_20_00.md) \(PR102000\) form.

3.  On the **Time Reporting** tab of the [Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\) form \(in the **Time Activities** section\), make sure that *Post PM and GL Transactions* is specified in the **Time Posting Option** box.

## Step 2: Reviewing the Basic Configuration for Project Accounting {#section_oby_scf_dmb .section}

Do the following to make sure the minimum required configuration has been performed for project accounting that relates to time tracking functionality:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure the *Projects* feature is enabled.
2.  On the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form, make sure of the following:
    -   In the **Visibility Settings** section, the **Time Entries** and **Expenses** check boxes are selected.
    -   In the **Expense Account Source** box, *Labor Item* is specified.
    -   In the **Expense Accrual Account Source** box, *Labor Item Accrual* is specified.

**Parent topic:**[Employee Time Tracking](../ImplementationGuide/config_Project_Time_Tracking_Mapref.md)

