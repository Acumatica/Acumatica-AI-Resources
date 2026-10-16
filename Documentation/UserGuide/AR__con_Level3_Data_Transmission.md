# Level 3 Data Transmission During Card Payments

Visa and Mastercard charge a higher interchange rate to process payments created with corporate or government issued credit cards. They offer a special program under which it is possible to reduce this interchange rate called *level 3*. Under the level 3 program, the merchant must submit the transactional data along with the payment data to the card networks. This data is used to identify the purchase in more detail to prevent fraud and charge backs. In return, the card networks lower the interchange rate.

Level 3 card payment processing is available for all Acumatica ERP merchants. Acumatica ERP aligns level 3 card payment processing with Visa's Commercial Enhanced Data Program \(CEDP\), helping eligible transactions qualify for lower interchange rates.

When a transaction is captured, the payment gateway verifies the card used to create the payment. As a result, for every payment created with a commercial credit card, their system will send the default line-level data to the card network on behalf of the merchant. The merchant must then send an update with the correct data from the documents where these payments are applied.

**Important:** Payments created with personal credit cards are not eligible for the level 3 interchange rate; thus, the payment gateway does not send any default data for them. When a payment is captured, Acumatica ERP gets no level 3 identifier in response and identifies that level 3 is not supported for this payment. So the merchant is not required to send any transaction data.

## Setup of Level 3 Data Transmission

To set up transmission of level 3 data, you perform the following general instructions:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you make sure that the *Integrated Card Processing* and *Acumatica Payments* features are enabled.
2.  If you expect some documents to have lines without an inventory ID, create a system item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. See [To Specify a Processing Center’s System Item](AR__HOW_Level3_To_Set_Up_System_Item.md).
3.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you set up a processing center that uses the Acumatica Payments plug-in and has a payment method with the *Credit Card* means of payment.

    If you’ve created a system item for use in this processing center, you can specify it on the **Preferences** tab of the [Processing Centers](CA_20_50_00.md) form. Acumatica ERP uses this item to provide the commodity code and unit of measure when level 3 data is prepared for document lines with no inventory ID. For details, see [To Specify a Processing Center’s System Item](AR__HOW_Level3_To_Set_Up_System_Item.md).

4.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you make sure that the payment method has the following settings on the **Settings for Use in AR** tab:
    -   **Integrated Processing**: Selected
    -   **Require Card/Account Number**: Selected
5.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, the cash account used by the payment method has the **Use for Corporate Cards** check box selected in the Summary area.

## Additional Information to Be Sent as Level 3 Data

To successfully send level 3 data to the payment gateway, you must specify certain information that provides default values when documents are created on data entry forms. Some information is required, while some is optional but can increase the likelihood that transactions qualify for level 3 interchange rates. Before you send documents’ level 3 data on the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form, we recommend specifying the following information:

-   Required: **Commodity Code** for items on the **Packaging** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
-   Optional: **Tax Registration ID** on the **Shipping** tab of the [Customer Locations](AR_30_30_20.md) \(AR303020\) or [Customers](AR_30_30_00.md) \(AR303000\) form.
-   Optional: **Postal Code** on the **General** tab of the [Customer Locations](AR_30_30_20.md) or [Customers](AR_30_30_00.md) form.
-   Optional: **Tax Registration ID** on the **Branch Details** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form. This is the merchant's tax registration ID.
-   Optional: **Postal Code** on the **Branch Details** tab of the [Branches](CS_10_20_00.md) form.

If some document lines of level 3 data won’t have an inventory ID, you can create a system item and specify it for the processing center. The system uses this system item to provide the commodity code and unit of measure for those lines, while generating the product code from the document line description. For details on setting up the item, see [To Specify a Processing Center’s System Item](AR__HOW_Level3_To_Set_Up_System_Item.md).

**Attention:** Specifying a system item affects only level 3 data that can still be updated in the processing center. Once a payment is settled, level 3 data can no longer be updated. Because payments are typically settled within about one day after capture, level 3 records for older captured payments may be rejected during resubmission and removed from the processing queue.

## Mapping of Units of Measure

If the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form in your tenant, you can specify a level 3 unit of measure for every unit of measure used in the system. To do this, you select a required unit of measure and fill in the **Level 3 Unit ID** box.

Although **Level 3 Unit ID** is not a required setting on this form, it is one of the level 3 parameters required by the payment gateway. You should specify this ID for the needed units of measure to get level 3 interchange rates for payments.

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

## Documents for Which Level 3 Data Can be Sent

On the [Send Level 3 Data](CA_50_80_00.md) \(CA508000\) form, you can send level 3 data for the following types of documents:

-   *Payment*: A document of the *Payment* type created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and applied to a sales invoice or an AR invoice. The sales order must have an inventory item in its lines for which the **Commodity Code** is specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   *Prepayment*: A document of the *Prepayment* type created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and applied to a sales invoice or an AR invoice. The sales order must have an inventory item in its lines for which the **Commodity Code** is specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   *Cash Sale*: A document of the *Cash Sale* type created on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form and paid with a credit card. The cash sale must have a non-stock item in its lines for which the **Commodity Code** is filled in on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
-   *Sales Order*: A document created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form whose order type is none of the following: *Cash Return \(CR\)*, *Return for Credit \(RC\)*, *Return for Replacement \(RR\)*, *Transfer \(TR\)*, and *eCommerce RMA Order \(ER\)*.

    If a sales order is paid in a different currency, the system converts it by using the exchange rate in effect on the application date. If neither the payment currency nor the document currency is the base currency, the conversion is done in two steps through the base currency.

-   *Sales Invoice*: A document created on the [Invoices](SO_30_30_00.md) \(SO303000\) form with a type other than *Cash Return \(RCS\)*, *Credit Memo \(CRM\)*, and *Credit WO \(SMB\)*.

## Processing of Documents Paid by Line

Payments applied to individual lines of an AR document are included in level 3 transmission. If a payment is applied to an AR invoice that has the **Pay by Line** check box selected, each paid line is treated as an independent application with its own proportional adjustments for payment, cash discount, tax, and currency conversion. For details on level 3 validations, see [Level 3 Data Validation and Adjustment](AR__con_Level3_Validation_and_Adjustment.md).

## Limitations

The following documents are excluded from level 3 processing:

-   Sales orders with the following behavior: *Cash Return \(CR\)*, *Return for Credit \(RC\)*, *Return for Replacement \(RR\)*, *Transfer \(TR\)*, and *eCommerce RMA Order \(ER\)*
-   Sales orders with the *On Hold* status
-   Sales invoices with the following types: *Cash Return \(RCS\)*, *Credit Memo \(CRM\)*, and *Credit WO \(SMB\)*
-   Prepayment invoices
-   Field service documents
-   Payments that have already been settled

-   **[Level 3 Data Validation and Adjustment](../UserGuide/AR__con_Level3_Validation_and_Adjustment.md)**  

-   **[To Specify a Processing Center’s System Item](../UserGuide/AR__HOW_Level3_To_Set_Up_System_Item.md)**  

-   **[To Send Level 3 Data](../UserGuide/AR__HOW_Send_Level3_Data.md)**  


**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

