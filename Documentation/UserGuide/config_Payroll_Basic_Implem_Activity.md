# Payroll Basic Configuration: Implementation Activity {#_7db9bdfb-f4d6-4b72-8686-3ef5c1eb364e .task}

In the following implementation activity, you will learn how to prepare the system to support the processing of payroll documents.

**Attention:** The following activity is based on the *U100 Payroll* snapshot. If you are using another dataset, or if any system settings have been changed in *U100 Payroll*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Payroll* snapshot to its initial state.

## Story { .section}

Suppose that you, as an implementation manager, need to specify the minimum settings that are required to start using the payroll functionality in the system.

## Process Overview { .section}

In this activity, to prepare the system for the implementation of the payroll functionality, you will do the following:

1.  On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, you will create numbering sequences for payroll entities because the system offers no predefined numbering sequences to be used by default.
2.  On the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form, you will specify the numbering sequences and save the settings.

## System Preparation { .section}

Before you start performing the initial configuration of the payroll functionality, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

## Step 1: Enabling the Payroll Feature { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Payroll* feature and the *US Payroll* subfeature.

## Step 2: Creating Numbering Sequences { .section}

To create numbering sequences for payroll batches, transactions, and PTO adjustments, do the following:

1.  On the form toolbar of the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, click **Add New Record**.
2.  In the Summary area of the form, specify the following settings:
    1.  **Numbering ID**: `BATCHPR`
    2.  **Description**: `PR Batch`
    3.  **New Number Symbol**: `<NEW>`
3.  In the table, add a row with the following settings:

    1.  **Start Number**: `PR000000`
    2.  **End Number**: `PR999999` \(inserted automatically\)
    The system prefills the rest of the settings, which you can leave as-is.

4.  On the form toolbar, click **Save** and then click **Add New Record**.
5.  In the Summary area of the form, specify the following settings:
    1.  **Numbering ID**: `PRTRANSAC`
    2.  **Description**: `PR Transactions`
    3.  **New Number Symbol**: `<NEW>`
6.  In the table, add a row with the following settings:
    1.  **Start Number**: `000000`
    2.  **End Number**: `999999` \(inserted automatically\)
7.  On the form toolbar, click **Save** and then click **Add New Record**.
8.  In the Summary area of the form, specify the following settings:
    1.  **Numbering ID**: `PRBATCH`
    2.  **Description**: `Payroll Batch Numbering`
    3.  **New Number Symbol**: `<NEW>`
9.  In the table, add a row with the following settings:
    1.  **Start Number**: `000000`
    2.  **End Number**: `999999` \(inserted automatically\)
10. On the form toolbar, click **Save** and then click **Add New Record**.
11. In the Summary area of the form, specify the following settings:
    1.  **Numbering ID**: `PRPTOADJ`
    2.  **Description**: `Payroll PTO Adjustments`
    3.  **New Number Symbol**: `<NEW>`
12. In the table, add a row with the following settings:
    1.  **Start Number**: `PRP0000000`
    2.  **End Number**: `PRP9999999` \(inserted automatically\)
13. On the form toolbar, click **Save**.

## Step 3: Specifying the Payroll Preferences { .section}

To specify the numbering sequences and other payroll preferences that are required for using the payroll functionality, do the following:

1.  On the **General** tab of the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form, in the **Numbering Settings** section, specify the following settings:
    -   **Batch Numbering Sequence**: *BATCHPR*
    -   **Transaction Numbering Sequence**: *PRTRANSAC*
    -   **Payroll Batch Numbering Sequence**: *PRBATCH*
    -   **PTO Adjustment Numbering Sequence**: *PRPTOADJ*
2.  On the **General** tab, in the **Posting Settings** section, specify the following information:
    -   **Project Cost Assignment**: *No Cost Assigned*
    -   **Time Posting Option**: *Do Not Post PM Transactions*
    -   **Update GL**: Selected
    -   **Automatically Post on Release**: Selected
3.  On the form toolbar, click **Save**.

You have configured the basic payroll functionality. Now you can proceed with setting up payment methods for the use in payroll.

**Parent topic:**[Configuring Payroll](../UserGuide/config_Payroll_Functionality_mapref.md)

