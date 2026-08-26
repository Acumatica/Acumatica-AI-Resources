# Sales Tax Calculation {#_7c4ada00-6f16-4dab-ac4c-f1573414b9b8 .concept}

In Acumatica ERP, you can set up sales tax calculation for accounts receivable documents, sales orders, and pro forma invoices by using the Avalara AvaTax service. This topic provides an overview of the supported document types, key configuration steps, and important details related to the tax calculation process.

## Configuration of Sales Tax Calculations {#section_nwr_npn_rcc .section}

Sales tax calculation can be performed by the Avalara AvaTax service for the following documents in Acumatica ERP:

-   Documents of the *Invoice*, *Credit Memo*, and *Debit Memo* types created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form
-   Documents of the *Invoice*, *Credit Memo*, *Debit Memo*, *Cash Sale*, and *Cash Return* types created on the [Invoices](SO_30_30_00.md) \(SO303000\) form
-   Sales orders created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form
-   Pro forma invoices created on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form

To initiate the tax calculation process for a document in Acumatica ERP, the following configuration tasks must be completed:

1.  An external tax provider must be configured on the [Tax Providers](TX_10_20_00.md) \(TX102000\) form.
2.  A dedicated tax zone must be created on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form. In addition to other tax zone settings, the following must be specified:
    -   The **External Tax Provider** check box is selected.
    -   *Sales Taxes* is specified in the **Calculate in AP** box.
3.  The tax zone must be specified either directly in a document or in the customer’s settings.
4.  For a sales order created on the [Sales Orders](SO_30_10_00.md) form and invoice prepared for this order on the [Invoices](SO_30_30_00.md) form, make sure that the **Disable Automatic Tax Calculation** check box is cleared on the **Financial** tab. If the check box is selected, Acumatica ERP stops sending API requests to the Avalara AvaTax service.
5.  The tax categories must be specified either directly in a document line or in the stock or non-stock item settings so that the system automatically copies them into the document settings.

When you save a document and remove it from hold in Acumatica ERP, the system sends an API request to the Avalara AvaTax service. The AvaTax service responds with the applicable tax information, including tax IDs, tax rates, tax amounts, and taxable amounts. This information is added to the **Taxes** tab of the document form. The total tax amount is shown in the Summary area of the document. The system also adds the applied taxes to the [Taxes](TX_20_50_00.md) \(TX205000\) form.

## Tax Calculation Approaches {#section_o5b_lpn_rcc .section}

In Acumatica ERP, the calculation of taxes can be performed for one document individually or for multiple documents at the same time as described below:

-   Individually: Tax calculations is performed directly on document entry forms, such as [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or the [Invoices](SO_30_30_00.md) \(SO303000\) form. Taxes are calculated for each document individually as it is entered or updated.
-   As a group and potentially on a schedule: Taxes are mass-calculated on the [Calculate Taxes](AP_50_16_00.md) \(AP501600\), [Calculate Taxes](CA_50_16_00.md) \(CA501600\), and [Calculate Taxes](AR_50_16_00.md) \(AR501600\) forms. These forms display documents of specific types where taxes have not yet been calculated. AvaTax processes these documents sequentially, calculating the taxes and returning the corresponding tax IDs and tax amounts for each document. On these forms, you can set up an automation schedule so that the taxes in documents are calculated automatically according to the schedule.

**Attention:** Taxes are calculated on sales orders on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form only for informational purposes. Only taxes on invoices are actually reported.

## Address Verification for the Sales Tax Calculation {#section_drd_k3f_scc .section}

For sales tax calculation, Acumatica ERP sends the document and address information to Avalara, including the sender's address \(the `shipFrom` parameter in the API request\) and the recipient's address \(the `shipTo` parameter in the API request\). The system determines these addresses as follows:

-   `shipFrom` is typically the address of the branch specified in the invoice in the **Branch** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

    If you're using the *Service Management* functionality and the invoice is created from a service order or an appointment, `shipFrom` is the address of the warehouse specified for the line item or the branch location address of the service order \(if no warehouse is applicable\).

    For *Credit Memo* or *Cash Return* documents, Acumatica ERP sends the customer's location address as the `shipFrom` value.

    Although this address does not affect the sales tax calculation, it is required by the Avalara API.

    **Important:** If an invoice contains at least one line linked to a sales order with the **Will Call** check box selected on the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system will use the `shipFrom` address as the `shipTo` address for the document.

-   `shipTo` directly affects tax calculation. Acumatica ERP uses different address sources depending on the specific document, as outlined in the table below, when sending information to Avalara for tax calculation.

    |Document|`shipTo`|
    |--------|--------|
    |An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) form, including an invoice that refers to a project \(but excluding an invoice that refers to a service order or appointment\)|The main contact address that is specified for the customer account on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|
    |An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) form if the invoice has been generated for a service order or appointment|The address specified in the **Address** section on the **Settings** tab of the [Service Orders](FS_30_01_00.md) \(FS300100\) form for the related service order|
    |An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) form, for lines that were added to the invoice on this form and for lines that do not have an associated shipment reference number|The address of the customer location that is specified for the invoice in the **Location** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form and that is also displayed in the **Ship-To Address** section of the **Addresses** tab of this form|
    |A document with the *Invoice*, *Cash Sale*, or *Debit Memo* type created on the [Invoices](SO_30_30_00.md) \(SO303000\) form, with lines added directly on this form|The address of the customer location that is specified for the document in the **Location** box in the Summary area of the [Invoices](SO_30_30_00.md) form and that is also displayed in the **Ship-To Address** section of the **Addresses** tab of this form|
    |A pro forma invoice created on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, with lines added directly on this form|The address of the customer location that is specified for the document in the **Location** box in the Summary area of the [Pro Forma Invoices](PM_30_70_00.md) form and that is also displayed in the **Ship-To Address** section of the **Addresses** tab of this form|


If you need the system to use different logic in retrieving the `shipTo` value for sales tax calculation in documents, you can override the appropriate method through customization of Acumatica ERP.

## Line-Level Tax Calculation in AR Invoices {#section_arv_jtr_rcc .section}

An accounts receivable invoice is paid by line when the **Pay by Line** check box is selected in the Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. In this case, the taxes calculated by the Avalara AvaTax service are distributed across the line items on release of the document and shown in the **Tax Amount** column on the **Details** tab of the form. The tax amounts are included in the balance of each line item and shown in the **Balance** column on the **Details** tab.

This functionality is available only if the *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Modification of Committed Invoices {#section_uzy_kq3_scc .section}

Once an invoice has been saved in Acumatica ERP, with taxes calculated by the Avalara AvaTax service and the invoice committed in Avalara, no further changes can be made to that invoice. Invoices with the *Committed* status in the Avalara account cannot be updated in Acumatica ERP. Any changes that would trigger a tax recalculation, such as modifications to the date, address, or amount, cannot be saved, and as a result, the invoice cannot be released.

## Incomplete Invoice Processing {#section_tlm_1d2_tcc .section}

If any errors occur during tax calculation on the [Invoices](SO_30_30_00.md) \(SO303000\) form and either of the following conditions are met, the invoice is assigned the *Incomplete* status:

-   The invoice has been created through the [Process Orders](SO_50_10_00.md) \(SO501000\) or [Process Shipments](SO_50_30_00.md) \(SO503000\) form.
-   The invoice has been created through the [Shipments](SO_30_20_00.md) \(SO302000\) form.

If an invoice is assigned the *Incomplete* status, taxes are not calculated, and payments applied to related sales orders are not transferred to the invoice.

To process an *Incomplete* invoice, on the [Invoices](SO_30_30_00.md) form, you click the only available command on the More menu: **Complete Processing**. When you click this command, the system recalculates the taxes and transfers payments from the related sales orders to the invoice \(if no errors occur during the process\).

You can also process multiple incomplete invoices on the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form. In the **Action** box of the Selection area, you select *Complete Processing*, which causes all invoices with the *Incomplete* status to be listed in the table. You then initiate processing.

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

