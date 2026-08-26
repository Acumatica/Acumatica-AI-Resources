# Changing the Processing of Sales Documents {#_40969b80-b98e-4b83-bfba-2941496b284a .concept}

In Acumatica ERP, you can require a user to perform additional steps during the processing of sales orders of a particular order type and related documents, by configuring order settings on the **General** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form, and by configuring module preferences on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

## Holding Sales Documents on Entry { .section}

On the **General Settings** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form, you can specify the following settings, which indicate whether orders of this type and the related documents should be on hold on creation:

-   **Hold Orders on Entry** \(**Order Settings** section\): If this check box is selected for an order type, new orders of this type will be created with the *On Hold* status by default. Otherwise, if the check box is cleared, a newly created order will be created with the *Open* status.
-   **Hold Invoices on Entry** \(**Accounts Receivable Settings** section\): If this check box is selected for an order type, new sales invoices prepared for the order of this type will be created with the *On Hold* status by default. Otherwise, if the check box is cleared, invoices will be created with the status based on the invoice workflow.

    **Note:** If approval is configured for sales invoices, they will be created with the *On Hold* status, regardless of the state of this check box.


## Holding Orders on a Failed Credit Check { .section}

By default, a credit check is performed for sales orders of any type; the system displays a warning if the customer fails the credit check. If you want to instead hold sales orders on a failed credit check, you need to select **Hold Document on Failed Credit Check** \(**Order Settings** section\) on the [Order Types](SO_20_10_00.md) \(SO201000\) form for the needed order type. Then if the customer fails the credit check, the order is assigned the *Credit Hold* status.

When **Hold Document on Failed Credit Check** is selected for an order type, the system automatically selects the **Remove Credit Hold on Payment Application** check box. This means that the system will automatically remove a sales order of the type from credit hold when a payment has been applied to the full order amount. If you clear the **Remove Credit Hold on Payment Application** check box for the order type, the *Credit Hold* status will remain unchanged in the order when the payment has been applied to the full order amount. In this case, you can change the *Credit Hold* status in either of the following ways:

-   For an individual order by opening the order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and clicking **Remove Credit Hold**
-   For any number of orders by selecting the *Remove Credit Hold* action on the [Process Orders](SO_50_10_00.md) \(SO501000\) form and processing the needed orders

For each order for which the credit hold is removed, the system performs credit checks and gives the order the *Open* status if the credit check is successful. For more details, see [Checking the Credit Limit in Sales Documents](SO__con_Credit_Check.md).

**Attention:** If the customer specified in a sales order has the *Credit Hold* status on the [Customers](AR_30_30_00.md) \(AR303000\) form, the sales order cannot be moved from the *Credit Hold* status. It maintains this status even if the **Remove Credit Hold on Payment Application** check box is selected for the order type on the [Order Types](SO_20_10_00.md) form and a payment has been applied to the full order amount. The status of the order can be changed only when the customer's status is no longer *Credit Hold*.

## Holding Invoices on a Failed Credit Check { .section}

New and edited invoices are put on credit hold for customers that fail credit check if the **Hold Invoices on Failed Credit Check** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

## Affecting the Processing of Inventory Issues { .section}

Generated inventory issues are released automatically if the **Automatically Release IN Documents** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. If the check box is cleared, inventory issues are generated and saved with the *Balanced* status.

## Making the Entry of Orders Error-Proof { .section}

You select the **Require Control Total** check box in the settings of an order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form to prevent the orders of this type from being processed until a user types the total order amount in the **Control Total** box, which is displayed on the data entry form if the check box is selected for an order type. The control total that the user enters must be equal to the order total calculated by the system.

## Making the Entry of Shipments Error-Proof { .section}

You select the **Validate Shipment Total on Confirmation** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form to prevent the shipment from being confirmed until a user types the total quantity of the items being shipped in the **Control Quantity** box, which is displayed on the data entry form if the check box is selected. The quantity that the user enters must be equal to the quantity calculated by the system.

## Causing the Documents to Be Processed Separately { .section}

In the settings of an order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form, you can configure the following settings, which specify whether the orders of this type and related documents should be processed individually from other orders of this type:

-   **Bill Separately**: If this check box is selected, the system prepares individual Sales Orders invoices for each order of this type. Otherwise, if the check box is cleared, the system prepares consolidated invoices.
-   **Ship Separately**: If this check box is selected, the system prepares individual shipments for each order of this type. Otherwise, if the check box is cleared, the system prepares consolidated shipments.

    **Note:** The orders of the type for which the **Ship Separately** check box is selected can still be consolidated into a single shipment if you manually add them using the **Add Order** button on the **Details** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form.


## Affecting the Date of the Invoice Generation { .section}

In the settings on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, you can select the **Use Shipment Date for Invoice Date** check box, if you want to generate Sales Orders invoices with the date of shipment. Otherwise, if the check box is cleared, the system uses the current business date for invoice generation.

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

