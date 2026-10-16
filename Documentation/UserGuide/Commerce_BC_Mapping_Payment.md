# Payment Entity

This topic provides reference information about the standard filtering and field mapping used for the *Payment* entity during the synchronization between Acumatica ERP and BigCommerce.

## Payment Filtering

Filters are applied during the import of payments to Acumatica ERP. A payment is skipped if any of the following is true:

-   Its status is *Error*—for example, if the credit card payment transaction was not successful.
-   The manual payment method used for purchase is not supported.
-   The sales order related to the payment has not been synchronized.

If the mapping of the store payment method has not been configured or is inactive on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, the system creates a synchronization record for the payment on the [Sync History](BC_30_10_00.md) \(BC301000\) form and assigns it the *Filtered* status.

## Payment Import Mapping

The following table shows the mapping of BigCommerce fields to Acumatica ERP fields that is used during the import of payment data from BigCommerce.

<table id="_c4449f04-a95d-4be9-9b0b-f9df8cad827b"><thead><tr><th colspan="2">

**Source Fields \(BigCommerce\)**

</th><th colspan="3">

**Target Fields \(Acumatica ERP\)**

</th></tr><tr><th>

Field Name

</th><th>

Page Object

</th><th>

Field Name

</th><th>

Form Object

</th><th>

Notes

</th></tr></thead><tbody><tr><td colspan="2">

 

</td><td colspan="3">

[Payments and Applications](AR_30_20_00.md) \(AR302000\) form

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Type**

</td><td>

Summary area

</td><td>

Default: *Prepayment*

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Customer**

</td><td>

Summary area

</td><td>

The customer ID is the same as the customer ID on the related sales order.

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Location**

</td><td>

Summary area

</td><td>

The location is the same as the location on the related order.

</td></tr><tr><td>

**Currency**

</td><td>

**Edit an Order** page &gt; **Transactional Currency** section

</td><td>

**Currency**

</td><td>

Summary area

</td><td>

This box is shown only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

</td></tr><tr><td>

Date

</td><td>

Payment transaction

</td><td>

**Application Date**

</td><td>

Summary area

</td><td>

The payment transaction date is used.

</td></tr><tr><td>

Amount

</td><td>

Payment transaction

</td><td>

**Payment Amount**

</td><td>

Summary area

</td><td>

The payment transaction amount is used.

</td></tr><tr><td>

**GatewayTransactionId** or **ReferenceTransactionId**

</td><td>

Payment transaction

</td><td>

**Payment Ref.**

</td><td>

Summary area

</td><td>

If **GatewayTransactionId** is empty, **ReferenceTransactionId** is used.

</td></tr><tr><td>

**Payment Method**

</td><td>

Payment transaction

</td><td>

**Payment Method**

</td><td>

Summary area

</td><td>

The payment method that is mapped to the store's payment method on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) form.

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Cash Account**

</td><td>

Summary area

</td><td>

The cash account corresponds to the payment method that is mapped to the store's payment methods used for the purchase and the transaction currency of the sales order.

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Description**

</td><td>

Summary area

</td><td>

Default: *&lt;store name&gt; \| Payment Method: &lt;the payment method used for purchase&gt; \| Order: &lt;order number&gt; \| Payment ID: &lt;payment number&gt;*

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Branch**

</td><td>

**Financial** tab &gt; **Link to GL** section

</td><td>

The branch specified in the **General** section on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) form.

</td></tr><tr><td>

 

</td><td>

 

</td><td>

**Status**

</td><td>

Summary area

</td><td>

The status depends on the state of the **Release Payments and Refunds** check box in the row of the payment method in the table on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) form. If the check box is selected, the status is *Open* \(meaning that the payment is released\). If the check box is cleared, the status is *Balanced* \(indicating that the payment is not released\).

</td></tr></tbody>
</table>

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

