# Tax Agency: To Set Up a Tax Agency for VAT {#_0aea3ac1-1c92-4c1f-a9ac-5b629923f08d .task}

The following activity will walk you through the process of configuring a tax agency to which VATs will be reported.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as an implementation manager, are configuring the tax management functionality for the SweetLife Fruits &amp; Jams company. The company's managers have decided that they want to automatically generate tax bills to report VAT to the tax agency.

You need to create a new vendor and define it as a tax agency in the system.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, on the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, the *TAXAGENCY* vendor class has been configured.

## Process Overview { .section}

In this activity, on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you will enable the needed feature. To create a tax agency, you will create a new vendor on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form. On the tabs of this form, you will specify the vendor's details, select the **Vendor is Tax Agency** check box, and specify the needed settings on the **Tax Agency** tab.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Enabling the Needed Feature { .section}

To enable the *VAT Reporting* feature, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **VAT Reporting** check box under the **Standard Financials** group of features.
4.  On the form toolbar, click **Enable**.

## Step 2: Creating a Vendor Account { .section}

To create a vendor account to be used as a tax agency, proceed as follows:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Vendor ID**: `VATTAX`
    -   **Account Name**: `VAT Revenue Agency`
    -   **Vendor Status**: *Active*
4.  On the **General** tab, in the **Vendor Class** box, select *TAXAGENCY*.
5.  On the **Financial** tab \(**Vendor Properties** section\), select the **Vendor Is Tax Agency** check box.
6.  On the form toolbar, click **Save**.

## Step 3: Setting Up the Vendor as a Tax Agency { .section}

To set up the newly created vendor as a tax agency, proceed as follows:

1.  While you are still on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, go to the **Tax Agency** tab.
2.  In the **Default Tax Accounts** section, specify the following settings:
    -   **Tax Payable Account**: *24100 \(Tax Payable\)*
    -   **Tax Claimable Account**: *17000 \(Tax Claimable\)*
    -   **Tax Expense Account**: *65100 \(Other Tax Expenses\)*
3.  In the **Tax Report Settings** section, specify the following settings:
    -   **Default Tax Period Type**: *Month*
    -   **Automatically Generate Tax Bill**: Selected
    -   **Use Currency Precision**: Selected
4.  On the form toolbar, click **Save**.

**Parent topic:**[Tax Agency](../ImplementationGuide/Taxes_TaxAgency_Mapref.md)

