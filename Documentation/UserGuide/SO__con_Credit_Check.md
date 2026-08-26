# Checking the Credit Limit in Sales Documents {#_cf4943f7-692d-47b8-9158-2f0fdf10ec9a .concept}

This topic describes the credit check settings for sales orders and invoices. For details on setting up credit verification rules for customers, see [Credit Verification Rules: General Information](CreditPolicy_Credit_Verification_Rules_GeneralInfo.md).

## Credit Check for Sales Orders { .section}

For sales orders of most predefined types, the system performs a credit check of the customer when you select this customer on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. If the credit rules specified for the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form have been violated \(that is, if the customer has exceeded the credit limit, the days past due, or both criteria\), the system displays a yellow exclamation point to the left of the **Customer** box. By pointing at this icon, you can view the warning message.

Also, if a customer has the *Credit Hold* status on the [Customers](AR_30_30_00.md) form, you can still select the customer in the **Customer** box on the [Sales Orders](SO_30_10_00.md) form and save the order with the *On Hold* status. When you remove the order from hold, the order's status changes to *Credit Hold* because of the customer's status, regardless of the customer's credit limit and the state of the **Hold Documents on Failed Credit Check** check box on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

You can use the **Hold Document on Failed Credit Check** check box on the [Order Types](SO_20_10_00.md) form to indicate to the system how the orders of the specific type should be processed if the customer fails the credit check:

-   If this check box is selected for the order type, when an order of this type is saved \(or taken off hold, depending on whether the **Hold Orders on Entry** check box is selected for the order type\), it will be assigned the *Credit Hold* status. By default, the check box is selected only for the *SA \(Sales Orders with Allocation\)* order type.
-   If the check box is cleared for the order type, when an order of this type is saved or taken off hold, it will be assigned the next status based on the order's workflow. The order can be processed in the same ways that the orders that passed the credit check can be processed.

With **Hold Documents on Failed Credit Check** selected for an order type, the **Remove Credit Hold on Payment Application** check box is automatically selected. This means that the system will automatically remove a sales order of the type from credit hold when a payment has been applied to the full sales order amount. If you clear the **Remove Credit Hold on Payment Application** check box for the order type, the *Credit Hold* status will remain unchanged in the order when the payment was applied to the full sales order amount. In this case, you can change the *Credit Hold* status in either of the following ways:

-   For an individual order by opening the order on the [Sales Orders](SO_30_10_00.md) form and clicking **Remove Credit Hold** on the More menu to change the status of the order to *Open* and process it further despite the failed credit check. If while editing this order you increase the order amount and save the order, it will be assigned the *Credit Hold* status. If you do not change the order amount, you can process the order further; an invoice generated for the order can be released. This invoice will not get the *Credit Hold* status, even if the **Hold Invoices on Failed Credit Check** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   For any number of sales orders by selecting the *Remove Credit Hold* action on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, selecting the needed orders, and clicking **Process** on the form toolbar. This initiates credit checks for each selected order, and if the credit check is successful, the order receives a status of *Open*. If there is a prepayment or payment applied for the full balance of the order, the system automatically changes the *Credit Hold* status to the next status based on the order's workflow.

**Attention:**

-   You may be unable to remove sales orders from credit hold based on the access rights assigned to your user account.
-   If a customer specified in a sales order has the *Credit Hold* status on the [Customers](AR_30_30_00.md) form, the order cannot be moved from the *Credit Hold* status. This limitation applies even if the **Remove Credit Hold on Payment Application** check box is selected for the order type on the [Order Types](SO_20_10_00.md) form and a payment has been applied to the full sales order amount. The status of the sales order can be changed only when the customer's status is no longer *Credit Hold*.

## Credit Check for Invoices { .section}

Generally, invoices are generated for sales orders that have passed the credit check of the customer. However, you may need to perform a separate credit check for sales invoices and hold them if the customer's credit check has failed. Depending on your organization's business processes, the time range between shipment creation and invoice generation may be significant, and during this time, the prices may change. Also, services and warranties may be added manually to invoices, rather than to sales orders.

A credit check is performed for each new sales invoice that is created by using the [Invoices](SO_30_30_00.md) \(SO303000\) form. If the customer fails the credit check, the system displays a yellow exclamation point to the left of the **Customer** box and the corresponding warning. However, you may want invoices to be placed on credit hold if they fail the credit check. You can select the **Hold Invoices on Failed Credit Check** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. This indicates to the system that all sales invoices whose customers have failed the credit check should be assigned the *Credit Hold* status. You can change the status by doing either of the following:

-   For an individual invoice, by opening the invoice on the [Invoices](SO_30_30_00.md) form and clicking **Remove Credit Hold**.
-   For any number of invoices, by selecting the *Remove Credit Hold* action on the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form, selecting the needed invoices, and clicking **Process** on the form toolbar.

This initiates a credit check and removes from credit hold the invoices of those customers who have paid their outstanding balances fully or have extended the credit limits.

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

