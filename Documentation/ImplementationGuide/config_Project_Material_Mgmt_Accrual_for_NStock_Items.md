# Configuration of Project Material Management: Cost Accrual for Non-Stock Items {#_bd7ca24f-732e-43bc-936f-7cde6a6951a6 .concept}

You can control when the system posts the expenses for a non-stock item and whether it uses the Expense Account or Expense Accrual account.

For non-stock items, the way the system posts the expenses also depends on the option specified in the **Post Cost to Expenses On** box on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form:

-   *Purchases* \(default\): No transactions to the Expense Accrual account are generated on release of the inventory receipts, AP bills, and sales invoices.

    If a purchase document is related to a particular project, the system specifies the project budget key of the project in the transaction line that is posted to the Expense account on release of an AP bill or purchase receipt. \(The project budget key is the project, project task, account group, and, optionally, cost code.\)

-   *Sales*: When the non-stock item is included in a purchase receipt \(if the item requires a purchase receipt\) or an AP bill \(if the item does not require a purchase receipt\), on release of the document, the Expense Accrual account is debited in the related GL transactions. That is, the item cost is accrued to the Expense Accrual account.

For more information, see [Project Material Management: Accrual of a Non-Stock Item’s Cost](../UserGuide/Construction_Project_Materials_Mgmt_Item_Cost_Accrual.md).

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

