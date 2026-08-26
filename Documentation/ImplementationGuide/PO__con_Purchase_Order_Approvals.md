# Specific Approvals: Purchase Orders {#_2011994b-501a-405a-82a7-515ebd2ffea2 .concept}

Most companies have established their own processes of reviewing and approving purchase orders. Generally, all purchase orders require at least one approval, and orders with amounts above a particular threshold require at least one additional approval.

With Acumatica ERP, you can set up as many approvals as your company's policies require for any type of purchase order \(normal, drop-ship, project drop-ship, blanket, or standard\). You can configure parallel or multistage approvals of orders.

**Note:** Purchase orders are available if the *Order Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Configuration of Approval for Purchase Orders { .section}

To make it possible to set up the approval functionality of purchase orders, perform the following general steps:

1.  Identify the employees who will be reviewing purchase orders of specific types, and plan the workgroups that will include these employees. Review the organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  Make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  Do the following for each type of purchase orders for which you want to set up approvals:
    -   Determine whether a single approval is required or multiple approvals are required; if multiple approvals are required, determine whether they should be performed in parallel or in multiple stages. If multiple parallel approvals are required, you will need to create multiple approval maps.
    -   Decide upon the rules for the assignment of specific orders to specific employees. Assignment can be done unconditionally or can be based on the specific properties of the order. You can use the same approval map for different purchase order types, or configure separate approval maps if you will have different rules for different purchase order types.
    -   Specify these rules by creating at least one approval map by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
4.  If you plan to use notification templates to notify users about purchase orders that require approval, you need to create the needed notification templates \(from scratch or by modifying predefined templates\) on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  On the **Approval** tab of the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form, you add a row to the table for each type of purchase order that requires approval \(*Normal*, *Drop-Ship*, *Project Drop-Ship*, *Blanket*, or *Standard*\), and select the relevant approval map. Make sure the **Active** check box is selected for each row you have added. Optionally, you can specify a notification template that you have created. Once an order has been assigned to a specific employee or multiple employees for approval, the system generates an email or multiple emails \(based on the template\) that will be sent to the employees to notify them about the order pending approval.

For details on setting up the approval of purchase orders, see [To Set Up the Approval of Purchase Orders](PO__how_Set_Up_Approval.md).

## General Rules for Configuring Parallel Approvals { .section}

If your company requires multiple independent approvals for a purchase order of a specific type, you can configure parallel approvals. In this case, every purchase order of the type is approved by multiple employees in any order; the number of required approvals can depend on the document total, specific vendor, particular item, or other conditions. For example, in a small company, each purchase order might be approved by a buyer, purchasing manager, and CFO independently. In this case, you will need three maps, each of which assigns all orders unconditionally to one of these approvers.

To set up parallel approvals for any purchase order type \(normal, drop-ship, project drop-ship, blanket, or standard\), you need to create approval maps by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, for the type. For each map, the rules can be very simple if all orders are to be approved by the same approver, or more complicated if selection of the approver depends on the properties of the order, such as total amount, number of order lines, or specific products to be purchased.

**Note:** For each order type, you can configure one approval map per required approval. You can also assign the same approval map to multiple order types.

## Parallel Approval Workflow { .section}

After parallel approval has been configured for a specific type of purchase orders in your system, an order of the type will be processed as follows. When a user removes a purchase order from hold by clicking **Remove Hold** on the form toolbar of the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form, the system applies all the applicable approval maps to select the appropriate approvers for the order and changes the status of the order to *Pending Approval*. The system shows the approvers for the order on the **Approvals** tab of the form.

For each email template specified on the **Approval** tab of the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form for the purchase order type, emails are generated and sent to the employees who have been assigned as approvers.

Each approver may approve or reject the order by using either the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form or the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form. If any approver rejects the order, the system assigns the *Rejected* status to it. If your organization's policies allow rejected orders to be edited, the orders can be modified. Any modification removes all approval records for this order, and the process of approval starts again once a user removes the edited purchase order from hold.

**Note:** If the system does not assign an approver to an order while applying the rules of assignment, the order is assigned the *Open* status. For instance, suppose you created an approval map that assigns an approver for orders with amounts greater than $500. If you create an order with an order total of $450, no approver will be assigned to it, and the order will be assigned the *Open* status once you take it off hold.

If a purchase order of a particular type should be approved by multiple employees, the order's status does not indicate whether the order has been approved by some users or has not yet been approved at all. Once an order is assigned for approval, it has the *Pending Approval* status until all approvals have been completed. Detailed information about multiple approvals appears on the **Approvals** tab of the [Purchase Orders](../UserGuide/PO_30_10_00.md) form. The order is assigned the *Open* status only after all required approvals have been received. Open purchase orders may be emailed, or printed and mailed, to the vendor.

## General Rules for Configuring Multistage Approvals { .section}

If a purchase order of a specific type should be approved sequentially by multiple people in your company, you should configure multistage approval of these orders.

**Note:** To configure multistage approval for orders of a specific type, you need to create only one approval map \(which assigns approvers in multiple stages\) and specify this map for orders of this type on the **Approval** tab of the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.

Consider an example of multistage approvals. You might require that all purchase orders in your company be approved in the following stages:

1.  By a buyer \(a member of the *Buyer* workgroup\)
2.  By the purchase manager \(who belongs to the *Purchase Manager* workgroup\)
3.  For orders above $5000 only, by the CFO \(the sole member of the *CFO* workgroup\)

The assignment rules for multistage approval should be designed in such a way that an order, when it is saved, is assigned to *Buyer* workgroup only if its current approval group is *none*, to *Purchase Manager* workgroup when its current approval group is *Buyer*, and to the *CFO* workgroup when its current approval group is *Purchase Manager* and only if the order total is greater than $5000. For each approval level, you can add as many level-specific conditions as needed \(such as whether the order amount exceeds a specific threshold amount or whether it includes specific items\).

## Multistage Approval Workflow { .section}

After multistage approval has been configured in your system, an order of the type will be processed as follows: When a user removes a purchase order from hold by clicking **Remove Hold** on the form toolbar of the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form, the system applies the specified rules to select the initial approver for the order and changes the status of the order from *On Hold* to *Pending Approval*. The system shows the approvers for the order on the **Approvals** tab of the [Purchase Orders](../UserGuide/PO_30_10_00.md) form.

**Note:** Upon the application of the approval map, if an order has not been assigned to anybody, its status changes to *Open*. For instance, if only orders with amounts that exceed a specific threshold should be approved, you need to specify conditions that assign only orders with amounts exceeding this threshold. An order that does not exceed this threshold is given the *Open* status.

Once the initial approver approves the order, the system assigns the next approver, and so forth. Each of the approvers will be able to view the document at the appropriate stage of the approval process on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form when the order is assigned to her or him.

**Note:** If a purchase order is initially approved by an employee from a workgroup positioned higher in the company tree than any of the assigned approvers, or by an assigned approver who belongs to a higher group than the other approvers, the purchase order receives all the necessary approvals simultaneously.

If any of the approvers rejects the order, the system assigns the *Rejected* status to the order. If your organization's policies allow editing of the rejected orders, the orders can be modified. Any modification removes all approval records for this order, and the process of approval can be started again from the beginning.

Once the last approver approves the order, the status of the order changes to *Open*. Open purchase orders may be emailed, printed and sent to the vendor by mail, or sent in both of these ways.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

