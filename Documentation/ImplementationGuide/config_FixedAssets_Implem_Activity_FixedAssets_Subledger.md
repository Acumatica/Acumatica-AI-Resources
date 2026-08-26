# Fixed Assets: To Configure the Fixed Asset Functionality {#_e8f45b0f-90d0-44fc-b858-af04447e056e .task}

In the following implementation activity, you will learn how to configure the fixed asset functionality.

## Story { .section}

Suppose that an implementation consultant has prepared the system for the configuration of the fixed asset functionality. Based on SweetLife's policy, the company needs one depreciation book to depreciate fixed assets by using the straight-line depreciation method. The company is planning to dispose of assets by selling them.

Acting as an implementation consultant, you need to specify fixed asset configuration settings in the system, create the *SOLD* disposal method, and generate a calendar that must include as many years as are needed to be able to calculate depreciation for any existing fixed asset, which will later be created in the system, for the entire asset's life.

In SweetLife, all the fixed assets will be placed in service in the same year, and the fixed assets of the *BUILDING* class will have the longest useful life: 39 years. \(In a later activity, the company will acquire the *BUILDING* asset in the middle of 2026; therefore, you will have to generate a calendar through the year 2065 \(2026 + 39\). The lifespans of other fixed assets are shorter; therefore, they will also fit the generated range of years.\)

## Process Overview { .section}

In this activity, you will specify the configuration settings on the [Fixed Assets Preferences](../UserGuide/FA_10_10_00.md) \(FA101000\) form and create a disposal method on the [Disposal Methods](../UserGuide/FA_20_70_00.md) \(FA207000\) form. On the [Books](../UserGuide/FA_20_50_00.md) \(FA205000\) form, you will create a posting book; then on the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) \(FA501000\) form, you will create a financial calendar for this posting book. Finally, on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form, you will create GL calendars for multiple years and activate their financial periods on the [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form.

## System Preparation { .section}

Before you start configuring the fixed asset functionality, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as Kimberly Gibbs with the *gibbs* username and the *123* password.

As a prerequisite activity, in the company to which you are signed in, be sure you have prepared the system, as described in [Fixed Assets: To Set Up the System for Fixed Asset Management](config_FixedAssets_Implem_Activity_System.md).

## Step 1: Specifying Fixed Asset Preferences { .section}

To specify the fixed asset preferences, which are the basic configuration settings, do the following:

1.  Open the [Fixed Assets Preferences](../UserGuide/FA_10_10_00.md) \(FA101000\) form.
2.  In the **Account Settings** section, select *15010 \(Accrued Purchases: Fixed Assets\)* in the **FA Accrual Account** box.

    This account is used to hold the cost of fixed assets that have not yet been put into service.

3.  In the **Posting Settings** section, specify the following settings:
    -   **Update GL**: Selected

        **Tip:** If you were preparing the system for production use, you could clear the check box during initial data migration to import the fixed assets that are already capitalized without affecting GL balances.

    -   **Automatically Post on Release**: Selected

        With this check box selected, the system releases and immediately posts the batch of journal transactions that has been generated on release of a fixed asset transaction.

4.  On the form toolbar, click **Save**.

## Step 2: Creating a Disposal Method { .section}

To create the *SOLD* disposal method, do the following:

1.  Open the [Disposal Methods](../UserGuide/FA_20_70_00.md) \(FA207000\) form.
2.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Disposal Method ID**: `SOLD`
    -   **Description**: `Sold`
    -   **Proceeds Account**: *11010*

        This is the accrual account used for recording the proceeds from sales of fixed assets. The account will be used for processing transactions when fixed assets are sold. The account is debited in the amount of the proceeds when an asset is sold, and credited when the AR invoice to the buyer of the fixed asset is released.

3.  On the form toolbar, click **Save** to save the changes.

## Step 3: Creating the Posting Book { .section}

To create the posting book, do the following:

1.  Open the [Books](../UserGuide/FA_20_50_00.md) \(FA205000\) form.
2.  On the form toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Book ID**: `FIN`
    -   **Description**: `Posting Book`
    -   **Posting Book**: Selected

        With this check box selected, the transactions of this book will update GL accounts.

    -   **Mid-Period Type**: *Fixed Day*

        This setting means that the day specified in the **Mid-Period Day** box will be used as the middle of the period in averaging conventions.

    -   **Mid-Period Day**: `15`

        This setting specifies the day to be considered as the last day of the first half of the period \(that is, as the middle of the period\).

3.  On the form toolbar, click **Save** to save your changes.

    The created *FIN* book will be assigned by default to all created fixed asset classes and thus will keep all the fixed asset transactions for the created fixed assets.


## Step 4: Generating the Calendar for the Posting Book { .section}

To generate the calendar for the posting book, do the following:

1.  Open the [Generate Book Calendars](../UserGuide/FA_50_10_00.md) \(FA501000\) form.
2.  In the **From Year** box, leave the default value of *2025*.
3.  In the **To Year** box, enter `2065`.
4.  In the table, select the unlabeled check box in the row of the *FIN* book.
5.  On the form toolbar, click **Process**.

    After the processing has completed, notice that the calendar has been generated through 2065. For a posting book, the generated calendar starts from the first calendar year in the GL calendar—in this example, from 2025.


## Step 5: Activating Financial Periods { .section}

To activate the financial periods to which GL transactions will be posted, do the following:

1.  Open the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Financial Year** box, make sure that *2027* is specified.
4.  On the form toolbar, click **Generate Calendar**.
5.  In the **Generate GL Calendar** dialog box, which is opened, specify the following settings:
    -   **From Year**: *2027*
    -   **To Year**: *2031*
6.  Click **Generate**.
7.  Open the [Company Financial Calendar](../UserGuide/GL_20_11_00.md) \(GL201100\) form.
8.  In the Selection area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Financial Year**: *2031*
9.  On the More menu, click **Open Periods**.
10. On the [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form, which is opened, click **Process All**.

**Parent topic:**[Fixed Asset Configuration](../ImplementationGuide/FixedAssets_Mapref.md)

