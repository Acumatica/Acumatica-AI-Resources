# Product Synchronization: Sales Categories {#_1821ca8f-0e21-4938-8564-99cc072f9557 .concept}

Items' sales categories are exported during the synchronization of the *Sales Category* entity. To synchronize the *Sales Category* entity with a BigCommerce store, it should be activated for the store on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

If the *Sales Category* entity has been activated, during the synchronization of a stock or non-stock item, the system does the following:

-   If any sales categories are assigned to the item in Acumatica ERP and have been exported to the BigCommerce store \(or created there\), assigns the exported item to these categories in the BigCommerce store
-   If no sales categories are assigned to the item, the default sales category or categories have been specified on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) store, and the default sales categories have been synchronized with the BigCommerce store, assigns the exported item to these categories in the BigCommerce store
-   If no sales categories are assigned to the item and no default categories have been specified, exports the item and does not assign it to any sales categories in the BigCommerce store.

    **Attention:** Any categories that have been assigned to the item in the BigCommerce store become unassigned.


For details about the information exported to the BigCommerce store and imported from the BigCommerce store during the synchronization of the *Sales Category* entity, see [Sales Category Entity](Commerce_BC_Mapping_SalesCategory.md).

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

