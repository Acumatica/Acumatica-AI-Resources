# Approval Configuration: Approval Maps {#_d2db53f8-d3ed-47fd-b34e-c743a59a4b83 .concept}

If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you can use approval maps to assign records \(such as cash transactions, expense claims, time cards, and purchase orders\) to authorized employees for approval.

## Supported Types of Maps { .section}

Acumatica ERP supports multiple types of maps that may include any number of steps, rules, and conditions for assigning a record to a qualified employee for processing or for approval. The [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) \(EP205500\) form is the staring point for creating maps and viewing the maps that currently exist in the system. You can click the link in the **Map Name** column to open the map on the form where it was created.

Each map listed on the form has a map type, which can be one of the following:

-   *Approval Map*: Used for assigning approvers to records of a particular entity type, such as expense claims, daily field reports, engineering change requests, or accounts payable bills.
-   *Assignment Map*: Used for assigning such records as the following to owners for future processing: business accounts, cases, leads, purchase receipts, and purchase requests.
-   *Assignment and Approval Map*: Used for either assigning records to owners or assigning approvers to documents. Maps of this type were created in earlier versions of Acumatica ERP, when the same form was used for both approval maps and assignment maps. This type remains supported by the system to avoid data loss.

By clicking the **Add Approval Map** button on the form toolbar of the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) form, you can open a separate entry form, [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\), where you can start creating a new approval map.

## Approval Maps { .section}

You can create a new approval map or modify an existing one by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.

An approval map consists of steps and rules. In the **Steps** pane, you can create any number of steps, each of which may include any number of rules. The steps of a map may be executed in a sequential, parallel, or sequential-parallel fashion.

For each step, you need to select the action that should be performed if no approver has been assigned in accordance with the rules specified for this step: the record becomes automatically approved, it becomes automatically rejected, or the next step \(if any\) gets executed. Also, you can specify whether a step is to be executed in any case or only if no approvers have been found at all previous steps.

For each rule, you specify conditions, which the system checks for the document, and actions to be performed if the conditions are met. You can configure a rule so that after one approver approves the document, the system waits until other appointed approvers \(if any\) also approve the document, executes the next step in the approval map, or marks the document as approved. Also, you can specify for each rule whether an approver must enter a comment each time they approve or reject a document of the particular type.

**Attention:** If an approval map contains multiple rules and the rules are configured in such a way that the same approver could be assigned multiple times to approve one document, the system will create at most one approval request per document for this approver.

If a condition, step, or rule is no longer required in an approval map, you can temporarily deactivate it by clearing the **Active** check box in the settings of that condition, step, or rule on the [Approval Maps](../UserGuide/EP_20_50_15.md) form. A deactivated step or rule is marked with the **\(Inactive\)** prefix in the **Steps** pane.

**Tip:** If you are creating rules for assigning records for approval, records that pass through the rules unassigned are considered in the system to be approved, so you do not necessarily have to create complete conditions. Instead, you define the rules to assign only records that have specific properties.

For example, suppose that in a small business, all purchase orders with an amount greater than $1000 may need to be approved by the CEO. In this case, you would create rules to assign all purchase orders with an amount that exceeds $1000 to a specific user \(the CEO\) for approval, while all other orders do not need to be assigned.

When approvals have been configured for a particular record type, the approval details are shown on the approval-related tab \(labeled as **Approval** or **Approvals**\) of the corresponding entry form. While viewing a record on this form, users can go to this tab to view all approvers assigned to the record, along with the approval date, status, and reason for each approver. By using the **Column Configuration** dialog box, users can also view columns showing which approval map and which step and rule in this map caused this approver to be assigned.

## Map Execution Issues { .section}

Any issues that occur during the execution of an approval map are recorded in the Acumatica ERP trace log. You can open the trace log by clicking **Help** &gt; **Trace** on the form title bar.

## Document Approval { .section}

The appointed approvers can approve documents by using the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form; only users authorized to approve documents should have access rights to this form.

**Tip:** Alternatively, a user can approve a record by opening it on the appropriate entry form if they have the needed access rights to the form.

## Reassignment of Approvals { .section}

In Acumatica ERP, employees can reassign their approval requests to other employees or create additional approval requests as exceptions to the normal approval flow on a temporary basis.

Approval requests assigned to a particular employee can be reassigned to an another employee only if the **Allow Reassignment of Approvals** check box is selected on the **Rule Actions** tab of the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form for the rules in the approval maps that appointed this employee as an original approver. If this check box is cleared for a rule, the system will not allow the employee to change the approver that has been assigned in accordance with this rule.

For more information about the reassignment of approvals, see [Approval Configuration: Delegation of Approvals](Approvals_Delegation_of_Approvals.md).

**Parent topic:**[Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md)

