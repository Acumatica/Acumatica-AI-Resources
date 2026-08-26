# Vendor Prices: Implementation Checklist {#_34d501d4-d7ae-4392-a89a-5d80230e9380 .concept}

To ensure that the system is configured properly for defining or updating multiple prices at once, make sure that the following features and settings are configured as described in the following table.

|Form|Settings to Validate|Note|
|----|--------------------|----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Standard Financials* feature has been enabled.

 The *Inventory* feature has been enabled.

|*Standard Financials* provides the standard financial functionality.

 *Inventory* provides the functionality of maintaining stock items

|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Make sure that the vendors for which you plan to define vendor prices have been created.|For more information on configuring vendors, see [Creating a Vendor](Vendor_Mapref.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) and [Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure the required stock and non-stock items have been configured and activated.|For more information on configuring non-stock items, see [Non-Stock Item: General Information](Non_Stock_Item_Fin_GeneralInfo.md).

 For more information on configuring stock items, see [Creating Stock Items](Stock_Items_Mapref.md).

|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|For prices specific to particular warehouses, make sure that the warehouses for which you plan to define vendor prices have been configured.|For more information on configuring warehouses, see [Managing Warehouses](Warehouses_Mapref.md).|
|[Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\)|Make sure that price retention preferences are configured as required by your organization.|\(Recommended\)|

**Parent topic:**[Maintaining Vendor Prices](../UserGuide/Prices_Vendor_Prices_Mapref.md)

