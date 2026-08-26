# Specific Approvals: Sales Orders {#_9073dc65-9824-4a3c-b924-c16ddd75728c .concept}

Most businesses have their own processes of reviewing and approving sales orders. Your organization can configure the approval functionality of specific sales orders—for instance, configuring approval to be required for orders with greater than average amounts or orders that include specific items.

You can configure the approval functionality for orders of any order type \(predefined or custom\).You can set up as many approvals for specific types of sales orders as your company's policies require.

## Approval of Sales Orders { .section}

If approval has been configured for a sales order of a particular type, when the order is taken off hold, the system assigns the order the *Pending Approval* status and selects an approver for the order, in accordance with the approval map or maps specified for the order type.

**Note:** An order with the *Pending Approval* or *Open* status cannot be edited.

Once each of the assigned employees approves the order on either the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form or the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form, the order is assigned the *Open* status. If any approver rejects the order, the order is assigned the *Rejected* status. If the order is then edited and taken off hold, the system begins the approval process again, assigning it for approval according to the approval map or maps specified for the type.

**Note:** If approval and credit verification are configured for an order type, and the credit verification has failed for the order, the system will assign the sales order the *Credit Hold* status once this order is approved.

## Configuration of Approval for Sales Orders { .section}

To set up the approval functionality of sales orders, you perform the following general steps:

1.  You identify the employees who will be reviewing sales orders of specific types, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  For each type of order for which approvals are required, you determine the rules for the assignment of specific orders to specific employees. Assignment can be done unconditionally or can be based on the specific properties of the order. You decide whether a single approval is required or multiple approvals are required; if multiple approvals are required, you determine whether they should be performed in parallel or in multiple stages. You then specify these rules by using approval maps, which are created on the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
4.  Optional: You create any needed email templates to notify approvers about new orders pending approval. You can create email templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  On the **Approval** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form, in the **Sales Orders** table, you add a row to the table for each type of order that requires approval, and you select the relevant approval map. Make sure the **Active** check box is selected for each row you have added. Optionally, specify the notification template to be used for any order type.

For details on setting up the approval of sales orders, see [To Set Up the Approval of Sales Orders](SO__How_Set_Up_Approval.md).

## General Rules for Configuring Parallel Approvals { .section}

If your company requires multiple independent approvals for a sales order of a specific type, you can configure parallel approvals. In this case, every order of the type is approved by multiple employees in any order; the number of required approvals can depend on the document total, specific customer, particular item, or other conditions. For example, suppose that in a company, each sales order must be approved by a senior accountant, the manager of the accounting department, and the CFO independently. In this case, you will need three maps, each of which assigns all orders unconditionally to one of these approvers.

To set up parallel approvals for any order type, you will need multiple approval maps, developed by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, for the type. For each map, the rules can be very simple if all orders of the type are to be approved by the same persons, or more complicated if the approver is selected based on the properties of the order, such as the total amount or the specific products being sold. For more information on creating an approval map, see [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).

**Note:** For each order type, you can configure one approval map per required approval. You can also assign the same approval map to multiple order types.

## Parallel Approval Workflow { .section}

After parallel approval has been configured for a specific type of sales order in your system, an order of the type will be processed as follows: When a user creates a new order of the type on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form and removes it from hold, the system uses all the applicable approval maps to select the appropriate approvers for the order and changes the status of the order to *Pending Approval*. The system shows the approvers for the order on the **Approvals** tab of the form.

For each email template specified on the **Approval** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form for the order type, emails are generated and sent to the employees who have been assigned as approvers.

Each approver may approve or reject the order by using the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form. If any approver rejects the order, the system assigns the *Rejected* status to it. If your organization's policies allow rejected orders to be edited, the orders can be modified. Any modification removes all approval records for this order, and the process of approval starts again once the sales order is removed from hold.

**Note:** If the system does not assign an approver to an order while applying the rules of assignment, the order is assigned the *Open* status. For instance, suppose that you designed an approval map that assigns an approver for orders with amounts greater than $500. If you create an order with an order total of $450, no approver will be assigned to it, and the order will be assigned the *Open* status once you take it off hold.

The order is assigned the *Open* status only after all required approvals \(those specified on the **Approval** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) form\) have been performed. Open sales orders may be emailed, or printed and mailed, to the customer.

## General Rules for Configuring Multistage Approvals { .section}

If a sales order of a specific type should be approved sequentially by multiple employees \(perhaps at different levels of the company hierarchy\) in your company, you should configure multistage \(sequential\) approval of these orders.

**Note:** To configure multistage approval for orders of a specific type, you need to create only one approval map \(which assigns approvers sequentially\) and specify this map for the order type on the **Approvals** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form.

Consider an example of multistage approvals. You might require that all sales orders in your company be approved in the following stages:

1.  By a senior accountant \(with senior accountants belonging to *Workgroup1*\)
2.  By the manager of the accounting department \(who belongs to *Workgroup2*\)
3.  For orders above $5000 only, by the CFO \(the sole member of *Workgroup3*\)

The assignment rules for multistage approval should be designed so that when an order is saved, it is assigned to *Workgroup1* only if its current approval group is *none*, to *Workgroup2* when its current approval group is *Workgroup1*, and then to *Workgroup3* when its current approval group is *Workgroup2* and its amount is greater than $5000. For each approval level, you can add conditions if needed \(such as whether this order is from a specific customer, for a specific item, or exceeding a particular document amount\).

## Multistage Approval Workflow { .section}

After multistage approval has been configured in your system, an order of the type will be processed as follows: When a user removes a sales order from hold, the system applies the specified rules to select the initial approver for the order and changes the status of the order from *On Hold* to *Pending Approval*. The system shows the approvers for the order on the **Approvals** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

**Note:** Upon the application of the approval map, if an order has not been assigned to anybody, its status changes to *Open*. For instance, if only orders with amounts that exceed a specific threshold should be approved, you need to specify conditions that assign only orders with amounts exceeding this threshold. An order that does not exceed this threshold is given the *Open* status.

Once the initial approver approves the order, the system assigns the next approver, and so forth. Each of the approvers can view the document at the appropriate stage in the approval process on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form when the order is assigned to her or him.

**Note:** If a sales order is initially approved by an employee from a workgroup positioned higher in the company tree than any of the assigned approvers, or by an assigned approver who belongs to a higher group than the other approvers, the order is considered to have received all the necessary approvals.

If any of the approvers rejects the order, the system assigns the *Rejected* status to the order, and the order will not appear in the lists for other approvals. If your organization's policies allow the editing of the rejected orders, the orders can be modified. Any modification removes all approval records for this order, and the assigning of approvers can be started again from the beginning.

Once the last approver approves the order, the status of the order changes to *Open*. Open orders cannot be edited; they can be sent to the customer via email, printing and mailing, or both methods.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

