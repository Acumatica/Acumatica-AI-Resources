# AP Retainage Adjustment Cases {#_b71b86ba-1317-4681-a182-23d45162b24d .concept}

In this topic, you will read about the cases when you may need to adjust retainage amounts, correct released retainage, and revert incorrect retainage documents. The following sections describe each case, the actions that should be taken, and the resulting documents that will be generated in the system.

## 1. Retainage Amount Should be Increased { .section}

Suppose that a $1,000 AP bill \(original bill\) has been released. The retained amount is $100 and the bill amount is $900. The retainage has not been released, that is, no retainage document has been created. This bill should be corrected as follows: the bill amount should be decreased to $850, the retainage amount should be increased to $150, and the total amount is the same \($1,000\).

**Actions to Be Taken**

To increase the retainage amount, you perform the following general instructions:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you reverse the original bill by clicking **Reverse** on the More menu. For details, see [To Reverse a Bill](AP__how_Reversing_a_Bill.md).
2.  On the same form, you create a new bill specifying the correct retainage amount \($150\). For details, see [To Enter a Bill with Retainage \(with Items' Quantities and Unit Costs\)](AP__HOW_To_Create_Bill_with_Retainage.md) and [To Enter a Bill with Retainage \(with Line Totals\)](AP__HOW_To_Enter_Bill_with_Retainage_Line_Total.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A debit adjustment that reverses the original bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Detail Total**: *1,000*
    -   **Amount**: *900*
    -   **Balance**: *900*
    -   **Original Document** \(**Financial** tab\): The reference number of the original bill
    -   **Applications** tab: Empty
-   A bill with the increased retainage amount. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Amount**: *850*
    -   **Balance**: *850*
    -   **Original Retainage** \(**Retainage** tab\): *150*
    -   **Unpaid Retainage**: \(**Retainage** tab\): *150*

## 2. Retainage Amount Should be Decreased { .section}

Suppose that a $1,000 AP bill \(original bill\) has been released. The retained amount is $100 and the bill amount is $900. The retainage has not been released, that is, no retainage document has been created. This bill should be corrected as follows: the bill amount should be increased to $950, the retainage amount should be decreased to $50, and the total amount is the same \($1,000\).

**Actions to Be Taken**

To decrease the retainage amount, you perform the following general instructions:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you reverse the original bill by clicking **Reverse** on the More menu. For details, see [To Reverse a Bill](AP__how_Reversing_a_Bill.md).
2.  On the same form, you create a new bill specifying the correct retainage amount \($50\). For details, see [To Enter a Bill with Retainage \(with Items' Quantities and Unit Costs\)](AP__HOW_To_Create_Bill_with_Retainage.md) and [To Enter a Bill with Retainage \(with Line Totals\)](AP__HOW_To_Enter_Bill_with_Retainage_Line_Total.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A debit adjustment that reverses the original bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Detail Total**: *1,000*
    -   **Amount**: *900*
    -   **Balance**: *900*
    -   **Original Document** \(**Financial** tab\): The reference number of the original bill
    -   **Applications** tab: Empty
-   A bill with the decreased retainage amount. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Apply Retainage**: Selected
    -   **Amount**: *950*
    -   **Balance**: *950*
    -   **Original Retainage** \(**Retainage** tab\): *50*
    -   **Unpaid Retainage**: \(**Retainage** tab\): *50*

## 3. Retainage Amount Should be Adjusted for an Unreleased Retainage Bill { .section}

Suppose that an original bill has been created correctly but you have released a greater or lower retainage amount. In other words, you released the retainage on the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form and the system created a retainage document on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. This retainage document has an incorrect amount, but it has not yet been released.

**Actions to Be Taken**

To adjust the retainage amount, you perform the following general instructions:

1.  On the [Bills and Adjustments](AP_30_10_00.md) form, you find the retainage document with the incorrect amount.
2.  You delete the document by clicking **Delete** on the form toolbar and clicking **OK** in the displayed dialog box.

**Result**

Because the retainage document has not been released yet, the **Unreleased Retainage** box on the **Retainage** tab of the [Bills and Adjustments](AP_30_10_00.md) form remains unchanged for the original bill.

## 4. Retainage Amount Should be Increased for a Released Retainage Bill { .section}

Suppose that a $1,000 AP bill \(original bill\) has been released. The retained amount is $100 and the bill amount is $900. The retainage document has been released but its amount is $90.

**Actions to Be Taken**

To release the correct retainage amount, you perform the following general instructions \(scenario 1\):

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you reverse the incorrect retainage document of $90 by clicking **Reverse** on the More menu. For details, see [To Reverse a Bill](AP__how_Reversing_a_Bill.md).
2.  On the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, you release the correct retainage amount of $100. For details, see [To Create a Retainage Document \(Release Retainage\)](AP__HOW_To_Release_Retainage.md).

Alternatively, you can perform the following steps \(scenario 2\):

1.  On the [Release AP Retainage](AP_51_00_00.md) form, you find the original bill with the unreleased retainage of $10.
2.  You release this retainage by selecting the line for the document and clicking **Process** on the form toolbar. For details, see [To Create a Retainage Document \(Release Retainage\)](AP__HOW_To_Release_Retainage.md).

**Result**

If you have performed scenario 1, the system will generate the following documents:

-   A debit adjustment of $90 that reverses the original retainage bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *90*
    -   **Amount**: *90*
    -   **Balance**: *90*
    -   **Original Document** \(**Financial** tab\): The reference number of the original retainage bill
-   A retainage bill with the correct retainage amount of $100. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *100*
    -   **Amount**: *100*
    -   **Balance**: *100*
    -   **Original Document** \(**Financial** tab\): The reference number of the original bill with retainage

If you have performed scenario 2, the system will generate the following documents:

-   A retainage bill with the incorrect retainage amount of $90. This document remains unchanged in the system. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *90*
    -   **Amount**: *90*
    -   **Balance**: *90*
    -   **Original Document** \(**Financial** tab\): The reference number of the original bill with retainage
-   A retainage bill with the amount of $10. This document is generated in addition to the $90 retainage bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *10*
    -   **Amount**: *10*
    -   **Balance**: *10*
    -   **Original Document** \(**Financial** tab\): The reference number of the original bill with retainage

## 5. Retainage Amount Should be Decreased for a Released Retainage Bill { .section}

Suppose that a $1,000 AP bill \(original bill\) has been released. The retained amount is $100 and the bill amount is $900. You needed to release $30 of the retainage, but you released $60 by mistake. The 60$ retainage bill has also been released.

**Actions to Be Taken**

To correct the released retainage amount, you perform the following general instructions:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you reverse the incorrect retainage document of $60 by clicking **Reverse** on the More menu. For details, see [To Reverse a Bill](AP__how_Reversing_a_Bill.md).
2.  On the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, you release the correct retainage amount of $30. For details, see [To Create a Retainage Document \(Release Retainage\)](AP__HOW_To_Release_Retainage.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A debit adjustment of $60 that reverses the original retainage bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *60*
    -   **Amount**: *60*
    -   **Balance**: *60*
    -   **Original Document** \(**Financial** tab\): The reference number of the original retainage bill
-   A retainage bill with the correct retainage amount of $30. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *30*
    -   **Amount**: *30*
    -   **Balance**: *30*
    -   **Original Document** \(**Financial** tab\): The reference number of the original bill with retainage

## 6. The Retainage is Released for the Wrong Bill but the Retainage Document Has Not Been Released { .section}

Suppose that a $1,200 AP bill \(original bill\) has been released. The retained amount is $100 and the bill amount is $1,100. You released the retained amount of $100, but the retainage document is still in the *On Hold* status. After you generated the retainage document, you realized that you released retainage for the wrong bill.

**Actions to Be Taken**

To correct the mistake and release retainage for the correct bill, you perform the following general instructions:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you find the incorrect retainage document with the *On Hold* status.
2.  You delete the document by clicking **Delete** on the form toolbar and clicking **OK** in the displayed dialog box.
3.  On the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, you release the retainage for the correct bill. For details, see [To Create a Retainage Document \(Release Retainage\)](AP__HOW_To_Release_Retainage.md).

**Result**

Because the retainage document has not been released yet, the **Unreleased Retainage** box on the **Retainage** tab of the [Bills and Adjustments](AP_30_10_00.md) form remains unchanged for the original bill.

## 7. The Retainage is Released for the Wrong Bill and the Retainage Document Has Been Released { .section}

Suppose that a $1,200 AP bill \(original bill\) has been released. The retained amount is $100 and the bill amount is $1,100. You released the retained amount of $100 and released the generated $100 retainage document. After you released the retainage document, you realized that you released retainage for the wrong bill.

**Actions to Be Taken**

To correct the mistake and release retainage for the correct bill, you perform the following general instructions:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you reverse the incorrect retainage document of $100 by clicking **Reverse** on the More menu. For details, see [To Reverse a Bill](AP__how_Reversing_a_Bill.md).
2.  On the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, you release retainage for the correct bill. For details, see [To Create a Retainage Document \(Release Retainage\)](AP__HOW_To_Release_Retainage.md).

**Result**

After you have performed the instructions, the system will generate the following documents:

-   A debit adjustment of $100 that reverses the wrong retainage bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *100*
    -   **Amount**: *100*
    -   **Balance**: *100*
    -   **Original Document** \(**Financial** tab\): The reference number of the original retainage bill
-   A $100 retainage bill for the correct original bill. This document has the following settings on the [Bills and Adjustments](AP_30_10_00.md) form:
    -   **Retainage Document**: Selected
    -   **Detail Total**: *100*
    -   **Amount**: *100*
    -   **Balance**: *100*
    -   **Original Document** \(**Financial** tab\): The reference number of the correct original bill with retainage

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

