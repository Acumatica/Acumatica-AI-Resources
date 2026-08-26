# User Roles: Calculation of the Restriction Level for a User {#_5b4ebfa6-7bb0-43be-a191-83843e9f808d .concept}

In this topic, you will learn how the system calculates a restriction level to a system object for a user with multiple roles assigned.

## Calculation of the Restriction Level to Forms {#_2708bbea-95b1-4a47-8cc5-3bbcb3dc961f .section}

If a user has multiple roles assigned and the roles have different restriction levels to a system object, the following general rule is used: Acumatica ERP applies the most permissive level among the roles.

For example, suppose that a user is assigned the *Employee* and *Sales Manager* roles. The *Employee* role has the *Revoked* restriction level for the **Inventory** workspace, and the *Sales Manager* role has the *Granted* restriction level for the same workspace. With these settings, the user has the *Granted* restriction level to the forms in the **Inventory** workspace. The following table shows how the system calculates the final restriction level to forms of the workspace.

|User Role|Restriction Level|User’s Final Level to Forms|
|---------|-----------------|---------------------------|
|*Employee*|*Revoked*|*Granted*|
|*Sales Manager*|*Granted*|

## Calculation of the Restriction Level to a Form’s Nested Objects with the Inherited Level { .section}

If a user has multiple roles assigned and the roles have the *Inherited* restriction level to a particular container or form element, the resulting level is the most permissive level of the system object at a higher level for which a restriction level is specified explicitly—the form \(for a container\) or the form element container \(for a form element\).

Suppose that a user is assigned the *Employee* and the *Accountant* user roles. The *Employee* role has the *Revoked* restriction level to the [Customers](AR_30_30_00.md) \(AR303000\) form, and the *Accountant* role has the *Edit* level to this form. The restriction level both roles have to the form elements is *Inherited*. The user with these roles, then, has the *Edit* access level to the [Customers](AR_30_30_00.md) form and its elements. The following table shows how the system calculates the final restriction level to nested objects with the inherited level.

|User Role|Restriction Level to a Form|Restriction Level to the Form’s Nested Objects|User’s Final Level to the Form and its Nested Objects|
|---------|---------------------------|----------------------------------------------|-----------------------------------------------------|
|*Employee*|*Revoked*|*Inherited*|*Edit*|
|*Accountant*|*Edit*|*Inherited*|

## Calculation of the Restriction Level to a Form’s Nested Objects with a Specified Level { .section}

If a user has multiple roles assigned and you have explicitly specified a restriction level to a particular form element container or form element for at least one role \(while the other roles have the *Inherited* level to this system object\), then the resulting level of access rights is the most permissive among the roles with explicitly defined restriction levels. \(In making this determination, the system ignores the levels of the roles with the *Inherited* level of access rights.\) This algorithm is used to optimize the speed of loading the form.

Suppose that a user is assigned the *Employee*, *Warehouse Worker*, and *Sales Assistant* user roles. All these roles have the *Insert* restriction level to the [Receipts](IN_30_10_00.md) \(IN301000\) form. For the **Release** button on this form, the *Employee* role has the *Inherited* restriction level \(which the system ignores\), the *Warehouse Worker* role has the *Revoked* level, and the *Sales Assistant* role has the *View Only* level. As a result, the user has the *View Only* restriction level \(the most permissive level of the two explicitly defined levels\) to this button. The following table shows how the system calculates the final restriction level to nested objects with a specified level.

|User Roles|Restriction Level to the Form|Restriction Level to a Nested Object|User’s Final Level to the Nested Object|
|----------|-----------------------------|------------------------------------|---------------------------------------|
|Employee|*Insert*|*Inherited*|*View Only*|
|Warehouse Worker|*Insert*|*Revoked*|
|Sales Assistant|*Insert*|*View Only*|

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

