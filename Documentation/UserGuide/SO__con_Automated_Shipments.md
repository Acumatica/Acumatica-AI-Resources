# Automatic Packaging for Integrated Carriers {#_b38ca77b-21a9-4d29-a36a-1349f204413a .concept}

To automate the processing of sales orders, you can configure the system to automatically determine the optimal set of boxes for sales orders and for shipments to be sent via the integrated carriers. For detailed instructions on configuring integration with the carriers, refer to [Configuring Carriers, Packaging, and Freight](SO__CNF_Int_Carriers.md).

**Note:** To be able to use the automatic packaging functionality, make sure the *Automatic Packaging* feature is enabled on [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If this feature is disabled, you will need to select the boxes and specify the weights and volumes of the resulting packages for each order and shipment manually.

The configuration of automatic packaging is described in detail in [To Configure Automatic Packaging](SO__How_Configure_Automatic_Packaging.md).

## Package Calculation for a Sales Order { .section}

Once the automatic packaging functionality has been configured, you can use it when you prepare a sales order for shipping or create a consolidated shipment.

Because the calculation of packages is resource-intensive, the system calculates packages only when the user requests this calculation. As you are preparing a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and adding items, the system calculates the weight and volume of the sales order. Once you specify the shipping information on the **Shipping** tab—including the ship via code of the integrated carrier, the shipping terms, and the shipping zone—and save the order, the system determines the set of boxes and the weight and volume of each package.

The system uses an heuristic algorithm \(one that is not guarantee to find the best set of boxes, but quickly finds a satisfactory set for these purposes\) and the following information to make suggestions about the boxes required for the order:

-   The lists of boxes assigned to each ship via code, with the maximum weight and volume each box can hold and the weight of the box \(which must include the weight of any packaging material\)
-   For each stock item in the order, the quantity in base units, the weight and volume of the base unit of the item, and the option instructing the system how to pack this item

To view carrier charges, you can click the **Shop for Rates** button on the **Shipping** tab. When you click **Shop for Rates**, the system performs the following actions:

1.  Sends the information about the calculated packages \(box ID, weight, volume, linear dimensions, declared value, and COD\) to the carrier system
2.  Requests rates from the carriers and calculates carrier charges for the order for each ship via code associated with the carrier

Based on the system's suggestions, you can select the ship via code with lowest cost for the order.

In some cases, you may need to edit the packages manually. If you select the **Manual Packaging** check box, you can adjust information about the boxes and their contents to match the quantities and weights of actual packages. For more information, see [Manual Packaging of Items](SO__con_Manual_Packaging.md). If you have specified the declared values or changed the COD settings for any packages of the order, selecting the **Manual Packaging** option will prevent the system from automatically recalculating these packages and thus resetting the specified values.

## Package Calculation for Consolidated Shipments { .section}

When you initiate a shipment creation for the order, the system recalculates the packages and the carrier charges based on the selected ship via code because there may be insufficient quantities of items listed in the order. Information about particular boxes used for the shipment becomes available for reviewing on the **Packages** tab. Packages will not be recalculated if the **Manual Packaging** option has been selected for the order.

You can create shipments for multiple orders by using the [Process Orders](SO_50_10_00.md) \(SO501000\) form. If multiple orders are consolidated in one shipment, you can recalculate the packages initially determined for sales orders by clicking the **Refresh Packages** button on the table toolbar on the **Packages** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form. Once the set of boxes is determined for the consolidated shipment, you can review and edit this list if needed on the **Packages** tab. You can manually specify the declared values and COD amounts for packages if needed.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

