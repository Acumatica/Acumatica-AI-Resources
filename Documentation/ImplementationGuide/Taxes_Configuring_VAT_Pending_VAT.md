# Value-Added Taxes: Pending VAT {#_07f0d8c8-abd4-4313-a225-bbd26764da0c .concept}

A *pending VAT* \(sometimes called a *suspended VAT*\) is applied to the documents whose tax amounts should be recognized later than the documents were released. Once a document subject to the pending VAT is released, the system records its tax amount to an intermediate account \(such as the Pending Tax Payable account or the Pending Tax Claimable account\), where the tax amount is kept until you initiate the process of recognizing the taxes. Suspended tax information is not included into the tax report until the taxes are recognized.

In Acumatica ERP, you can configure the tax agency so that pending VATs will be recognized using one of the following VAT recognition methods:

-   *On Documents*: With this recognition method, you can recognize the total tax amount of a document on any needed date without waiting for payment applications. That is, with this method, once you release the invoice, it immediately becomes available for the recognition of pending VAT amounts.
-   *On Payments*: With this recognition method, the tax amount is recognized only when the payment is applied to a document. The tax amount can be recognized fully or partially, depending on whether the applied payment fully or partially covers the document amount. If applicable, the partial tax amount to be recognized is calculated proportionally to the payment applied to a document.

By the recognition process, the system moves the tax amounts from the pending account to the actual Tax Payable or Tax Claimable account, and includes the tax information in the tax report prepared for the corresponding period. You initiate the tax recognition process by using the [Recognize Input VAT](../UserGuide/TX_50_35_00.md) \(TX503500\) form or the [Recognize Output VAT](../UserGuide/TX_50_30_00.md) \(TX503000\) form.

## System Settings for Pending VAT { .section}

To configure a pending VAT, on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you select *VAT* in the **Tax Type** box and select the **Pending VAT** check box.

**Tip:** You can configure VAT of the *Pending* type and the *Reverse* type at the same time. While configuring that type of the tax, you need to select the **Pending VAT** check box and the **Reverse VAT** check box on the [Taxes](../UserGuide/TX_20_50_00.md) form.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

