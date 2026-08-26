# Performing Settlement of Credit Card Payments and EFTs {#_2071d1ef-7408-4d9c-a711-dd483b2db7d5 .concept}

With Acumatica ERP, you do not need to manually record deposits of credit card payments or electronic funds transfers \(EFTs\) to the bank account. The system automatically creates bank deposits based on payments settled with a bank.

The system imports settlement batches from a processing center and creates bank deposits based on these batches. A *settlement batch* is a group of transactions that have been submitted together for settlement with a bank. An *EFT batch* always consists of only one transaction. The total amount of the settlement batch will be deposited into a bank account. A settlement batch of transactions has the following mandatory settings on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form:

-   **Reference Nbr.**: A batch reference number generated automatically by the system
-   **Status**: The status in Acumatica ERP: *Pending Import*, *Error*, *Processing*, *Pending Review*, *Processed*, or *Deposited*
-   **Proc. Center ID**: A link to the processing center
-   **Ext. Batch ID**: The batch ID returned by the `GetSettledBatchList` function from the processing center
-   **Settlement Time**: The date and time when the batch was settled, expressed in UTC
-   **Settlement State**: The state of the batch in the processing center—*Settled Successfully*, *Settlement Error*, *Rejected*, or *Voided*
-   **Transaction Count**: The total number of transactions
-   **All Transactions** tab: A linked list of transactions

## Configuration of Automatic Settlement of Credit Card Payments {#section_on2_kjv_vxb .section}

To enable the importing of settlement batches from a particular processing center, on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you select the **Import Settlement Batches** check box. With this check box selected, payments from this processing center will be marked as cleared after the import of a settlement batch.

To cause the system to automatically create bank deposits after importing the settlement batch, you select the **Automatically Create Bank Deposits** check box and specify a cash account in the **Deposit Account** check box. For details, see [To Set Up a Processing Center for Settlement of Credit Card Payments](CA__HOW_Setup_Proc_Center_for_Settlement_of_CC_Payments.md).

## Import of Settlement Batches {#section_rn2_kjv_vxb .section}

On the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form, you start the import process by clicking the **Import Batches** button on the form toolbar. The import of settlement batches can be started if there is no previous import in progress for the selected processing center.

A settlement batch can have one of the following statuses.

|Status|Description|
|------|-----------|
|*Pending Import*|A batch has been created, and the import of transactions has not yet started or has ended without all the transactions being imported.|
|*Error*|An error has occurred during import.|
|*Processing*|Transactions are being imported from the processing center or are being matched to transactions in Acumatica ERP.|
|*Pending Processing*|The processing of some transactions has resulted in an error, and the processing of the batch should be repeated.|
|*Pending Review*|Automatic processing has finished, but some transactions are missing.|
|*Processed*|All transactions in the settlement batch have been matched to transactions in Acumatica ERP or have been hidden.|
|*Deposited*|A bank deposit based on the settlement batch has been released, or there are no payments to deposit.|

Import of transactions starts automatically for all batches that have the *Pending Import* status. For details, see [To Import Settlement Batches](CA__HOW_Import_Settlement_Batches.md).

## Matching of Transactions {#section_vn2_kjv_vxb .section}

When all the transactions have been imported, on the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form, the system starts the matching of transactions for all batches with the *Processing* or *Pending Processing* status. The following actions are performed for each transaction in the batch:

-   The system searches for a document with the corresponding credit card transaction.
-   If the document is not found, the batch transaction status is set to *Missing*.
-   If the document is found, it is linked to the batch transaction, and the transaction status is set to *Processed*.
-   If the transaction status in the document is different from the status in the settlement batch, the credit card transaction is validated.
-   If the transaction in the batch has the *Settled Successfully* or *Refund Settled Successfully* status, the **Cleared** check box is selected for the document.

If all transactions have the *Processed* or *Hidden* status, the status of the settlement batch is set to *Processed*.

## Creation of a Bank Deposit {#section_yn2_kjv_vxb .section}

When the status of the settlement batch is changed from *Processing* to *Processed* and the **Automatically Create Bank Deposit** check box is selected for the processing center on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, the system automatically creates a bank deposit. If the batch’s status is changed from *Pending Review* to *Processed*, you should create a deposit manually by clicking **Create Deposit** on the form toolbar of the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form. For more details, see [To Manually Create a Bank Deposit](CA__HOW_Create_Bank_Deposit_for_Settlement_Batch.md).

In either case, the system creates a bank deposit from all documents linked to the settlement batch that meet the following criteria:

-   The cash account is a clearing account of the deposit account.
-   The payment has not been deposited yet.
-   The settlement state of the transactions specified in the **Settlement State** box on the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form is *Settled Successfully*, *Refund Settled Successfully*, or *Rejected*.

A bank deposit is created with the following settings specified in the Summary area of the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form.

|Box|Value|
|---|-----|
|**Tran. Type**|*CA Deposit*|
|**Status**|*On Hold* if the **Hold Transactions on Entry** check box is selected on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form

 *Balanced* if the **Hold Transactions on Entry** check box is cleared

|
|**Cash Account**|The account specified in the **Deposit Account** box on the **Preferences** tab of the [Processing Centers](CA_20_50_00.md) form|
|**Deposit Date**|The date specified in the **Settlement Time** box for the settlement batch on the [Settlement Batches](CA_30_70_00.md) form|
|**Fin. Period**|The financial period of the **Deposit Date**|
|**Document Ref.**|The document reference number, which is determined by auto-numbering|
|**Description**|*Deposit of settlement batch from &lt;Processing Center&gt;. &lt;Deposit Date&gt;*|

If the settlement report includes fees, the system groups all transactions by fee type. The system adds a charge to the bank deposit for each group of fees and specifies the following settings in the table on the **Charges** tab of the [Bank Deposits](CA_30_50_00.md) form:

|Column|Value|
|------|-----|
|**Charge Amount**|The sum of the amounts in the **Total Fee** column on the [Settlement Batches](CA_30_70_00.md) form for the group|
|**Chargeable Amount**|The sum of the amounts in the **Amount** column on the [Settlement Batches](CA_30_70_00.md) form for the group|
|**Payment Method**|Blank|
|**Charge**|The entry type linked to the fee type on the **Fees** tab of the [Processing Centers](CA_20_50_00.md) form \(both *Disbursement* and *Receipt* entry types can be used\)|

The link to the bank deposit is saved in the settlement batch and is shown in the **Bank Deposit** box on the [Settlement Batches](CA_30_70_00.md) form. When the deposit is created, the status of the linked settlement batch is set to *Deposited*. If the deposit is deleted, the status of the linked settlement batch is set to *Processed*.

## Support of Automatic Surcharges { .section}

For settlement batches, creation of automatic surcharges is supported. *Surcharge* is a small fee added to a credit card transaction to cover your company's costs for processing the payment. You can configure and apply a surcharge to each payment created for a settlement batch.

For mode details about the setup and use of surcharges, see [Automatic Credit Card Surcharges](AR__con_CCPayments_Surcharges.md).

-   **[Reconciliation of EFT Payments](../UserGuide/CA__con_Reconciliation_of_EFT_Payments.md)**  

-   **[Settlement of Stripe Payments](../UserGuide/CA__CON_Settlement_of_Stripe_Payments.md)**  

-   **[To Set Up a Processing Center for Settlement of Credit Card Payments](../UserGuide/CA__HOW_Setup_Proc_Center_for_Settlement_of_CC_Payments.md)**  

-   **[To Import Settlement Batches](../UserGuide/CA__HOW_Import_Settlement_Batches.md)**  

-   **[To Process Missing Transactions](../UserGuide/CA__HOW_Process_Missing_Trans_in_Settlement_Batch.md)**  

-   **[To Manually Create a Bank Deposit](../UserGuide/CA__HOW_Create_Bank_Deposit_for_Settlement_Batch.md)**  


