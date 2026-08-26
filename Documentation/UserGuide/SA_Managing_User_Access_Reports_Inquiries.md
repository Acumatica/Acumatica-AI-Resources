# User Access: Related Reports and Forms {#_f576fa71-01fc-40c4-994c-e4bbf7ca7c11 .concept}

In the following sections, you can find details about the reports and forms you may want to review to gather information about user access configuration.

**Attention:** If you don’t see a particular report or form that is described, you may have signed in to the system with a user account that doesn’t have access rights to the report or form. Contact your system administrator to obtain access to any needed reports or forms.

## Reviewing a User’s Restriction Level to a System Object { .section}

You can view the user access rights for a particular form, form container, or form element by using the [Access Rights by User](SM_20_10_55.md) \(SM201055\) form. In the Summary area of the form, you select the user account for which you want to view the access level. In the left pane, you select the node that contains the nested objects \(forms, form containers, or form elements\) you are interested in. Then in the right pane, you select the form, form container, or container; you then click **View Roles** on the pane toolbar. The system opens the **View Roles** dialog box, where you can view the access rights of the roles to the selected object in the **Computed Access Rights** column.

## Reviewing a Role’s Configuration { .section}

If you need to modify access to multiple forms for a single role, we recommend that you review the role's configuration by using the [Access Rights by Role](SM_65_15_00.md) \(SM651500\) report. The report lists the access rights configured for every form in the system for the selected role. You can export the report data to Excel and prepare the list of needed modifications there.

## Reviewing Access Rights to a Form { .section}

If you need to modify access rights to a single form for multiple roles, we recommend that you review access rights to the form by using the [Access Rights by Screen](SM_65_17_00.md) \(SM651700\) report. For the form you select, the report lists the access rights configured for every role in the system. You can export the report data to Excel and prepare the list of needed modifications there.

## Reviewing the Available Roles { .section}

For monitoring access configuration, you can review the list of roles available in the system and the user accounts assigned to each role by using the [Role List](SM_65_10_00.md) \(SM651000\) report.

## Reviewing the Roles Assigned to Users { .section}

To ensure that users are assigned only roles that support their current job responsibilities, you can review a list of the user accounts available in the system and the roles assigned to each user account on the [User List](SM_65_05_00.md) \(SM650500\) report.

## Auditing User Activity { .section}

If you need to audit the activity of a particular user, you can track the following information on the **Statistics** tab of the [Users](SM_20_10_10.md) \(SM201010\) form:

-   The date and time of the last sign-in
-   The most recent date when the account was temporarily locked out
-   The date and time of the most recent password change
-   The number of unsuccessful attempts the user made to sign in to the account

## Reviewing the Access History of Users { .section}

On the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, you can select the types of events the system will monitor and specify the time period for which the audit trail must be kept.

You use the [Access History](../Shared/../UserGuide/SM_20_10_45.md) \(SM201045\) form to view the audit trails. The audit trail for each event type shows the time when the event took place, the user who performed the operation, the IP address from which the user signed in to the system, and other settings, depending on the event type. You can narrow the range of the listed events by user, date range, and operation type.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

