# Sales Order Types: Implementation Checklist {#_cdc83034-5cd7-4601-bf6d-654c996d2b6d .concept}

The following sections provide details that you can use to ensure that the system is configured properly for the processing of sales orders, and to specify settings that affect the processing workflow for orders of different types.

## Enabling the Needed Features { .section}

You should make sure the following features have been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form based on the types of orders you want to configure and use:

-   The *Inventory and Order Management* feature to be able to configure and use orders of any of the following types: *QT*, *IN*, *CM*, *CS*, *CR*, and *MO*.
-   The *Inventory and Order Management* and *Inventory* features to be able to configure and use orders of any of the following types: *BL*, *SO*, *SA*, *RR*, *RM*, and *RC*
-   The *Inventory and Order Management*, *Inventory*, and *Multiple Warehouses* features to be able to configure and use orders of the *TR* order type

## Configuring the System { .section}

Before you begin configuring order types, you should make sure that on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, all GL accounts that you will use for configuring an order type have been added. For details, see [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).

## Minimum Required Settings { .section}

|Form|Criteria to Check|
|----|-----------------|
|The **General** tab of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form|-   The **Order Numbering Sequence**, which is the sequence to be used to assign order reference numbers, is specified.
-   The **Invoice Numbering Sequence**, which is the sequence to be used to assign reference numbers for invoices prepared for orders of this type, is specified.
-   The **Freight Account**, which is the account for posting freight charges, is specified.

|
|The Summary area of [Order Types](../UserGuide/SO_20_10_00.md) form|The **Active** check box, indicating that the order type is available for use, is selected.|

## Settings That Affect the Workflow { .section}

For a particular order type, you can specify additional settings on the **General** tab of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form that will affect the processing of orders of this type:

-   To cause new orders to be created with the *On Hold* status \(so that they can be verified before further processing\), select the **Hold Orders on Entry** check box.
-   To make the system verify the customer's credit status and put an order on credit hold if the credit limit has been exceeded, select the **Hold Document on Failed Credit Check** check box.

    To make the system automatically remove a sales order of the type from credit hold when a payment has been applied to the full order amount, make sure that the **Remove Credit Hold on Payment Application** check box is selected. \(The system automatically selects this check box when a user selects **Hold Documents on Failed Credit Check**, but you can clear it.\)

    **Attention:** If the customer specified in a sales order has the *Credit Hold* status on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the order cannot be moved from the *Credit Hold* status. It keeps the status even if the **Remove Credit Hold on Payment Application** check box is selected for the order type on the [Order Types](../UserGuide/SO_20_10_00.md) form and a payment has been applied to the full order amount. The status of the order can be changed only when the customer's status is no longer *Credit Hold*.

-   To reduce input errors during order entry, set up the validation of order totals by selecting the **Require Control Total** check box, so that a user will need to enter a control total for an order of this type; the order can be processed further only if the system-calculated total equals the manually entered control total.
-   To cause the system to prepare separate bills for multiple orders of the type for the same customer, select the **Bill Separately** check box.
-   To cause the system to prepare separate shipment documents for multiple orders of the type for the same customer, select the **Ship Separately** check box.
-   To cause the system to calculate freight charges for an order of the type, select the **Calculate Freight** check box.
-   To cause the system to require a user to enter a customer order number for an order of the type, select the **Require Customer Order Nbr.** check box. To allow users to enter duplicated customer order numbers, select *Allow Duplicates* in the **Customer Order Nbr. Validation**; to warn users if they have entered a duplicated number, select *Warn About Duplicates*. To prevent users from entering duplicated customer order numbers in orders of the type, select *Forbid Duplicates*.

On the **Template** tab of the [Order Types](../UserGuide/SO_20_10_00.md) form, to configure an order type for quick processing, you select the **Allow Quick Processing** check box. This causes the **Quick Processing** tab to appear, and you specify the needed settings on this tab. For more information, see [Sales Order Types: Quick Processing of Sales Orders](config_Sales_Order_Types_Quick_Process_Workflow.md).

If your organization's policies require the approval of sales orders of a type, you can set up their approval, as described in [Specific Approvals: Sales Orders](SO__con_Approvals.md).

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

