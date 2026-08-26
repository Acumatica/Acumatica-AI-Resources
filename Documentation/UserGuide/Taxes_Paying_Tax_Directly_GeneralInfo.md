# Direct Tax Payment: General Information {#_7e82806b-e9bd-439b-a468-702f0b76b207 .concept}

According to government regulations in some countries, companies are required to pay taxes or customs duties on imported goods once the goods are declared to customs. For example, in the countries of the European Union, taxes or custom duties on the goods imported from third countries \(non-EU countries\) are charged once the goods are declared to customs. These taxes are not included in the bill from the supplier of the goods. Instead, the company receives a special bill from the tax agency or freight forwarder that delivers the goods. Such taxes are based on a list of documents that confirm the purchases made abroad.

## Learning Objectives {#section_ifm_fjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Configure a tax that is paid directly to the tax agency
-   Process a taxable purchase
-   Create a tax bill
-   Create an AP document that includes expense lines and direct-entry tax lines

## Applicable Scenarios {#section_kfm_fjv_vxb .section}

You pay taxes directly to the tax agency if you purchase imported goods.

## Configuration of Taxes Paid Directly to the Tax Agency {#section_mfm_fjv_vxb .section}

In Acumatica ERP, taxes paid directly to the agency are configured on the [Taxes](TX_20_50_00.md) \(TX205000\) form and must have the **Direct-Entry Tax** check box selected.

Direct-entry taxes represent taxes levied on imported goods \(import taxes\) and can be automatically applied by the system on the following forms:

-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\): You use this form to enter tax bills containing expense lines and direct-entry tax lines and tax bills containing only direct-entry tax lines.
-   [Cash Purchases](AP_30_40_00.md) \(AP304000\): You use this form to enter cash purchases with expense lines and direct-entry tax lines and tax bills containing only direct-entry tax lines.
-   [Landed Costs](PO_30_30_00.md) \(PO303000\): You use this form to include charges in the cost of the goods and add direct-entry tax lines to these charges.
-   [Tax Bills and Adjustments](TX_30_30_00.md) \(TX303000\): You use this form to process bills for customs duty. On release of a tax bill, the charges will debit the account selected as the **Tax Claimable Account** for the tax.

**Attention:** Direct-entry taxes are not applied on other forms where taxes are available, such as [Purchase Orders](PO_30_10_00.md) \(PO301000\) or [Sales Orders](SO_30_10_00.md) \(SO301000\). If a tax category containing a direct-entry tax is selected for a purchase order on the [Purchase Orders](PO_30_10_00.md) form or if a stock item is assigned to a tax category containing a direct-entry tax and you add this stock item to a purchase order, the import tax will be ignored by the system.

For a direct-entry tax, the following rules are applied:

-   A direct-entry tax cannot be included in the same tax category with non-direct-entry taxes if the **Exclude Listed Taxes** check box is cleared for this tax category.
-   Multiple direct-entry taxes that are included in the same tax zone cannot be included in the same tax category.

If you select the **Direct-Entry Tax** check box for a tax on the [Taxes](TX_20_50_00.md) form, the system applies the following settings, which are not editable:

-   **Calculation Rule**: *Inclusive Line-Level*
-   **Cash Discount**: *Does Not Affect Taxable Amount*
-   **Exclude from Tax-on-Tax Calculation**: Selected

With the **Direct-Entry Tax** check box selected, the state and behavior of the following check boxes are changed:

-   **Partially Deductible VAT**: Cleared by default and cannot be selected
-   **Reverse VAT**: Cleared by default and cannot be selected
-   **Pending VAT**: Cleared by default and can be selected

    **Attention:** Direct-entry taxes that have the **Pending VAT** check box selected are further processed on the [Bills and Adjustments](AP_30_10_00.md), [Checks and Payments](AP_30_20_00.md) \(AP302000\), [Recognize Input VAT](TX_50_35_00.md) \(TX503500\), and [Recognize Output VAT](TX_50_30_00.md) \(TX503000\) forms as regular pending VATs. For details, see [Applying a Pending VAT: General Information](Taxes_Applying_Pending_VAT_GeneralInfo.md).


## Tax Agency Settings {#section_ufm_fjv_vxb .section}

The following configuration should be performed for each tax agency for which you will pay the taxes directly:

1.  On the [Credit Terms](CS_20_65_00.md) \(CS206500\) form, payment terms should be created for the tax agency \(if these terms have not already been created\), and specified for the tax agency on the **Financial** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  On the [Taxes](TX_20_50_00.md) \(TX205000\) form, required taxes should be created and the **Direct-Entry Tax** check box should be selected for each tax. In the **Tax Agency** box for the tax, the needed tax agency should be selected. For details, see [Direct Tax Payment: To Create a Tax Bill for a Tax Agency](Taxes_Paying_Tax_Directly_Create_Tax_Bill_Applied_to_Purchase.md).
3.  Tax calculation should be set up.

## Application of Direct-Entry Tax on the Bills and Adjustments Form {#section_wfm_fjv_vxb .section}

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you can enter tax bills containing expense lines and direct-entry tax lines, as well as tax bills containing only direct-entry tax lines.

A direct-entry tax is applied on the [Bills and Adjustments](AP_30_10_00.md) form if the following conditions are met:

-   The vendor's tax zone is the tax zone in which the direct-entry tax is included.
-   The tax category selected in the document line contains the direct-entry tax and has the **Exclude Listed Taxes** check box cleared on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.

For a document line to which a direct-entry tax is applied, the full line amount is the **Tax Amount** \(shown on the **Taxes** tab\), and the **Taxable Amount** is always *0*.

For a direct-entry tax, the following columns cannot be edited on the **Taxes** tab of the [Bills and Adjustments](AP_30_10_00.md) form: **Taxable Amount**, **Tax Amount**, **Tax Rate**, **Expense Amount**, as well as **Retained Taxable Amount** and **Retained Tax** for documents with retainage. Also, the **Deferral Code** column on the **Details** tab cannot be edited. In addition, you cannot manually delete a direct-entry tax from the **Taxes** tab by clicking **Delete Row** on the table toolbar. To delete a direct-entry tax, on the **Details** tab, you should change the tax category for the document line or delete the document line with the tax.

If the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the tax calculation mode selected for the bill on the **Taxes** tab \(**Tax Info** section\) of the [Bills and Adjustments](AP_30_10_00.md) form does not affect the tax calculated for the line with a direct-entry tax.

**Attention:** Direct-entry taxes cannot be applied to lines linked to a purchase order, subcontract or purchase receipt. A direct-entry tax can be applied only to a landed cost line with the *None* allocation method specified on the **Landed Costs** tab of the [Landed Costs](PO_30_30_00.md) \(PO303000\) form.

## Limitations to Direct-Entry Tax {#section_dgm_fjv_vxb .section}

The following limitations apply to direct-entry taxes entered on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form:

-   No discounts are applied to lines with direct-entry taxes.

    If automatic line discounts are set up, for a line with a direct-entry tax, the system will insert *0* in the **Discount Amount** and **Discount Percent** boxes and select the **Manual Discount** check box.

    Lines with direct-entry taxes are excluded from the calculation of group discounts and document discounts on the [Bills and Adjustments](AP_30_10_00.md) form.

-   If the **Apply Retainage** check box is selected for a document on the [Bills and Adjustments](AP_30_10_00.md) form, the **Retainage Amount** and **Retainage Percent** columns on the **Details** tab will always be *0* and unavailable for lines with direct-entry taxes.

    If a retainage amount and percent have been specified for a regular line and this line is changed to a line with a direct-entry tax, the system resets the **Retainage Amount** and **Retainage Percent** columns to *0* and makes them unavailable.

    **Attention:** If a line with a direct-entry tax has been changed to an expense line, the **Retainage Amount** and **Retainage Percent** columns become available.


**Parent topic:**[Paying Taxes Directly to the Tax Agency](../UserGuide/Taxes_Paying_Tax_Directly_Mapref.md)

