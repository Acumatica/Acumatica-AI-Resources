# General Ledger: To Create a Chart of Accounts {#_535eabd7-26e2-4777-ac7d-fedf23846eb1 .task}

In this activity, you will learn how to modify the *ACCOUNT* segmented key. You will also define the chart of accounts by uploading a list of GL accounts to the system.

## Story { .section}

Suppose that as an administrator, you need to add the chart of accounts of the SweetLife Fruits &amp; Jams company to Acumatica ERP. Further suppose that an accountant of the company has provided a file that lists the GL accounts to be used and their settings \(including the account classes; you will use the predefined classes\). You will review the list of accounts, modify the *ACCOUNT* segmented key, and create the chart of accounts by uploading the file provided by the accountant.

## Process Overview { .section}

In this activity, you will modify the length of the *ACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md#) \(CS202000\) form. On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you will upload the chart of accounts from an Excel file.

## System Preparation { .section}

Before you start defining the chart of accounts in the system, make sure that the following tasks have been performed:

1.  The company has been created with an actual ledger; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The [Basic\_Company\_COA](Files/Basic_Company_COA.xlsx) file has been downloaded with the chart of accounts of the SweetLife company.

## Step 1: Modifying the *ACCOUNT* Segmented Key { .section}

To modify the *ACCOUNT* segmented key, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Review the [Basic\_Company\_COA](Files/Basic_Company_COA.xlsx) file that you have downloaded. Notice that the account identifiers consist of only one segment of five characters.
3.  Open the [Segmented Keys](../UserGuide/CS_20_20_00.md#) \(CS202000\) form.
4.  In the **Segmented Key ID** box, select *ACCOUNT*.
5.  For the only row in the table, in the **Length** column, specify `5`.
6.  On the form toolbar, click **Save**.

    Users can use account identifiers whose length is less than or equal to the specified length for the segmented key.


## Step 2: Uploading the Company's GL Accounts { .section}

You can create the chart of GL accounts in the system by entering the accounts manually or by uploading a file that lists them. In this activity, you will upload the file that SweetLife's accountant has provided. Do the following to upload the chart of accounts:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  On the form toolbar, click **Load Records from File**.
3.  In the **Import Data** dialog box, which opens, select the file path to the [Basic\_Company\_COA](Files/Basic_Company_COA.xlsx) file, and click **Next**.
4.  In the next step, leave the default settings, and click **Next**.
5.  In the next step, leave the current mapping, and click **Finish**.
6.  On the form toolbar, click **Save**.

You should review the chart of accounts, which now includes all the necessary accounts, including two accounts that are required for Acumatica ERP: Net Income \(*33000*\) and Retained Earnings \(*32000*\).

The other necessary accounts are the following:

-   *20000*: The account to be used to record amounts owed to vendors for items and services purchased on credit. This account will later be specified as the AP account.
-   *11000*: The account to be used to record amounts owed by customers for services provided to them on credit. This account will later be specified as the AR account.
-   *10500*: The account to be used as the intermediate account for funds transfers. This account will later be specified as the cash-in-transit account.

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

