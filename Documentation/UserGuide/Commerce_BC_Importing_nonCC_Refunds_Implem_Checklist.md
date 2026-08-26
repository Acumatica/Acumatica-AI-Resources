# Importing Non-Card Refunds: Implementation Checklist {#_76cbaea3-d7f1-48bf-8466-fe6479a98341 .concept}

The following sections provide details you can use to ensure that the system is configured for importing refunds for non-card payment methods from the BigCommerce store to Acumatica ERP, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you import refunds issued in the BigCommerce store for non-card payment methods, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Retail Commerce*
-   *BigCommerce Connector*
-   *Custom Order Types*

|
|[Order Types](SO_20_10_00.md) \(SO201000\)|An order type for return orders has been defined.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|A non-stock item has been created to represent the amounts of refunds imported from the BigCommerce store to Acumatica ERP.|
|[Reason Codes](CS_21_10_00.md) \(CS211000\)|A reason code for imported refunds has been defined.|
|[BigCommerce Stores](BC_20_10_00.md) \(BC201000\)|-   On the **Entities** tab: The *Refund* entity has been activated.
-   On the **Orders** tab:
    -   The order type you created for returns has been selected in the **Return Order Types** box.
    -   The reason code you created for refunds has been specified in the **Refund Reason Code** box.
    -   The non-stock item you created to represent refunded amounts has been specified in the **Refund Amount** box.
-   On the **Payments** tab: The **Process Refunds** check box has been selected for a non-card payment method or card payment method that is mapped to an Acumatica ERP payment method for which integrated card processing is not configured.

|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you import refunds from your BigCommerce store by performing instructions similar to those described in [Importing Non-Card Refunds: To Process a Refund for a Not-Yet-Shipped Order](Commerce_BC_Importing_nonCC_Refunds_To_Import_Refund_Order_Not_Shipped.md) and [Importing Non-Card Refunds: To Process a Refund for a Shipped Order](Commerce_BC_Importing_nonCC_Refunds_To_Import_Refund_Order_Shipped.md).

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_BC_Importing_nonCC_Refunds_Mapref.md)

