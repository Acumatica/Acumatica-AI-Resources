# User Roles: General Information {#_6aca93da-a187-4117-ae0a-bc7bbd39b2ce .concept}

User roles in Acumatica ERP are sets of access rights to system objects designed for convenient management of access for users with similar responsibilities in the system. In Acumatica ERP, you can set up access rights to such a system object as a particular form, a container of form elements, a form element, or a wiki.

**Tip:** For details about managing access to wikis, see [Wiki Access Management](SM__con_Wiki_Access_Setup.md).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a user role and specify access rights to system objects for this role
-   Modify access rights to system objects for a copy of an existing role
-   Give access to only particular forms in the system and revoke access to all other system objects
-   Review the access rights a role has to system objects

## Applicable Scenarios { .section}

You create or modify user roles in the following cases:

-   You, as an implementation consultant, initially implement Acumatica ERP for your client and the predefined set of roles does not suit your client’s needs.
-   You, as a system administrator, were notified that the security policy of your company has changed and after a revision of the current set of roles, you need to modify access rights to Acumatica ERP elements.
-   You, as a system administrator, were notified about a new position being created in your company, for which the current set of roles does not cover the job description.

## Restriction Levels { .section}

A user role in Acumatica ERP is a set of access rights to system objects. By defining access rights for a system object, you set the restriction level a user with the role will have for this object. The restriction level defines the set of operations a user may perform with the object. The highest restriction level allows a user to perform any operation with an object, up to its deletion, and the lowest restriction level denies access to an object.

The system objects are a particular form, a container of form elements, and a form element. In Acumatica ERP, the system objects are grouped in a tree with nodes, where a tenant is the first-level node with the workspaces nested under it. Each workspace can have multiple forms nested, which can have containers of form elements nested within it; form elements are nested within the containers.

Restriction levels vary by object type. For some objects, you can specify a more granular level; for others, you can either allow or deny the access. For details, see [User Roles: Restriction Level Options](../Shared/../UserGuide/User_Roles_Access_Levels.md).

## Access Propagation and Inheritance { .section}

In Acumatica ERP, as mentioned, the system objects are grouped in a tree with nodes. Each node is a system object that can nest other objects. At each level of nodes, either access rights are propagated to the nested objects or nested objects inherit access rights from their parents. The hierarchy of nesting is the following:

1.  *Tenant*: A tenant node nests all workspaces configured in the system. The system propagates the access rights set to a role for this node to all workspaces in the tenant.
2.  *Workspace*: A workspace node nests all forms added to the workspace. The system propagates the access rights set to a role for this node to all forms within the workspace.
3.  *Form*: A form node may or may not nest several containers with the form elements. Nested containers inherit the access rights set to a role for a form.
4.  *Form container*: A container node nests form elements, such as boxes and actions. Nested elements inherit the access rights set to a role for the container.
5.  *Form element*: An element node is on the lowest level of the object hierarchy and inherits its access rights from its parent container.

**Tip:** You can observe the tree of system objects in the left pane of forms related to user access configuration, such as [Access Rights by Screen](SM_20_10_20.md) \(SM201020\), [Access Rights by Role](SM_20_10_25.md) \(SM201025\), and [Access Rights by User](SM_20_10_55.md) \(SM201055\).

The propagation and inheritance mechanism saves time for administrators and simplifies the setting of access rights to system objects. You can change the propagated or inherited rights for any object at any time—that is, change the restriction level received from a parent object. For specifics about the restriction levels of a particular system object, see [User Roles: Restriction Level Options](User_Roles_Access_Levels.md).

## Predefined Roles { .section}

For ease of configuration and administration, Acumatica ERP provides a set of predefined roles. We recommend that you use these roles during implementation to configure users’ access to the system. For details on the available predefined roles, see [User Roles: Predefined Roles](User_Roles_Built_In_Roles.md).

With every major release of Acumatica ERP, multiple new forms are added to the system. Depending on the added functionality:

-   Any number of new predefined roles may be supplied, which will provide access to the new forms.
-   Access for existing predefined roles may be modified.

If you have modified access rights to a system object for a predefined role, the system preserves your changes during the upgrade. At the same time, it updates access rights to **other** objects for this role if they were added, deleted, or updated with the new release.

Because predefined roles can affect which functionality is available on a form, we recommend that you not delete them.

**Important:** If you’ve deleted a predefined role, the system will not restore it during an upgrade.

We also recommend that you not modify existing access rights for the predefined *Administrator* role. This role must be assigned to certain user accounts so that they can invoke processes that require specific access rights \(such as running a schedule\). Changing these access rights can affect system functionality. However, you can add new access rights to this role.

**Important:** After you add a new form, make sure that at least the *Administrator* role has access to it. Otherwise, no one will be able to see this form.

You can modify other predefined roles. Alternatively, you can copy a predefined role and modify the copy as needed—but keep in mind that duplicating a large number of predefined roles can affect system performance.

## Role Planning { .section}

Organizations have different kinds of valuable information that needs protecting, such as financial documents and customer and vendor information. Different employees need access to different subsets of this information to perform their duties. Before you start planning the set of user roles, we recommend that you make sure that job roles and responsibilities in your company are clearly defined. The job responsibilities of a user define the needed levels of access to forms, records, and operations on the records.

While planning the set of roles, take into account the objectives of internal control procedures implemented in your company, like preventing and detecting fraud, maximizing the completeness and accuracy of financial records, safeguarding assets, and preparing financial statements in a timely manner. For example, to minimize the risk of errors and fraud, duties associated with cash handling are often segregated. Also, segregation is recommended for duties related to recording documents and further processing them, as well as conducting reconciliations and preparing financial statements.

We highly recommend that you perform the planning of access configuration when the system is initially implemented and when there have been changes to the security policy of the organization. For detailed recommendations, see [User Roles: Planning of Access Configuration](User_Roles_Planning_Concept.md).

## Role Creation { .section}

You use the [User Roles](SM_20_10_05.md) \(SM201005\) form to create a role. By default, the system automatically sets the access rights for a new role to *Revoked* for all system objects. The nested objects \(containers and elements\) have the *Inherited* access level.

**Tip:** We recommend using naming conventions for the user roles that you create or copy from predefined roles.

To set up access rights to multiple system objects for an individual role, you use the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.

To set up access rights to multiple system objects for multiple roles, you use the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form. The form allows you to see the restriction level that other roles have to a system object.

Alternatively, you can use the [Access Rights by Role](SM_20_10_25.md) form to create a copy of a role, give the copied role a new name, and then modify access rights for the copied role.

**Tip:** The process of defining task-based roles requires in-depth knowledge of both the organization's business processes and the Acumatica ERP approach to security.

## Role Access Modification {#section_wgv_hbd_yl .section}

During ongoing maintenance of Acumatica ERP, you may have tasks to change users' access rights to some system objects. To modify a role’s access you use either the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form or the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.

You may take different approaches in configuring user access: assigning a single role to a user or assigning a combination of roles to a user. The chosen approach may affect how modification of a role will affect an individual user’s access.

If you do not use role combination, the modification of a role will affect access for all users with the role assigned. If you use role combination, the modification of role's access rights can affect users with this role differently. For details, see [User Roles: Calculation of the Restriction Level for a User](User_Roles_User_Access_Level_Calculation.md).

Before proceeding to role modification, we recommend collecting detailed information about the role configuration and the users assigned to the role. For details on access management reports, see [User Access: Related Reports and Forms](SA_Managing_User_Access_Reports_Inquiries.md).

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

