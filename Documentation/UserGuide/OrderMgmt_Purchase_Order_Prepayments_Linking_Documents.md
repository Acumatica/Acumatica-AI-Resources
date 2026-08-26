# Prepayments for Purchase Orders: Linking Documents {#_22d14fb8-845a-474f-9658-6ad278210eb2 .concept}

The following sections describe how you can establish connections between existing prepayments and related finance and purchase documents.

## Linking a Prepayment to Bills and Prepayment Requests { .section}

When you enter a vendor prepayment as a document of the *Prepayment* type on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you can add the finance documents to which the prepayment will be applied on release to the **Documents to Apply** tab. You can add accounts payable bills, credit adjustments, and prepayment requests. Prepayment requests are added only manually. To add accounts payable bills and credit adjustments, you can click **Load Documents** on the table toolbar, so that the system will find the needed documents and add them to the table.

**Attention:** A prepayment request is always paid in the full amount; you cannot pay it partially.

## Linking Prepayment to Purchase Orders and Related Bills { .section}

According to the business processes established in your company, you may need to reserve a prepayment for a purchase order for which the related accounts payable bill has not yet been received.

When you enter a vendor prepayment as a document of the *Prepayment* type on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you can add the purchase order to which the prepayment will be reserved on the **Orders** tab. You can add documents manually, or you can click **Load Orders** on the table toolbar and specify filtering conditions in the **Load Orders** dialog box; the system will find the needed documents and add them to the table.

After the prepayment and prepayment application are released, the **Applied to Order** column on the **Orders** tab of the [Checks and Payments](AP_30_20_00.md) form shows the amount that was prepaid for the purchase order. When an accounts payable bill is prepared for the purchase order and released, the prepaid amount is applied to the bill balance; this amount is shown in the **Transferred to Bill** column on the **Orders** tab.

## Linking Accounts Payable Bills to Prepaid Purchase Orders { .section}

You can create an AP bill manually on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, and add to this bill the lines of any number of purchase documents of the vendor that is specified in the bill. If any of the added purchase documents has any linked prepayments, these prepayments appear on the **Applications** tab and on release of the bill are applied automatically to the bill. You can add the lines of purchase documents to a bill in the following ways:

-   By clicking the **Add PO Receipt** or **Add PO** button on the table toolbar of the **Details** tab, and selecting the documents to be added in the **Add PO Receipt** or **Add PO** dialog box, which opens. The system adds all lines of the selected document or documents to the **Details** tab, and automatically specifies the **Amount Paid** for each applicable prepayment on the **Applications** tab.
-   By clicking the **Add PO Receipt Line** or **Add PO Line** button on the table toolbar of the **Details** tab, and selecting the particular lines to be added in the **Add Receipt Line** or **Add PO Line** dialog box, which opens. The system adds the selected lines to the **Details** tab. In this case, the prepayment amount is not suggested by the system; you need to manually specify the **Amount Paid** for each applicable prepayment on the **Applications** tab.

**Parent topic:**[Processing Prepayments for Purchase Orders](../UserGuide/OrderMgmt_Purchase_Order_Prepayments_Mapref.md)

