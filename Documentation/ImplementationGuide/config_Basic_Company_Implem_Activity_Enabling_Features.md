# Company Without Branches: To Configure a Company Without Branches {#_082a5d06-0e65-44c0-8049-4df32ebf59d3 .task}

In this activity, you will learn how to enable the minimum set of features and define settings for a company without branches.

## Story { .section}

Suppose that as an administrator, you are going to start configuring a new company without branches in Acumatica ERP. The company is going to use the default features. You need to enable these features and then you need to configure a company entity in Acumatica ERP for the SweetLife Fruits &amp; Jams company, which at this time has only one office in New York.

## Process Overview { .section}

In this activity, you will enable the minimum set of features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you will create a company without branches and specify its settings. Finally, on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, you will review the settings of the new company's base currency.

## System Preparation { .section}

Before you start configuring a company without branches, sign in to a tenant with the out-of-the-box company as follows:

-   Enter the *admin* username and the *setup* password. You will be asked to set up a new password.
-   Change the password and confirm the new password, and click **Sign In**.

## Step 1: Enabling the Minimum Set of Features { .section}

To enable the minimum set of features, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Enable** to enable the default set of features, which are those for which the corresponding check boxes have been selected on the form. This set of features consists of *Finance*, *Standard Financials*, *Centralized Period Management*, *Platform*, *Monitoring &amp; Automation*, *Scheduled Processing*, *Authentication*, *Two-Factor Authentication*, *Active Directory and Other External SSO*, *OpenID Connect*, *Third-Party Integrations*, *Experimental Features*, and *Intelligent Text Completion*.

In a production environment, after the features are enabled and before you proceed with implementation, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. In this activity, you are using Acumatica ERP under the trial license, which does not require activation and provides all available features.

## Step 2: Defining a Company Without Branches { .section}

To configure the company without branches for SweetLife, do the following:

1.  Open the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click New right of the title.

2.  In the Summary area, specify the following settings:

    -   **Company ID**: `SWEETLIFE`
    -   **Company Name**: `SweetLife Fruits & Jams`
    In the **Company Type** box, notice that *Without Branches* is selected and unavailable.

3.  In the **Main Address** section of the **Company Details** tab, specify the following address settings:
    -   **City**: `New York`
    -   **Country**: *US - United States of America*
    -   **State**: *NY - New York*
4.  In the **Base Currency Settings** section, specify *USD - US Dollar* in the **Base Currency ID** box.

    **Attention:** The base currency you select for the first company in the tenant will be applied to all companies in the tenant. After you specify the base currency and save your changes, the base currency can be overridden until GL preferences are saved on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form. After the GL preferences have been saved, the base currency cannot be overridden.

5.  In the **Miscellaneous Settings \(Shared\)** section, enter `2` in the **Price/Cost Decimal Places** box.

    **Tip:** If you later add additional companies to the tenant, the settings you specify in this area for the first company in the tenant will be applied to all companies in the tenant.

6.  On the form toolbar, click **Save** to save your changes.

On the same form, you can now create an actual ledger for the company you have created. For details, see [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step 3: Reviewing the Base Currency Settings { .section}

To review the settings of the company's base currency, which you specified in Step 2, do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *USD*.
3.  In the Summary area, review the values in the **Description**, **Currency Symbol**, and **Decimal Precision** boxes for the base currency you selected for the company in Step 2.

    Notice that the **Active** check box is selected automatically and is unavailable for editing, indicating that this is the base currency.


**Parent topic:**[Company Without Branches](../ImplementationGuide/config_Basic_Company_Mapref.md)

