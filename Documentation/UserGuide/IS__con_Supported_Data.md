# Supported Data {#_0bebe83e-2bfb-460e-95c8-903f0d36999a .concept}

## Bi-Directional Synchronization in Real Time { .section}

Synchronization between Acumatica ERP and Salesforce gives users the ability to create, modify, or delete the following entities in either of the systems, with the changes reflected in both systems:

-   Leads and contacts
-   Business accounts
-   Opportunities
-   Cases
-   Stock and non-stock inventory items
-   Users

## One-Way Synchronization { .section}

Changes made to inventory items in Acumatica ERP can be synchronized with Salesforce, but this synchronization cannot be performed in the opposite direction.

User data can be synchronized also in only one direction, from Salesforce to Acumatica ERP.

## Additional Considerations { .section}

In Salesforce, a case record cannot be saved if it has no owner specified. In Acumatica ERP, only a user that is linked to an employee can be assigned to a case as its owner. Thus, before synchronization of case records starts, user records should be synchronized between the systems and then verified for association with employees. For more information about synchronization of cases, see [Synchronization of Case Records](IS__con_Case_Sync.md).

For correct synchronization of inventory items and opportunities between the systems, sales prices in Acumatica ERP should be synchronized with product prices in Salesforce. Real-time synchronization is not available for sales prices, but Acumatica ERP supports the export of sales prices through specific export scenarios. For details, see [Export of Sales Prices](IS__con_Sales_Price_Export.md).

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

