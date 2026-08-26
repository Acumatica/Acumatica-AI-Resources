# Project Material Management: Accrual of a Non-Stock Item’s Cost {#_afaefd8d-d2a7-42b0-b3f8-9192b5acf5e9 .concept}

The following sections explain how the system accrues a non-stock item’s cost on purchases and sales, and describe which transactions the system generates to record the item cost to the project budget. For details about the way the system posts the expenses for non-stock items, see [Configuration of Project Material Management: Cost Accrual for Non-Stock Items](../ImplementationGuide/config_Project_Material_Mgmt_Accrual_for_NStock_Items.md).

## Accrual of Cost on Purchases { .section}

By default, *Purchase* is selected in the **Post Cost to Expenses On** box on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. We strongly recommend that you use this setting for any non-stock items that you are using with projects. With it selected, the system records the expenses related to the item during the processing of the purchase documents. When you process a project-related purchase document, the project budget is updated on release of either the inventory receipt or the AP bill, depending on the type of the document being processed and the type of the item in the document line as follows:

-   If a stock item is selected in a line of a *Normal* purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, the purchase receipt and AP bill produce no project transactions. The system records the project expenses to the project budget on release of the inventory issue with this item for the project on the [Issues](IN_30_20_00.md) \(IN302000\) form. The following GL transaction records the item’s cost:

    -   The PO Accrual account of the item is credited with the non-project code.
    -   The Expense account of the item is debited with the project budget key.
    For a complete list of the generated GL transactions and project transactions, see [Project Inventory Tracking: Generated Transactions](Projects_Inventory_Tracking_Transactions.md).

-   If a non-stock item requiring receipt is selected in a line of a *Normal* purchase order on the [Purchase Orders](PO_30_10_00.md) form, the project expenses are recorded on release of the inventory receipt for the purchase receipt. The following GL transaction records the item’s cost:

    -   The PO Accrual account of the item is credited with the non-project code.
    -   The Expense account of the item is debited with the project budget key.
    For a complete list of the generated GL transactions and project transactions, see [Project Inventory Tracking: Generated Transactions](Projects_Inventory_Tracking_Transactions.md).

-   If a non-stock item not requiring receipt is selected in a line of a *Normal* purchase order on the [Purchase Orders](PO_30_10_00.md) form or in a line of a subcontract on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form, the project expenses are recorded on release of the AP bill. The following GL transaction records the item’s cost:

    -   The AP account of the vendor is credited with the non-project code.
    -   The Expense account of the item is debited with the project budget key.
    For a complete list of the generated GL transactions and project transactions, see [Project Inventory Tracking: Generated Transactions](Projects_Inventory_Tracking_Transactions.md) and [Subcontracts: Generated Transactions](Construction_Subcontracts_Transactions.md).


## Cost Accrual on Drop-Ship Purchases { .section}

**Important:** Regular drop-shipment orders \(purchase orders of the *Drop-Ship* type\) are not intended for use with projects.

In project-related drop-ship orders, the system captures the material expenses based on the project settings on the **Defaults** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form as follows:

-   If *On Bill Release* is selected in the **Record Drop-Ship Expenses** box on the tab, expenses are recorded to the project’s cost budget on release of the AP bill. The following GL transactions are generated:

    -   The Expense account of the item is debited with the project budget key.
    -   The AP account of the vendor is credited with the non-project code.
    For a complete list of the generated transactions, see [Purchases to the Project Site: Generated Transactions](Projects_Purchase_to_Project_Site_Transactions.md).

-   If *On Receipt Release* is selected in the **Record Drop-Ship Expenses** box on the tab, expenses are recorded to the project cost budget on release of the purchase receipt. The following GL transactions are generated:

    -   The Expense account of the item is debited with the project budget key.
    -   The PO Accrual account of the item is credited with the non-project code.
    For a complete list of the generated transactions, see [Purchases to the Project Site with a Receipt: Generated Transactions](Projects_Purchase_with_Receipt_Transactions.md).


## Accrual of Cost on Sales { .section}

The expenses for non-stock items that have *Sales* selected in the **Post Cost to Expenses On** box on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form are recorded on release of the sales invoices. On a purchase of these items for a project, expenses are recorded with the non-project code, regardless of the system settings and item settings.

**Important:** Be sure that you don’t use non-stock items with this setting in projects; expenses related to these items are never recorded to actual project values. This option is used solely in order management to record expenses on release of sales invoices. When a sales invoice that includes the non-stock item is released, the Expense account is debited and the Expense Accrual account is credited in the related GL transactions. Since the project flow does not include sales invoices, the accrued expenses will not be posted with the appropriate project code.

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

