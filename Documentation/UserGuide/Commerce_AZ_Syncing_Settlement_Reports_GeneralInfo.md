# Settlement Reports: General Information {#_a3f90c5a-eb29-abcd-2ea0-0dc2b6415da9 .concept}

As your Amazon sales grow, so does the complexity of maintaining accurate financial records. To help you manage this more efficiently, Acumatica ERP also automates the import of Amazon settlement reports for reconciliation. This eliminates manual data entry and automatically matches imported settlement data with existing payments, refunds, and non-order fees—reducing errors, saving time, and ensuring greater accuracy in financial reporting.

## Learning Objectives {#_2d17801d-5397-4a97-9fb3-f815abbe79e5 .section}

In this chapter, you will learn how to do the following:

-   Configure the import of settlement reports between the Amazon seller account and Acumatica ERP
-   Import settlement reports form the Amazon seller account to Acumatica ERP
-   Reconcile imported settlement transactions.

## Applicable Scenarios {#_babea2db-3c58-435a-9052-c0a9372bc31b .section}

You may want to import settlement reports to improve financial accuracy, eliminate manual data entry, and use auto-matching of settlement data with existing payments, refunds, and non-order fees.

## Configuring the Store { .section}

To set up the import of settlement reports from Amazon, you perform the following steps on the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

1.  On the **Entities** tab, activate the *Settlement Report* entity.
2.  On the **Orders** tab, enter a date in the **Earliest Report Date** box. The system will import settlement reports created on or after this date.

## Importing Settlement Reports { .section}

To import settlement reports from Amazon, you prepare and process the data for the *Settlement Report* entity by using the [Prepare Data](BC_50_10_00.md) \(BC501000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms.

For each imported settlement report, the connector creates:

-   A sync record on the [Sync History](BC_30_10_00.md) \(BC301000\) form
-   Transactions on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form for settlement transactions included in the report

The connector imports only transactions with nonzero amounts posted during the settlement period, including the following:

-   Payments
-   Refunds
-   Non-order fees

Payment and refund transactions can be imported from open and closed settlement periods. Settlement periods typically span two weeks. The most recent period is the open one. This means you can import payment and refund transactions to Acumatica ERP as soon as Amazon posts them—supporting timely validation of the accuracy of imported payments and refunds.

The non-order fee transactions can be imported from closed periods only.

## Importing Transactions for Payments and Refunds { .section}

Settlement transactions related to an Amazon order or refund are grouped by the Amazon order ID and posted date. Their amounts exclude any fees or charges. This ensures that the total of imported transactions matches the total for the settlement period in Amazon.

As a result, the amount of a settlement transaction on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form may differ from that of the matching payment or refund on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. This difference occurs because imported payments or refunds include charges and fees.

## Importing Transactions for Non-Order Fees { .section}

Settlement transactions related to non-order fees are imported from the closed settlement periods only. The connector groups these settlement transactions by the event type, transaction type, and ERP entry type used to map non-order fees on the **Payments** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form.

The posted date of an imported transaction is the latest posted date among the grouped transactions. The amount is the total of all transactions in the group.

The connector imports these transactions even if the related non-order fee type is inactive on the **Payments** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form. This ensures that the total amount of imported transactions matches the total amount of disbursements or charges posted for the settlement period in Amazon.

## Processing Imported Transactions { .section}

For imported settlement transactions, the connector creates transactions on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form:

-   Positive amounts appear in the **Receipt** column.
-   Negative amounts appear in the **Disbursement** column.
-   The cash account is the same one specified for payments and refunds on the **Payments** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form.
-   For transactions related to orders and refunds, the **Ext Ref. Nbr.** column shows the Amazon order ID and the posted date.

For transactions from the open settlement period, the **Manual Matching Allowed** check box is cleared in the Summary area—so only auto-matching is available. A financial supervisor can enable manual matching by clicking **Allow Manual Matching** on the form toolbar. After manual matching has been allowed for transactions, the check box cannot be cleared.

When a settlement period is closed in Amazon and synced with Acumatica ERP, the system automatically selects the **Manual Matching Allowed** check box for transactions of the period. You can perform manual matching or create documents for these transactions.

After settlement transactions are imported, you can match them with documents in Acumatica ERP using the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form. If the **Auto-Match Only** check box is selected for a transaction in the table, the transaction is from the open settlement period and can be matched only automatically.

## Statistics and Notifications for Settlement Reports { .section}

You can view all imported settlement reports and their processing details on the Amazon Settlement Report Details \(BC409310\) dashboard.

The system also includes a predefined business event and email template to notify you of synchronization failures for the *Settlement Report* entity.

## Limitations of Importing Amazon Settlement Reports { .section}

-   Amazon's API limits the date range for importing settlement reports to 180 days. This limit also applies if you specified a date older than 180 days in the **Earliest Report Date** box on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

    -   On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, when you prepare data in the *Incremental* mode, the connector process only settlement reports within the last 180 days.
    -   On the [Sync History](BC_30_10_00.md) \(BC301000\) form, the **Add New** command lets you create a sync record only for reports generated within the last 180 days.
    To import settlement reports older than 180 days, use the [Prepare Data](BC_50_10_00.md) \(BC501000\) form with the *Incremental by Date* or *Full* mode and specify the particular date range when the report was created in Amazon. The date range must not exceed 180 days.

-   If you've updated the payment fee mapping on the **Payments** tab of the [Amazon Stores](BC_20_10_20.md) form and need to re-sync an already processed settlement report, make sure that the imported transactions haven't been matched to non-order fee transactions.

    **Important:** If matches exist, unmatch them first. The connector doesn't delete matched transactions but creates new non-order fee transactions based on the updated mapping.


## Limitations of Auto-Matching { .section}

-   If you've imported payments and refunds by using Acumatica ERP 2024 R2 or earlier versions, the payments and refunds cannot be auto-matched. This is because their payment reference numbers use a different format—*\{Order External ID\}:\{Sequence Number\}* or *\{Order External ID\}*—that doesn't match the external reference number used in imported settlement transactions.
-   To match non-order fee transactions to imported settlement transactions, you must first configure payment fee mapping on the **Payments** tab of the [Amazon Stores](BC_20_10_20.md) form:
    -   Map deducted fees to disbursement ERP entry types.
    -   Map fees that increase the seller balance to receipt ERP entry types.

**Parent topic:**[Importing Settlement Reports](../UserGuide/Commerce_AZ_Syncing_Settlement_Reports_Mapref.md)

