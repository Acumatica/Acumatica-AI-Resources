# Outside Processing: Charges for Subcontractor Services {#_1394163f-9c37-4b35-8ed9-e9aeba42ead2 .concept}

If the subcontractor produces items at its location and then delivers the items to your warehouse, we recommend that you create an inventory item in Acumatica ERP Manufacturing Edition for each produced item to recognize the item's cost. For example, suppose that the subcontractor fills containers that your organization has supplied with materials that the subcontractor supplies. In this case, your organization will be billed for the cost of the materials in the container and for the cost of labor required to fill the containers.

**Tip:** The cost of subcontractor-supplied materials should reflect the added value and should not include the cost of materials you provided; these material costs are recognized when you issue the materials to the production order.

You use purchase orders to pay for the subcontractor's service. When the outside operation is complete, you release the purchase receipts related to the orders.

In the following sections, you will read about the configuration of the system for processing subcontractor's charges in the system.

## Charges for Subcontractor Services {#_b06d3a3c-a5c4-4c10-b2e5-1ca01d49124f .section}

The service charges may or may not include materials the subcontractor uses for production. Depending on this factor and other conditions, you can use either stock or non-stock items for subcontractor services as follows:

-   You use a stock item if any of the following is true for you:
    -   You would like purchase orders to be allocated to production orders. In this case, you can use the [Unreleased Material Allocations](AM_30_55_00.md) \(AM305500\) form to issue the allocated items.
    -   You want to be able to use any valuation method available for stock items to better reflect the cost of the service.
    -   You would like to use inventory planning for these items.
    -   You need to apply transport costs to the unit costs of the services.
-   You use a non-stock item if the subcontractor sends bills for services separately from produced items or when the services are the only charge. When you use non-stock items, you need to consider the following:
    -   For non-stock items, you can use only the *Standard* valuation method.
    -   You can use a separate non-stock item for each subcontractor service charge or use a single item for all service charges. If you use a single item, you set the standard item cost to 1.00 and specify the actual amount in the **Qty. Required** column of the **Material** tab on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form for the material that represents the service charge. For example, suppose that the subcontractor charges $0.53 per piece for one item and $1.23 for another; you would specify the quantity required as 0.53 and 1.23 respectively.
    -   Non-stock items are not allocated to a production order; you must issue or backflush them in order to apply the cost to a production order.
    -   You can decide whether a purchase order receipt is required for the non-stock item. When you use a purchase receipt, you can create a linked AP bill to record the purchase amount in the general ledger.

Unless you need to issue lot- or serial-tracked materials, we recommend backflushing the materials consumed or produced by the subcontractor. If you are using a stock item for the service charge, you process the purchase receipt before issuing or backflushing the materials to update the average or FIFO cost. If you are using a non-stock item and the service cost differs from the planned cost, you change the quantity of the non-stock item to reflect the cost.

## Cost Accrual for Non-Stock Items Used as Materials {#_6fd11ef0-2028-46b6-ab96-a95ddbfe47db .section}

You select *Sales* in the **Post Cost to Expenses On** box on the **Price/Cost** tab and specify the accrual account in the **Expense Accrual Account** box on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form if the following conditions are met:

-   You use non-stock items for materials used in outside processing.
-   According to the business processes of your organization, the costs of these non-stock items must be accrued.

For details on the transactions the system generates for the item costs, see [Outside Processing: Generated Transactions](MFG_Outside_Processing_Transactions.md).

## Calculation of Costs for Outside Services { .section}

The planned cost for outside services in a production order includes the cost of the materials you ship to a vendor \(that is, material lines with the *Ship to Vendor* subcontract source\) and the cost of the outside services \(that is, material lines with the *Purchase* or *Purchase and Move* subcontract source\). You can view planned cost for outside services for a particular production order in the **Subcontract** box of the **Planned** section on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

When you release the purchase receipt for a purchase order with the subcontractor service charges and the material used for the charges is not backflushed, the system updates the cost when the material transaction is created and released. If the material is backflushed, the system adds the material's cost when you record the movement of items from the outside operation.

The total actual cost is displayed in the **Subcontract** box of the **Actual** section on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) form.

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

