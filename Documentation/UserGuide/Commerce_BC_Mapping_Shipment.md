# Shipment Entity

This topic provides reference information about the standard filtering and field mapping used for the *Shipment* entity during the synchronization between Acumatica ERP and BigCommerce.

## Shipment Filtering

When shipments are exported to Shopify, a shipment is skipped if any of the following conditions are met:

-   The status of the shipment is *Confirmed*, *Invoiced*, or *Completed*.
-   The sales order related to the shipment has not been synchronized.

## Shipment Export Mapping

The following table shows the mapping of Acumatica ERP fields to BigCommerce fields that is used during the export of shipment data to BigCommerce.

<table id="_5c96158f-2e69-4c84-8b40-02ca6a32b5ae"><thead><tr><th colspan="2">

**Source Fields \(Acumatica ERP\)**

</th><th colspan="3">

**Target Fields \(BigCommerce\)**

</th></tr><tr><th>

Field Name

</th><th>

Form Object

</th><th>

Field Name

</th><th>

Page Object

</th><th>

Notes

</th></tr></thead><tbody><tr><td colspan="2">

[Shipments](SO_30_20_00.md) \(SO302000\) form

</td><td colspan="3">

 

</td></tr><tr><td>

**Shipment Nbr.**

</td><td>

Summary area

</td><td>

**Shipment ID**

</td><td>

**View Shipments** page

</td><td>

 

</td></tr><tr><td>

**Ship Via**

</td><td>

**Shipping** tab &gt; **Shipping Information** section

</td><td>

Shipping Method

</td><td>

**View Shipments** page

</td><td>

If a shipment is a drop-shipment, the ship via code is copied from the purchase order.

</td></tr><tr><td>

**Tracking Number**

</td><td>

**Packages** tab

</td><td>

**Shipping Tracking Number**

</td><td>

**View Shipments** page

</td><td>

-   If a shipment is a drop shipment, the vendor reference number from the purchase order is used.
-   Multiple tracking numbers are concatenated together. If the maximum length is exceeded, the value is truncated.

</td></tr><tr><td>

**Notes**

</td><td>

 

</td><td>

**Shipment Comments**

</td><td>

**View Shipments** page

</td><td>

 

</td></tr><tr><td>

**Inventory ID**

</td><td>

**Details** tab

</td><td>

**Product ID**

</td><td>

**View Shipments** page

</td><td>

 

</td></tr><tr><td>

**Shipped Qty.**

</td><td>

**Details** tab

</td><td>

**Quantity**

</td><td>

**View Shipments** page

</td><td>

 

</td></tr></tbody>
</table>

**Parent topic:**[BigCommerce Mapping Reference](../UserGuide/Commerce_BC_Mapping_Reference.md)

