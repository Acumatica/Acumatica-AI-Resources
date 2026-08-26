# User Roles: Restriction Level Options {#_488983bb-4b1c-4ddb-8341-61e58f000fda .concept}

Users are assigned to roles, and you give these roles the appropriate access rights to system objects— forms, containers of form elements, form elements, and wikis. By defining access rights for a system object, you set the restriction level \(that is, the level of access rights\) a user will have for this object. With Acumatica ERP, you can control access down to the control of form elements, such as buttons, text boxes, and check boxes.

This topic describes the restriction levels available to different system objects.

**Tip:** You can observe the tree of system objects in the left pane of forms related to user access configuration, such as [Access Rights by Screen](SM_20_10_20.md) \(SM201020\), [Access Rights by Role](SM_20_10_25.md) \(SM201025\), and [Access Rights by User](SM_20_10_55.md) \(SM201055\).

## Access to a Workspace { .section}

In Acumatica ERP, you do not set up access to a particular workspace itself. Instead, by setting the access rights \(that is, restriction level\) for the workspace, you set the access for all the nested objects. If you change the access rights to any nested object of a workspace, the system will change the access rights to *Multiple Rights* at the workspace level.

The system displays a workspace with *Multiple Rights* on the main menu. On the workspace dashboard, the system displays only forms for which access is not restricted for a particular user.

Keep in mind that a form may belong to multiple workspaces. For such a form, if you set the access rights to any of these workspaces \(that is, to all forms in the workspace\), the system will assign this form the restriction level set most recently for one of these workspaces. The system will then change the access rights for other workspaces to which the form belongs to *Multiple Rights*, if these workspaces had different access rights. For example, the [Vendor Details](AP_40_20_00.md) \(AP402000\) form can be accessed from the **Payables** and **Purchases** workspaces. Suppose that both workspaces have the *Granted* restriction level assigned to the *Purchasing* role. Further suppose that you change the level for the form in the **Payables** workspace to *Revoked*. The system displays the new level for the form in the **Purchases** workspace and changes the access level to *Multiple Rights* for both workspaces.

The following table summarizes the restriction levels that a role can have to a specific workspace—that is, to all forms that belong to a particular workspace of Acumatica ERP.

|Restriction Level|Description|
|-----------------|-----------|
|*Multiple Rights*|Means that the role has different restriction levels to the nested objects of the workspace. If you change the level for the workspace from *Multiple Rights* to some other option, the system will automatically apply the new level to all nested objects.|
|*Revoked*|Denies access to all the forms in the workspace for the role. That is, all forms will get the *Revoked* restriction level. For users with the role, the menu item for the workspace does not appear on the main menu, so they cannot navigate to the workspace and its forms.|
|*Granted*|Allows the role complete access to all the forms in the workspace. That is, these forms will get the *Delete* restriction level. You can, however, limit or revoke access to particular forms within the workspace for the role; if you do, the system will change the access rights for the workspace to *Multiple Rights*.|

**Attention:** You can define access rights to individual forms in the **Hidden** node \(which cannot be accessed from the main menu\), but not to the node itself.

## Access to Reports and Generic Inquiries { .section}

A workspace may include multiple reports and inquiries along with the Acumatica ERP forms. Available restriction levels depend on tools used to develop a report or an inquiry as follows:

-   Reports built with the Report Designer application and inquiries created using the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form have the same list of available restriction levels that roles can have to workspaces.
-   Reports built with the Analytical Report Manager toolkit and inquiries developed using C\# have the same list of available restriction levels that roles can have to forms.

## Access to a Form {#section_whj_vn2_wj .section}

Within each workspace, you can set the access rights that roles have to Acumatica ERP forms, which affects what users with those roles can access. The restriction level to the form is inherited by the entities and records that can be created by using the form.

The following table summarizes the restriction levels that a role can have to a specific form.

|Restriction Level|Description|
|-----------------|-----------|
|*Revoked*|Denies access to the form and its functionality for the role.|
|*View Only*|Gives the role restricted access to the form and its functionality. This level allows users with the role to view the form and any records associated with the form \(in drop-down lists on other forms\).

 This level forbids users with the role from editing details about any record, creating new records or entities of the type, and deleting records.

|
|*Edit*|Gives the role restricted access to the form and its functionality. This level allows users with the role to view the form, select records, and edit details about any record.

 This level forbids users with the role from creating new records or entities of the type, and from deleting records.

 The **Clipboard** button is available on the form toolbar for users with the role.

|
|*Insert*|Gives the role restricted access to the form and its functionality. This level allows users with the role to view the form, select records, edit details about any record, and create new records or entities of the type.

 This level forbids users with the role from deleting records.

 The **Clipboard** and **Insert** buttons are available on the form toolbar for users with the role.

|
|*Delete*|Gives the role complete access to the form and its functionality. This level encompasses the capabilities of the *View Only*, *Edit*, and *Insert* levels, while also giving users with the role the ability to delete records.

 For users with the role, the **Clipboard**, **Insert**, and **Delete** buttons are available on the form toolbar.

|

## Access to Containers of Form Elements { .section}

Each form includes containers of elements, such as nested forms, tabs, and grids. Each container includes multiple elements and actions. You can restrict access to any of these containers on the form. The restriction level a role has to the container is inherited by the entities and records created by using the container, if applicable. For example, if you permit access for a user role to a grid, a user with this role can access all records in this grid. By default, containers inherit the restriction level of the form to which they belong.

The following table summarizes the restriction levels that a role can have to a specific container of form elements.

|Restriction Level|Description|
|-----------------|-----------|
|*Inherited*|Indicates that the role's access to the container was not explicitly specified and is inherited from its form.|
|*Revoked*|Denies access to the container for users with the role and hides it from the form for these users.|
|*View Only*|Gives the role restricted access to the container and its functionality. This level allows users with the role to view the container and any records associated with the container \(in drop-down lists on other forms\), if applicable.

 The level forbids users with the role from editing details about any record, creating new records or entities of the type, and deleting records, if applicable.

|
|*Edit*|Gives users with the role restricted access to the container and its functionality. This level allows users with the role to view the container, select records, and edit details about any record, if applicable.

 The level forbids users with the role from creating new records or entities of the type, and from deleting records, if applicable.

|
|*Insert*|Gives the role restricted access to the container and its functionality. This level allows users with the role to view the container, select records, edit details about any record, and create new records or entities of the type, if applicable.

 This level forbids users with the role from deleting records, if applicable.

|
|*Delete*|Gives the role complete access to the container and its functionality. This level encompasses the capabilities of the *View Only*, *Edit*, and *Insert* levels, while also giving users with the role the ability to delete records, if applicable.|

## Access to Form Elements { .section}

By default, the restriction level a role has to the form elements and actions is inherited from the container of form elements to which the elements and actions belong. In most cases, a restriction level for a container is not explicitly specified; it is set to *Inherited*. Thus, before changing a restriction level to an element or an action, you should explicitly specify a restriction level for the parent container. Then you can set access to the form elements and actions.

The following table summarizes the restriction levels that a role can have to a specific form element.

|Restriction Level|Description|
|-----------------|-----------|
|*Inherited*|Indicates that the role's access to the element was not explicitly specified and is inherited from its container of form elements.|
|*Revoked*|Denies the role access to the element and hides the element. A user with the role will not see the element on the form. However, if an error or a warning message is related to the element, the element will be displayed to the user.|
|*View Only*|Makes the element read-only for users with the role. A user with the role will see the element on the form but will not be able to use it.|
|*Edit*|Allows the use of the element for users with the role.|

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

