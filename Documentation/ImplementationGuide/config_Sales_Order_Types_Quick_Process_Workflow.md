# Sales Order Types: Quick Processing of Sales Orders {#_2920c85c-5678-40f7-b80a-e068ac3a137f .concept}

The order workflow in order management depends on the order type and your organizational requirements, and may include multiple operations, such as creating and confirming a shipment, creating an invoice, and preparing printed forms. In Acumatica ERP, users can simplify multistep processing and configure quick processing for a particular order type so that users can process the orders of this type with just one click. Quick order processing is mostly intended for use at points of sale with a single warehouse.

## Configuring Quick Processing for an Order Type { .section}

For quick order processing to be used, a user must allow quick processing for a particular order type and configure the actions to be performed during quick processing. The user allows quick processing for a particular order type by selecting the **Allow Quick Process** check box on the **Template** tab on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form. This causes the **Quick Processing** tab to appear on the form. On this tab, the user configures the sequence of order processing actions to be used by default for orders of this type. For each particular order of the type being processed on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, the list of actions to be performed can be changed. For step-by-step instructions on configuring an order type for quick processing, see [Sales Order Types: To Configure Quick Processing for an Order Type](config_Sales_Order_Types_To_Configure_Quick_Processing.md).

Quick processing can be configured for predefined and custom order types, except for order types that are based on the *Quote* and *RMA Order* automation behaviors \(specified on the **Template** tab of the [Order Types](../UserGuide/SO_20_10_00.md) form\). Also, the sales order lines that are marked for purchasing—that is, those with the **Mark for PO** check box selected on the [Sales Orders](../UserGuide/SO_30_10_00.md) form—are excluded from quick processing because the creation of a purchase order is not included in the quick processing configuration flow.

## Configuring Quick Processing for an Order { .section}

After quick processing is configured for a particular order type, a user can run quick processing from the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. On the form toolbar of this form, the **Quick Process** button appears for the orders of this type. When a user clicks this button for an order with the *Open* status, the system opens the **Process Order** dialog box. In this dialog box, the user can change the following settings before quick processing an order:

-   The warehouse ID \(if applicable for the order type\) of the warehouse from which the goods will be shipped.
-   The date on which the shipment will be prepared.

    After the user specifies the shipment date, the system checks the availability of the ordered items for the specified date and displays the result in the **Availability** section of the dialog box. The following availability states may be displayed:

    -   Green mark: The ordered items with the *Ship Complete* rule are available for shipping. The items with the *Cancel Remainder* shipping rule are partially available or not available at all.
    -   Yellow mark: The ordered items are partially available, and back-ordering is allowed for these items.
    -   Red mark: The ordered items are not available for shipment, so the order cannot be processed further.
    The shipping and invoicing operations \(if applicable for the order type\) to be performed during quick processing. The user can change the default set of operations, which is copied from the settings of the order type.

    **Tip:** If the printing or emailing settings of the customer specified in the order differs from the configured processing flow, the system will display a notification.


After reviewing the processing details, the user clicks **OK** in the dialog box to launch quick processing of the order.

## Running Quick Processing { .section}

When a user launches quick processing, the system performs the selected processing steps and notifies the user about the completion of each step in the **Processing Results** window. The window also shows links to all documents prepared during processing, so that after processing has completed, the user can click these links, review the created documents, and send them for printing.

**Tip:** For a particular order type, you can select the **Open All Created Documents in New Tabs** on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, to make the system open the prepared documents in new browser tabs after quick processing has finished.

If a sales order contains items located in different warehouses, users need to run quick processing for each warehouse separately. For a particular sales order, the shipment from the previous processing must be completed before the next run of the quick processing can be performed.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

