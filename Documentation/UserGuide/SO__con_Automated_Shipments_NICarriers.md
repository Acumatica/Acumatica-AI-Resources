# Automatic Packaging for Local Carriers {#_26c6d58a-072a-421f-bf1f-1f9175ee3056 .concept}

If you use a set of standard boxes for shipping goods, you can configure the system to suggest boxes for each sales order and shipment based on the packaging options and weights specified for stock items. With Acumatica ERP, you can configure and use the automatic packaging functionality for all the local carriers used by your organization to ship the sales orders. To use the automatic packaging functionality, make sure the *Automatic Packaging* feature is enabled on [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Package Calculation for a Sales Order { .section}

Once the automatic packaging functionality has been configured, you can use it when you prepare a sales order for shipping or create a consolidated shipment.

Because the calculation of packages is resource-intensive, the system calculates packages only when the user requests this calculation. As you are preparing a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and adding items, the system calculates the weight and volume of the sales order. Once you specify the shipping information on the **Shipping** tab—including the ship via code, the shipping terms, and the shipping zone—and save the order, the system determines the set of boxes, each package weight, the freight cost, and the freight charges.

The system uses a heuristic algorithm \(an algorithm that quickly finds a satisfactory set of boxes, however it does not guarantee that this set is the best one\) and the following information to make suggestions about the boxes required for the order:

-   The lists of boxes assigned to each ship via code, with the maximum weight and volume each box can hold and the weight of the box \(which must include the weight of any packaging material\)
-   The quantity of each stock item in base units, the weight and volume of the base unit of the item, and the option instructing the system about how to pack this item
-   The quantity of each non-stock item in base units, and the weight and volume of the base unit of the item

You can view the particular packages on the **Shop for Rates** dialog box, which opens when you click the **Shop for Rates** button on the **Shipping** tab. You can review the calculated totals on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) form. If freight for a specific ship via code should be specified manually, you can enter the total freight amount in the **Freight** box on the **Totals** tab.

In some cases, you may need to edit the packages manually. If you select the **Manual Packaging** check box, you can adjust information about the boxes and their contents to match the quantities and weights of actual packages. For more information, see [Manual Packaging of Items](SO__con_Manual_Packaging.md).

## Automatic Packaging Suggestions for Shipments { .section}

If the automatic packaging is configured, once a shipment is generated for a sales order, the system updates the packages calculated for the order. You can view the suggested minimal set of boxes for a shipment on the**Packages** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form. For packages that have been suggested automatically \(those with *Auto* selected in the **Type** column on the **Packages** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form\), the system adds the weights of the boxes automatically. If needed, you can manually correct information about packages to match the quantities and weights of the actual packages, or select another box or boxes.

You can create shipments for multiple orders by using the [Process Orders](SO_50_10_00.md) \(SO501000\) form. If multiple orders are consolidated into one shipment, you can recalculate the packages initially determined for sales orders by clicking the **Refresh Packages** button on the table toolbar on the **Packages** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form. Once the set of boxes is determined for the consolidated shipment, you can review and edit this list if needed on the **Packages** tab.

-   **[To Configure Automatic Packaging](../UserGuide/SO__How_Configure_Automatic_Packaging.md)**  

-   **[To Create a Ship via Code](../UserGuide/SO__How_Create_Ship_Via_Codes_NIC.md)**  


**Parent topic:**[Configuring Carriers, Packaging, and Freight](../UserGuide/SO__CNF_Int_Carriers.md)

