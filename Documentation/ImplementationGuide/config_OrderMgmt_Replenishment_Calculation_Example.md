# Configuration of Replenishment: Example of Parameter Calculation {#_d99b8933-c8f3-4cb5-beab-207133d27b18 .concept}

The following example illustrates the calculation of replenishment parameters based on three months of historical sales data.

## Company Story {#section_acr_dgm_2vb .section}

Suppose that on March 1, the ABC company first purchased a new gadget for bikers \(the *New Gadget* stock item\) and sold it to a local sporting goods store, Best Sports. Best Sports decided to order 200 units during April and May.

ABC's purchasing manager, who is responsible for sales of the *New Gadget* item, has checked the item's settings on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. On the **Inventory Planning** tab, the manager has specified the following replenishment parameters during these three months of sales:

-   **Safety Stock**: *20*
-   **Reorder Point**: *50*
-   **Max. Qty.:** *200*

Before extending the sales to other customers, the purchasing manager has decided to collect the relevant sales data during the first three months and then calculate the replenishment parameters based on this data by using the following settings on the [Stock Items](../UserGuide/IN_20_25_00.md) form:

-   **Forecast Period Type**: *Month*
-   **Periods to Analyze**: *3*
-   **Launch Date**: *March 1*

## Timeline of Events {#section_igt_2gm_2vb .section}

The purchasing manager tracks the events related to *New Gadget* and collects the data as follows.

|Business Date|Event|Form|
|-------------|-----|----|
|**March**| |
|March 1|ABC configures replenishment for *New Gadget*.|Multiple forms. For details, see [Configuration of Replenishment: General Information](config_OrderMgmt_Replenishment_GeneralInfo.md).|
|March 1|A purchase order for 200 units of *New Gadget* is created, approved, and sent to the *Best Gadgets* vendor.|[Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\)|
|March 15|The Best Sports store places a sales order for 200 units.|[Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\)|
|March 21|ABC receives 200 units of *New Gadget*. A purchase receipt for 200 units is released.|[Purchase Receipts](../UserGuide/PO_30_20_00.md) \(PO302000\)|
|March 22|A shipment to the Best Sports store is confirmed.|[Shipments](../UserGuide/SO_30_20_00.md) \(SO302000\)|
|March 31|ABC collects the data:

 -   Total sales: 200 units
-   Daily demand: `200 / 31 = 6.45`
-   Lead time: 20 days

|Offline event|
|**April**| |
|April 1|ABC prepares replenishment for *New Gadget*.|[Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\)|
|April 1|A purchase order for 200 units of *New Gadget* is created, approved, and sent to the New Gadget vendor.|[Purchase Orders](../UserGuide/PO_30_10_00.md)|
|April 15|The Best Sports store places a sales order for 200 units of *New Gadget*.|[Sales Orders](../UserGuide/SO_30_10_00.md)|
|April 18|ABC receives 200 units of *New Gadget*. A purchase receipt for 200 units is created and then released.|[Purchase Receipts](../UserGuide/PO_30_20_00.md)|
|April 22|A shipment to Best Sports is confirmed.|[Shipments](../UserGuide/SO_30_20_00.md)|
|April 30|ABC collects the data:

 -   Total sales: 200 units
-   Daily demand: `200 / 30 = 6.67`
-   Lead time: 17 days

|Offline event|
|**May**| |
|May 1|ABC prepares replenishment for *New Gadget*.|[Prepare Replenishment](../UserGuide/IN_50_80_00.md)|
|May 1|A purchase order for 200 units of *New Gadget* is created, approved, and sent to the *Best Gadgets* vendor.|[Purchase Orders](../UserGuide/PO_30_10_00.md)|
|May 15|ABC receives 200 units of *New Gadget*. A purchase receipt for 200 units is created and released.|[Sales Orders](../UserGuide/SO_30_10_00.md)|
|May 15|Best Sports places a sales order for 200 units.|[Purchase Receipts](../UserGuide/PO_30_20_00.md)|
|May 22|A shipment to Best Sports is confirmed.|[Shipments](../UserGuide/SO_30_20_00.md)|
|May 31|ABC collects the data:

 -   Total sales: 200 units
-   Daily demand: `200 / 31 = 6.45`
-   Lead time: 14 days

|Offline event|
|**June**| |
|June 1|ABC uses the collected data to calculate the replenishment parameters, as described in the following section.|[Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\)|

## Calculation of Replenishment Parameters {#section_ffd_3gm_2vb .section}

On June 1, the purchasing manager initiates the calculation of replenishment parameters by using the [Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\) form. The service level for the *New Gadget* stock item is specified as 90%.

The system calculates the replenishment parameters as follows.

|Parameter|Suggested Values|Calculation|Comment|
|---------|----------------|-----------|-------|
|Average Daily Demand|*6.52*|\(200 + 200 + 200\) / \(31 + 30 + 31\)|The value is calculated according to the formula. For details, see [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).|
|**Lead Time STDEV**|*0.10*|STDEV\(200 / 31, 200 / 30, 200 / 31\)|Standard deviation of the lead time \(in days\) from the average value|
|**Lead Time Average**|*17*|\(20 + 17 + 14 \) / 3|[Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form|
|STDEV|*2.45*|STDEV\(20, 17, 14\)|Lead time for standard deviation of purchases|
|**Service Level**|*90%*| |The value is copied from the item on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form|
|NORMSINV \(Service Level\)|*1.28*| |The value is calculated according to the formula. For details, see [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).|
|**Safety Stock**|*20.6*|1.28 \* SQRT\(\(17 \* 0.1\) ^ 2 + \(6.52 \* 2.45\) ^ 2\)|The value is copied from the item on the [Stock Items](../UserGuide/IN_20_25_00.md) form.|
|**Reorder Point**|*131.49*|\(17 \* 6.52 + 20.6\)|The value is copied from the item on the [Stock Items](../UserGuide/IN_20_25_00.md) form.|
|**Max. Qty.**|*131.49*| |The value is copied from the item on the [Stock Items](../UserGuide/IN_20_25_00.md) form.|

As this simple example shows, the reorder point should be increased to 131 units, mostly because of a rather large average lead time.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

