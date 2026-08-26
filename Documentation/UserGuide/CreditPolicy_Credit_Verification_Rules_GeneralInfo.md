# Credit Verification Rules: General Information {#_0f697653-47c8-45bd-8be4-d839f1e13636 .concept}

Although accurate evaluation of customers' credit worthiness is required, employees may perform it outside of the system by gathering data on the financial health of potential customers, including their current credit score.

In Acumatica ERP, credit verification is invoked each time a user creates an invoice for a customer in accounts receivable.

## Learning Objectives {#section_olc_hjv_vxb .section}

In this chapter, you will learn how to set up credit verification rules for specific customers.

## Credit Verification in Accounts Receivable {#section_qlc_hjv_vxb .section}

When you create an invoice and the customer fails the credit check, the system checks the value of the **Hold Documents on Failed Credit Check** check box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, which defines what happens to new invoices if the credit check fails:

-   If the check box is selected, you may save the document \(invoice or debit memo\) with the *On Hold* status, but the document cannot be released until the credit violation is resolved.
-   If the check box is cleared, you can save new documents with the *Balanced* status and process them regardless of the credit check result, although the system warns users about customers that have failed their credit check.

## Credit Verification in Sales Orders {#section_slc_hjv_vxb .section}

If the *Inventory and Order Management* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, credit verification is invoked each time an invoice is generated based on a sales order. When you create an invoice by using the [Invoices](SO_30_30_00.md) \(SO303000\) form and the customer fails the credit check, the system checks the value of the **Hold Invoices on Failed Credit Check** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. This check box defines what happens to new invoices if the credit check fails:

-   If the check box is selected, the invoice gets the *Credit Hold* status and can be saved with only the *Credit Hold* or *On Hold* status. For invoices with the *Credit Hold* status, on the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form, you can select remove the credit hold by selecting *Remove Credit Hold* in the **Action** box and clicking **Process** on the form toolbar. When the action is completed, the system saves the invoice with the *Balanced* status and you can process it further.
-   If the check box is cleared, you can save new documents with the *Balanced* status and process them regardless of the credit check result, although the system warns users about customers that have failed their credit check.

Credit verification is invoked for orders that are based on an order type that has the **Hold Document on Failed Credit Check** check box selected on the [Order Types](SO_20_10_00.md) \(SO201000\) form. For an order of such a type, when you create a sales order and try to change the status of the sales order to *Open*, the system performs a credit check of the customer, and if the customer fails the credit check, the document gets the *Credit Hold* status \(and can be saved with only the *Credit Hold* or *On Hold* status\). For orders with these statuses, on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, you can remove credit hold by selecting *Remove Credit Hold* in the **Action** box and clicking **Process**. This initiates credit checks for each order selected, and if the credit check is successful, the orders receive the *Open* status.

## Setup of Credit Verification Rules {#section_vlc_hjv_vxb .section}

You can set up credit verification rules for individual customers and for groups of customers. To provide default credit verification settings for groups of similar customers, you can specify credit rules by customer class on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. If needed, you can disable or redefine the default rules for individual customers by using the [Customers](AR_30_30_00.md) \(AR303000\) form.

In the **Credit Verification** box on these forms, you can select one of the following options:

-   *Credit Limit*: If the customer's total outstanding balance is greater than the amount specified in the **Credit Limit** box, the system generates a warning. If the value in the **Over-Limit Amount** box on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form is also exceeded, the system puts new invoices on hold or issues a warning, depending on the state of the **Hold Documents on Failed Credit Check** check box and on the state of the **Hold Invoices on Failed Credit Check** check box if sales orders are used.
-   *Days Past Due*: Credit terms are defined and due dates are calculated based on the customer's terms. If the customer has a document that is past due by more days than the number of days past due specified in the **Credit Days Past Due** box, the system puts new invoices on hold or issues a warning, depending on the state of the **Hold Documents on Failed Credit Check** check box and on the state of the **Hold Invoices on Failed Credit Check** check box if sales orders are used.
-   *Limit and Days Past Due*: Both types of rules are applied: The customer's debt should not exceed the credit limit, and the payment date should not exceed the due date of an invoice by more days than the specified number of days past due. If either rule is violated \(or both rules are\), the system puts new invoices on hold or issues a warning, depending on the state of the **Hold Documents on Failed Credit Check** check box and on the state of the **Hold Invoices on Failed Credit Check** check box is sales orders are used.
-   *Disabled*: No credit rules are to be applied.

You can view the unused credit limit of a customer in the **Available Credit** box on the **General** tab of the [Customers](AR_30_30_00.md) form.

## Recalculation of Customer Balances {#section_amc_hjv_vxb .section}

You can use the [Recalculate Customer Balances](AR_50_99_00.md) \(AR509900\) form to recalculate customer balances and match them with the account balances stored in the database. In the Selection area of the form, you select a particular customer class or leave the **Customer Class** box blank to view the customers of all classes.

You can run this process if there is any discrepancy between the customer balance and the total amount of all the released customer documents.

**Parent topic:**[Configuring Credit Verification Rules](../UserGuide/CreditPolicy_Credit_Verification_Rules_Mapref.md)

