# Multiple Base Currencies: Implementation Activity {#_997e6cef-76c8-4fbb-bdae-a0700125ff66 .task}

In this implementation activity, you will learn how to create a company with a base currency that is different from the base currency of the companies in the tenant.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the management of SweetLife Fruits &amp; Jams has decided to establish a related company in Canada \(SweetLife Canada\). The company should have the *Without Branches* type and share the preferences and list of items with SweetLife Fruits &amp; Jams. However, the company should have a different base currency than SweetLife Fruit &amp; Jams has—Canadian dollar \(CAD\).

Acting as the implementation consultant, you need to create the needed company, specifying its base currency and actual ledger. You will also create a cash account for the company and specify currency rates for *CAD* and *USD*.

## Process Overview { .section}

In this activity, on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you will disable the features that do not support multiple base currencies and enable the needed features.

**Attention:** You will disable these features for training purposes. In a production environment, you should not disable any features you are using, because you will not be able to enable them after the *Multiple Base Currencies* feature has been enabled.

On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you will create a new company, specifying *CAD* as its base currency. You will then create an actual ledger for the new company by clicking **Create Ledger** on the form toolbar. On the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, you will review the settings of the base currency. On the [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form, you will open the financial periods for the new company.

On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you will create a GL account denominated in CAD, and on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, you will create a CAD cash account to be used in documents originating from the new SweetLife Canada company. On the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form, you will review and save the preferences that will be used in the system. Finally, on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form, you will create *CAD*-to-*USD* and *USD*-to-*CAD* rates that the system will use to convert amounts to and from the base currencies in the system.

## System Preparation { .section}

Before you start creating a company with the *CAD* base currency, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Enabling the Needed Features and Disabling Unsupported Features { .section}

To disable the features that do not support multiple base currencies and enable the features that are needed for the support of multiple base currencies, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form, make sure that the *Multibranch Support* and *Multicompany Support* features have been enabled.
3.  On the form toolbar, click **Modify** to make it possible to change the set of selected features.
4.  Clear the following check boxes:
    -   **Service Management**
    -   **Manufacturing**
    -   **Payroll**
5.  On the form toolbar, click **Enable**.
6.  On the form toolbar, click **Modify** and select the following check boxes:
    -   **Multicurrency Accounting** \(**Standard Financials** group\)
    -   **Customer and Vendor Visibility Restriction** \(**Advanced Financials** group\)
    -   **Multicurrency Projects** \(**Projects** group\)
    -   **Multiple Base Currencies** \(**Advanced Financials** group\)
7.  On the form toolbar, click **Enable** to enable the selected features.

## Step 2: Creating a New Company { .section}

To create a new company with the *CAD* base currency, do the following:

1.  Open the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form and click **Add New Record** on the form toolbar.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    -   **Company ID**: `SLCANADA`
    -   **Company Name**: `SweetLife Canada`
    -   **Company Type**: *Without Branches*
3.  In the **Main Address** section of the **Company Details** tab, specify the following address settings:
    -   **City**: `Toronto`
    -   **Country**: *CA - Canada*
    -   **State**: *ON - Ontario*
    -   **Postal Code**: `M4E 2V5`
4.  In the **Base Currency ID** box \(**Base Currency Settings \(Shared\)** section\), select *CAD - Canadian Dollar*.
5.  In the **Access Role** box \(**Configuration Settings** section\), select *Branch SLCanada*. This will make it possible for the implementation consultant to access this company.

    **Attention:** This access role has been preconfigured in the system and assigned to the *gibbs* user.

6.  On the form toolbar, click **Save**.

## Step 3: Creating a Ledger for the New Company { .section}

To create an actual ledger for the new company, do the following:

1.  While you are still on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form with the new company opened, click **Create Ledger** on the form toolbar.
2.  In the **Create Ledger** dialog box that opens, specify the following settings:
    -   **Ledger ID**: `SLCANADA`
    -   **Description**: `SLCANADA Actual Ledger`
3.  Click **Create** to create this ledger and close the dialog box.
4.  On the **Ledgers** tab, review the ledger you have created. Notice that the currency of the created ledger \(*CAD*\) is the base currency you have specified for the company.

## Step 4: Reviewing the Base Currency Settings { .section}

To review the company's base currency settings, do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *CAD*.
3.  In the Summary area, review the values in the **Description**, **Currency Symbol**, and **Decimal Precision** boxes for the base currency you selected for the company in Step 2 of this activity.

    Notice that the **Active** and **Use for Accounting** check boxes are selected automatically and are unavailable for editing. These check boxes are always selected and unavailable when the currency is the base currency of one of the companies in the tenant, and *CAD* is the base currency for the *SLCANADA* company.


## Step 5: Opening Financial Periods for the New Company { .section}

To open the financial periods for the new company, do the following:

1.  Open the [Company Financial Calendar](../UserGuide/GL_20_11_00.md) \(GL201100\) form.
2.  In the Summary area, specify the following settings:
    -   **Company**: *SLCANADA*
    -   **Financial Year**: *2026*
3.  On the More menu, click **Open Periods**.

    The [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form opens with *Open* selected in the **Action** box of the Summary area.

4.  On the form toolbar, click **Process All**.

    The system opens the **Processing** dialog box and runs the process of opening periods.

5.  Close the **Processing** dialog box.

## Step 6: Creating a Cash Account { .section}

To create a cash account denominated in CAD, do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  On the form toolbar, click **Add Row**, and in the added row, specify the following settings:
    -   **Account**: `10215`
    -   **Account Class**: *CASHASSET*
    -   **Description**: `Checking Account CAD`
    -   **Post Option**: *Detail*
    -   **Currency**: *CAD*
    -   **Revaluation Rate Type**: *SPOT*
3.  On the form toolbar, click **Save** to save your changes.
4.  Open the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form.
5.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Cash Account**: `10215SL`
    -   **Account**: *10215 - Checking Account CAD*
    -   **Branch**: *SLCANADA*
    -   **Currency**: *CAD* \(selected automatically\)
    -   **Curr. Rate Type**: *SPOT*
6.  On the **Payment Methods** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:
    -   **Payment Method**: *WIRE*
    -   **Use in AP**: Selected
    -   **Use in AR**: Selected
7.  On the **Entry Types** tab, click **Add Row** on the table toolbar, and in the **Entry Type ID** column of the added row, select *BANKFEE*.
8.  Click **Add Row** on the table toolbar, and in the **Entry Type ID** column of the added row, select *INTEREST*.
9.  On the form toolbar, click **Save** to save your changes.

## Step 7: Reviewing the Currency Management Preferences { .section}

To review and save the currency management preferences that will be used in the system, do the following:

1.  Open the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form.
2.  In the **Default Rate Types** section, review the rate type \(*SPOT*\) specified by default for subledgers.
3.  Make sure that the **Automatically Post to GL on Release** check box is selected.
4.  On the form toolbar, click **Save** to save the preferences.

## Step 8: Creating Currency Rates { .section}

To create currency rates that the system will use to convert amounts from the base currency of one company into the base currency of another company, do the following:

1.  Open the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.
2.  In the **To Currency** box, select *USD*. This is the currency to which the conversion with the specified exchange rate should be performed.
3.  In the **Effective Date** box, enter *1/1/2026*.
4.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:

    -   **From Currency**: *CAD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/1/2026*
    -   **Currency Rate**: `1.2974`
    -   **Mult./Div.**: *Divide*
    The **From Currency** box specifies the currency from which the conversion should be performed by using the **Currency Rate** and the operation selected in the **Mult./Div.** box. In this case, the conversion rule from *CAD* to *USD* is the following: `1 CAD = 1 / 1.2974 USD`.

5.  On the form toolbar, click **Save** to save your changes.

    The created rate is effective starting on January 1, 2026, and does not have an expiration date. The system will use this rate for converting the amounts in *CAD* into *USD* in any document with a date of January 1, 2026 or later.

6.  In the **To Currency** box, select *CAD*.
7.  In the **Effective Date** box, enter *1/1/2026*.
8.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:
    -   **From Currency**: *USD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/1/2026*
    -   **Currency Rate**: `1.2974`
    -   **Mult./Div.**: *Multiply*
9.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Multiple Base Currencies](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Mapref.md)

