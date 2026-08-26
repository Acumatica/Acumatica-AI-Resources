# Reclassification of Expenses: General Information {#_9f305e73-0773-4fb1-beba-2249778ff281 .concept}

Acumatica ERP provides support for expense reclassification, which you can configure if in your company, an authorized accountant reclassifies expenses before releasing entered documents. With this functionality set up, the releasing of bills and cash purchases can be performed in two stages:

**Attention:** In some companies, the pre-release stage is skipped, as described in the Possible Workflows section.

1.  **Pre-release**: A data entry worker enters an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form or a cash purchase on the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form and pre-releases it. All the expenses specified in the document are temporarily recorded to the reclassification account, and the document has the *Pre-released* status—that is, it is pending recalculation.
2.  **Reclassify and release**: An authorized accountant reviews the pre-released document, specifies the correct expense accounts and subaccounts, and releases the document \(which assigns it the *Released* status\).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a cash purchase with the default expense account
-   Reclassify the expense account in the cash purchase

## Applicable Scenarios { .section}

You perform reclassification of expenses if you want to ensure that all the expenses entered by AP clerks are posted to the correct accounts.

**Attention:** Pending expense reclassification is allowed for cash purchases and bills entered manually. It is not supported for bills based on purchase receipts or the lines of purchase orders, or for bills automatically generated from purchase orders.

## Configuration of Support for Expense Reclassification {#section_yxg_njv_vxb .section}

The *Expense Reclassification* feature must be enabled in the system before you can use the related functionality. You can check whether the feature is enabled in your system by using the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If the feature is enabled, you can specify the account and subaccount to be used to temporarily record non-classified expenses for each existing vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form. To facilitate the assigning of these accounts to new vendors, you can select the default account and subaccount for expenses that are pending reclassification for each vendor class on the **GL Accounts** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. Once you do this, each new vendor assigned to the class will have the reassignment account and subaccount specified for the class.

**Important:** If for any reason, your organization decides to disable the *Expense Reclassification* feature, you should first perform expense reclassification for all documents with the *Pre-released* status and then release them.

## Possible Workflows {#section_cyg_njv_vxb .section}

Once the *Expense Reclassification* feature has been enabled, your company can use one of the following scenarios:

-   *Standard scenario:* With this scenario, a data entry worker enters a document and releases it without pre-releasing it first. Your company might use this scenario if the users who enter bills and cash purchases know the correct expense accounts and subaccounts for these documents.
-   *Two-stage scenario:* With this scenario \(described earlier in this topic\), a document is pre-released before reclassification and release occur. Your company might use this approach when data entry workers are not sure which expense accounts to select or you would prefer that an experienced accountant assign these accounts.

    During data entry, the user does not change any of the expense accounts and subaccounts that are inserted as the default accounts and subaccounts in the document lines; the user pre-releases the document by clicking **Pre-Release** on the toolbar of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) or [Cash Purchases](AP_30_40_00.md) \(AP304000\) form. Later, the document will be reviewed by an authorized accountant who will assign the correct expense account and subaccount to each line and release the document.


## Reclassification of Expenses {#section_jyg_njv_vxb .section}

An authorized accountant can reclassify the expenses for each document pending reclassification by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for each bill and the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form for each cash purchase. On either form, the accountant selects each document with the *Pre-Released* status, reviews it, and assigns a specific expense account and subaccount to each document line, according to the classification of expenses used in your organization. \(The accountant leaves the expense accounts and subaccounts that were inserted by default, if they are correct.\) The accountant then releases the document.

**Attention:** For a document with the *Pre-Released* status, only the branch, expense account, and expense subaccount may be changed. The document totals and tax amounts cannot be changed.

## Approval of Bills Pending Reclassification {#section_lyg_njv_vxb .section}

If the approval of bills for payment is required in your system, the pre-released bills also require approval before they can be paid. The bills with the *Pre-released* status can be paid at any time before or after their final release.

## Visibility of Pre-Released Documents {#section_nyg_njv_vxb .section}

The pre-released bills and cash purchases appear on AP reports and inquiry forms as documents with the *Pre-Released* status. Also, by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, users can view the pre-released bills, and by using the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form, they can view the pre-released cash purchases.

## Voiding of Pre-Released Documents {#section_pyg_njv_vxb .section}

A bill with the *Pre-Released* status can be voided if no payment has been applied to the bill. If a payment has been created for a pre-released bill that you want to void, you first void the payment and then void the bill. Cash purchases can be voided while they have the *Pre-Released* status.

**Parent topic:**[Configuring Reclassification of Expenses](../UserGuide/Finance_Reclassification_of_Expenses_Mapref.md)

