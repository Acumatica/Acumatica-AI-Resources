# Importing Card Refunds: Implementation Checklist {#_39751fae-3e5b-4a79-897b-c6123756f39f .concept}

The following sections provide details you can use to ensure that the system is configured for importing refunds for card-based payment methods from the BigCommerce store to Acumatica ERP, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you import refunds issued in the BigCommerce store for card-based payment methods, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Retail Commerce*
-   *BigCommerce Connector*
-   *Custom Order Types*

|
|[Order Types](SO_20_10_00.md) \(SO201000\)|The order type for return orders has been defined.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The non-stock item has been created to represent the amounts of refunds imported from the BigCommerce store to Acumatica ERP.|
|[Reason Codes](CS_21_10_00.md) \(CS211000\)|The reason code for imported refunds has been defined.|
|[BigCommerce Stores](BC_20_10_00.md) \(BC201000\)|-   On the **Entities** tab: The *Refund* entity has been activated.
-   On the **Orders** tab:
    -   The order type to be used for returns has been selected in the **Return Order Types** box.
    -   The reason code for refunds has been specified in the **Refund Reason Code** box.
    -   The non-stock item that represents refunded amounts has been specified in the **Refund Amount** box.

|

**Parent topic:**[Importing Card Refunds](../UserGuide/Commerce_BC_Importing_CC_Refunds_Mapref.md)

