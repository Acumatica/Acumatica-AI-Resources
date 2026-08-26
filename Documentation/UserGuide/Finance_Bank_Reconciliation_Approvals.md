# Bank Reconciliation: Approval of Reconciliation Statements {#_9698f275-2fea-43d8-b0ae-0da04013faf2 .concept}

System administrators can set up the approval of reconciliation statements to fit the organization's internal control and financial audit procedures. For details on the setup of reconciliation statement approvals, see [Specific Approvals: Reconciliation Statements](../ImplementationGuide/config_Approvals_Reconciliation_Statements.md).

This functionality is available in the system if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If this feature is enabled, the workflow of reconciliation statement processing includes the following steps:

1.  The user working with the reconciliation statement clicks **Remove Hold** on the form toolbar of the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form.
2.  The system checks whether any approval maps are active on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form and are applicable to the reconciliation statement.
3.  If no approval maps are found \(or approval is not applicable for this reconciliation statement\), the system sets the status of the reconciliation statement to *Balanced*, and no further workflow steps are performed related to approvals.
4.  If there is at least one approval map, the system does the following:
    1.  Checks whether the reconciliation statement is balanced. If it is not, the system displays an error message, and the reconciliation statement's status remains *On Hold*.
    2.  If the reconciliation statement is balanced, sets its status to *Pending Approval*.
    3.  Adds a record with the *Pending* status to the **Approvals** tab for each approver on the [Reconciliation Statements](CA_30_20_00.md) form.
    4.  Saves the reconciliation statement.
5.  If an approver rejects the reconciliation statement, the system does the following:
    1.  Opens the **Enter Reason** dialog box so that the approver can enter the reason if the **Reason for Rejection** box contains *Is Optional* or *Is Required* for the approval map on the **Rule Actions** tab of the [Approval Maps](EP_20_50_15.md) \(EP205015\) form.
    2.  Sets the status of the reconciliation statement to *Rejected* and saves the statement.
    3.  Sets the status of the approval record to *Rejected* on the **Approvals** tab of the [Reconciliation Statements](CA_30_20_00.md) form.
6.  If an approver approves the reconciliation statement, the system does the following:
    1.  Opens the **Enter Reason** dialog box so that the approver can enter the reason if the **Reason for Approval** box contains *Is Optional* or *Is Required* for the approval map on the **Rule Actions** tab of the [Approval Maps](EP_20_50_15.md) form.
    2.  Sets the status of the approval record to *Approved* on the **Approvals** tab of the [Reconciliation Statements](CA_30_20_00.md) form.
    3.  If the current approver is the last one, sets the status of the reconciliation statement to *Balanced*. If there are additional approvers, the reconciliation statement maintains the *Pending Approval* status.
    4.  Saves the reconciliation statement.

**Parent topic:**[Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md)

