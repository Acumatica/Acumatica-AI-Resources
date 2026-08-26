# Calculating Use and Sales Taxes in Purchase Documents {#_a7db62e9-43ff-4d06-99fd-34519ca5c648 .concept}

A use tax is a type of a tax that is applied when a merchant purchases a product or service on which sales tax was not initially paid, and then converts this product or service for its own use. For example, if your company purchases tax-free goods from a vendor that is not registered in the state of your purchase, it must report the purchases and pay the use tax directly to the tax agency of your state.

The rate and the amount of the use taxes that apply to a purchase document can depend on many factors, including the types of items purchased, the vendor relations you have configured, the remittance address of the vendor, and the address of the warehouse.

## Use Tax Calculation with Avalara AvaTax { .section}

If your system is integrated with the AvaTax service of Avalara or another third-party tax calculation software, the applicable taxes are calculated by this service or software and recorded to the purchase order or AP bill when you save the document.

Once a user creates a document that is subject to taxes and removes it from hold \(if applicable\), the system checks whether the vendor location specified in the document is in the tax zone configured for the tax calculation software. If so, the system sends a request to the tax calculation software to determine the applicable taxes, based on the vendor location address, entity code, available exemption certificates, and tax rules \(if any\). The tax amounts computed by the tax calculation software are sent to Acumatica ERP and can be reviewed on the **Taxes** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Note:** For purchase orders, the taxes are shown for informational purposes only. Only taxes on AP bills are actually reported to the applicable tax agency.

The way the tax calculation software calculates use taxes depends on the settings of the origin \(**From**\) and destination \(**To**\) addresses specified in an Acumatica ERP document. The following sections describes how the system selects the **From** and **To** addresses in documents and individual document lines, depending on the document type and vendor settings.

## Sales Tax Calculation in Acumatica ERP { .section}

Acumatica ERP supports automatic calculation of sales taxes in purchase orders with the sales tax amount included in the document total. You can also select a sales tax with the *Input* group manually on the **Taxes** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

For details on creating a sales tax of the *Input* type, see [Sales Taxes: To Configure a Sales Tax for Use in AP](../ImplementationGuide/SalesTaxes_Implem_Activity_AP.md).

## Addresses in Purchase Orders { .section}

In the document header of a purchase order, the system specifies the remittance address of the vendor selected in the purchase order as the **From** address, and the **Ship-To** address of the purchase order as the **To** address.

In the individual purchase order lines, the system specifies the **From** and **To** addresses by using the following rules:

-   For lines of *Normal*, *Blanket*, and *Standard* purchase orders, the system specifies the vendor remittance address as the **From** address, and the address of the warehouse in the line as the **To** address. \(If the *Multiple Warehouses* feature is not used in the system, the **Ship-To** address of the purchase order is used as the **To** address.\)
-   For lines of *Drop-Ship* and *Project Drop-Ship* purchase orders, the system specifies the vendor remittance address as the **From** address, and the **Ship-To** address of the purchase order as the **To** address.

## Addresses in Accounts Payable Bills { .section}

If the **Vendor Relations** feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system specifies the vendor location address of the bill as the **From** address, and the main address of the bill's branch as the **To** address.

If the **Vendor Relations** feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form and vendor relations are set up, the system specifies the supplied-by vendor's location address of the bill as the **From** address, and the main address of the bill's branch as the **To** address.

In the individual lines of the bills, the system specifies the **From** and **To** addresses by using the following rules:

-   If a bill line is related to a line of a *Normal* purchase order, the system specifies the vendor address of the related purchase order line as the **From** address, and the address of the warehouse in the related purchase receipt line \(or in the related purchase order line if the receipt has not been prepared yet\) as the **To** address. \(If the *Multiple Warehouses* feature is not used in the system, the **Ship-To** address of the purchase order is used as the **To** address.\)
-   If a bill line is related to a line of a *Drop-Ship* or *Project Drop-Ship* purchase order, the system specifies the vendor address of the related purchase order line as the **From** address, and the **Ship-To** address of the purchase order as the **To** address.
-   If a bill line is related to a line of a direct purchase receipt \(that is, one that is not linked to a purchase order\), the system uses the vendor location address of the related purchase receipt as the **From** address, and the address of the warehouse in the related purchase receipt as the **To** address. \(If the *Multiple Warehouses* feature is not used in the system, the main address of the bill's branch is used as the **To** address.\)
-   If a bill line is not related to any line of a purchase order or purchase receipt, the system uses the vendor location address of the bill as the **From** address, and the main address of the bill's branch as the **To** address.

For an overview of the integration with Avalara AvaTax and instructions on how to configure the integration, see [Integrating Acumatica ERP with Avalara Avatax](config_Avalara_Integration_Mapref.md).

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

