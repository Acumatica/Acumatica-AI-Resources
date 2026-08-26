# Item Costs and Valuation Methods: Standard Method {#_fd82a373-1996-496f-8177-fbc4c6b091cd .concept}

The *Standard* valuation method uses a predetermined cost of goods. The cost is not recorded or calculated by the system automatically; instead, you specify it in the system. Manufacturing companies calculate the standard cost of an item by considering fixed labor, materials, and overhead costs for each unit produced. Retail companies include in the standard cost shipping, customs fees, packaging, and other related expenses.

Because standard costs often differ slightly from actual costs, companies regularly assess differences caused by changes in labor rates and material costs. Companies can periodically adjust their standard costs to better match actual costs.

You assign this valuation method to a stock item by specifying *Standard* in the **Valuation Method** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. If the *Standard* method is assigned to a stock item, the unit cost specified in the **Current Cost** box in the **Standard Cost** section on the **Price/Cost** tab will be used for the item in inventory and sales transactions.

For a non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, no valuation method is shown. The unit cost specified in the **Current Cost** box in the **Standard Cost** section on the **Price/Cost** tab will be used for the item in sales transactions.

## Specifying a Standard Cost { .section}

If the *Standard* method is assigned to a stock item or non-stock item, you specify the item’s predefined unit cost in the **Pending Cost** box on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, respectively. Then you click **Update Cost** on the More menu of the corresponding form. The system copies the cost from the **Pending Cost** box to the **Current Cost** box and clears the **Pending Cost** box. The item's cost is specified for the base UOM.

If a user has not specified the **Current Cost** for a newly created item with the *Standard* method, its cost is recorded as *0* in sales and inventory transactions.

**Tip:** The **Effective Date** box shows the date when the current standard cost became effective only for non-stock items on the [Non-Stock Items](IN_20_20_00.md) form. For stock items on the [Stock Items](IN_20_25_00.md) form, the current standard cost becomes effective when it is updated.

For an item with the *Standard*valuation method, you can maintain standard costs for each warehouse separately. To do this, you select the **Override Standard Cost** check box on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the item stored at a particular warehouse.

## Cost Tracking for Items with the Standard Method { .section}

When an item with the standard method is received in a warehouse, the system records its quantity and unit cost in a cost layer, which is identified by the warehouse. The system does not update the item's cost when a new receiving document is released.

Suppose that an item, whose actual unit cost differs from the predefined standard unit cost, is received in a warehouse and the transaction is posted to the general ledger. In this case, any differences between the standard cost and the actual unit cost in the receiving document are recorded to a standard cost variance account.

When you add an item with the *Standard* valuation method to an inventory issue, the system inserts the standard unit cost in the **Unit Cost** box on the [Issues](IN_30_20_00.md) \(IN302000\) form.

## Update of Standard Costs { .section}

You can revise standard costs at the end of the financial year, based on the year’s financial results, or update the costs more often.

If you want to update standard costs for multiple inventory items, you use the [Update Standard Costs](IN_50_20_00.md) \(IN502000\) form. Also, you can use the [Standard Cost Change Preview](IN_61_75_00.md) \(IN617500\) report to preview the changes before you update standard costs. When standard costs are updated and inventory is revalued for multiple inventory items, the system generates a consolidated inventory adjustment on the [Adjustments](IN_30_30_00.md) \(IN303000\) form for the items being processed to make the necessary cost corrections. The consolidated inventory adjustment is generated on the current business date.

**Attention:** If multiple branches are used in the system, a separate inventory adjustment is created for each branch.

You can change the settings of the standard cost for an item stored at a particular warehouse as follows:

1.  Select the **Override Standard Cost** check box on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the item–warehouse pair
2.  Update the standard costs by using the [Update Standard Costs](IN_50_20_00.md) form

The system does not keep a history of the standard costs for both stock items and non-stock item. It displays only the last cost and the current cost on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, respectively. The historical costs that were effective before the last cost are not stored in the database.

## Example of Cost Calculation for the Standard Method { .section}

Suppose that a stock item with a standard cost of $2.50 was purchased in the following way:

-   Purchase 1: 100 units at $2.00 each
-   Purchase 2: 100 units at $1.90 each
-   Purchase 3: 100 units at $2.30 each
-   Purchase 4: 100 units at $2.60 each

The total stock cost is $1000. Any differences between the standard cost and the unit cost on receipts multiplied by the quantity on the receipt are recorded to the standard cost variance account. In this case, the differences are $50, $60, $30, and –$10. On sales orders, the unit cost will appear as $2.50.

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

