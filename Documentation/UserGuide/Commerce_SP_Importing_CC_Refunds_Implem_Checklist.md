# Importing Card Refunds: Implementation Checklist {#_f280f9e2-adc8-4714-86e2-a6b9a6106efb .concept}

The following sections provide details you can use to ensure that the system is configured for importing refunds for card-based payment methods from the Shopify store to Acumatica ERP, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you import refunds issued in the Shopify store for card-based payment methods, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*

|
|[Order Types](SO_20_10_00.md) \(SO201000\)|The order type for return orders has been defined.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The non-stock item has been created to represent the amounts of refunds imported from the Shopify store to Acumatica ERP.|
|[Reason Codes](CS_21_10_00.md) \(CS211000\)|The reason code for imported refunds has been defined.|
|[Shopify Stores](BC_20_10_10.md) \(BC201010\)|-   On the **Entities** tab: The *Refund* entity has been activated.
-   On the **Orders** tab:
    -   The order type to be used for returns has been selected in the **Return Order Types** box.
    -   The reason code for refunds has been specified in the **Refund Reason Code** box.
    -   The non-stock item that represents refunded amounts has been specified in the **Refund Amount** box.

|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you import refunds from your BigCommerce store by performing instructions similar to those described in [Importing Card Refunds: To Process a Refund for a Not-Yet-Shipped Order](Commerce_SP_Importing_CC_Refunds_To_Import_Refund_Order_Not_Shipped.md) and [Importing Card Refunds: To Process a Refund for a Shipped Order](Commerce_SP_Importing_CC_Refunds_To_Import_Refund_Order_Shipped.md).

**Parent topic:**[Importing Card Refunds](../UserGuide/Commerce_SP_Importing_CC_Refunds_Mapref.md)

