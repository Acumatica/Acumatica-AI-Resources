# Sales with Returns: Mixed Orders and Related Documents {#_a8b8565f-23ed-441a-843d-aa9602185928 .concept}

When you need to process a sale and a return in the same order, you create a mixed order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, create a payment or refund, and then create an invoice or credit memo. The following sections describe this processing in detail, including key settings of these documents.

## Creation of a Mixed Order { .section}

A mixed order in Acumatica ERP has an order type for which the *Mixed Order* automation behavior is specified on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form. You can use the predefined *MO* order type, which has this automation behavior, for the processing of mixed orders. A mixed order does not support shipments because you use this order for counter sales. For details about order types, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).

You create a mixed order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. In the Summary area, you select the type and the customer. Then on the **Details** tab, you can add lines with items for sale, which have a positive quantity, and lines with items for return, which have a negative quantity.

Each new line that you manually add on the **Details** tab has the default *Issue* operation in the **Operation** column. The **Quantity** specified for the line affects the value in the **Operation** column as follows:

-   If you specify a positive quantity for the line \(which means that the quantity is being issued for sale\), the *Issue* operation remains unchanged. This line amount increases the balance of the order.
-   If you specify a negative quantity for the line \(which means that the customer is returning the quantity\), the system automatically changes the operation from *Issue* to *Receipt*. This line amount decreases the balance of the order.

You can add an item to be returned from the original invoice by clicking **Add Invoice** on the table toolbar and selecting the line of the needed invoice in the **Add Invoice Details** dialog box, which opens. In this case, *Receipt* is inserted in the **Operation** column and the negative line quantity \(that is, the quantity of the original line with a minus sign\) is inserted in the **Quantity** column.

Depending on whether the order has a positive or negative balance, you then process either a customer payment or a customer refund. For details, see the next section.

## Preparation of a Customer Payment or Refund for a Mixed Order { .section}

If a mixed order has the *Open* status, you can create a payment or refund by using the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form as a starting point as follows:

-   If the **Order Total** value is positive, you can click **Create Payment** on the table toolbar. You use the **Create Payment** dialog box, which opens, to specify the payment's settings and create the payment.
-   If the **Order Total** value is negative, you can click **Create Refund** on the table toolbar. You use the **Create Refund** dialog box, which opens, to specify the refund's settings and create the refund.

You can delete an unreleased payment or unreleased refund from the system by clicking the line with the applicable payment or refund on the tab to select it and then clicking the **Delete Payment** or **Delete Refund** button, respectively, on the table toolbar of the **Payments** tab. This deletes the payment or the refund from the current tab and from the system.

Also, if a payment was made by credit card and the payment has the *Open* status, you can void the payment on the **Payments** tab of the [Sales Orders](SO_30_10_00.md) form by clicking the line with the payment, and then clicking the **Void Card Payment** button on the table toolbar.

## Preparation of an Invoice or Credit Memo for a Mixed Order { .section}

To prepare an invoice or a credit memo for a mixed order, you can click **Prepare Invoice** on the form toolbar of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. Depending on the order's balance, the system will create a document on the [Invoices](SO_30_30_00.md) \(SO303000\) form as follows:

-   A document of the *Invoice* or *Cash Sale* type if the **Order Total** is positive or zero
-   A document of the *Credit Memo* or *Cash Return* type if the **Order Total** is negative

**Tip:** The type of document created depends on whether the **AR Document Type** setting on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form contains *Invoice/Credit Memo* or *Cash Sale/Cash Return*.

## Tracking of Return Documents Related to a Sales Order { .section}

You can the track return documents related to a sales order on the Return Documents Related to Sales Order \(SO4010SP\) inquiry form. You open the form by clicking **Related Return Documents** on the side panel of either of the following:

-   The [Sales Orders](SO_30_10_00.md) \(SO301000\) form
-   The Sales Orders \(SO3010PL\) list of records

For the selected sales order, the form displays the related return orders, their related shipments, and return invoices. The form also shows AP documents for drop-ship returns.

The form displays all the documents related to the return of items that have been sold in the selected sales order. The **Qty. on Shipments** box shows the total quantity of shipped items and items added to shipments that have not been processed yet. The **Qty. on Returns** box shows the quantities of items on return orders of all types and return invoices. These quantities are calculated in items' base UOMs.

The **Related Return Documents** table shows links to return orders, as well as the related shipments and AR documents. For drop-ship vendor returns \(orders that are used to process the return of the drop-shipped items directly from a customer to a vendor\), the links to these returns and their AP documents are shown.

The **Return Documents by Line** table lists the inventory IDs of the items in the sales order lines with links to the respective return orders and return invoices.

**Parent topic:**[Processing Sales with Returns](../UserGuide/OrderMgmt_Sales_with_Returns_Mapref.md)

