# Company with Branches that Do Not Require Balancing: Implementation Activity {#_7d5a0e00-c471-4c28-85dd-75d630569d43 .task}

In this activity, you will learn how to enable the necessary set of features, define settings for a company with branches that do not require balancing, and define settings for the branches of the company.

## Story { .section}

Suppose that as an administrator, you are going to start configuring the SweetLife company with the following branches, which do not require balancing:

-   SweetLife Office and Wholesale Center
-   SweetLife Store
-   Service and Equipment Sale Center

The company is going to use the default features and the *Multibranch Support* feature; you need to enable these features. You then need to configure a company entity in Acumatica ERP for the SweetLife Fruits &amp; Jams company with these three offices in New York.

## System Preparation { .section}

Before you start configuring a company with branches that do not require balancing, sign in to a tenant with the out-of-the-box company as a system administrator with the *admin* login.

## Step 1: Enabling the Minimum Set of Features { .section}

To enable the minimum set of features, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

    Notice that the check boxes are initially selected for the standard features. These features include *Finance*, *Standard Financials*, *Centralized Period Management*, *Monitoring &amp; Automation*, *Scheduled Processing*, *Authentication*, *Third-Party Integrations*, and *Experimental Features*.

2.  Select the **Multibranch Support** check box in the **Standard Financials** group of features.
3.  On the form toolbar, click **Enable** to enable the selected set of features.

    It is now possible to create a company with multiple branches.


In a production environment, after the features are enabled and before you proceed with implementation, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. In this practice activity, you are using Acumatica ERP under the trial license, which doesn't require activation and provides all available features.

## Step 2: Defining a Company with Branches that Do Not Require Balancing { .section}

To configure the company with branches that do not require balancing for SweetLife, do the following:

1.  Open the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.
2.  In the Summary area, specify the following settings:
    -   **Company ID**: `SWEETLIFE`
    -   **Company Name**: `SweetLife Fruits & Jams`
    -   **Company Type**: *With Branches Not Requiring Balancing*
3.  In the **Main Address** section of the **Company Details** tab, specify the following address settings:
    -   **City**: `New York`
    -   **State**: *NY - New York*
    -   **Country**: *US - United States of America*
4.  In the **Base Currency Settings** section, specify *USD* in the **Base Currency ID** box.

    **Attention:** The base currency you select in this box for the first company in the tenant will be applied to all companies in the tenant. After you specify the base currency and save your changes, the base currency can be overridden until GL preferences are saved on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form. Once the GL preferences are saved, the base currency cannot be overridden.

5.  In the **Miscellaneous Settings \(Shared\)** section, enter `2` in the **Price/Cost Decimal Places** box.

    **Tip:** If you later add additional companies to the tenant, the settings you specify in this area for the first company in the tenant will be applied to all companies in the tenant.

6.  On the form toolbar, click **Save**.

## Step 3: Defining the Company’s Branches { .section}

To define SweetLife’s branches, do the following:

1.  While you are still viewing the SweetLife company on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, on the **Branches** tab, click **Add Branch**.

    The [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form opens with the predefined company. First, you will create a branch for the SweetLife head office and wholesale center.

2.  In the Summary area, specify the following settings:
    -   **Branch ID**: `HEADOFFICE`
    -   **Branch Name**: `SweetLife Head Office and Wholesale Center`
    -   **Company**: *SWEETLIFE*
3.  In the **Main Address** section of the **Branch Details** tab, specify the following address settings:
    -   **Address Line 1**: `69 Main St, Flushing`
    -   **City**: `New York`
    -   **Country**: *US - United States of America* \(inserted by default\)
    -   **State**: *NY - New York*
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings to create a branch for the SweetLife retail store:
    -   **Branch ID**: `SWEETSTORE`
    -   **Branch Name**: `SweetLife Store`
    -   **Company**: *SWEETLIFE*
6.  In the **Main Address** section of the **Branch Details** tab, specify the following address settings:
    -   **Address Line 1**: `4899 Bell Street, Staten Island`
    -   **City**: `New York`
    -   **Country**: *US - United States of America* \(inserted by default\)
    -   **State**: *NY - New York*
7.  On the form toolbar, click **Save**.
8.  On the form toolbar of the [Branches](../UserGuide/CS_10_20_00.md#) form, click **Add New Record**, and in the Summary area, specify the following settings to create a branch for the service and equipment sales center:
    -   **Branch ID**: `SWEETEQUIP`
    -   **Branch Name**: `Service and Equipment Sales Center`
    -   **Company**: *SWEETLIFE*
9.  In the **Main Address** section of the **Branch Details** tab, specify the following address settings:
    -   **Address Line 1**: `218 Oakwood Ave`
    -   **City**: `New York`
    -   **Country**: *US - United States of America* \(inserted by default\)
    -   **State**: *NY - New York*
10. On the form toolbar, click **Save** and close the [Branches](../UserGuide/CS_10_20_00.md#) form.

The system returns you to the [Companies](../UserGuide/CS_10_15_00.md) form, on which you can now create an actual ledger for the company and branches you have created. For details, see [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step 4: Reviewing the Base Currency Settings { .section}

To review the settings of the company's base currency that you selected in Step 2, do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *USD*.
3.  In the Summary area, review the values in the **Description**, **Currency Symbol**, and **Decimal Precision** boxes for the base currency you selected for the company in Step 2.

    Notice that the **Active** check box is selected automatically and is unavailable for editing. This setting means that this is the base currency.


**Parent topic:**[Company with Branches that Do Not Require Balancing](../ImplementationGuide/config_Company_with_Branches_No_Balancing_Mapref.md)

