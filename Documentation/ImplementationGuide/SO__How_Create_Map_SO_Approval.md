# To Create a Map for Sales Order Approval {#_54e082bf-3094-4522-8ea2-8ace18e9c3f6 .task}

If in your company, sales orders of specific type must be approved, you can configure the approval of sales orders in Acumatica ERP. In general, you will need an approval map created on the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.

The rules can be very simple if all orders are to be assigned for approval to the same employee, or more complex if the selection of the approver depends on the properties of the order, such as the total amount, the specific products to be sold, or the credit settings of the customer.

In this topic, we demonstrate how to create an approval map for the following simple example: In a small company, sales orders over $10,000 of the *SO* type must be approved by the CFO if the customer credit limit is less than 50,000.

## Before You Proceed { .section}

Before creating an approval map, if records will be assigned to a workgroup, you need to review the company tree structure and decide whether you need to add the workgroups that will be involved in the process of sales order approval. For our example, the company tree should have the *CFO* workgroup.

Also, make sure that user and employee accounts have been created for each of the people involved in the approval of sales orders and that workgroups with the approvers as workgroup members have been created.

## To Create an Approval Map { .section}

1.  Open the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) \(EP205500\) form.
2.  On the form toolbar, click **Add Approval Map**. The [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form opens.
3.  In the **Name** box in the Summary area of the form, type a name for a new approval map, for example, `Approval of Orders Over 10000`.
4.  In the **Entity** box, select *Sales Orders*.
5.  Click **Save** on the form toolbar. Notice that the map name is shown now in the **Map** box.
6.  In the **Steps** pane, click **Add Step**.
7.  Select the newly added step and do the following in the right pane:
    1.  In the **Description** box, type `Orders Over 10000`.
    2.  In the **If No Approver Found** box, select *Approve Document*.
    3.  In the **Execute Step** box, select *Always*.
8.  In the **Steps** pane, select the rule that has been added automatically under the first step.
9.  In the right pane, do the following:
    1.  In the **Description** box, type `Assign to CFO`.
    2.  On the **Conditions** tab, add a row with the following settings specified:
        -   **Entity**: *Sales Order*
        -   **Field Name**: *Order Total*
        -   **Condition**: *Is Greater Than*
        -   **Value**: `10000`
        -   **Operator**: *And*
    3.  On the same tab, add another row with the following settings specified:
        -   **Entity**: *Customer*
        -   **Field Name**: *Credit Limit*
        -   **Condition**: *Is Less Than or Equal To*
        -   **Value**: `50000`
    4.  On the **Rule Actions** tab, specify the following settings:
        -   **Approver**: *Employee*
        -   **Workgroup**: *CFO*
        -   **On Approval**: *Approve Document*
10. Click **Save** on the form toolbar.

After creating this map, you need to specify it for the *SO* order type on the **Approvals** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form. \(For instructions on the use of this form, see [To Set Up the Approval of Sales Orders](SO__How_Set_Up_Approval.md).\)

With these configuration steps performed, the system will assign each new order over $10,000 to the CFO if the customer credit limit is less than $50,000.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

