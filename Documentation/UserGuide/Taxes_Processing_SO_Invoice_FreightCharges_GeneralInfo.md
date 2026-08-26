# Taxable Sales with Freight Charges: General Information {#_8be56852-3c93-4003-a552-bd456280ec86 .concept}

You enter customers’ sales orders on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. The system inserts the default tax zone \(displayed in the **Customer Tax Zone** box on the **Financial** tab\) into the sales order, copying it as follows:

1.  From the tax zone of the customer location specified on the document. Tax zones for customer locations can be selected on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form.
2.  From the tax zone associated with the selling branch \(specified in the **Tax Zone ID** box on the **Delivery Settings** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form\), if no tax zone is specified for this customer or customer location.

For details on selection of a tax zone, see [Tax Application in Sales Documents](SO__con_Sales_Taxes_on_Sales_Orders.md).

## Learning Objectives {#section_cxl_fjv_vxb .section}

In this chapter, you will learn how to process a sales order in which value-added taxes are applied to the order line and to freight charge.

## Applicable Scenarios {#section_exl_fjv_vxb .section}

You process taxable sales orders if you sell taxable goods and provide freight services, which are taxable as well.

## Taxes Applicable to Freight Sales {#section_gxl_fjv_vxb .section}

If your company provides freight as an additional service that is subject to taxes, you configure a ship via code for the shipping options provided by your company \(that is, a ship via code with the **Common Carrier** check box cleared on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form\), in the ship via code settings, you can specify the appropriate tax category that applies to freight. The list of taxes that apply to the freight includes the taxes that are present both in the tax category of the ship via code and in the tax zone of the branch that sold the goods.

If the goods are being shipped by an integrated carrier, the tax category is applied to only the amount of freight that exceeds the freight cost. The list of taxes applied to the specified amount consists of the taxes from both the tax category and the tax zone of the customer's delivery address \(the specified tax zone of the customer location or, if one has not been specified, the tax zone automatically determined by the ZIP code of the delivery address\).

## Calculation of Freight Charges {#section_jxl_fjv_vxb .section}

Freight is calculated on sales orders of the *SO* type. This is indicated by the **Calculate Freight** check box, which by default is selected for the *SO* order type on the **General** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form. For more information on the configuration and calculation of freight, see [Freight Calculation](CS__con_Freight_Calculation.md).

**Parent topic:**[Processing Taxable Sales with Freight Charges](../UserGuide/Taxes_Processing_SO_Invoice_FreightCharges_Mapref.md)

