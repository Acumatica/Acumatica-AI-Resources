# Security of Organizations' Branches {#_29ed14e8-1cbe-4adb-8580-a0386a60ba9f .concept}

If your organization has multiple branches defined in Acumatica ERP, you may need to control which employees get access to which branches. Because branches share some data, you may also need to control access to the shared data. Acumatica ERP provides user access roles, which you can use to control users' access to branches, and restriction groups to limit the visibility of shared data. In this topic, you will read about ways to manage the security of a branch.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Usage Scenarios { .section}

The most common scenarios of managing the security of company branches are the following:

-   Managing user access to branches: If your organization has multiple branches \(and you have created multiple branches in Acumatica ERP\), you can configure access to branches for employees who work in these branches. For details, see [User Access to Branches](#_0b293a1d-214e-4315-ad57-1ae82e60f9b7).
-   Managing the visibility of data shared between branches: If you need to make data shared between branches \(such as general ledger accounts and subaccounts\) visible only within a particular branch, you can use restriction groups to resolve this task. For more information, see [Visibility of Data Within a Branch](#_0c6d87db-04ca-4426-bd97-3e76e6216b70).

**Note:** You can create and maintain multiple branches in your Acumatica ERP instance only if the *Multibranch Support* feature is enabled in your system on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form \(for details, see [Multiple Branch Support](../Shared/../UserGuide/CS__con_Multiple_Branch_Support.md)\).

## User Access to Branches {#_0b293a1d-214e-4315-ad57-1ae82e60f9b7 .section}

After multiple branches have been defined in the system, you provide access to the branches for users who will work in the system as follows:

1.  On the [User Roles](../Shared/../UserGuide/SM_20_10_05.md) \(SM201005\) form, you create branch-specific user roles \(one role per branch\) and assign these roles to user accounts. For details on user roles, see [User Roles: General Information](../Shared/../UserGuide/User_Roles_GeneralInfo.md).
2.  On the [Branches](../Shared/../UserGuide/CS_10_20_00.md) \(CS102000\) form, you assign the roles to branches as follows: For each branch, in the **Access Role** box, you select the user role created for this branch. To allow a user to access multiple branches, assign to him or her the roles for the branches to which the user should have access.

    **Note:** Once a role is assigned to one of the branches, other branches also must have roles assigned. A branch with no role assigned will be inaccessible to any user.


If a user, based on his or her role, has access to a data entry form where this user enters a document and specifies the branch of origin, only the branches to which the user has access are available on the drop-down list. The users who have access to multiple branches can select the specific branch from the **Branches** menu on the form's title toolbar and create documents on behalf of the selected branch.

No matter which branch users have access to, users who have access to the following forms, based on their roles, will see and work with all branches \(because users configure system objects by using these forms\):

-   [Inter-Branch Account Mapping](../Shared/../UserGuide/GL_10_10_10.md) \(GL101010\)
-   [Branches](../Shared/../UserGuide/CS_10_20_00.md) \(CS102000\)
-   [Buildings](../Shared/../UserGuide/CS_20_50_10.md) \(CS205010\)
-   [Assignment and Approval Maps](../Shared/../UserGuide/EP_20_50_00.md) \(EP205000\)
-   [Import Company Tree](../Shared/../UserGuide/EP_20_40_60.md) \(EP204060\)
-   [Restriction Groups by Branch](../Shared/../UserGuide/GL_10_30_20.md) \(GL103020\)
-   [GL Accounts by Branch Access](../Shared/../UserGuide/GL_10_30_40.md) \(GL103040\)
-   [Subaccounts by Branch Access](../Shared/../UserGuide/GL_10_30_60.md) \(GL103060\)

## Visibility of Data Within a Branch {#_0c6d87db-04ca-4426-bd97-3e76e6216b70 .section}

Branches have some data shared between branches and some data kept as branch-specific \(for details, see [Multiple Branch Support](../Shared/../UserGuide/CS__con_Multiple_Branch_Support.md)\). You may need to restrict the visibility of data that is shared but may contain sensitive information, such as general ledger accounts and subaccounts. Acumatica ERP provides restriction groups so you can control which accounts and subaccounts are used with which branch. For details on configuring restriction groups for accounts and subaccounts, see [Account and Subaccount Security](../Shared/../UserGuide/RS__con_Account_and_Subaccount_Security.md).

**Important:** Restriction groups configured for branches do not affect the visibility of projects that have these branches specified on the **Summary** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form. You can manage the visibility of projects to particular users by creating restriction groups on the [Project Access](../Shared/../UserGuide/PM_10_20_00.md) \(PM102000\) form. For more information on configuring access for projects, see [Project Security](../Shared/../UserGuide/RS__con_Project_Security.md).

## Forms for Branch Security { .section}

In the following table, you can find the list of the forms that you can use to manage restriction groups with branches and the tasks that you can resolve by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of accounts by branches|[GL Accounts by Branch Access](../Shared/../UserGuide/GL_10_30_40.md) \(GL103040\)|
|To initially configure the visibility of subaccounts \(or subaccount segments\) by branches|[Subaccounts by Branch Access](../Shared/../UserGuide/GL_10_30_60.md) \(GL103060\)|
|To change the visibility of system objects by a branch in multiple groups|[Restriction Groups by Branch](../Shared/../UserGuide/GL_10_30_20.md) \(GL103020\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

