# Product Synchronization: Related Items {#_5d2dd906-e126-4f8f-b534-8553ccdfa03b .concept}

For each stock and non-stock item in Acumatica ERP, an organization can maintain a list of related items that shoppers might be interested in buying in addition to or instead of the original item. These items might include items complementary to the original item \(for example, a cover case or a mouse may be offered to the customer when a laptop is purchased\), additional services \(such as, assembly services for sold furniture\), items that are purchased by other shoppers with similar buying habits, and higher-priced variants of the original item.

When the *Related Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **Related Items** tab is displayed on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms. On this tab, you can list the items related to the original item \(which is the stock or non-stock item that is selected on the form\) and specify the relation.

If the *BigCommerce Connector* features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and the integration between the Acumatica ERP instance and the BigCommerce store has been configured, you can export stock and non-stock items from Acumatica ERP to the BigCommerce store along with the list of related items that have been defined for each item.

During the configuration of a BigCommerce store, on the **Inventory** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you can select the types of related items whose information needs to be exported to the BigCommerce store during the synchronization of stock and non-stock items. You select the check box for any or all of the following options:

-   *Cross-Sell*
-   *Up-Sell*
-   *Substitute*
-   *Other*

By default, none of these options is selected, and during the synchronization of stock, non-stock, and items with the BigCommerce store, information about related items is not exported to the BigCommerce store, even if the item relations have been specified in Acumatica ERP. If an option is selected in this box and any related items are specified for the original stock or non-stock item with a relation that corresponds to the selected option, the information about the related item is exported to the BigCommerce store when the original item is exported.

After the original item has been exported to the BigCommerce store, all its related items are listed in the **Related Products** section of the product management page. When a shopper browses the original item on the storefront, they can see the list of its related items at the bottom of the product page \(depending on the theme applied to the store\).

**Parent topic:**[Synchronizing Products](../UserGuide/Commerce_BC_Syncing_Products_Mapref.md)

