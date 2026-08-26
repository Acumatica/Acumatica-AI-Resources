# Tax Calculation Methods: General Information {#_cca87557-7498-46da-aec2-c49c0d40403a .concept}

In Acumatica ERP, various tax calculation methods for first-level and second-level taxes are available. The calculation method for a tax is defined on the [Taxes](TX_20_50_00.md) \(TX205000\) form.

## Learning Objectives {#section_r2h_fjv_vxb .section}

In this chapter, you will learn how to configure first-level and second-level taxes in Acumatica ERP, learn how different calculation methods affect the resulting tax and the total document amount, and create documents to which these taxes are applied.

## Applicable Scenarios {#section_t2h_fjv_vxb .section}

You need to use an appropriate tax calculation method that meets the requirements of the tax authority.

## The Method of Calculating the Tax Amount {#section_v2h_fjv_vxb .section}

Different taxes may require different methods of calculation. You can select the appropriate option of a particular tax in the **Calculation Rule** box on the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form. The following options are available:

-   *Inclusive Line-Level*: The tax is already included in the item price. The system extracts the tax amount from the item amount according to the tax rate that you specify. This method treats taxes as included in the line amount; that is, the amount specified in the line is the taxable amount plus the tax amount.
-   *Exclusive Line-Level*: The tax amount is calculated on a per-item basis; that is, the tax is applied to each line in the document according to the tax category specified in the line. This method uses the amounts specified in the document lines as the taxable amount for the tax; it calculates the tax for each line, rounds the results, and then adds them. \(This option is a first-level tax.\)
-   *Exclusive Document-Level*. The tax amount is calculated on a per-document basis. This method uses the amounts specified in the document lines as the taxable amount for the tax; it adds the line amounts to get the taxable amount, calculates the tax based on the sum, and rounds the result. \(This option is a first-level tax.\)
-   *Compound Line-Level*: The taxable amount of this second-level tax is calculated as the taxable amount of the item plus the first-level tax amount calculated for the item.
-   *Compound Document-Level*: The tax amount of this second-level tax is calculated on a per-document basis by using as the tax base the sum of the line amounts \(with appropriate tax categories\) and the tax amount of the first-level tax.

**Tip:** If any group or document discounts are applicable to the document, the taxable amount is reduced by the discount amount. To be able to create customer and vendor discounts in the system, you need to enable the *Customer Discounts* and *Vendor Discounts* features on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

Consider an example in which the different tax calculation methods are used. Suppose that the document contains 100 lines with one item per line, each priced at $10, and the tax rate is 8.25%:

-   With the per-document method, the tax base \(total amount of the document\) would be 100 items \* $10 = $1000. Then the tax amount would be $1000 \* 0.0825 = $82.5.
-   With the per-item method, the tax amount per item would be $10 \* 0.0825 = $0.825, which rounds to $0.83. Then the total tax amount would be $0.83 \* 100 items = $83.

As you can see, using different methods of tax calculation for the same documents may cause different tax amounts due to rounding. Thus, you need to choose the calculation method that best suits your needs.

**Parent topic:**[Selecting Tax Calculation Methods](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_Mapref.md)

