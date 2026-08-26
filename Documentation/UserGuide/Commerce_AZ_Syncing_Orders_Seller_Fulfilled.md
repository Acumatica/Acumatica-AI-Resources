# Order Synchronization: Seller-Fulfilled Orders {#_e7e76950-553f-40eb-b7fb-06541f38bf55 .concept}

For seller-fulfilled orders, sales orders are imported into Acumatica ERP and processed and shipped by the seller. The information about the shipments is then exported to the Amazon seller account.

## Setting Up the Import of Seller-Fulfilled Orders { .section}

To set up the synchronization of data for seller-fulfilled orders, you perform the following general steps:

1.  Encrypt the data.

    Make sure that the Acumatica ERP database is encrypted with an algorithm with a minimum of 2048-bit encryption. For an overview of encrypting data in Acumatica ERP, see [Digital Certificates: General Information](SA_Data_Encryption_GeneralInfo.md).

2.  Activate the entities.

    To synchronize seller-fulfilled orders, the following entities should be activated on the **Entities** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form:

    -   *Sales Order*
    -   *Shipment*
    -   *Payment*
3.  Specify the order type for imported orders.

    On the **Orders** tab \(**Order** section\), you must specify the order type that will be used for imported sales orders in the **Seller-Fulfilled Order Type** box. The order type must be defined on the [Order Types](SO_20_10_00.md) \(SO201000\) form based on the *SO - Sales Order* template and have the **Protect Personal Data** check box selected.

4.  Specify the common order synchronization settings.

    On the **Orders** tab \(**General** and **Order** section\), you specify the general settings related to the synchronization of orders, such as the branch that will appear on the imported documents, the earliest order date \(which eliminates earlier orders that should not be imported\), and the generic customer ID that will be inserted in the imported documents.

    **Tip:** We recommend that the generic customer ID be created without address details other than the country.

5.  Make sure that the product identifiers match.

    For each product in the Amazon seller account, the seller SKU or the ASIN number should match the identifier specified for the stock or template item in one of the following boxes on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Template Items](IN_20_30_00.md) \(IN203000\) form:

    -   **Inventory ID** in the Summary area
    -   **Alternate ID** in the row of the *Global* type on the **Cross-Reference** tab
    **Important:** An inventory item can have only a single cross-reference with the product's SKU specified as the alternate ID. That is, you cannot match a single product with multiple UOMs from the Amazon seller account with a single inventory item by using multiple cross-references in Acumatica ERP. Each product's UOM with the SKU from the Amazon seller account should be matched with a separate inventory item in Acumatica ERP.

6.  Map the shipping methods.

    On the **Shipping** tab of the [Amazon Stores](BC_20_10_20.md) form, you map the Amazon shipping methods with the Ship Via codes defined in Acumatica ERP.

    When the order synchronization is started without the shipping method mapping, it fails. The Amazon connector populates the **Store Shipping Method** column, which you can then map with the Ship Via code.

    You must also map each Ship Via code with a carrier from Amazon in a substitution list on the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, and then specify this substitution list in the **Ship Via Codes to Carriers** box on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) form. Similarly, you must map each Ship Via code with a carrier service from Amazon in a substitution list, and then specify the substitution list in the **Ship Via Codes to Carrier Services** box on the **Orders** tab. If the carrier and carrier service method that have been defined for a Ship Via code do not match those defined in Amazon, during the export of a shipment, the carrier or carrier service method in Amazon will be updated based on the substitution values specified in these substitution lists.


## Synchronizing Seller-Fulfilled Orders { .section}

Seller-fulfilled orders, including shipped ones, are imported from an Amazon seller account during the synchronization of the *Sales Order* entity. For details about data synchronization, see [Data Synchronization: General Information](Commerce_AZ_Data_Sync_GeneralInfo.md).

During the data processing stage of the order import, a sales order is created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with the following settings:

-   The order type is assigned based on the value specified in the **Seller-Fulfilled Order Type** box on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form.
-   The customer is inserted based on the value specified in the **Generic Customer** box on the **Orders** tab.

## Exporting Shipments for Seller-Fulfilled Orders { .section}

For orders that are imported from Amazon to Acumatica ERP for processing, you can export information about the created and confirmed shipments to the Amazon seller account. Shipments are exported during the synchronization of the *Shipment* entity.

For the successful synchronization of shipments, the following conditions must be met on the [Shipments](SO_30_20_00.md) \(SO302000\) form:

-   The shipment must not be empty.
-   The shipment must contain one or more packages. Each package must have a tracking number.
    1.  If the shipment has multiple packages, all items must be assigned to the packages. Empty packages are not allowed.
    2.  If the shipment has a single package, either all items must be assigned to the package or all items must be unassigned \(that is, the package can be empty\).
-   The shipment must be confirmed.

During the synchronization of shipments, the following information is exported to the Amazon seller account:

-   The shipment date
-   The items and their quantity
-   The carrier name
-   The carrier service method
-   The tracking number

## Importing Replacement Orders { .section}

Amazon creates a replacement order when a user replaces any products in an existing order in the Amazon seller account. Replacement orders are imported from the Amazon seller account during the synchronization of the *Sales Order* entity.

As a result of importing a replacement order, the system creates a sales order with the following description on the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form: *Replacement order &lt;Replacement order external ID&gt; for Amazon order &lt;Replaced order external ID&gt; from &lt;Store name&gt; store*. The total amount of the replacement order is $0 and a payment is neither created nor imported for the replacement order.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

