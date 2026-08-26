# Freight Calculation {#_861acb8b-9292-48fc-b348-4fc920724249 .concept}

When you provide delivery service to customers of your organization, you need to calculate the freight price to charge customers. The freight price usually depends on any number of the following factors, most of which affect the freight costs to your company: the shipping rates of the third-party carriers whose services your organization uses, the shipping zones, the weight or volume of goods, and the total amount of the applicable order.

In Acumatica ERP, you can configure the system so that it calculates the freight price automatically on sales documents. Also users can enter the freight price manually for each document. If automatic freight calculation is set up, in most cases, users can still override the automatically calculated freight price on a sales order or shipment.

In this topic, you will read about the calculation of freight costs and prices in Acumatica ERP.

## Configuration of Automatic Freight Calculation { .section}

If you want to calculate freight cost and price automatically for particular order types, you do the following:

1.  You enable automatic freight calculation for each applicable order type by selecting the **Calculate Freight** check box on the **General** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form. For shipments of sales orders of this type, this setting applies to only those with the *Issue* operation—that is, to only shipments for which *Issue* is selected in the **Operation** box in the Summary area of the [Shipments](SO_30_20_00.md) \(SO302000\) form.
2.  For shipments of the *Receipt* operation \(in the Summary area of the [Shipments](SO_30_20_00.md) form\) shipped via a local carrier, you specify that the freight charges must be calculated and applied to these shipments by selecting the **Calculate Freight on Returns** check box for the applicable ship via code on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form.
3.  You create shipping settings for each shipping method by using the [Ship via Codes](CS_20_75_00.md) form. Shipping settings depend on the carrier. For details, see [To Create Ship via Codes for the Integrated Carrier](SO__How_Create_Ship_Via_Codes.md) and [To Create a Ship via Code](SO__How_Create_Ship_Via_Codes_NIC.md).
4.  You create shipping terms, which the system will use to calculate freight price depending on the order amount, by using the [Shipping Terms](CS_20_80_00.md) \(CS208000\) form. For details, see [Freight Price Calculation](#_beeed649-3493-45fd-b8f0-6601b2f4f5a1).

## Freight Price Calculation {#_beeed649-3493-45fd-b8f0-6601b2f4f5a1 .section}

The ship via code specified on a sales order defines the freight cost. To calculate the freight price, the system uses either default shipping terms that can be specified for a customer on the [Customers](AR_30_30_00.md) \(AR303000\) form or shipping terms that you specify manually on the sales order. The freight price may include insurance, handling fees, or line handling fees.

To encourage larger orders, you can configure shipping terms so that customers won't pay freight on orders with total amounts greater than a specified value. On the [Shipping Terms](CS_20_80_00.md) \(CS208000\) form, you can create tiers \(or break points\) based on shipping amount and specify the lower freight price for larger amounts.

The freight price is calculated similarly for all ship via codes, as shown below.

```
FreightPrice = (FreightCost * FreightCost% / 100) + 
             (LineTotal x InvoiceAmt% / 100) + 
              ShippingHandling + 
             (NumberOfLines x LineHandling)
```

## Freight Information on Sales Documents { .section}

The first sales document that contains freight information is the sales order. If the sales process in your organization includes shipments, you can edit the freight information on shipments \(or leave the information if it is correct for the shipment\). An invoice \(or multiple invoices\) based on a sales order or shipment can contain the freight price copied from the sales order or the shipment. For each shipping term, you can specify which document will provide freight information to an invoice with this shipping term—a sales order or shipment—by selecting the corresponding option in the **Invoice Freight Price Based On** box on the [Shipping Terms](CS_20_80_00.md) \(CS208000\) form.

**Note:** The value of the **Invoice Freight Price Based On** box on this form cannot be changed for the shipping terms after any order or shipment has been created with these shipping terms.

If the freight price can be determined when the sales order is entered, you can select *Sales Order* in this box, so that changes of freight information on any shipment created for this sales order do not influence the freight price on the invoice or invoices for the sales order. If the freight price should instead be defined during shipping, you can select *Shipment* as the base document for freight price.

## Freight Cost for Integrated Carriers { .section}

National carriers, such as UPS or FedEx, allow direct access to their automated systems to provide real-time information about rates for their clients. In Acumatica ERP, you can configure integration with these carriers, so they are referred to as *integrated carriers*. For more information, see [Integration with Carriers](CS__con_Integration_with_Carriers.md).

With integrated carriers, the freight cost is calculated on the carrier's side based on the specified shipping settings and the dimensions and weights of packages. The full freight amount on the shipment is calculated based on the freight charged by the carrier and on the shipping terms that apply to the shipments.

You can compare the freight amounts charged by various carriers by using the **Shop for Rates** dialog box, which you open from the [Sales Orders](SO_30_10_00.md) \(SO301000\) form by clicking the **Shop for Rates** button on the **Shipping** tab. You will be able to see the freight rates offered by all the integrated carriers and select the carrier with the lowest freight amount.

The freight price the customer is charged for goods delivered by an integrated carrier is calculated as a sum of the bill amount for this delivery, the freight price calculated according to shipping terms, and the premium freight price.

## Freight Cost for Local Carriers { .section}

If the goods for a sales order are shipped via a local carrier, the system estimates the freight cost based on the rates defined by the ship via code specified on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form. You enter rates for each ship via code based on a local carrier on the **Freight Rates** tab of the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form. For details, see [To Create a Ship via Code](SO__How_Create_Ship_Via_Codes_NIC.md).

**Note:** The number of decimal places for freight rates is defined by the value in the **Price/Cost Decimal Places** box on the [Companies](CS_10_15_00.md) \(CS101500\) form.

When a user enters a sales order with goods to be shipped by a local carrier, the system estimates the freight cost for the order based on the ship via code—that is, based on the predefined rates you have specified for the carrier. The weight of each order is calculated automatically in the same weight UOM that is specified in the **Weight UOM** box on the [Companies](CS_10_15_00.md) form. For details on setting up the weight calculation of a sales order, see [Automatic Packaging for Local Carriers](SO__con_Automated_Shipments_NICarriers.md).

By default, the currency of the freight is the base currency.

Rates are specified for shipping zones based on the weight of the total shipment and, optionally, the volume. The weight of an order is compared to break points, and the first break point that is less than the order weight determines the freight rate.

The system calculates the freight cost based on the calculation method selected on the [Ship via Codes](CS_20_75_00.md) form for the carrier as follows:

-   For the *Per Unit* calculation method:

    ```
    FreightCost = BaseRate + (FreightRate x Weight)
    ```

-   For the *Net* calculation method:

    ```
    FreightCost = BaseRate + FreightRate
    ```

    Here, `FreightRate` is equal to the rate defined for a specific range of the shipment's weight and volume, as specified on the **Freight Rates** tab of the [Ship via Codes](CS_20_75_00.md) form.


## Manual Entry of Freight Amounts { .section}

You can configure the system so that users can manually enter the freight cost, the freight price, or both of these on a sales order or shipment.

To set up the ability to enter freight cost manually on sales orders, you select *Manual* in the **Calculation Method** box of the **Details** tab on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form for a ship via code of a local carrier. With this setting, you can specify the freight cost manually in the **Freight Cost** box on the **Totals** tab on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

As an alternative to creating a ship via code, you can enter a freight price manually in a sales order or shipment. The system preserves the manually entered freight price in the sales order or shipment, and does not recalculate the price if any of the order lines \(in particular, the quantities, extended price, or amount\) are modified. You can do the following to enter the freight price manually for the particular document type:

-   Sales order: On the **Totals** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you select the **Override Freight Price** check box, and in the **Freight Price** box, you type the freight price for this sales order.
-   Shipment: On the **Shipping** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form, you select the **Override Freight Price** check box, and in the **Freight Price** box, you type the freight price for this shipment.

The **Override Freight Price** check box is available for documents that meet any of the following conditions:

-   The **Shipping Terms** box is empty for the sales order or shipment on the [Sales Orders](SO_30_10_00.md) or [Shipments](SO_30_20_00.md) form, respectively.
-   *Sales Order* is specified in the **Invoice Freight Price Based On** box on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) form for the sales order.
-   *Shipment* is specified in the **Invoice Freight Price Based On** box on the **Shipping** tab of the [Shipments](SO_30_20_00.md) form for the shipment.

## Freight Amount on Partial Shipments { .section}

A sales order can be fulfilled by multiple shipments if the *Back Order Allowed* option is selected in the **Shipping Rule** box of the **Shipping** tab on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. With multiple shipments, you can define how the freight amount \(that is, the freight price and the premium freight price, if one is specified\) should be allocated among shipments by selecting one of the following options in the **Freight Allocation on Partial Shipping** box of the **General** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form:

-   *Full Amount First Time* to assign the freight amount to the first shipment created for the order
-   *Allocate Proportionally* to distribute the freight amount among shipments proportionally to partial shipment amounts

## Correction of Freight Price { .section}

If you want to charge a customer for any additional conditions, such as extreme fragility or unusual dimensions, you can enter a premium freight price that the system will add to the order total. The premium freight price is specified for a sales order as a flat amount on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

Sometimes the real cost of freight and handling becomes known only after all shipments have been completed and the actual shipping charges for all packages have been provided by the carrier. With local carriers, the probability of change is higher because the rates used can become obsolete, while integrated carriers provide real-time rates at the time of shipment.

If you need to correct the excessive freight charges that were specified in one of the earlier orders, you can manually adjust the premium freight price in the current order by decreasing it by an adjustment amount or by entering a negative freight amount. If you need to adjust the total freight price in an invoice, you can specify the needed positive or negative value in the **Premium Freight Price** column of the shipment line on the **Freight** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form.

**Note:** The order's total amount after you adjust the premium freight price must be greater than zero or, at minimum, equal to zero—otherwise, the invoice that is later generated for the order cannot be released.

## Posting Settings for Freight Amounts { .section}

You can specify the General Ledger accounts that the system uses for posting freight amounts in the settings of the following entities:

-   Order type
-   Customer location
-   Ship via code

You select the source of the freight account in the **Use Freight Account From** box on the [Order Types](SO_20_10_00.md) \(SO201000\) form. The freight account that you specify on this form in the **Freight Account** box is used as the default freight account. If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the freight subaccount to record freight is generated according to the rule specified in the **Combine Freight Sub. From** box on the [Order Types](SO_20_10_00.md) form.

If you need to post a freight cost to an expense account, you specify this account in the **Freight Expense Account** box on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form. The freight cost determined for a sales order is not recorded to any expense account until a bill from the carrier is processed. A bill from the carrier may include freight charges for all the sales orders that were shipped by the carrier during a specific time interval \(a week, two weeks, or a month\). If the bills are created for each ship via code used for shipping, the freight expense account can be manually selected on the appropriate lines of the bill.

**Parent topic:**[Configuring Carriers, Packaging, and Freight](../UserGuide/SO__CNF_Int_Carriers.md)

