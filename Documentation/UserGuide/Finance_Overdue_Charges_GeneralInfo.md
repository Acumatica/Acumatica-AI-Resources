# Overdue Charges: General Information {#_62b98449-6da7-4e5d-a19f-963c27527f11 .concept}

In Acumatica ERP, you can set up the functionality that makes the system calculate overdue charges and show them on customer statements to inform customers of additional charges they have incurred for documents that are past due.

You can define multiple overdue charge codes \(particular overdue charge IDs\) with their own rates and other settings that affect when and how overdue charges are applied. Thus, you can adjust Acumatica ERP to fit your existing policies and any policies you want to implement in future.

**Attention:** The system calculates overdue charges for all customer accounts for which overdue charges are assigned, except for accounts with the *Inactive* or *On Hold* status on the [Customers](AR_30_30_00.md) \(AR303000\) form.

This functionality is available only if the *Overdue Charges* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the overdue charges functionality and configure overdue charges
-   Process overdue charges and create the *Overdue Charge* documents for particular customers
-   Prepare customer statements for particular customers and review how overdue charges are shown in the statements

## Applicable Scenarios { .section}

You use overdue charges if you want to charge your customers for overdue documents that have not been paid in time.

## Setup of Overdue Charge Collection {#section_j1f_hjv_vxb .section}

You perform the following steps to configure the collection and processing of overdue charges:

1.  On the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form, you configure at least one overdue charge code, which defines the calculation method and the criteria for collecting charges. For details, see [Overdue Charges: Charge Codes](AR__CON_OverdueChargeCodes_Defenition.md).
2.  On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, you do the following for each customer class whose customers you want to be subject to overdue charge collection:

    1.  Select the **Apply Overdue Charges** check box.
    2.  Associate the overdue charge code you created with the customer class by specifying the code in the **Overdue Charge ID** box.
    When a new customer account is created on the [Customers](AR_30_30_00.md) \(AR303000\) form and a customer class is selected, the customer class supplies the default state of the **Apply Overdue Charges** check box \(on the **General** tab\). You can change this default state for any customer account. If the customer account is subject to overdue charge collection \(that is, if this check box is selected for the customer\), for all of the customer's debit documents, the system displays the **Apply Overdue Charge** check box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. By default, the check box is selected, but you can clear the check box for a particular document.


## Setup of Overdue Charge Calculation by Statement Cycle {#section_o1f_hjv_vxb .section}

By default, the system uses the overdue charge code specified in the applicable customer class to calculate overdue charges. Alternatively, you can indicate to the system that the code should be copied from the applicable statement cycle to calculate charges.

Customer accounts are initially assigned the statement cycle, if any, specified for their customer class. But specifying a statement cycle in a customer class is not mandatory, as it is for a customer account. Additionally, for each customer, you may override the statement cycle that was assigned by default. Therefore, customer accounts within the same customer class may have different statement cycles.

You perform the following steps to set up overdue charge calculation by using the code specified in the statement cycle:

1.  On the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form, you specify an overdue charge code for each statement cycle used in the system. You may associate different codes with different statement cycles or use the same code for all statement cycles.
2.  On the [Accounts Receivable Preferences](AR_10_10_00.md) form, you select the **Set Default Overdue Charges by Statement Cycle** check box, to indicate to the system that the source of the overdue charge code is the statement cycle of the customer account.

After you have performed these configuration steps, the system will use the overdue charge code assigned to the applicable statement cycle to calculate overdue charges for customers and documents included in the charge collection process.

## Processing of Overdue Documents {#section_t1f_hjv_vxb .section}

You process the calculation of the overdue charges for the overdue documents \(that is, invoices and debit memos\) on the [Calculate Overdue Charges](AR_50_70_00.md) \(AR507000\) form. On this form, once you specify the criteria in the selection area, the system displays the documents that comply with the following requirements:

-   The customer of the document is subject to overdue charges—that is, the **Apply Overdue Charges** check box is selected for the customer on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   The document is subject to overdue charges—that is, the **Apply Overdue Charge** check box is selected for the document on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

To run the calculation process, you click **Calculate** on the form toolbar. If the **Calculate on Overdue Charges Documents** check box is cleared on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, to calculate simple charges the system does the following:

-   Checks whether an invoice or a debit memo is past due by using the associated credit terms
-   Calculates the charges for the days past due \(if there are no previous overdue charges for the document\)
-   Calculates the charges since the date of the last overdue charges \(if overdue charges have been recorded for the document\)

After the calculation is completed, the system displays the list of overdue documents with the relevant details for each document, including the amounts of calculated overdue charges. You review the calculation results and process either the overdue documents you select \(by using the unlabeled check boxes\) or all of the documents by clicking either **Process** or **Process All**, respectively, on the form toolbar.

The result of processing is an AR document of the *Overdue Charge* type with the *Balanced* status \(or the *On Hold* status if **Hold Documents on Entry** is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) form\).

If the system finds multiple overdue documents for the same customer account, it creates one document of the *Overdue Charge* type for this customer. This document lists the charge amounts for each invoice.

You further process this document of the *Overdue Charge* type by using the [Invoices and Memos](AR_30_10_00.md) form.

**Attention:** Even if the customer has the *Credit Hold* status, you can release its overdue charges and credit memos on the [Invoices and Memos](AR_30_10_00.md) form without having to manually change the customer's status before and after release.

If the **Calculate on Overdue Charges Documents** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) form, the system searches for documents of the *Overdue Charge* type as well and calculates charge amounts the same way as it does for invoices and debit memos.

## Exclusion of a Customer or a Document from Charge Collection {#section_gbf_hjv_vxb .section}

To exclude a customer account from the charge collection process, you clear the **Apply Overdue Charges** check box for the customer on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

To exclude a particular document from the process, you clear the **Apply Overdue Charge** check box for the document on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Attention:** This check box is displayed for the document only if the customer of the document is included in the charge collection process.

**Parent topic:**[Applying Overdue Charges](../UserGuide/CreditPolicy_Overdue_Charges_Mapref.md)

