# Support of COD Transactions {#_86b7c49d-37ad-4e0e-9fc2-7962059d5ad6 .concept}

The type of purchasing transaction for which a buyer pays at the time of delivery is generally referred to as *cash on delivery \(COD\)* or, because other methods of payment besides cash might be involved, *collect on delivery \(COD\)*. Acumatica ERP provides you with functionality that you can use to account for payments made on delivery.

This topic describes the basic workflow when you process a purchase order to be paid on delivery.

## Basic Process { .section}

To process a purchase order that will be paid on delivery, you perform the following general steps:

1.  *Create a purchase order.*

    On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, create a purchase order. Select the vendor, and provide all the required details about the goods and services to be purchased. Save the order.

    **Note:** Depending on your company's policies, additional steps might follow the creation of the purchase order—for instance, for approval of the order.

2.  *Create a prepayment request linked to the purchase order.*

    While you are viewing the purchase order, on the More menu, select **Create Prepayment Request**. The system opens the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, with information filled in for a new prepayment request from the purchase order; the reference number of the purchase order is shown in the **Vendor Ref.** box. Save the prepayment request. For more details, see [To Enter a Prepayment in the Simplified Way](AP__how_Entering_a_Prepayment.md). Release the prepayment request.

    **Note:** An unreleased prepayment request is synchronized with a purchase order as follows: If you edit the details of the purchase order, the prepayment request is changed accordingly.

    Open the purchase order on the [Purchase Orders](PO_30_10_00.md) \(AP301000\) form, and make sure that the reference number of the prepayment request is shown in the **Prepayment Ref. Nbr.** box.

3.  *Prepare an AP payment*.

    On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, open the prepayment request, and click **Pay** on the More menu. This action opens the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form with information filled in for a new AP payment, which is ready to be saved. Save and release the payment.

4.  *Create a receipt for the purchase order*.

    Once the goods are received and payment is made, you can create a receipt in either of the following ways:

    -   On the [Purchase Orders](PO_30_10_00.md) form, open the original purchase order. On the More menu, select **Enter PO Receipt**. This opens the [Purchase Receipts](PO_30_20_00.md) form with a ready-to-save receipt.
    -   On the [Purchase Receipts](PO_30_20_00.md) form, specify the vendor, and on the table toolbar of the **Details** tab, click **Add PO**. Select the original purchase order to add to the receipt.
    Save the receipt.

5.  *Release the receipt.*

    On release of the receipt, the system generates an AP bill, applies prepayment to the purchase order, and changes the status of the purchase order to *Closed*.


**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

