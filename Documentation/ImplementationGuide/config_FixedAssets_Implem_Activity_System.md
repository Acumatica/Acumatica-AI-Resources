# Fixed Assets: To Set Up the System for Fixed Asset Management {#_76cf52c2-081d-4d4b-b111-28ddc97315c2 .task}

In the following implementation activity, you will learn how to set up the system for fixed asset management.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that in January 2026, SweetLife Fruits &amp; Jams purchased a license for fixed asset management, and the company’s management wants to start using this functionality in 2026. The implemented fixed assets must belong to the Administrative, Consulting, Sales, and Development departments of SweetLife; only one of these departments has been defined in the system.

The chart of accounts used by SweetLife has already been in use, but it does not include all the accounts needed for fixed asset accounting. The chart of accounts needs to be updated with new accounts that will be used in fixed asset transactions generated from the fixed asset subledger.

Acting as an implementation consultant, you need to prepare the system for the configuration of fixed asset management, create the departments, and upload the accounts from an Excel file.

## Process Overview { .section}

In this activity, you will enable the *Fixed Asset Management* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. On the [Departments](../UserGuide/EP_20_15_00.md) \(EP201500\) form, you will add the departments required for fixed asset accounting. Finally, on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you will upload the fixed asset accounts from an Excel file to update the existing chart of accounts.

## System Preparation { .section}

Before you start configuring the system, you should launch the Acumatica ERP website and sign in to a company with the *U100* dataset preloaded. You should sign in as Kimberly Gibbs with the *gibbs* username and the *123* password.

You should also download the [COA\_FixedAssets.xlsx](Files/COA_FixedAssets.xlsx) file, which you will upload in Step 3.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Fixed Asset Management* feature, do the following:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, click **Modify** on the form toolbar.
2.  Select the **Fixed Asset Management** check box within the **Finance** group of features.

    The check boxes for the other needed features are already selected because you have preloaded the *U100* dataset into the company; you do not have to change the selection of any other features.

3.  On the form toolbar, click **Enable**.

## Step 2: Creating Departments { .section}

To create departments for the SweetLife company, do the following:

1.  Open the [Departments](../UserGuide/EP_20_15_00.md) \(EP201500\) form.
2.  For each of the departments listed in the following table, click **Add Row** and specify the listed settings in the added row.

    |Department ID|Description|
    |-------------|-----------|
    |`ADMIN`|`Administrative department`|
    |`CONSULT`|`Consulting department`|
    |`DEV`|`Development department`|

    The *SALES* department has already been created in the system, so you do not need to add it.

3.  On the form toolbar, click **Save** to save the changes.

## Step 3: Updating the Chart of Accounts { .section}

To update the chart of accounts, do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  On the form toolbar, click **Load Records from File**.
3.  In Step 1 of the **Import Data** wizard, which is opened, click Upload File and select the [COA\_FixedAssets.xlsx](Files/COA_FixedAssets.xlsx) file.
4.  In Step 2 of the wizard, select *Bypass Existing* in the **Mode** box, and click **Next**.
5.  In Step 3 of the wizard, leave the default values and click **Finish**.
6.  On the form toolbar, click **Save** to save the updated chart of accounts.

The chart of accounts is ready. With these accounts, you can report fixed assets by fixed asset classes on the balance sheet. Now you can proceed to the configuration of the fixed asset functionality.

**Parent topic:**[Fixed Asset Configuration](../ImplementationGuide/FixedAssets_Mapref.md)

