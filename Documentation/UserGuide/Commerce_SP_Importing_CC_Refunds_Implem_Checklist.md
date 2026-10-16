# Importing Card Refunds: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured for importing refunds for card-based payment methods from the Shopify store to Acumatica ERP, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you import refunds issued in the Shopify store for card-based payment methods, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\)

</td><td>

The order type for return orders has been defined.

</td></tr><tr><td>

[Non-Stock Items](IN_20_20_00.md) \(IN202000\)

</td><td>

The non-stock item has been created to represent the amounts of refunds imported from the Shopify store to Acumatica ERP.

</td></tr><tr><td>

[Reason Codes](CS_21_10_00.md) \(CS211000\)

</td><td>

The reason code for imported refunds has been defined.

</td></tr><tr><td>

[Shopify Stores](BC_20_10_10.md) \(BC201010\)

</td><td>

-   On the **Entities** tab: The *Refund* entity has been activated.
-   On the **Orders** tab:
    -   The order type to be used for returns has been selected in the **Return Order Type** box.
    -   The order type to be used for exchanges has been selected in the **Exchange Order Type** box.
    -   The reason code for refunds has been specified in the **Refund Reason Code** box.
    -   The non-stock item that represents shipping and restocking fees has been specified in the **Return Fee Item** box.
    -   The non-stock item that represents refunded amounts has been specified in the **Refund Amount** box.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you import refunds from your BigCommerce store by performing instructions similar to those described in [Importing Card Refunds: To Process a Refund for a Not-Yet-Shipped Order](Commerce_SP_Importing_CC_Refunds_To_Import_Refund_Order_Not_Shipped.md) and [Importing Card Refunds: To Process a Refund for a Shipped Order](Commerce_SP_Importing_CC_Refunds_To_Import_Refund_Order_Shipped.md).

**Parent topic:**[Importing Card Refunds](../UserGuide/Commerce_SP_Importing_CC_Refunds_Mapref.md)

