# AR Retainage Adjustment Cases {#_d17d1d80-b165-4c5e-9ed0-b54e282e0508 .concept}

In this topic, you will read about the cases when you may need to adjust retainage amounts, correct released retainage, and revert incorrect retainage documents. The following sections describe each case, the actions that should be taken, and the resulting documents that will be generated in the system.

## 1. Retainage Amount Should be Increased { .section}

Suppose that a $1,000 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $900. The retainage has not been released, that is, no retainage document has been created. This invoice should be corrected as follows: the invoice amount should be decreased to $850, the retainage amount should be increased to $150, and the total amount is the same \($1,000\).

**Actions to Be Taken**

To increase the retainage amount, you perform the following general instructions:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you reverse the original invoice by clicking **Reverse and Apply to Memo** on the More menu.
2.  On the same form, you create a new invoice specifying the correct retainage amount \($150\). For details, see [To Enter an Invoice with Retainage \(with Items' Quantities and Unit Costs\)](AR__HOW_To_Create_Invoice_with_Retainage.md) and [To Enter an Invoice with Retainage \(with Line Totals\)](AR__HOW_To_Create_Invoice_with_Retainage_LineTotals.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A credit memo that reverses the original invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Detail Total**: *1000*
    -   **Retained Amount**: *100*
    -   **Amount**: *900*
    -   **Balance**: *0*
    -   **Original Document** \(**Financial** tab\): The reference number of the original invoice
    -   **Applications** tab: The original invoice with retainage
-   An invoice with the increased retainage amount. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Detail Total**: *1000*
    -   **Retained Amount**: *150*
    -   **Amount**: *850*
    -   **Balance**: *850*
    -   **Original Retainage** \(**Retainage** tab\): *150*
    -   **Unpaid Retainage**: \(**Retainage** tab\): *150*

## 2. Retainage Amount Should be Decreased { .section}

Suppose that a $1,000 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $900. The retainage has not been released, that is, no retainage document has been created. This invoice should be corrected as follows: the invoice amount should be increased to $950, the retainage amount should be decreased to $50, and the total amount is the same \($1,000\).

**Actions to Be Taken**

To decrease the retainage amount, you perform the following general instructions:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you reverse the original invoice by clicking **Reverse and Apply to Memo** on the More menu.
2.  On the same form, you create a new invoice specifying the correct retainage amount \($50\). For details, see [To Enter an Invoice with Retainage \(with Items' Quantities and Unit Costs\)](AR__HOW_To_Create_Invoice_with_Retainage.md) and [To Enter an Invoice with Retainage \(with Line Totals\)](AR__HOW_To_Create_Invoice_with_Retainage_LineTotals.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A credit memo that reverses the original invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Detail Total**: *1000*
    -   **Retained Amount**: *100*
    -   **Amount**: *900*
    -   **Balance**: *0*
    -   **Original Document** \(**Financial** tab\): The reference number of the original invoice
    -   **Applications** tab: The original invoice with retainage
-   An invoice with the decreased retainage amount. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Detail Total**: *1000*
    -   **Retained Amount**: *50*
    -   **Amount**: *950*
    -   **Balance**: *950*
    -   **Original Retainage** \(**Retainage** tab\): *50*
    -   **Unpaid Retainage**: \(**Retainage** tab\): *50*

## 3. Retainage Amount Should be Adjusted for an Unreleased Retainage Invoice { .section}

Suppose that an original invoice has been created correctly but you have released a greater or lower retainage amount. In other words, you released the retainage on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form and the system created a retainage document on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. This retainage document has an incorrect amount, but it has not yet been released.

**Actions to Be Taken**

To adjust the retainage amount, you perform the following general instructions:

1.  On the [Invoices and Memos](AR_30_10_00.md) form, you find the retainage document with the incorrect amount.
2.  You delete the document by clicking **Delete** on the form toolbar and clicking **OK** in the displayed dialog box.

**Result**

Because the retainage document has not been released yet, the **Unreleased Retainage** box on the **Retainage** tab of the [Invoices and Memos](AR_30_10_00.md) form remains unchanged for the original invoice.

## 4. Retainage Amount Should be Increased for a Released Retainage Invoice { .section}

Suppose that a $1,000 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $900. The retainage document has been released but its amount is $90.

**Actions to Be Taken**

To release the correct retainage amount, you perform the following general instructions \(scenario 1\):

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you reverse the incorrect retainage document of $90 by clicking **Reverse and Apply to Memo** on the More menu.
2.  On the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, you release the correct retainage amount of $100. For details, see [To Create a Retainage Document \(Release Retainage\)](AR__HOW_To_Release_Retainage.md).

Alternatively, you can perform the following steps \(scenario 2\):

1.  On the [Release AR Retainage](AR_51_00_00.md) form, you find the original invoice with the unreleased retainage of $10.
2.  You release this retainage by selecting the line for the document and clicking **Process** on the form toolbar. For details, see [To Create a Retainage Document \(Release Retainage\)](AR__HOW_To_Release_Retainage.md).

**Result**

If you have performed scenario 1, the system will generate the following documents:

-   A credit memo of $90 that reverses the original retainage invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *90*
    -   **Amount**: *90*
    -   **Balance**: *0*
    -   **Original Document** \(**Financial** tab\): The reference number of the original retainage invoice
-   A retainage invoice with the correct retainage amount of $100. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *100*
    -   **Amount**: *100*
    -   **Balance**: *100*
    -   **Original Document** \(**Financial** tab\): The reference number of the original invoice with retainage

If you have performed scenario 2, the system will generate the following documents:

-   A retainage invoice with the incorrect retainage amount of $90. This document remains unchanged in the system. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *90*
    -   **Amount**: *90*
    -   **Balance**: *90*
    -   **Original Document** \(**Financial** tab\): The reference number of the original invoice with retainage
-   A retainage invoice with the amount of $10. This document is generated in addition to the $90 retainage invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *10*
    -   **Amount**: *10*
    -   **Balance**: *10*
    -   **Original Document** \(**Financial** tab\): The reference number of the original invoice with retainage

## 5. Retainage Amount Should be Decreased for a Released Retainage Invoice { .section}

Suppose that a $1,000 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $900. You needed to release $30 of the retainage, but you released $60 by mistake. The 60$ retainage invoice has also been released.

**Actions to Be Taken**

To correct the released retainage amount, you perform the following general instructions:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you reverse the incorrect retainage document of $60 by clicking **Reverse and Apply to Memo** on the More menu.
2.  On the [Release AR Retainage](AR_51_00_00.md) \(AP510000\) form, you release the correct retainage amount of $30. For details, see [To Create a Retainage Document \(Release Retainage\)](AR__HOW_To_Release_Retainage.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A credit memo of $60 that reverses the original retainage invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *60*
    -   **Amount**: *60*
    -   **Balance**: *0*
    -   **Original Document** \(**Financial** tab\): The reference number of the original retainage invoice
    -   **Applications** tab: The original retainage invoice of $60
-   A retainage invoice with the correct retainage amount of $30. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *30*
    -   **Amount**: *30*
    -   **Balance**: *30*
    -   **Original Document** \(**Financial** tab\): The reference number of the original invoice with retainage

## 6. The Retainage is Released for the Wrong Invoice but the Retainage Document Has Not Been Released { .section}

Suppose that a $1,200 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $1,100. You released the retained amount of $100, but the retainage document is still in the *On Hold* status. After you generated the retainage document, you realized that you released retainage for the wrong invoice.

**Actions to Be Taken**

To correct the mistake and release retainage for the correct invoice, you perform the following general instructions:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you find the incorrect retainage document with the *On Hold* status.
2.  You delete the document by clicking **Delete** on the form toolbar and clicking **OK** in the displayed dialog box.
3.  On the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, you release the retainage for the correct invoice. For details, see [To Create a Retainage Document \(Release Retainage\)](AR__HOW_To_Release_Retainage.md).

**Result**

Because the retainage document has not been released yet, the **Unreleased Retainage** box on the **Retainage** tab of the [Invoices and Memos](AR_30_10_00.md) form remains unchanged for the original invoice.

## 7. The Retainage is Released for the Wrong Invoice and the Retainage Document Has Been Released { .section}

Suppose that a $1,200 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $1,100. You released the retained amount of $100 and released the generated $100 retainage document. After you released the retainage document, you realized that you released retainage for the wrong invoice.

**Actions to Be Taken**

To correct the mistake and release retainage for the correct invoice, you perform the following general instructions:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you reverse the incorrect retainage document of $100 by clicking **Reverse and Apply to Memo** on the More menu.
2.  On the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, you release retainage for the correct invoice. For details, see [To Create a Retainage Document \(Release Retainage\)](AR__HOW_To_Release_Retainage.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A credit memo of $100 that reverses the wrong retainage invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *100*
    -   **Amount**: *100*
    -   **Balance**: *0*
    -   **Original Document** \(**Financial** tab\): The reference number of the original retainage invoice
    -   **Applications** tab: The original retainage invoice of $100
-   A $100 retainage invoice for the correct original invoice. This document has the following settings on the [Invoices and Memos](AR_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *100*
    -   **Amount**: *100*
    -   **Balance**: *100*
    -   **Original Document** \(**Financial** tab\): The reference number of the correct original invoice with retainage

## 8. Unreleased Retainage Should be Written Off { .section}

Suppose that a $1,000 AR invoice \(original invoice\) has been released. The retained amount is $100 and the invoice amount is $900. You released the retained amount of $100 and released the retainage document. Later you found out that the $100 retainage will never be paid and must be written off.

**Actions to Be Taken**

To write off the retainage document, you perform the following general instructions:

1.  On the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form, you adjust the write-off limit of the customer by specifying *100* in the **Write-Off Limit** box.
2.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you find the retainage document of $100 that must be written off.
3.  On the More menu, you click **Write Off**.
4.  On the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) form, which is opened, you click **Process**. For details, see [Direct Write-Offs: To Process a Balance Write-Off](Finance_Direct_Write-Offs_Balance_WO_Activity.md).

**Result**

After you have performed the instructions, the system will close the $100 retainage invoice. The invoice will have the following settings on the [Invoices and Memos](AR_30_10_00.md) form:

-   **Retainage Document**: Selected
-   **Detail Total**: *100*
-   **Amount**: *100*
-   **Balance**: *0*
-   **Original Document** \(**Financial** tab\): The reference number of the original invoice with retainage
-   **Applications** tab: A document with the *Balance WO* type and the **Amount Paid \(USD\)** of $100

**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

