# Sales Order Types: Custom Sales Order Types {#_e9d8ed9c-ce83-4de5-afba-388e983d193e .concept}

In addition to the predefined order types Acumatica ERP provides for common order processing operations, if the *Custom Order Types* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you can create more order types to support business processes in your company that cannot be supported with the predefined order types. For example, you may need to configure a custom order type that uses different numbering sequences to determine order IDs and different sets of general ledger accounts and subaccounts. Also, this type might have different processing options specified, such as the setting that determines whether the system performs a credit check when the orders of this type are entered.

On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you can create a new order type either from scratch or based on any of the predefined templates. Custom order types that you have configured appear for selection in the **Order Type** box of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. Users can then create new orders of custom types and process them in accordance with the workflow configured for the template.

The sections below describe the creation of custom order types.

## Order Types Created From Scratch { .section}

You can create a new order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form. For the new order type, you should specify the following settings, which affect the general workflow of the orders of this type:

-   **Automation Behavior**: The type of automation behavior used for the template, which can be *Sales Order*, *Invoice*, *Quote*, *Credit Memo*, *Mixed Order*, *Transfer Order*, *RMA Order*, or *Blanket Order*.
-   **Default Operation**: The default inventory operation for the order type, which can be *Receipt* or *Issue*.
-   **AR Document Type**: The type of accounts receivable document to be generated for an order of the type. Depending on the type of the selected automation behavior, this type can be *Invoice*, *Debit Memo*, *Credit Memo*, *Cash Sale*, *Cash Return*, *Invoice/Credit Memo*, *Cash Sale/Cash Return*, or *No Update* \(which means that no AR document will be created\).

After you have specified the template settings, you configure additional processing options on the **General** tab of the form.

## Order Types Based on Predefined Templates { .section}

On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you can create a custom order type that is based on the available templates, which generally involves creating a new order type with a predefined template and making slight changes to the order type settings. For example, you can create separate quote order types, based on the *QT \(Quote\)* template, for the customer price classes of wholesale, retail, and catalog customers.

The following predefined templates are available:

-   *BL \(Blanket Order\)*: The built-in template for the *BL* order type. You use documents of this type to plan and forecast long-term sales.
-   *CM \(Credit Memo\)*: The built-in template for the *CM* order type. You use documents of this type to adjust already-completed sales orders.
-   *CR \(Cash Return\)*: The built-in template for the *CR* order type. Documents of this type are used when the customer returns goods from a cash sale order that did not involve shipping.
-   *CS \(Cash Sale\)*: The built-in template for the *CS* order type. You use documents of this type to register cash sales.
-   *IN \(Invoice\)*: The built-in template for the *IN* order type. You use documents of this type to bill the customer for shipped goods.
-   *MO \(Mixed Order\)*: The built-in template for the *MO* order type. You use documents of this type for processing both a sale and a customer return in the same document.
-   *QT \(Quote\)*: The built-in template for the *QT* order type. Documents of this type register the customer's intention to buy goods in the specified quantity, on the specified date, and at the specified price.
-   *RC \(Return for Credit\)*: The built-in template for the *RC* order type. You use documents of this type to register customer returns for credit without replacement.
-   *RM \(Generic Authorized Return\)*: The built-in template for the *RM* order type. Documents of this type register customer returns with replacement for credit within the product's warranty period.
-   *RR \(Return with Replacement\)*: The built-in template for the *RR* order type. You use documents of this type to register customer returns with exact replacement of goods.
-   *SA \(Sales Order with Allocation\)*: The built-in template for the *SA* order type. You create documents of this type to record customers' requests to purchase goods and to reserve the requested goods for the orders.
-   *SO \(Sales Order\)*: The built-in template for the *SO* order type. Documents of this type are created to record customers' requests to purchase goods that should then be shipped to the customer location.
-   *TR \(Transfer\)*: The built-in template for the *TR* order type. You generate documents of this type to record stock replenishment by transferring goods from the source warehouse to a destination warehouse.

    This order type appears only if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.


**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

