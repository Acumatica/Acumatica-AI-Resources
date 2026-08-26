# Payment Entity {#_3f0ee763-c22e-40cb-9fee-e48f3e2b9ea5 .concept}

This topic provides reference information about the standard filtering and field mapping used for the *Payment* entity during the synchronization between Acumatica ERP and BigCommerce.

## Payment Filtering { .section}

Filters are applied during the import of payments to Acumatica ERP. A payment is skipped if any of the following is true:

-   Its status is *Error*—for example, if the credit card payment transaction was not successful.
-   The manual payment method used for purchase is not supported.
-   The sales order related to the payment has not been synchronized.

If the mapping of the store payment method has not been configured or is inactive on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, the system creates a synchronization record for the payment on the [Sync History](BC_30_10_00.md) \(BC301000\) form and assigns it the *Filtered* status.

## Payment Import Mapping { .section}

The following table shows the mapping of BigCommerce fields to Acumatica ERP fields that is used during the import of payment data from BigCommerce.

|**Source Fields \(BigCommerce\)**|**Target Fields \(Acumatica ERP\)**|
|Field Name|Page Object|Field Name|Form Object|Notes|
|---------------------------------|-----------------------------------|
|----------|-----------|----------|-----------|-----|
| |[Payments and Applications](AR_30_20_00.md) \(AR302000\) form|
| | |**Type**|Summary area|Default: *Prepayment*|
| | |**Customer**|Summary area|The customer ID is the same as the customer ID on the related sales order.|
| | |**Location**|Summary area|The location is the same as the location on the related order.|
|**Currency**|**Edit an Order** page &gt; **Transactional Currency** section|**Currency**|Summary area|This box is shown only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.|
|Date|Payment transaction|**Application Date**|Summary area|The payment transaction date is used.|
|Amount|Payment transaction|**Payment Amount**|Summary area|The payment transaction amount is used.|
|**GatewayTransactionId** or **ReferenceTransactionId**|Payment transaction|**Payment Ref.**|Summary area|If **GatewayTransactionId** is empty, **ReferenceTransactionId** is used.|
|**Payment Method**|Payment transaction|**Payment Method**|Summary area|The payment method that is mapped to the store's payment method on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
| | |**Cash Account**|Summary area|The cash account corresponds to the payment method that is mapped to the store's payment methods used for the purchase and the transaction currency of the sales order.|
| | |**Description**|Summary area|Default: *&lt;store name&gt; \| Payment Method: &lt;the payment method used for purchase&gt; \| Order: &lt;order number&gt; \| Payment ID: &lt;payment number&gt;*|
| | |**Branch**|**Financial** tab &gt; **Link to GL** section|The branch specified in the **General** section on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.|
| | |**Status**|Summary area|The status depends on the state of the **Release Payments and Refunds** check box in the row of the payment method in the table on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) form. If the check box is selected, the status is *Open* \(meaning that the payment is released\). If the check box is cleared, the status is *Balanced* \(indicating that the payment is not released\).|

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

