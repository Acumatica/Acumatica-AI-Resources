# Approval Configuration: Delegation of Approvals {#_44d8c093-69a0-47f7-bee4-85490d905d24 .concept}

In Acumatica ERP, a temporary delegation rule may be created for an employee. During the specified period, all approval requests that would normally be assigned to this employee \(in accordance with a rule of an approval map\) may be delegated to another employee. This can help your organization to keep its approval flow running smoothly even if the original approver assigned through an approval map is temporarily unavailable, without administrators having to update existing approval maps.

**Attention:** Delegates must have appropriate access rights to view and approve the records reassigned to them for approval.

## Configuring the Delegation of Approvals { .section}

To set up the delegation of approvals for a particular employee, on the **Delegates** tab of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you need to add rows to the table with delegation rules for the employee by doing the following:

-   In the **Delegation Of** column, you select *Approvals* to indicate that the delegation rule applies to approvals.
-   In the **Delegated To** column, you select the employee to whom you want to delegate the approval activities of the original assignee \(that is, the employee selected in the Summary area of this form\).
-   In the **Starts On** column, you specify the starting date of the delegation period during which approval requests can be reassigned to the specified delegate.
-   In the **Expires On** column, you specify the date after which the delegation rule is no longer applicable. After this date, any previously reassigned approval requests that have not yet been processed are assigned back to the original assignee.

If you want to temporarily deactivate a rule, clear the **Active** check box in the row with this rule.

A user can use the **Delegates** tab of the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form in the same manner to configure delegation rules for themselves \(that is, for the currently signed-in user account\).

## Processing Delegation Rules {#section_nyx_34p_h1c .section}

To apply previously configured delegation rules, you must use the [Reassign Delegated Activities](../UserGuide/EP_50_30_20.md) \(EP503020\) form. This form can also be used to return delegated activities to the original approver if the relevant delegation rules are no longer effective.

By clicking **Process** or **Process All** on the form toolbar, you can run the reassignment of only selected records or of all listed records, respectively. Each included record is processed as follows:

-   If the current date is within the delegation period \(determined by the dates in the **Starts On** and **Expires On** columns\), the record is reassigned to the employee specified in the **Delegated To** column.
-   If the current date is outside of the delegation period, the record is reassigned to the employee specified in the **Original Assignee** column.

You can automate the reassignment of delegated activities through the use of automation schedules, which you set up on the [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form. You can use the predefined automation schedule, *Reassign delegated activities*, that is available for the [Reassign Delegated Activities](../UserGuide/EP_50_30_20.md) form; this schedule is set up to run hourly.

## Viewing a User's Reassigned Records {#section_pyx_34p_h1c .section}

On the **Reassigned** filter tab of the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form, a user can view a list of the records that were originally assigned for approval to the currently signed-in user but are now assigned to a different approver.

**Parent topic:**[Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md)

