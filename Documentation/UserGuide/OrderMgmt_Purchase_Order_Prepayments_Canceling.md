# Prepayments for Purchase Orders: Canceling Prepayments {#_ad341cf4-3458-46da-874e-88855788c855 .concept}

The following sections explains how you can cancel prepayments in the system if you have applied a prepayment to the wrong purchase order, or if the prepaid amount was incorrect.

## Voiding a Prepayment Request { .section}

To cancel a prepayment request that was prepared for a purchase order if a payment was not prepared for the prepayment request yet, open the prepayment request on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, and on the More menu, click **Void**. The system changes the status of the prepayment request to *Voided*.

If an AP payment was prepared for a prepayment request, but no check has yet been printed, you cannot void the prepayment request. You can, however, remove the line with this prepayment request from the **Documents to Apply** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, or process the AP payment to completion and then void it.

To cancel the application to a purchase order of a prepayment request paid with an AP payment, you must void the AP payment, and the prepayment will be voided automatically. \(The prepayment itself cannot be voided until the payment is voided.\) To void the payment, open it on the [Checks and Payments](AP_30_20_00.md) form, and on the form toolbar, click **Void**. The system prepares the document with the *Voided Payment* type and opens this document on the same form; the line with the prepayment is added on the **Documents to Apply** tab. After you release the voided payment and its application, the system assigns the *Voided* status to the AP payment and to the prepayment request.

## Canceling the Application of a Prepayment to a Purchase Order { .section}

If a prepayment document was created manually on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, and the application of a prepayment to a purchase order has not been released yet, you can select the **Hold** check box to assign the prepayment the *Reserved* status; you then delete the line with a purchase order from the **Orders** tab.

If the application of a prepayment to a purchase order has been released, you cannot delete the purchase order from the **Orders** tab; to cancel the application, you have to void the prepayment by clicking **Void** on the form toolbar of the [Checks and Payments](AP_30_20_00.md) form. The system creates a document of the *Voided Payment* type; on release of this payment, the prepayment is assigned the *Voided* status.

## Reversing a Prepayment Application to a Bill { .section}

If the application of a prepayment document to an AP bill was released, you can reverse it to cancel the application. To do this, on the **Application History** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, click the row of the bill whose application you want to reverse, and then click **Reverse Application** on the table toolbar. The system adds a reversing row with the opposite amount on the **Documents to Apply** tab. After you release the application of the reversing entry, the prepayment becomes unapplied to the bill, and system increases the prepayment balance by the amount that has been unapplied. Then you can apply this prepayment to another document, or void it, if needed.

**Parent topic:**[Processing Prepayments for Purchase Orders](../UserGuide/OrderMgmt_Purchase_Order_Prepayments_Mapref.md)

