# GL Consolidation Configuration: To Configure a Consolidation Unit {#_b131e5c1-ca39-49e5-8c0c-7076d91322f6 .task}

In the following implementation activity, you will learn how to create a tenant with a consolidation unit and perform its initial configuration.

## Story {#section_swl_mjv_vxb .section}

Suppose that the SweetLife Fruits &amp; Jams company has acquired a company in Arizona, which has to be implemented as a subsidiary in a separate tenant of Acumatica ERP. The data of the SweetLife AZ subsidiary should be used for GL consolidation in the parent company, SweetLife. Acting as the system administrator, you need to create a new tenant for the SweetLife AZ company and perform its initial configuration.

**Attention:** For training purposes, you will create a company in a separate tenant to learn how to perform GL consolidation.

## Process Overview {#section_vwl_mjv_vxb .section}

In this activity, on the [Tenants](SM_20_35_20.md#) \(SM203520\) form, you will create a new tenant with the out-of-the-box company \(a company in a tenant without any dataset\). On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you will enable the features needed for a consolidation unit. On the [Companies](CS_10_15_00.md) \(CS101500\) form, you will create a company without branches and create an actual ledger for this company.

You will then update the length of the *ACCOUNT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form and upload a chart of accounts from an Excel file on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form. On the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, you will specify the needed GL preferences.

On the [Financial Year](GL_10_10_00.md) \(GL101000\) form, you will create the first financial year for the company and create periods for it. On the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form, you will generate the calendar for this financial year and, finally, on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form, you will open the periods in the first financial year.

## System Preparation {#section_axl_mjv_vxb .section}

Before you start configuring the consolidation unit, make sure that you have downloaded the [AZ\_Subsidiary\_COA.xlsx](Files/AZ_Subsidiary_COA.xlsx) file with the chart of accounts of the SweetLife AZ company.

## Step 1: Creating a Tenant with the Consolidation Unit {#section_lxl_mjv_vxb .section}

To create a tenant with the out-of-the-box company where you will configure the consolidation unit, do the following:

1.  Launch the Acumatica ERP instance and sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  Open the [Tenants](SM_20_35_20.md#) \(SM203520\) form, and click **Add New Record** on the form toolbar.
3.  In the **Tenant Name** box, type `AZ_Subsidiary`.
4.  In the **Login Name** box, type `AZ_Subsidiary`.
5.  On the form toolbar, click **Save**.

    The system creates the tenant.

6.  Sign out of the current tenant.

    You are now on the Sign-In page and you can sign in to the tenant you have just created.

7.  Sign in to the newly created tenant by using the *admin* username and the *setup* password.
8.  In the New Password boxes, change the *setup* password to *123*.

    **Attention:** The password you are entering is for training purposes only. In a production environment, you would create a complex password.

9.  Select the unnamed check box under the password box and click **Sign In**.

    **Tip:** For training purposes, you will complete all activities in the *AZ\_Subsidiary* tenant by using the *admin* username. In a live system, you would use this username for initial system configuration, and then you would create usernames for specific users and assign the needed access rights to them.


## Step 2: Enabling the Needed Set of Features {#section_rxl_mjv_vxb .section}

To enable the set of features needed for the consolidation unit, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  In the list of features, make sure that the check boxes for the following default set of features are selected and select the check boxes for the following features needed for the consolidation unit:
    -   *Finance*
    -   *Standard Financials*
    -   *Multibranch Support*
    -   *Multicompany Support*
    -   *Centralized Period Management*
    -   *Advanced Financials*
    -   *General Ledger Consolidation*
    -   *Platform*
    -   *Monitoring &amp; Automation*
    -   *Scheduled Processing*
    -   *Authentication*
    -   *Third-Party Integrations*
3.  On the form toolbar, click **Enable**.

## Step 3: Creating a Company Without Branches {#section_txl_mjv_vxb .section}

To create a company without branches, do the following:

1.  Open the [Companies](CS_10_15_00.md) \(CS101500\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:

    -   **Company ID**: `SWEETAZ`
    -   **Company Name**: `SweetLife AZ`
    In the **Company Type** box, notice that *Without Branches* is selected; you will leave this default setting.

4.  In the **Main Address** section of the **Company Details** tab, select *US - United States of America* in the **Country** box.
5.  In the **State** box, select *AZ - ARIZONA*.
6.  In the **Base Currency Settings** section, select *USD - US Dollar* in the **Base Currency ID** box.
7.  On the **Visual Appearance** tab, select the **Override Colors for the Selected Company** check box.
8.  In the **Primary Color** box, type the number sign followed by `31b4a5`.
9.  On the form toolbar, click **Save** to save your changes.

## Step 4: Creating an Actual Ledger {#section_wxl_mjv_vxb .section}

To create an actual ledger for the new company, which will also be the source of consolidation data, do the following:

1.  Open the [Ledgers](GL_20_15_00.md) \(GL201500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Ledger ID**: `ACTUALAZ`
    -   **Description**: `Actual Ledger`
    -   **Type**: *Actual*
    -   **Consolidation Source**: Selected
4.  On the **Companies** tab, click **Add Row** and in the **Company** column, select *SWEETAZ*.
5.  On the form toolbar, click **Save** to save your changes.

## Step 5: Creating the Chart of Accounts {#section_zxl_mjv_vxb .section}

Before you start creating the chart of accounts, you need to modify the *ACCOUNT* segmented key. Do the following:

1.  Open the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
2.  In the **Segmented Key ID** box, select *ACCOUNT*.
3.  For the only row in the table, in the **Length** column, specify `5`.
4.  On the form toolbar, click **Save**.
5.  Open the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.
6.  On the form toolbar, click **Load Records from File**.
7.  In Step 1 of the **Import Data** wizard, which opens, click Upload File and select the file path to the [AZ\_Subsidiary\_COA.xlsx](Files/AZ_Subsidiary_COA.xlsx) file that you downloaded for this activity.
8.  In Step 2 of the wizard, leave the default settings, and click **Next**.
9.  In Step 3 of the wizard, leave the current mapping and click **Finish**.
10. On the form toolbar, click **Save**.

## Step 6: Specifying GL Preferences {#section_byl_mjv_vxb .section}

To specify the general ledger preferences for the SweetLife AZ company, do the following:

1.  Open the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.
2.  In the **YTD Net Income Account** box in the **Chart of Accounts Settings** section, select *33000 - Net Income*. This is a required setting for enabling the system.
3.  In the **Retained Earnings Account** box, select *32000 - Retained Earnings*. This setting is also required for enabling the system.
4.  On the form toolbar, click **Save**.
5.  In the **Posting Settings** section on the **General** tab, make sure that the **Automatically Post on Release** check box is selected.
6.  In the **Data Entry Settings** section, clear the **Hold Batches on Entry** check box.
7.  On the form toolbar, click **Save**.

## Step 7: Creating a Financial Calendar for the Consolidation Unit {#section_dyl_mjv_vxb .section}

To set up the first financial year for the SweetLife AZ company and open the financial periods, do the following:

1.  Open the [Financial Year](GL_10_10_00.md) \(GL101000\) form.
2.  In the **Financial Year Starts On** box of the Summary area, select *1/1/2025*.
3.  In the **Period Type** box, make sure *Month* is selected.
4.  Select the **Has Adjustment Period** check box.
5.  On the form toolbar, click **Create Periods**.
6.  Click **Save** to save the settings of the financial year.
7.  Open the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.
8.  In the **Financial Year** box of the Summary area, make sure that *2025* is selected.
9.  On the form toolbar, click **Generate Calendar**.
10. In the **Generate GL Calendar** dialog box, which opens, make sure that *2025* is selected in the **From Year** and **To Year** boxes, and click **Generate**.

    The system generates periods for the *2025* financial year.

11. On the More menu, click **Open Periods**.

    The [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form opens with the *Open* option selected in the **Action** box of the Summary area.

12. On the form toolbar, click **Process All**.

    The system opens the **Processing** dialog box and runs the process of opening periods.

13. Close the **Processing** dialog box.

**Parent topic:**[Configuring GL Consolidation](../UserGuide/Finance_GL_Consolidation_Configuration_Mapref.md)

