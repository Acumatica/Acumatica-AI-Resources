# Order Synchronization: Non-Card Payments {#_d3afd74f-37fe-4b76-b7e2-e758954560cb .concept}

The following sections describe how to set up the import of payments from the BigCommerce store to Acumatica ERP.

## Configuration of Payment Synchronization { .section}

If payments for at least one payment method set up in the BigCommerce store should be imported to Acumatica ERP, you need to activate the *Payment* entity on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

For each store payment method—that is, each payment method defined and activated in the BigCommerce store—payments by which should be imported to Acumatica ERP, you need to create a mapping with a payment method defined in Acumatica ERP on the **Payments** tab. The system automatically adds a row with the store payment method and the currency it was defined for specified \(in the **Store Payment Method** and the **Store Currency** boxes, respectively\) for each store payment method that is active in the BigCommerce store.

To map the combination of the store payment method and the store currency with the Acumatica ERP payment method, in the table of the **Payments** tab, you specify the following settings:

-   To indicate that payments by a specific store payment method should be imported to Acumatica ERP, you select the **Active** check box.
-   In the **ERP Payment Method** column, you select the payment method defined in Acumatica ERP for the store payment method. Payments imported from the BigCommerce store to Acumatica ERP will have this payment method inserted. For information about setting up payment methods in Acumatica ERP, see [Cash Management: Payment Methods](../ImplementationGuide/config_Basic_Company_Payment_Methods.md).
-   In the **Cash Account** column, you select a cash account associated with the payment method. The cash account must be in the currency of the store payment method and belong to the branch selected on the **Orders** tab. For information about setting up cash accounts in Acumatica ERP, see [Cash Management: Cash Accounts](../ImplementationGuide/config_Basic_Company_Cash_Accounts.md) and [Configuring Cash Accounts](CA__MNG_CashAccounts.md).

You can also indicate that payments that are imported from the BigCommerce store should be automatically released as soon as they are imported by selecting the check box in the **Release Payments and Refunds** column. If refunds issued in the store should be imported to Acumatica ERP, you select the **Process Refunds** check box.

## Synchronization of Payments { .section}

You can import payments independently of orders by preparing and processing the *Payment* entity.

During the synchronization of the *Payment* entity, the system creates a document of the *Prepayment* type on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and applies it to the sales order if the following conditions are met:

-   The store payment method with which the order was paid is mapped to an Acumatica ERP payment method and the mapping is active on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.
-   The sales order has the *Open* status and has an unbilled balance, or the sales order has the *Canceled* status.

If the mapping of the store payment method is inactive or has not been configured, the system creates a synchronization record for the payment on the [Sync History](BC_30_10_00.md) \(BC301000\) form and assigns it the *Filtered* status. In this case, the prepayment document is not created on the [Payments and Applications](AR_30_20_00.md) form.

If the sales order has been fully invoiced, the system cannot apply the prepayment to the sales order. In this case, the prepayment is applied to the invoice or invoices created for the sales order.

If the sales order has been partially invoiced, the prepayment is applied to the sales order only in the amount equal to the unbilled amount of the sales order. You need to manually apply the remaining amount to the invoice or invoices.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_BC_Syncing_Orders_Mapref.md)

