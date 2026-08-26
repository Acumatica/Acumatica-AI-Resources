# Tax Calculation Methods: To Apply Taxes {#_721b73e5-93fc-4a4a-a802-64e82be20b39 .task}

The following activity will walk you through the process of applying the created taxes to a document.

## Story {#section_z3h_fjv_vxb .section}

Suppose that you want to analyze how the taxes are calculated depending on the selected rule. You want to use the *CANDYY* customer to create a document for it and apply the taxes with different calculation methods to this document. \(You do not need to save and release the document.\)

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the *CANDYY* customer account has been configured on the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Process Overview {#section_cjh_fjv_vxb .section}

In this activity, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an invoice with two lines and with the taxes of the *TRAINING* tax zone applied. You will remove and add the needed taxes on the **Taxes** tab, analyzing how the system calculated the taxes applied to the document.

## System Preparation {#section_ejh_fjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button and select *2/28/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  As a prerequisite activity, configure the tax zone, tax category, and taxes as described in [Tax Calculation Methods: To Create Taxes](Taxes_Selecting_Tax_Calc_Methods_Activity1.md).

## Step 1: Creating an Invoice and Applying the *INCLINELEVEL* Tax {#section_gjh_fjv_vxb .section}

To create an invoice and apply a tax with the *Inclusive Line-Level* calculation method to it, proceed as follows:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *CANDYY*
    -   **Date**: *2/28/2026* \(inserted by default\)
    -   **Post Period**: *02-2026* \(inserted by default based on the selected date\)
    -   **Description**: `Calculation rules`
3.  On the **Details** tab, add a row by clicking **Add Row** and then specifying the following settings:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Transaction Descr.**: `Taxable item sale`
    -   **Ext. Price**: `115.11`
    -   **Tax Category**: *TRAINING*
4.  Click **Add Row** and add another row, specifying the following settings:

    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Transaction Descr.**: `Taxable item sale`
    -   **Ext. Price**: `154.77`
    -   **Tax Category**: *TRAINING*
    **Attention:** You do not need to save and release the invoice created in this activity.

5.  On the **Taxes** tab, in the **Tax Info** section, select *TRAINING* in the **Customer Tax Zone** box.
6.  In the table, remove the lines with the *EXDOCLEVEL* and *EXLINELEVEL* taxes by clicking **Delete Row** on the table toolbar, and leave the *INCLINELEVEL* tax. Review the invoice.

    When the *Inclusive Line-Level* calculation method is selected, the system calculates the tax amount on each line and then adds the amounts. This method is based on the assumption that the **Ext. Price** of each line already includes the tax amount calculated by using the specified tax rate. The **Taxes** tab displays the total of taxable amounts and the total tax calculated for the document, which is the sum of the tax amounts for all lines of the document that are subject to tax. Based on the rule, the system calculates the tax of $12.85 for the document.

    The following table shows how the system calculates the taxes for the invoice.

    | |Ext. Price = Taxable Amount + Tax Amount|Taxable Amount = Round \(Ext. Price / \(1 + Tax Rate\)\)|Tax Amount = Round \(Taxable Amount \* Tax Rate\)|Total = Line 1 + Line 2|
    |---|----------------------------------------|--------------------------------------------------------|-------------------------------------------------|-----------------------|
    |Line 1|**115.11**|115.11 / \(1 + 0.05\) = 109.628 ≈ **109.63**|109.63 \* 0.05 = 5.4815 ≈ **5.48**| |
    |Line 2|**154.77**|154.77 / \(1 + 0.05\) = **147.4**|147.4 \* 0.05 = **7.37**| |
    |Document| |109.63 + 147.4 = **257.03**|5.48 + 7.37 = **12.85**|**269.88**|


## Step 2: Applying the *EXDOCLEVEL* Tax to the Invoice {#section_kjh_fjv_vxb .section}

To apply a tax with the *Exclusive Document-Level* calculation method to the invoice, proceed as follows:

1.  While you are still on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the created invoice open, on the **Taxes** tab, remove the *INCLINELEVEL* tax. Add a row with the *EXDOCLEVEL* tax.

    The row fills in with the respective details.

2.  Review the invoice details.

    When the *Exclusive Document-Level* calculation method is selected, the system calculates the sum of the line amounts to which the tax applies, and then calculates the tax amount based on the sum.

    The system has applied the *EXDOCLEVEL* tax to the invoice. The detail total \($269.88\) is the taxable amount on which the tax is calculated. Based on the rule, the system calculates the tax for the document: $269.88 \* 0.05 = $13.494 ≈ $13.49. The document's total amount is $283.37 \($269.88 + $13.49\). The table below shows how the system calculates the taxes for the invoice.

    | |Ext. Price|Taxable Amount = Detail Total = Line 1 Ext. Price + Line 2 Ext. Price|Tax Amount = Round \(Detail Total \* Tax Rate\)|Total|
    |---|----------|---------------------------------------------------------------------|-----------------------------------------------|-----|
    |Line 1|**115.11**| | | |
    |Line 2|**154.77**| | | |
    |**Document Amount**=Taxable Amount+Tax Amount| |115.11 + 154.77 = **269.88**|269.88 \* 0.05 = 13.494 ≈ **13.49**|269.88 + 13.49 = **283.37**|


## Step 3: Applying the *EXLINELEVEL* Tax to the Invoice {#section_ojh_fjv_vxb .section}

To apply a tax with the *Exclusive Line-Level* calculation method to the invoice, proceed as follows:

1.  While you are still on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the created invoice open, on the **Taxes** tab, remove the *EXDOCLEVEL* tax. Add a row with the *EXLINELEVEL* tax.

    The row fills in with the respective details.

2.  Review the invoice details.

    When the *Exclusive Line-Level* calculation method is selected, the system calculates the tax amount on each line to which the tax applies and then calculates the sum of the tax amounts. The table below shows how the system calculates the taxes for the invoice.

    The system has applied the *EXLINELEVEL* tax to the invoice. The detail total \($269.88\) is displayed as the taxable amount for the document. Taxes are calculated separately for each line and then summed. Based on the rule, the system calculates taxes for each line: $115.11 \* 0.05 = $5.7555 ≈ $5.76; $154.77 \* 0.05 = $7.7385 ≈ $7.74. The total tax is $5.76 + $7.74 = $13.50. The document's total amount is $283.38 \($269.88 + $13.50\).

    | |Ext. Price|Taxable Amount = Ext. Price|Tax Amount = Round \(Taxable Amount \* Tax Rate\)|Total|
    |---|----------|---------------------------|-------------------------------------------------|-----|
    |Line 1|**115.11**|**115.11**|115.11 \* 0.05 = 5.7555 ≈ **5.76**| |
    |Line 2|**154.77**|**154.77**|154.77 \* 0.05 = 7.7385 ≈ **7.74**| |
    |**Document Balance** = Taxable Amount + Tax Amount| |**269.88**|5.76 + 7.74 = **13.50**|269.88 + 13.50 = **283.38**|

    **Tip:** Notice that because of rounding, the tax amounts calculated for a document may vary from the total of tax amounts calculated for the document lines. You have to select the tax calculation method based on your needs and taxation rules.

3.  Close the form without saving your changes to the invoice, which was created solely for testing purposes.

**Parent topic:**[Selecting Tax Calculation Methods](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_Mapref.md)

