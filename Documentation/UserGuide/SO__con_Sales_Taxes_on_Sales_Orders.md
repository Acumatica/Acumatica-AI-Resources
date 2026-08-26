# Tax Application in Sales Documents {#_39c67aca-9e64-47f3-bed5-08227508e62c .concept}

Based on where items are ordered from, they may be subject to particular sales taxes. The rate and the amount of the sales taxes that apply to sales orders and sales invoices can depend on many factors, including the types of items purchased, the delivery address of the customer, the address of the selling branch, and the business presence of your organization in the customer location.

If automatic calculation of taxes is configured in your system, the system determines the applicable taxes for each sales order or invoice based on the tax categories of the items sold and the tax zones assigned to customer locations. For more information, see [Tax Zones and Tax Categories](../ImplementationGuide/Taxes_TaxZones_and_Categories_Mapref.md).

With Acumatica ERP, to minimize tax-related errors that users make when they enter sales orders, cash sales, and invoices, you can provide default values for the tax zones used for tax calculation, as described in this topic.

## Sales Taxes on Sales Orders { .section}

You enter customers' sales orders on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. The system inserts the default tax zone \(displayed in the **Customer Tax Zone** box on the **Financial** tab\) into the sales order, copying it as follows:

-   If the sales order is generated based on a sales quote or an opportunity, the tax zone is copied from the original document on the [Sales Quotes](CR_30_45_00.md) \(CR304500\) or [Opportunities](CR_30_40_00.md) \(CR304000\) form.
-   If the sales order is created by using the [Sales Orders](SO_30_10_00.md) form as a starting point, the system determines the default tax zone by performing the following steps in the listed order:
    1.  If the sales order is related to a project and the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the tax zone is copied from the project's default tax zone. This tax zone is specified in the **Revenue Tax Zone** box on the **Addresses** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
    2.  If no tax zone has been inserted in the previous step, the tax zone is copied from the customer location specified in the sales order. Tax zones for customer locations can be specified on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If this feature is disabled, the tax zone is copied from the customer—that is, from **Tax Zone** box on the **Shipping** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form for the customer selected in the sales order.
    3.  If no tax zone has been inserted in the previous step, the tax zone is determined depending on the state of the **Will Call** check box on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) form as follows:
        -   If the check box is selected, the system uses the tax zone of the selling branch, which is specified in the **Tax Zone** box on the **Delivery Settings** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form. If the *Multibranch Support* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, the system uses the tax zone specified for the selling company on the [Companies](CS_10_15_00.md) \(CS101500\) form. If the *Multibranch Support* feature is enabled, the system copies the tax zone that is specified either on the [Branches](CS_10_20_00.md) form or on the [Companies](CS_10_15_00.md) form, depending on who is the seller—a company or a branch.
        -   If the check box is cleared, the tax zone is determined by the shipping address. For more details, see [Tax Zones and Categories: Automatic Assignment of a Tax Zone in Documents](../ImplementationGuide/TaxZones_and_Categories_Automatic_Assignment_of_Tax_Zone.md).

            **Tip:** If you want the system to determine the tax zone for a sales order based on the shipping address, do the following:

            1.  Make sure that the **Calculate Project-Specific Taxes** check box is cleared on the [Projects Preferences](PM_10_10_00.md) form.
            2.  On the [Customers](AR_30_30_00.md) form, clear the **Tax Zone** box on the **Shipping** tab for the customer.
            3.  Make sure that the **Will Call** check box is cleared on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) form.

If you know exactly which tax zone should be used for a specific sales order, you can override the default setting and select it in the **Customer Tax Zone** box. For details, see [Taxable Sales with Freight Charges: Process Activity](Taxes_Processing_SO_Invoice_FreightCharges_Activity.md).

## Taxes Applicable to Freight Sales { .section}

If your company provides freight as an additional service that is subject to taxes, you configure a ship via code for the shipping options provided by your company \(that is, a ship via code with the **Common Carrier** check box cleared on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form\), in the ship via code settings, you can specify the appropriate tax category that applies to freight. The list of taxes that apply to the freight includes the taxes that are present both in the tax category of the ship via code and in the tax zone of the branch that sold the goods.

If the goods are being shipped by an integrated carrier, the tax category is applied to only the amount of freight that exceeds the freight cost. The list of taxes applied to the specified amount consists of the taxes from both the tax category and the tax zone of the customer's delivery address \(the specified tax zone of the customer location or, if one has not been specified, the tax zone automatically determined by the ZIP code of the delivery address\). For details, see [Taxable Sales with Freight Charges: Process Activity](Taxes_Processing_SO_Invoice_FreightCharges_Activity.md).

## Sales Taxes on Sales Invoices { .section}

When a sales order is shipped, you create a related sales invoice, which you can view on the [Invoices](SO_30_30_00.md) \(SO303000\) form. For these invoices, the system copies all the details from the associated sales orders. Sales orders with different tax zones cannot be added to the same invoice. When you mass-create invoices for multiple sales orders by using the *Prepare Invoice* action on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, the system groups the sales orders by tax zone.

**Attention:** When a user mass-prepares invoices to a customer that is assigned to the tax zone configured for Avalara, shipments that have different ship-to addresses can be consolidated into one sales invoice.

Also, you can manually create invoices to bill customers for services rendered, or you can enter cash sales when the customer immediately pays for the services. You can create an invoice by using the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or the [Invoices](SO_30_30_00.md) \(SO303000\) form. Cash sales can be created on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form.

The system inserts the default tax zone for the accounts receivable or sales invoice or cash sale \(displayed in the **Customer Tax Zone** box on the **Financial** tab of the applicable form\), copying it as follows:

1.  From the **Revenue Tax Zone** box on the **Addresses** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, if the invoice or cash sale is related to a particular project, and the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.
2.  From the tax zone specified for the opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form if the order has been created from an opportunity that has a tax zone specified.
3.  From the tax zone of the customer location specified on the document. Tax zones for customer locations can be selected on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form.
4.  From the tax zone associated with the selling branch if no tax zone is specified for this customer location. If the *Multibranch Support* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the tax zone assigned to your organization on the [Branches](CS_10_20_00.md) \(CS102000\) form is used.

If you know exactly which tax zone should be used on a specific invoice or cash sale document, you can override the default tax zone and select it in the **Customer Tax Zone** box.

On release of the sales invoice, the system generates a batch of the following general ledger transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount + Tax Amount| |
|Sales account| |Amount|
|Tax Payable account| |Tax amount|

## Tax Calculation with Specialized Third-Party Software { .section}

If your system is integrated with the AvaTax service of Avalara or another third-party tax calculation software, the applicable taxes are calculated by this service or software and recorded to the sales order or invoice when you save the document.

Once you remove a sales order or a sales invoice from hold, the system checks whether the customer location specified in the document is in the tax zone configured for the tax calculation software. If so, the system sends a request to the tax calculation software to determine the applicable taxes, based on the customer location address, entity code, available exemption certificates, and tax rules \(if any\). The tax amounts computed by the tax calculation software are sent to Acumatica ERP and can be reviewed on the **Taxes** tab of the document entry form.

**Attention:** For sales orders, the taxes are shown for informational purposes only. Only taxes on invoices are actually reported.

The way the system applies taxes depends on the settings of the origin \(**From**\) and destination \(**To**\) addresses specified in a document \(sales order or invoice\). For the addresses that are specified in the document header, the system inserts the address of the company branch \(as specified on the [Branches](CS_10_20_00.md) \(CS102000\) form\) as the **From** address, and the address of the customer location specified in the document as the **To** address.

The system inserts the **From** and **To** addresses of each sales order line by using the following rules:

-   If the customer picks up the ordered item directly from a warehouse \(that is, if the **Will Call** check box is selected on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form\), the system uses the **From** and **To** addresses of the warehouse selected in the sales order line, as specified on the [Warehouses](IN_20_40_00.md) \(IN204000\) form.

    For a line in which the warehouse is not specified—that is, the line with a non-stock item that has the **Require Shipment** check box cleared on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form—the system uses the address of the branch in the sales order line as the **From** and **To** addresses. This address is copied from the **Main Address** section on the [Branches](CS_10_20_00.md) \(CS102000\) form.

-   If the ordered item is shipped via a common carrier \(that is, if the **Will Call** check box is cleared on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) form\), the system uses the warehouse address as the **From** address and the **Ship-To** address of the sales order as the **To** address.

In the lines of sales orders marked for drop-shipment, the system inserts the address of the default location of the warehouse as the **From** address. If the warehouse's address is empty, the system uses the address of the branch. The system inserts the **Ship-To** address specified in the sales order as the **To** address. In each related line of the drop-ship invoice, the system uses the vendor's location address in the related purchase receipt as the **From** address. The system inserts the **Ship-To** address in the related purchase order as the **To** address.

In a direct sales invoice, the system uses the **From** and **To** addresses of the warehouse selected in the sales order line, as specified on the [Warehouses](IN_20_40_00.md) \(IN204000\) form.

In an sales invoice that was created from a sales order, on the [Invoices](SO_30_30_00.md) \(SO303000\) form, the system uses the following rules to insert the from and ship-to information:

-   In the document header, the system uses the address of the company branch as the **From** address, and the **Ship-To** address of the sales invoice as the **To** address.
-   In the document lines, if the sales invoice was prepared from a sales order that requires a shipment, the system uses the address of the warehouse specified in the line as the **From** address, and the **Ship-To** address of the shipment as the **To** address.
-   In the document lines, if the sales invoice was prepared from an order that does not require a shipment, the system uses the address of the warehouse or branch specified in the line as the **From** address, and the **Ship-To** address of the sales order as the **To** address.
-   If the sales invoice was prepared for multiple shipments, for each line, the system uses the address specified for the line in the corresponding shipment.

    **Attention:** If multiple shipments or sales orders with different addresses are included in the sales invoice, the system selects the **Multiple Ship-To Addresses** check box on the **Address Details** tab of the [Invoices](SO_30_30_00.md) form.

-   In a line added to the sales invoice without a link to sales order or shipment, the system inserts the address of the company branch as the **From** address, and the **Ship-To** address of the sales invoice as the **To** address.

For an overview of the integration with Avalara AvaTax and instructions on how to configure the integration, see [Setup of Online Integration with Avalara AvaTax](TX__con_Integrating_with_AvaTax.md).

## Disabled Calculation of Taxes on Sales Orders and Sales Invoices {#section_ltl_xsm_hwb .section}

If automatic calculation of taxes is configured in your system, Acumatica ERP always calculates taxes when you create a sales order and recalculates taxes when you update the order \(for example, when you adjust quantities in lines of a sales order or create an invoice or shipment for this order\).

If you are using an e-сommerce system, you may want to calculate taxes in external tax calculation systems and then import them to Acumatica ERP. In this case, you may have tax rates configured inaccurately in the system or not configured at all. If the taxes are not configured properly, the recalculation of taxes in the updated sales orders or invoices created for these orders can cause incorrect amounts to be posted to the general ledger in the system.

Also, you may need to adjust the tax rates manually in sales orders. When you update a sales order that has manually adjusted taxes or create an invoice for this order, the system by default recalculates taxes in the sales order and invoice.

To avoid issues with tax recalculation, you can disable the automatic calculation of taxes for the order types intended for e-сommerce sales by selecting the **Disable Automatic Tax Calculation** check box on the **General** tab \(**Order Settings** section\) of the [Order Types](SO_20_10_00.md) \(SO201000\) form. When a sales order of this type is created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system does not calculate taxes for this order. If this sales order has manually specified taxes or taxes that were imported from an ecommerce system, taxes are not recalculated when you update the order.

For sales orders with the disabled automatic calculation of taxes, the **Disable Automatic Tax Calculation** check box is selected by default on the **Financial** tab \(**Financial Information** section\) of the [Sales Orders](SO_30_10_00.md) form. You can change the state of this check box manually until at least one invoice is prepared for the sales order. When the sales order has at least one prepared invoice, the **Disable Automatic Tax Calculation** check box becomes unavailable for editing.

If you create multiple invoices for a sales order with the automatic calculation of taxes disabled,—that is, if you create a several partial shipments for the sales order with the *Back Order Allowed* option selected in the **Shipping Rule** box on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) form and then prepare a sales invoice for each shipment—the whole taxable amount is transferred to the first created invoice.

If you add multiple sales orders to a single invoice, those orders must have the same state of the **Disable Automatic Tax Calculation** check box. In the **Add Order** dialog box on the [Invoices](SO_30_30_00.md) \(SO303000\) form, the system displays only sales orders with the same state of the **Disable Automatic Tax Calculation** check box as the first sales order added to the invoice has.

In a sales invoice that is prepared for a sales order with the automatic calculation of taxes disabled, the system automatically selects the **Disable Automatic Tax Calculation** check box on the **Financial** tab \(**Tax Info** section\) of the [Invoices](SO_30_30_00.md) \(SO303000\) form. This check box is always unavailable for editing.

The following limitations apply to this functionality:

-   The functionality does not work with taxes that have the *Inclusive Line-Level* or *Inclusive Document-Level* calculation rule selected on the [Taxes](TX_20_50_00.md) \(TX205000\) form.
-   The functionality does not work if the *Gross* option is selected in the **Tax Calculation Method** box on the **Financial** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for the customer in the sales order while the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The feature is incompatible with the functionality provided by the *Estimating* feature of Acumatica ERP Manufacturing Edition.

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

