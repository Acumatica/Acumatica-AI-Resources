# Bills of Material: Planning BOMs {#_992dea86-650e-4857-b3c1-84b0fcc0c2b1 .concept}

A planning bill of material, sometimes referred to as a *Pseudo Bill*, is a grouping of operations and materials used in MRP for planning purposes. They are defined on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form exactly the same way as a production bill. You can choose to designate any bill of material for an item as the planning bill or create a new unique bill. If you do not have a planning bill, then the default bill of material is used for planning. There are no restrictions on using the same bill of material as both the default and planning bill.

## Why Use a Planning Bill? { .section}

Planning bills are most often used to help forecast or master schedule products that have many options where the final configuration is not determined until an order is received. Usually, a planning bill flattens out the multiple level bill of material to a single level bill; that is, the subassembly bills are removed and their key components made components of the planning bill. Alternatively, you could create a planning stock item and construct a planning bill with its components the actual items you sell making each component a phantom if you only want to see their components in MRP and not the assembly.

A manufacturer of desktop computers may have multiple product lines with hundreds of combination of options for processors, memory, storage, monitors, and other factors. Some of the options may be available across multiple product lines. In order to compress the order to ship lead time, it is desirable to have the components already in stock. Rather than attempt to forecast each product model for every variant, it more feasible to create a pseudo inventory item that will never be sold and construct a planning bill of material with the component options expressed in quantities represented by their past usage.

For example, each desktop computer model can have a 500GB or 1TB capacity disk drive and 60% of the customer select the 1TB disk drive. A planning bill could look like this:

|**Component**|**Quantity Required**|
|-------------|---------------------|
|DiskDrive-1TB|.6|
|DiskDrive-500GB|.4|

You would create a forecast or MPS for the planning stock item to drive out the requirements to make or purchase the disk drives. Similarly, you would add other components to the planning bills in their percentages.

## Managing MRP with Planning Bills { .section}

It's important to consider that both the planning item and stock items are driving down component demand. The planning bill is intended to represent anticipated sales in the future so as to make or buy the necessary components in a timely manner. When you enter the sales orders or production orders for the items to be sold, they will drive component demand also.

-   As customer orders are received, you should reduce the forecast or MPS for the planning item so as not to overstate the component demand. You can use the Planning Horizon setting in MRP Preferences to specify when to ignore forecasts and use just actual demand. For example, you expect customers to typically place orders 2 weeks in advance of anticipated ship dates; therefore, you would set the forecast **Planning Horizon** or MPS **Time Fence** to 14 days.
-   You should review the actual component usage and periodically adjust their percentages in the planning bill.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

