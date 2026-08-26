# Mass-Update of Sales Prices: Implementation Checklist {#_0109d83d-dc5b-4e94-a9c1-2f0b6a7385c1 .concept}

To ensure that the system is configured properly for defining or updating multiple prices at once, make sure that the following features and settings are configured as described in the following table.

|Form|Settings to Validate|Note|
|----|--------------------|----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Standard Financials* feature has been enabled.

 The *Inventory* feature has been enabled.

|*Standard Financials* provides the standard financial functionality.

 *Inventory* provides the functionality of maintaining stock items.

|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that the customers for which you plan to define sales prices have been created.|For more information on configuring customers, see [Creating a Customer](Customer_Mapref.md).|
|[Customer Price Classes](AR_20_80_00.md) \(AR208000\)|For prices based on a customer price class, make sure that the customer price class has been created and the required customer has been assigned to this customer price class.| |
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) and [Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure the required stock and non-stock items have been configured and activated.|For more information on configuring non-stock items, see [Non-Stock Item: General Information](Non_Stock_Item_Fin_GeneralInfo.md).

 For more information on configuring stock items, see [Creating Stock Items](Stock_Items_Mapref.md).

|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|For prices specific to particular warehouses, make sure that the warehouses which your prices should be based on have been configured.|For more information on configuring warehouses, see [Managing Warehouses](Warehouses_Mapref.md).|
|[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\)|Make sure that price retention preferences are configured as required by your organization.|\(Recommended\)|

**Parent topic:**[Mass-Update of Sales Prices](../UserGuide/Prices_Mass_Updating_Existing_Sales_Prices_Mapref.md)

