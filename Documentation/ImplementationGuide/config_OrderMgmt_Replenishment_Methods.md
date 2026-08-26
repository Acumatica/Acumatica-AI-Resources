# Configuration of Replenishment: Replenishment Methods {#_c961e0d4-e87d-4099-b6e6-431a00ad471a .concept}

Replenishment methods are used to calculate the replenishment quantity. Acumatica ERP supports replenishment at a fixed quantity and replenishment between the minimum and maximum quantities.

The **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form has a row for each replenishment class to be used to replenish the stock of the item. Each row holds the settings associated with that class, including the replenishment method and the replenishment source. The default option in the **Method** column is *None*, which indicates that no replenishment will be performed. In each row, you specify either of the following replenishment methods to be used for the item with the source selected in the row:

-   *Min./Max.*: You use this method to keep the stock level of an item at a particular warehouse between the specified minimum and maximum quantities. If you are using the *Moving Average* demand forecast model, the system calculates the demand for a specific future period based on historical sales data. For details, see the following section and [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).
-   *Fixed Reorder Qty.*: You use this method to replenish the stock of an item with a fixed quantity each time it falls below the reorder point. For details, see the [Item Replenishment with a Fixed Quantity](#_54faf78d-2297-4f12-88d3-ade1b66ada32) section below.

The system uses the specified method to calculate the quantities required to replenish the stock of the item, based on the replenishment parameters that are defined on the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form.

## Item Replenishment Within the Specified Quantity Range { .section}

When you select the *Min./Max.* method in a row of the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you specify the following settings in the row:

-   **Max. Qty.**: The maximum stock quantity for the item that should be at the warehouse.
-   **Safety Stock**: The additional stock of the item that is maintained to avoid stockouts. You should specify a safety stock value if there are fluctuations in demand and supply. Because safety stock is not used in replenishment calculation for this method, you can add the maximum quantity of the safety stock to the **Max. Qty.** column and the reorder point quantity to the **Reorder Point** column if you want to increase the reorder point to the safety stock level.
-   **Reorder Point**: With this method, the system uses the reorder point quantity rather than a minimum quantity. If the available stock is below this level, you should replenish your stock to avoid stockouts. You calculate a reorder point with safety stock by multiplying the daily average usage of stock by the lead time \(the time when the product is being shipped from the vendor location to your company\) and adding the amount of safety stock that you keep.

The **Max. Qty.**, **Safety Stock**, and **Reorder Point** settings are copied from the [Stock Items](../UserGuide/IN_20_25_00.md) form to the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form. For the calculation of replenishment quantity, the system uses these quantities from the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form. You can review and change these quantities before the calculation of the replenishment quantity for a stock item.

On the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\) form, the system uses the following formula to calculate the replenishment quantity in the **Qty. To Process** column for a stock item.

```
Qty. to Process = Max. Qty. - (Qty. on Hand - Qty. on Location Not Available + Qty. on Supply + (Replenishment Qty. - Qty. on Demand))
```

The formula includes the following quantities:

-   `Max. Quantity`: The maximum quantity that is specified in the **Max. Qty.** box on the **Inventory Planning** tab \(**Replenishment Parameters** section\) of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form.

    **Tip:** The system uses the quantity for calculation from the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form, though these quantities are also specified for each row on the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form.

-   `Qty. on Hand`: The quantity on hand, which is specified in the **On Hand** box \(Summary area\) of the [Inventory Allocation Details](../UserGuide/IN_40_20_00.md) \(IN402000\) form.
-   `Qty. on Location Not Available`: The quantity on location that is not available, which is specified in the **On Loc. Not Available** box \(Summary area\) of the [Inventory Allocation Details](../UserGuide/IN_40_20_00.md) form.
-   `Qty. on Supply`: The quantity on supply, which is calculated based on the following plan types that are listed on the **Qty by Plan Type** tab \(**Addition** table\) of the [Inventory Allocation Details](../UserGuide/IN_40_20_00.md) form: *Purchase Prepared*, *Purchase Orders*, *PO Receipts*, *In-Transit*, *IN Receipts*, and *Kit Assembly Supply*.
-   `Replenishment Qty.`: The quantity that is replanned, which is specified in the row with the stock item in the **Replenishment Qty.** column of the table on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) form.
-   `Qty. on Demand`: The quantity on demand, which is calculated as follows:

    -   *Hard Demand Only*: The demand is calculated as follows:

        ```
        Qty. SO Allocated + Qty. SO Shipped + Qty. SO Back-Ordered
        ```

        This quantity is calculated based on the following plan types, which are listed on the **Qty by Plan Type** tab of the [Inventory Allocation Details](../UserGuide/IN_40_20_00.md) form \(**Deduction** table\): *SO Allocated*, *SO Shipped*, and *SO Back-Ordered*.

    -   *Item Class Settings*: The demand is calculated based on the availability calculation rule specified for this item class on the **General** tab of the [Item Classes](../UserGuide/IN_20_10_00.md) form.
    The current stock level of a particular item is reflected by the **Available** setting in the Summary area of the [Inventory Allocation Details](../UserGuide/IN_40_20_00.md) form. If the system detects that this level has reached or fallen below the reorder point \(which is specified in the **Reorder Point** box on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form\), it calculates the quantity required to replenish the item stock according to the formula for the calculation of the quantity in the **Qty. To Process** column on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) form.


## Replenishment Calculation with the Min./Max. Method { .section}

On the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form, the quantities specified in a purchase order may differ from those specified in the corresponding replenishment requests on the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) \(PO505000\) form. The final replenishment quantity for a stock item in a purchase order is calculated based on the settings on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\) form for the vendor that will fulfill the replenishment, and the value in the **Qty. to Process** column for a table row is calculated as follows:

-   If the requested quantity is less than the minimum order quantity specified in the **Min. Order Qty.** box on the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the system uses the minimum order quantity.
-   If the requested quantity exceeds the maximum order quantity specified in the **Max. Order Qty.** box on the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form, the system uses the maximum order quantity.
-   If the requested quantity is not divisible by the lot size specified in the **Lot Size** box on the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form, this quantity is rounded up to the next integer, and that number of lots is ordered.

## Item Replenishment with a Fixed Quantity {#_54faf78d-2297-4f12-88d3-ade1b66ada32 .section}

You specify the *Fixed Reorder Qty* method for an item when you want to replenish the stock of the item with a fixed quantity each time it falls below the reorder point. To use this method for the replenishment of a stock item, on the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you select the *Fixed Reorder Qty* option in the **Method** column. Then you specify the following parameters:

-   Fixed quantity that may be either economic order quantity or economic reorder quantity:
    -   If the replenishment source of the row is *Purchase*, we recommend that you use as the fixed quantity the economic order quantity \(EOQ\) determined by warehouse specialists for the item by estimating the cost of ordering the item from a particular vendor. For each vendor from which the stock item can be purchased, the **EOQ** setting is specified on the [Vendor Inventory](../UserGuide/PO_20_10_00.md) \(PO201000\) form. You can view the EOQ values specified for all vendors of the item on the **Vendors** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) form. The EOQ quantity is equal to the specified vendor's EOQ for the stock item once this quantity determines that the available quantity reaches or is lower than the reorder point.
    -   If the replenishment source of the row is *Transfer*, we recommend that you use the economic reorder quantity \(ERQ\) specified for transfers that involve this stock item. This value represents the level of inventory that minimizes the total transfer costs. The ERQ is specified in the **Transfer ERQ** column on the **Inventory Planning** tab of the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) and [Stock Items](../UserGuide/IN_20_25_00.md) forms. You can override the default value of the **Transfer ERQ** box on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form. The ERQ quantity is equal to the specified transfer ERQ for the item once this quantity determines that the available quantity reaches or is lower than the reorder point.
-   Safety stock specified on the [Stock Items](../UserGuide/IN_20_25_00.md) form in the **Safety Stock** column of the **Inventory Planning** tab: This is the additional stock of the item maintained to avoid stockouts. The safety stock is required if there are fluctuations in demand and supply.
-   Reorder point specified on the [Stock Items](../UserGuide/IN_20_25_00.md) form in the **Reorder Point** column of the **Inventory Planning** tab: For the *Fixed Reorder Qty* method, the reorder point is specified as the safety stock plus the quantity that may be required during the lead time.

With the *Fixed Reorder Qty* method, on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\) form, the system updates the **Qty. to Process** setting for the stock items listed on the form. Based on this quantity, a request for replenishment \(for a quantity that is equal to the specified vendor's EOQ or the transfer ERQ\) can be generated through the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) form.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

