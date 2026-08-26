# Tax Calculation Methods: To Apply a Second-Level Tax {#_b5df06c9-250d-4892-8496-cd266f56bb91 .task}

The following activity will walk you through the process of configuring a second-level tax and applying it to a document.

## Story {#section_klh_fjv_vxb .section}

Suppose that you want to configure a second-level tax with the *Compound Line-Level* calculation method in the system and review how it is applied to documents. You are going to use the Candyy Cafe customer for the activities in this lesson.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the *CANDYY* customer account has been configured on the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Process Overview {#section_nlh_fjv_vxb .section}

In this activity, you will create a new tax category on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form. You will then create a second-level tax on the [Taxes](TX_20_50_00.md) \(TX205000\) form, and assign it and the *EXLINELEVEL* tax to the created tax category. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an invoice with two lines, select the created tax category in the invoice lines, and analyze how the taxes assigned to the tax category are applied to the invoice.

## System Preparation {#section_plh_fjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *2/28/2026*. If a different date is displayed, click the Business Date menu button and select *2/28/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  As a prerequisite activity, configure the tax zone, tax category, and taxes as described in [Tax Calculation Methods: To Create Taxes](Taxes_Selecting_Tax_Calc_Methods_Activity1.md).

## Step 1: Creating a Tax Category {#section_rlh_fjv_vxb .section}

To create a tax category for a second-level tax, proceed as follows:

1.  Open the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Tax Category ID**: `TAXONTAX`
    -   **Description**: `Second-level tax`
3.  On the form toolbar, click **Save** to save the tax category.

## Step 2: Creating a Second-Level Tax and Assigning it to the Tax Zone {#section_tlh_fjv_vxb .section}

To create a second-level tax and assign it to the tax zone, proceed as follows:

1.  Open the [Taxes](TX_20_50_00.md) \(TX205000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Tax ID**: `LINELEVEL2`
    -   **Description**: `Compound Line-Level Tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Compound Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings for the row:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `5`
    -   **Reporting Group**: *Default Output Group*
4.  On the **GL Accounts** tab, select *24100* in the **Tax Payable Account** box.
5.  On the form toolbar, click **Save** to save the created tax.
6.  Open the [Tax Zones](TX_20_60_00.md) \(TX206000\) form.
7.  In the **Tax Zone ID** box, select *TRAINING*.
8.  On the table toolbar of the **Applicable Taxes** tab, click **Add Row** and add *LINELEVEL2*.
9.  Remove the *EXDOCLEVEL* and *INCLINELEVEL* taxes from the table.
10. On the form toolbar, click **Save** to save the tax zone.

## Step 3: Adding Taxes to the Tax Category {#section_vlh_fjv_vxb .section}

To add taxes to the created tax category, proceed as follows:

1.  Open the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
2.  In the **Tax Category ID** box, select *TAXONTAX*.
3.  Add the taxes to the table by clicking **Add Row** on the table toolbar and specifying the following identifiers of each tax:
    -   **Tax ID**: *EXLINELEVEL*
    -   **Tax ID**: *LINELEVEL2*
4.  On the form toolbar, click **Save** to save the changes to the tax category.

## Step 4: Creating an Invoice and Analyzing How the Second-Level Tax is Applied {#section_xlh_fjv_vxb .section}

To create an invoice and analyze how the second-level tax is applied to it, proceed as follows:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:

    -   **Type**: *Invoice*
    -   **Customer**: *CANDYY*
    -   **Date**: *2/28/2026* \(inserted by default\)
    -   **Description**: `Tax-on-tax calculation`
    **Attention:** You do not need to save and release the invoice created in this activity.

3.  On the **Details** tab, add rows by clicking **Add Row** and specifying the following settings:

    |Branch|Transaction Descr.|Ext. Price|Tax Category|
    |------|------------------|----------|------------|
    |*HEADOFFICE*|`Taxable item sale`|`100`|*TAXONTAX*|
    |*HEADOFFICE*|`Taxable item sale`|`25`|*TAXONTAX*|

4.  On the **Taxes** tab, in the **Tax Info** section, select *TRAINING* in the **Customer Tax Zone** box.
5.  In the table, review the calculated taxes and the way the system has applied them.

    First, the system has applied the first-level *EXLINELEVEL* tax to the invoice. The detail total \($125\) is the taxable amount for the *EXLINELEVEL* tax, which is the first-level tax. Taxes are calculated separately for each line and then summed. Based on the rule, the system has calculated taxes for each line as follows before calculating the sum of the taxes: $100 \* 0.05 = $5; $25 \* 0.05 = $1.25. The total *EXLINELEVEL* tax is $6.25 \($5.00 + $1.25\).

    Then the system has applied the second-level *LINELEVEL2* tax. The system has applied this tax to each line. The taxable amount for the second-level tax is calculated as the taxable amount of the line plus the tax amount of the first-level tax that was applied to the line \($131.25\). The total second-level tax for the document is the sum of tax amounts calculated for the document lines. Based on the rule, the system has calculated the *LINELEVEL2* tax for each line: \($100 + $5\) \* 0.05 = $5.25; \($25 + $1.25\) \* 0.05 = $1.3125 ≈ $1.31. The total second-level tax for the document is $5.25 + $1.31 = $6.56.

    The total tax amount for the document is the sum of the first-level and second-level tax amounts, which is $12.81 \($6.25 + $6.56\). Thus, the document's balance is $137.81 \($125.00 + $12.81\).

6.  Close the form without saving your changes to the invoice, which was created solely for testing purposes.

**Parent topic:**[Selecting Tax Calculation Methods](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_Mapref.md)

