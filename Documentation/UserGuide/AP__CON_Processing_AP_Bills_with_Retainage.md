# Processing Flow of AP Documents with Retainage {#_d307a4cf-5424-499f-94bc-e19e31254bf9 .concept}

If your company retains a part of the amount of a bill, to process the total amount of the bill, at least two bills are created in Acumatica ERP: the bill with retainage \(that is, the bill for which part of the amount is retained\) and the *retainage bill* \(that is, the bill that contains the retained amount or the part of the retained amount to be paid\). The bill with retainage is paid during the period of time agreed upon between your company and the vendor. The retainage bill is paid after the contractual work is finished. Multiple retainage bills can be created for one bill with retainage.

Similarly, debit adjustments with retainage can be created manually on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. For these debit adjustments, the system calculates all retainage-related information \(total retainage, unreleased retainage, and retained taxes\) and creates a *retainage debit adjustment*.

**Attention:** Retainage is not supported for AP documents created in a foreign currency.

In this topic, you will read about the general processing workflow of a document with retainage in Acumatica ERP \(without taxes applied\).

## The Processing Workflow of a Bill with Retainage {#section_hxl_njv_vxb .section}

Typically, an AP bill with retainage goes through the following states during its life cycle:

1.  Entering the bill with retainage and preparing the bill for release: A data entry person creates the bill with retainage in the system on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The balance of this bill equals the sum of the extended costs minus line discounts of the lines of the bill reduced by the retainage amount. The total amount of the bill \(which is shown on the **Retainage** tab\) is the detail total amount plus the retained amount. For instructions, see [To Enter a Bill with Retainage \(with Items' Quantities and Unit Costs\)](AP__HOW_To_Create_Bill_with_Retainage.md) or [To Enter a Bill with Retainage \(with Line Totals\)](AP__HOW_To_Enter_Bill_with_Retainage_Line_Total.md).
2.  Releasing the bill with retainage: An accountant releases the prepared bill with retainage. The released bill is assigned the *Open* status, affects the balances of the selected vendor and the GL accounts.
3.  Paying the bill with retainage: The accountant creates a payment in the system to pay the bill with retainage. He or she processes and releases the payment. The system reduces the balance of the bill with retainage by the amount paid. When the payment is released, the balance of the vendor is reduced by the paid amount and the GL accounts are updated. The bill with retainage still has the *Open* status. For instructions, see [AP Bill Payments: Process Activity](Finance_PayingAPBills_Process_Activity.md).
4.  Releasing a retainage: Once the work has been completed, the accountant releases the retainage for the original bill. He or she can release a part of the retained amount or the full retained amount. When the retainage is released, a retainage bill with the *Open* status is created in the system. When the retainage bill is released, the system updates the balances of the vendor, the related GL accounts, and the unreleased retainage amount of the bill with retainage. For details, see [To Create Multiple Retainage Documents \(Release Retainage for Multiple Documents\)](AP__HOW_To_Release_Retainage_Multiple_Lines.md).
5.  Paying the retainage bill: The accountant creates a payment in the system to pay the retainage bill. He or she processes and releases the payment. The system reduces the balance of the retainage bill by the amount paid. The balance of the vendor is reduced by the paid amount and the GL accounts are updated.

    If the full retained amount has been released and paid, the bill with retainage is assigned the *Closed* status, and its unreleased and unpaid retainage amounts equal zero.

    If a part of the retained amount has been released and paid, the bill with retainage keeps the *Open* status. The system reduces the bill unreleased and unpaid retainage amounts by the retainage released and the retainage paid, respectively.


**Attention:** For documents with retainage, the invoice rounding functionality \(when the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form\) is not supported, that is amounts in documents with retainage cannot be rounded.

**Tip:** The accountant can reconcile the balance of unreleased retainage of the Retainage Payable account with the general ledger by running the [AP Retained Balance](AP_63_50_00.md) \(AP635000\) report for a specific financial period.

## The Processing Workflow of a Debit Adjustment with Retainage {#section_nxl_njv_vxb .section}

Typically, a debit adjustment with retainage goes through the following states during its life cycle:

1.  Entering a debit adjustment with retainage: A data entry person creates the debit adjustment with retainage manually on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The balance of this debit adjustment equals the sum of the extended costs of the debit adjustment lines minus line discounts of the lines reduced by the retainage amount. The total amount of the debit adjustment \(which is shown on the **Retainage** tab\) is the detail total amount plus the retained amount. For instructions, see [To Enter a Debit Adjustment with Retainage](AP__HOW_To_Create_Debit_Adj_with_Retainage.md).
2.  Releasing the debit adjustment with retainage: An accountant releases the prepared debit adjustment with retainage. The released debit adjustment is assigned the *Open* status, affects the balances of the selected vendor and the GL accounts, and requires further processing.
3.  Applying the debit adjustment or its lines to a document with the *Bill* or *Credit Adjustment* type \(if the debit adjustment is paid on the document level\): An accountant applies the debit adjustment to one of these documents on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

    If the debit adjustment is paid by line, to apply its lines to a bill, the accountant creates a payment on the [Checks and Payments](AP_30_20_00.md) form and applies the bill and the debit adjustment lines to it.

4.  Releasing a retainage: The accountant releases the retainage for the original debit adjustment. A part of the retained amount or the full retained amount can be released. When the retainage is released, a retainage debit adjustment with the *Balanced* status is created in the system; the status is *On Hold* if the **Hold Documents on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

## Reversal of Debit Adjustments with Retainage and Retainage Debit Adjustments {#section_qxl_njv_vxb .section}

Original debit adjustments with retainage and retainage debit adjustments with the *Open* and *Closed* status can be reversed by clicking **Reverse** on the More menu of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Attention:** The **Reverse** command is not available for original and retainage debit adjustments created automatically on reverse of an original bill or a retainage bill.

If you reverse a debit adjustment, the system performs the following actions on the [Bills and Adjustments](AP_30_10_00.md) form:

1.  Creates a credit adjustment with the *On Hold* or *Balanced* status, depending on whether the **Hold Documents on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
2.  For the credit adjustment, fills in the **Original Document** box on the **Financial** tab with the **Ref. Nbr.** of the debit adjustment being reversed.
3.  On release of the credit adjustment, creates a GL transaction by using the same rules as for manually created credit adjustments.

**Attention:** On reverse of a debit adjustment created for a tax agency in a foreign currency, the system will not use the document rate to convert the amount to the base currency amount. The same rule is applied when you are reversing a tax bill in a foreign currency.

An original debit adjustment cannot be reversed if it has open retainage debit adjustments or unreversed applications.

## Processing Bills with Retainage with Payment Application by Line {#section_wxl_njv_vxb .section}

If the *Payment Application by Line* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, retainage bills are released according to the following rules:

-   For retainage released from particular lines of an AP bill, the resulting lines of the retainage bill contain the components copied from the original bill—the values in the **Project**, **Project Task**, **Cost Code**, and **Inventory ID** columns on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   When the AP retainage bill is posted to the general ledger, all entries are posted under the non-project code \(*X* by default\), even if specific projects are specified in the document lines. That is, the non-project code is inserted in the **Project** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Migrating AP Bills or Debit Adjustments with Retainage { .section}

In Acumatica ERP, you can enter and process fully or partially settled AP bills or debit adjustments with retainage without affecting the general ledger. To do this, you add and process them in migration mode.

**Tip:** To turn on migration mode for the accounts payable subledger, on the **General** tab \(**Posting Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, an administrative user has to select the **Activate Migration Mode** check box and save this change.

The process of migrating and processing an AP bill or debit adjustment with retainage includes the following general steps:

1.  Adding a bill or a debit adjustment with retainage: A data entry person creates a document of the *Bill* or *Debit Adjustment* type with retainage on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. In the Summary of the form, the **Apply Retainage** check box should be selected. On the **Details** tab of the form, for each detail line, the data entry person enters an amount in the **Ext. Cost** column and a retainage percent or a retainage amount in the **Retainage Percent** or **Retainage Amount** column, and saves the document.
2.  Releasing a document with retainage: An accountant releases the migrated bill or debit adjustment with retainage. The released document is assigned the *Open* status. In the **Amount** box of the Summary area, the system inserts the amount, which it calculates as the detail total minus the retainage total. The retained amount is specified in the **Retainage Total** box of the Summary area. Releasing the document does not affect the balances of the GL accounts.
3.  Releasing the retainage: The accountant releases the retainage for the bill or debit adjustment on the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form. When the retainage is released, a retainage bill or debit adjustment with the *Balanced* status is created on the [Bills and Adjustments](AP_30_10_00.md) form; alternatively, the document's status can be *On Hold* if the **Hold Documents on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
4.  Releasing the retainage bill or debit adjustment: In the retainage document, an accountant can correct the amount in the **Balance** box of the Summary area on the [Bills and Adjustments](AP_30_10_00.md) form before releasing the retainage document.

    **Attention:** The retainage document is not released automatically when the system is in migration mode, even if the **Automatically Release Retainage Documents** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form.

    When the retainage document is released, the system updates the AP balance of the vendor with the retained amount. The system adds the amount if it is an AP bill and subtracts it if it is a debit adjustment. You can check it in the [AP Balance by Vendor](AP_63_25_00.md) \(AP632500\) report.


**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

