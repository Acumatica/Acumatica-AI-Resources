# Order Synchronization: Import of Payments {#_d61180f5-1fed-4c34-82e9-38c7095ad502 .concept}

To track financial information, you can import payments along with seller-fulfilled and marketplace-fulfilled orders from Amazon to Acumatica ERP.

## Setting Up the Import of Payments { .section}

To set up the synchronization of payments, you perform the following general steps on the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

1.  Activate the entity.

    To synchronize payments, you must activate the *Payment* entity on the **Entities** tab.

2.  Map the payment methods.

    Each payment method used in the Amazon seller account must be mapped with a payment method defined in Acumatica ERP. The mapping is defined on the **Payments** tab. Initially, the upper table of the tab is empty. After an order and a payment have been created in the Amazon seller account, you need to start the payment synchronization with no payment method mapped. The synchronization fails, and the Amazon connector populates the **Store Payment Method** column of the upper table. You then complete the mapping by specifying values in the **ERP Payment Method** and **Cash Account** columns. The ERP payment method must be defined on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form with the *Cash/Check* means of payment.

    **Tip:** When multiple payments are imported for an order over time, the system requires that all previously imported payment documents be released before the next one can be imported. We recommend simplifying this process by selecting the **Release Transactions** check box for the active store's payment methods on the **Payments** tab.

3.  Map the Amazon fees.

    The **Payment Fees** table on the **Payments** tab is initially empty. Once the payment methods are mapped, you need to start the payment synchronization. The synchronization fails, and the Amazon connector populates the **Fee Type** column of the table. You then map each Amazon fee type with an ERP entry type.

    Entry types are defined on the [Entry Types](CA_20_30_00.md) \(CA203000\) form. An entry type can be used in the fee mapping if it meets the following criteria:

    -   The entry type has the *Disbursement* type.
    -   A default offset account has been specified for the entry type.
    -   The **Deduct from Payment** check box is selected for the entry type.
    -   For the cash account specified in the mapping for the Amazon payment method in the upper table, the entry type has been added on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

## Synchronizing Payments { .section}

Payments are imported into Acumatica ERP during the synchronization of the *Payment* entity.

When preparing data for the *Payment* entity on the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, the connector queries released transactions for orders. It prepares sync records only if Amazon returns transactions that have not been imported into Acumatica ERP yet. This way, sync records receive the *Prepared* status only when a new transaction appears in Amazon.

The connector creates a single sync record for all partial payments of an Amazon order. To review all payments in the sync record, you click **View Details** on the More menu of the [Sync History](BC_30_10_00.md) \(BC301000\) form

During the processing stage of data synchronization, each partial payment is imported as a separate document on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and applied to the order or to the invoice \(if the invoice has been prepared for the order\). The external reference number for each imported payment is *\{Order External ID\};\{Posted Date\}*.

Amazon fees imported with the payment are grouped by entry type they are mapped to on the **Payments** tab \(**Payment Fees** table\) of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form. Imported fees are displayed on the **Charges** tab of the [Payments and Applications](AR_30_20_00.md) form.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

