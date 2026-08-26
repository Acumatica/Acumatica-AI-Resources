# Approvals: Reassignment of Approvals {#_4e96c0c9-51b6-4ced-990c-6cc4fe4492e8 .concept}

In Acumatica ERP, you can reassign your approval requests to other users or create additional approval requests as exceptions to the normal approval flow on a temporary basis.

## Enabling Reassignment of Approvals { .section}

Approval requests assigned to a particular employee can be reassigned only if the **Allow Reassignment of Approvals** check box is selected on the **Rule Actions** tab of the [Approval Maps](EP_20_50_15.md) \(EP205015\) form for the rules in the approval maps that appoint this employee as an original approver. If this check box is cleared for a rule, the system will not allow you to change the approver that has been assigned in accordance with this rule.

## Reassigning Approvals { .section}

To reassign an approval request to another user, first you need to select the approval request on the [Approvals](EP_50_30_10.md) \(EP503010\) form or open the entry form with the record that requires your approval, and then you need to click the **Reassign** command on the form toolbar. As a result, the **Reassign Approval** dialog box opens, where you can specify a new approver.

If the **Ignore Approver's Delegations** check box is selected in the dialog box, the system will assign the selected approval requests to the selected new approver but not to their delegate, even if the new approver is unavailable and has a delegation set up for the current date.

If the **Ignore Approver's Delegations** check box is cleared and if the new approver is not available and has a delegation set up for the current date, the system will reassign the selected approval requests to the delegate if the delegate is available. If the delegate is unavailable, the system will reassign the requests to the delegate of the delegate. The system will continue the search in this way until it assigns an approver that has no active delegations set up for the current date or it detects a loop in the chain of delegations \(in which case an error message will prompt you to specify a different approver\).

For more information about delegates, see [Approval Configuration: Delegation of Approvals](../ImplementationGuide/Approvals_Delegation_of_Approvals.md).

**Parent topic:**[Organization Structure](../UserGuide/OS_00_00_00.md)

