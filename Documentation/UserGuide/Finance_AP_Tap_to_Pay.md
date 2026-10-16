# Invoice Payments: Tap to Pay on iPhone

*Tap to Pay* on iPhone is a payment acceptance capability that lets you accept contactless credit card and digital-wallet payments in the Acumatica mobile app. With this capability, a supported iPhone functions as a card-present payment device, so you do not need a separate POS terminal or external card reader.

The iPhone securely reads card data, and the payment is processed through the *Acumatica Payments* payment gateway. Sensitive card data is not exposed to Acumatica ERP. In this topic, you will read about the setup required for *Tap to Pay*, payment processing in the mobile app, and the limitations of this functionality.

**Attention:** *Tap to Pay* is available only if the *Acumatica Payments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. The functionality is supported only in the Acumatica mobile app on iPhone XS or later and only with the *Acumatica Payments* payment gateway.

## Configuration of Tap to Pay

Before mobile users can accept *Tap to Pay* payments, you, acting as an administrator, must configure a processing center on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form. The processing center must use the *Acumatica Payment Plug-In* and be active.

Then, on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you create a payment method with *Tap to Pay* selected in the **Means of Payment** box. The payment method must be associated with a cash account and the processing center configured for *Tap to Pay*. Make sure the **Active**, **Use in AR** check boxes are selected and that the **Integrated Processing** check box is selected on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) form.

Finally, you link the processing center’s merchant account to an Apple ID. On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you click **Tap to Pay – Link Apple ID** and complete the linking process in Apple Business Connect. You sign in with your Apple ID, enter your password, and accept the terms and conditions. Acumatica ERP doesn't store or update this account-linking data—the link exists between your Apple account and the processing center's account. You can also use this button to relink the merchant account to a different Apple ID.

**Important:** *Tap to Pay* payment methods are used for AR processing only; they are not used for AP or PR processing. Also, surcharges aren't supported for *Tap to Pay* payments — if a processing center has the **Compliant Surcharge** check box selected, the system displays an error when you try to process a payment through it.

## How Tap to Pay Payments Are Processed

Once the setup is complete, as a mobile user, you can process a *Tap to Pay* payment from the mobile app. You either create a payment from a service or sales order and select the *Tap to Pay* payment method, or tap a payment directly on the Home page to open [Payments and Applications](AR_30_20_00.md) screen. On this screen, you tap **Authorize** to place a hold for later capture or **Capture** to process the full payment immediately. The app checks that your iPhone supports *Tap to Pay* and hands off to Apple's *Tap to Pay* interface, where you hold a contactless card or digital wallet near the iPhone to complete the payment.

When the payment is completed, the result is sent back to Acumatica ERP and processed through the existing *Acumatica Payments* flow. This workflow supports both immediate capture and preauthorization.

Once a *Tap to Pay* transaction has been initiated in the mobile app, you can capture a preauthorized transaction, void or refund it, or increase the authorization amount, if supported. Both voids and refunds are processed as card-not-present transactions; a refund always references the original transaction.

## Know the Limitations

-   As of now, the *Tap to Pay* payment method is not supported for processing centers with compliant surcharges.
-   *Tap to Pay* payments are supported only in the Acumatica mobile app on iPhone XS or later.
-   Acumatica ERP users cannot initiate *Tap to Pay* transactions in the system. The *Tap to Pay* authorization and capture can be started only from the mobile app.
-   On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the **Record Card Payment** and **Validate Card Payment** commands are available for *Tap to Pay* payments.
-   The **Authorize** and **Capture** commands are not available for initiating *Tap to Pay* transactions from Acumatica ERP.
-   *Tap to Pay* on Android is out of scope for this release.
-   You can't select the *Tap to Pay* payment method when creating payments from [Cash Sales](AR_30_40_00.md) \(AR304000\), the **Create Payment** dialog boxes on the [Sales Orders](SO_30_10_00.md) \(SO301000\) and the [Invoices](SO_30_30_00.md) \(SO303000\), or the [Customer Payment Methods](AR_30_30_10.md) \(AR303010\) form.

**Parent topic:**[Paying AR Invoices](../UserGuide/Finance_PayingARInvoices_Mapref.md)

