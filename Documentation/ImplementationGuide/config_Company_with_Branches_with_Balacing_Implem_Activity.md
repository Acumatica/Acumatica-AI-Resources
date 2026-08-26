# Company with Branches that Require Balancing: Implementation Activity {#_8d5a0e00-c471-4c28-85dd-75d630569d43 .task}

In this activity, you will learn how to enable the necessary set of features, define settings for a company with branches that require balancing, and define settings for the branches of the company.

## Story { .section}

Suppose that as an administrator, you are going to start configuring the Muffins &amp; Cakes company with the following branches, which require balancing:

-   Muffins Wholesale Center
-   Muffins Retail Shop

The company is going to use the default features and the *Multibranch Support*, *Multicompany Support*, and *Inter-Branch Transactions* features; you need to enable these features. You then need to configure a company entity in Acumatica ERP for the Muffins &amp; Cakes company with these two offices in Denver.

## System Preparation { .section}

Before you start configuring a company with branches that require balancing, sign in to a tenant with the out-of-the-box company as a system administrator with the *admin* login.

## Step 1: Enabling the Minimum Set of Features { .section}

To enable the minimum set of features, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

    Notice that the check boxes are initially selected for the standard features. These features include *Finance*, *Standard Financials*, *Centralized Period Management*, *Monitoring &amp; Automation*, *Scheduled Processing*, *Authentication*, and *Third-Party Integrations*.

2.  Select the **Multibranch Support** and **Multicompany Support** check boxes in the **Standard Financials** group of features.
3.  Select the **Advanced Financials** and **Inter-Branch Transactions** check boxes.
4.  On the form toolbar, click **Enable** to enable the selected set of features.

    It is now possible to create multiple companies without branches, a company with multiple branches, or multiple companies with or without branches within one tenant.

    You can now configure account mapping rules that will be used to generate interbranch balancing transactions.


In a production environment, after the features are enabled and before you proceed with implementation, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. In this practice activity, you are using Acumatica ERP under the trial license, which doesn't require activation and provides all available features.

## Step 2: Defining a Company With Branches that Require Balancing { .section}

To configure the company without branches for Muffins &amp; Cakes, do the following:

1.  Open the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.
2.  In the Summary area, specify the following settings:
    -   **Company ID**: `MUFFINS`
    -   **Company Name**: `Muffins & Cakes`
    -   **Company Type**: *With Branches Requiring Balancing*
3.  In the **Main Address** section of the **Company Details** tab, specify the following address settings:
    -   **City**: `Denver`
    -   **Country**: *US - United States of America*
    -   **State**: *CO - Colorado*
4.  In the **Base Currency Settings** section, specify *USD* in the **Base Currency ID** box.

    **Attention:** The base currency you select in this box for the first company in the tenant will be applied to all companies in the tenant. After you specify the base currency and save your changes, the base currency can be overridden until GL preferences are saved on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form. Once the GL preferences are saved, the base currency cannot be overridden.

5.  In the **Miscellaneous Settings \(Shared\)** section, enter `2` in the **Price/Cost Decimal Places** box.

    **Tip:** If you later add additional companies to the tenant, the settings you specify in this area for the first company in the tenant will be applied to all companies in the tenant.

6.  On the form toolbar, click **Save** to save your changes.

## Step 3: Defining Branches for the Company { .section}

To configure branches for Muffins &amp; Cakes, do the following:

1.  While you are still viewing the Muffins &amp; Cakes company of the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, on the **Branches** tab, click **Add Branch**.

    The [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form opens with the predefined company. First, you will create a branch for the Muffins &amp; Cakes wholesale center.

2.  In the Summary area, specify the following settings:
    -   **Branch ID**: `MUFNWHOLE`
    -   **Branch Name**: `Muffins Wholesale Center`
    -   **Company**: *MUFFINS*
3.  In the **Main Address** section of the **Branch Details** tab, specify the following address details:
    -   **City**: `Denver`
    -   **Country**: *US - United States of America* \(inserted automatically\)
    -   **State**: *CO - Colorado*
4.  On the form toolbar, click **Save**.
5.  On form toolbar of the [Branches](../UserGuide/CS_10_20_00.md#) form, click **Add New Record** and create a branch for the SweetLife retail store with the following settings:
    -   **Branch ID**: `MUFNRETAIL`
    -   **Branch Name**: `Muffins Retail Shop`
    -   **Company**: *MUFFINS*
    -   **City**: `Denver`
    -   **Country**: *US - United States of America* \(inserted automatically\)
    -   **State**: *CO - Colorado*
6.  On the form toolbar, click **Save**. Close the [Branches](../UserGuide/CS_10_20_00.md#) form.

The system returns you to the [Companies](../UserGuide/CS_10_15_00.md) form, on which you can now create an actual ledger for the company and branches you have created. For details, see [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step 4: Reviewing the Base Currency Settings { .section}

To review the settings of the company's base currency that you selected previously, do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *USD*.
3.  In the Summary area, review the values in the **Description**, **Currency Symbol**, and **Decimal Precision** boxes for the base currency you selected for the company.

    Notice that the **Active** check box is selected automatically and is unavailable for editing. This setting means that this is the base currency.


**Parent topic:**[Company with Branches that Require Balancing](../ImplementationGuide/config_Company_with_Branches_with_Balacing_Mapref.md)

