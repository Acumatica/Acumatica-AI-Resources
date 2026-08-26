# Level 3 Data Transmission During Card Payments {#_a495f1b8-c575-4047-ae8a-44bbe74c489b .concept}

Visa and Mastercard charge a higher interchange rate to process payments created with corporate or government issued credit cards. They offer a special program under which it is possible to reduce this interchange rate called Level 3. Under the level 3 program, the merchant must submit the transactional data along with the payment data to the card networks. This data is used to identify the purchase in more detail to prevent fraud and charge backs. In return, the card networks lower the interchange rate.

By default, support of level 3 data is enabled for all Acumatica merchants. When a transaction is captured, the payment gateway verifies the card used to create the payment. As a result, for every payment created with a commercial credit card, their system will send the default line-level data to the card network on behalf of the merchant. The merchant must then send an update with the correct data from the documents where these payments are applied.

**Warning:** Payments created with personal credit card are not eligible for level 3 interchange rate and thus the payment gateway does not send any default data for them. When a payment is captured, Acumatica ERP gets no level 3 identifier in response and identifies that level 3 is not supported for this payment. So the merchant is not required to send any transaction data.

## Setup of Level 3 Data Transmission { .section}

To set up transmission of level 3 data, you perform the following general instructions:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you make sure that the *Integrated Card Processing* and *Acumatica Payments* features are enabled.
2.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you set up a processing center that uses the Acumatica Payments plug-in and has a payment method with the *Credit Card* means of payment.
3.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you make sure that the payment method has the following settings on the **Settings for Use in AR** tab:
    -   **Integrated Processing**: Selected
    -   **Require Card/Account Number**: Selected
4.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, the cash account used by the payment method has the **Use for Corporate Cards** check box selected in the Summary area.

## Additional Information to be Sent as Level 3 Data { .section}

To be able to successfully send level 3 data to the payment gateway, you must specify the following information that will be used when creating documents on data entry forms:

-   Required: **Commodity Code** for items in the **International Shipping** section on the **Packaging** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
-   Optional: **Tax Registration ID** in the **Tax Settings** section on the **Shipping** tab of the [Customer Locations](AR_30_30_20.md) \(AR303020\) form or **Tax Registration ID** in the **Tax Settings** section on the **Shipping** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   Optional: **Postal Code** in the **Location Address** section of the **General** tab of the [Customer Locations](AR_30_30_20.md) form or **Postal Code** in the **Account Address** section on the **General** tab of the [Customers](AR_30_30_00.md) form.
-   Optional: **Tax Registration ID** in the **Tax Registration Info** section on the **Branch Details** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form. This information represents the merchant's tax registration ID.
-   Optional: **Postal Code** in the **Main Address** section on the **Branch Details** tab of the [Branches](CS_10_20_00.md) form.

**Tip:** The optional information, although not required, can increase the chances for the transaction to be approved for level 3 rates. We recommend that you enter this information before sending level 3 data of documents on the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form.

## Mapping of Units of Measure { .section}

If the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form in your tenant, you can specify a level 3 unit of measure for every unit of measure used in the system. To do this, you select a required unit of measure and fill in the **Level 3 Unit ID** box.

Although **Level 3 Unit ID** is not a required box on this form, it is one of level 3 parameters required by the payment gateway. You should specify this ID for the needed units of measure to get level 3 interchange rates for payments.

If the *Canadian Localization* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, the level 3 units of measure will be mapped to the default units of measure when level 3 data is sent. The following table shows this mapping.

|Unit of Measure|Description|Level 3 Unit ID|
|---------------|-----------|---------------|
|BOTTLE|Bottle|EA|
|CAN|Can|EA|
|HOUR|Hour|HUR|
|KG|kg|KGM|
|LITER|Liter|LTR|
|METER|Meter|MTR|
|MINUTE|Minute|MIN|
|PACK|Pack|NMP|
|PALLET|Pallet|EA|
|PIECE|Piece|PCB|

If a specific unit of measure is not a part of the default list or if you create a unit of measure for which the **Level 3 Unit ID** mapping is not available, the system will send *EA*, as it is the value suggested by the payment gateway for unknown units of measure. Because level 3 units of measure require a minimum of 3 characters, a space will be added to fill in the third character.

## Documents for Which Level 3 Data Can be Sent { .section}

On the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form, you can send level 3 data for the following types of documents:

-   *Payment*: A document of the *Payment* type created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and applied to a sales invoice or an AR invoice. The sales order must have an inventory item in its lines for which the **Commodity Code** is specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   *Prepayment*: A document of the *Prepayment* type created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and applied to a sales invoice or an AR invoice. The sales order must have an inventory item in its lines for which the **Commodity Code** is specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   *Cash Sale*: A document of the *Cash Sale* type created on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form and paid with a credit card. The cash sale must have a non-stock item in its lines for which the **Commodity Code** is filled in on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

## Processing of Documents Paid by Line { .section}

If a payment is applied to an AR invoice that has the **Pay by Line** check box selected, and is applied to a specific line or lines but not to the full invoice amount, when the payment is processed, the system will send the level 3 data from these lines only and will exclude the lines to which the payment is not applied.

If on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, a payment is applied to an invoice that has the **Pay by Line** check box cleared, the system will send level 3 data from all the lines of this invoice.

## Limitations { .section}

The following documents are excluded from level 3 processing:

-   Document lines with negative amounts \(invoices and sales orders created for returns and refunds\)
-   Sales orders with the following behavior: *Cash Return \(CR\)*, *Return for Credit \(RC\)*, *Return for Replacement \(RR\)*, *Transfer \(TR\)*, and *eCommerce RMA Order \(ER\)*
-   Sales invoices with the following types: *Cash Return \(RCS\)*, *Credit Memo \(CRM\)*, and *Credit WO \(SMB\)*
-   Sales orders that have lines with a negative extended price and the following behavior: *RMA Order \(RMA\)* and *Mixed Order \(MO\)*
-   Documents with no **Inventory ID** specified in their lines

-   **[To Send Level 3 Data](../UserGuide/AR__HOW_Send_Level3_Data.md)**  


**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

