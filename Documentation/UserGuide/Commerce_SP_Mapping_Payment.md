# Payment Entity {#_df87662e-8746-4169-9a40-d6984473d8eb .concept}

This topic provides reference information about the standard filtering and field mapping used for payment data during the synchronization of the *Payment* entity between Acumatica ERP and Shopify.

## Payment Filtering { .section}

Filters are applied during the import of payments to Acumatica ERP. A payment is skipped if any of the following is true:

-   Its status is *Error*—for example, if the credit card payment transaction was not successful.
-   The manual payment method used for purchase is not supported.
-   The sales order related to the payment has not been synchronized.

If the mapping of the store payment method has not been configured or is inactive on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, the system creates a synchronization record for the payment on the [Sync History](BC_30_10_00.md) \(BC301000\) form and assigns it the *Filtered* status.

## Payment Import Mapping { .section}

The following table shows the mapping of Shopify fields to Acumatica ERP fields that is used during the import of payment data from Shopify.

|Source Fields \(Shopify\)|Target Fields \(Acumatica ERP\)|
|Field Name|Field Name|Form Object|Notes|
|-------------------------|-------------------------------|
|----------|----------|-----------|-----|
| |[Payments and Applications](AR_30_20_00.md) \(AR302000\) form|
| |**Type**|Summary area|Default *Prepayment*.|
| |**Customer**|Summary area|The customer ID is the same as the customer ID in the related sales order.|
| |**Location**|Summary area|The location is the same as the location in the related order.|
|currency|**Currency**|Summary area|This box is shown only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.|
|created\_at \(for the order\)|**Application Date**|Summary area|The payment transaction date is used.|
|amount|**Payment Amount**|Summary area|The payment transaction amount is used.|
|authorization|**Payment Ref.**|Summary area|The number of the related credit card transaction in the processing center.|
|transaction\_id|**Payment Ref.**| |The number of the related credit card transaction in the processing center. The `transaction_id` is used only if the `authorization` field is empty.|
|gateway|**Payment Method**|Summary area|The payment method that is mapped to the store's payment method on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) form.|
| |**Cash Account**|Summary area|The cash account corresponds to the payment method that is mapped to the store's payment methods used for the purchase and the transaction currency of the sales order.|
| |**Description**|Summary area|Default: *&lt;store name&gt; \| Order: &lt;store order number and payment number&gt; \| Type: &lt;type of transaction&gt; \| Status: &lt;status of transaction&gt; Gateway: &lt;gateway name&gt;*|
| |**Branch**|**Financial** tab &gt; **Link to GL** section|The branch specified on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form.|
| |**Status**|Summary area|The status depends on the state of the **Release Payments and Refunds** check box in the row of the payment method in the table on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) form. If the check box is selected, the status is *Open* \(meaning that the payment is released\). If the check box is cleared, the status is *Balanced* \(indicating that the payment is not released\). Payments based on credit card payment methods are created with the *Pending Processing* status.|
| |**Proc. Center**|**Card Processing** tab|The processing center configured for the payment method mapped with the store payment method on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) form.|
|kind|**Tran. Type**|**Card Processing** tab|The type of the last successful operation with the credit card transaction.|
|amount|**Tran. Amount**|**Card Processing** tab|The amount of the transaction.|
|authorization|**Proc. Center Tran. Nbr.**|**Card Processing** tab|The number of the credit card transaction in the processing center \(also displayed in the **Payment Ref.** box in the Summary area\).|
|transaction\_id|**Proc. Center Tran. Nbr.**|**Card Processing** tab|The number of the credit card transaction in the processing center \(also displayed in the **Payment Ref.** box in the Summary area\). The `transaction_id` field is used only if the `authorization` field is empty|
| |**PC Response Reason**|**Card Processing** tab|This column is set to *Imported External Transaction* to indicate that the transaction was imported from an external system.|
|created\_at \(for the order\)|**Tran. Time**|**Card Processing** tab|The time when the transaction operation was performed.|

**Parent topic:**[Shopify Mapping Reference](../UserGuide/Commerce_SP_Mapping_Reference.md)

