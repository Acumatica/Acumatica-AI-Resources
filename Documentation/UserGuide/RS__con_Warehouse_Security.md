# Warehouse Security {#_737fa08d-fad8-4a90-bab3-718e781d6c2d .concept}

An organization can have multiple warehouses in Acumatica ERP, and different groups of employees may work with these warehouses in the system. To limit in the system the set of employees who work with a particular warehouse, you can create restriction groups to display the warehouse for only employees who are responsible for tasks that involve this warehouse. If the employees who work with the same warehouse perform only specific tasks \(such as accepting goods and creating purchase orders\), you can provide these employees with access to only the forms that they should use.

In this topic, you can find information about configuring the security of warehouses in Acumatica ERP.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Usage Scenarios { .section}

The most common scenarios of managing the security of warehouses are the following:

-   Managing access to forms based on employees' functional roles: If employees perform specific tasks \(such as receiving goods and creating purchase orders\), you can provide the employees access to the forms they use in their work, and revoke access for forms that they shouldn't use. For details, see [Access to Forms Based on Roles](#_5d379250-8fad-4f3d-a03e-5e1aa3848b2f).
-   Managing the visibility of particular warehouses by user: If you have created multiple warehouses in Acumatica ERP, you can restrict the visibility of warehouses to users on forms by using restriction groups. For details, see [Visibility of Warehouses by User](#_d53bcde9-5e1b-4ac0-ae37-17d621fbd8a3).

    **Note:** You can create and manage multiple warehouses in Acumatica ERP only if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.


In addition to managing the visibility of warehouses in whole, you can restrict the visibility of particular inventory items. For details, see [Inventory Item Security](../Shared/../UserGuide/RS__con_Restriction_Groups_for_Subitems.md).

## Access to Forms Based on Roles {#_5d379250-8fad-4f3d-a03e-5e1aa3848b2f .section}

You can use user roles in Acumatica ERP to give employees access to forms related to working with warehouses. A role can correspond to an area of responsibility for an employee who performs warehouse-related tasks, such as creating purchase orders, accepting goods, and preparing replenishment. If needed, you can assign multiple roles to an employee. For more information about user roles, see [User Roles: General Information](../Shared/../UserGuide/User_Roles_GeneralInfo.md).

Consider the following examples of roles for employees who work with inventory and order management:

-   *Supervisor*: A role for an employee who configures and manages inventory. This role should have access to the forms related to inventory processes, such as the [Inventory Preferences](../Shared/../UserGuide/IN_10_10_00.md) \(IN101000\) form.
-   *Data Entry Clerk*: A role for an employee who creates documents on data entry forms. You should provide access to such forms as [Issues](../Shared/../UserGuide/IN_30_20_00.md) \(IN302000\), [Receipts](../Shared/../UserGuide/IN_30_10_00.md) \(IN301000\), or [Transfers](../Shared/../UserGuide/IN_30_40_00.md) \(IN304000\).
-   *Purchasing Manager*: A role for an employee who is responsible for replenishment. For this role, you should provide access to the **Replenishment** node of the **Processes** tab of the Inventory module.

## Visibility of Warehouses by User {#_d53bcde9-5e1b-4ac0-ae37-17d621fbd8a3 .section}

By default, all employees who have access to forms of the inventory and order management modules can see all warehouses created in the system. By using the row-level security forms, you can configure the system so that each warehouse is displayed only to users who work with this warehouse. You can use restriction groups to set up the visibility of warehouses to employees. For details on restriction groups, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).

For example, suppose that your system has the *Wholesale* and *Retail* warehouses defined, and you need to configure the visibility of these warehouses to users as follows:

-   User S is a supervisor who should configure and manage both warehouses.
-   User C1 is a clerk who enters documents for the *Wholesale* warehouse.
-   User C2 is a clerk who enters documents for the *Retail* warehouse.

To configure the visibility of warehouses according to this example, you do the following on the [Warehouse Access](../Shared/../UserGuide/IN_10_20_00.md) \(IN102000\) form:

1.  You create two restriction groups of type *A* \(with direct restriction\): *Group 1* for the *Wholesale* warehouse, and *Group 2* for the *Retail* warehouse.
2.  In Group 1, you include User S, User C1, and the *Wholesale* warehouse.
3.  In Group 2, you include User S, User C2, and the *Retail* warehouse.

The resulting visibility of warehouses will be the following:

-   User S can see both the *Wholesale* and *Retail* warehouses.
-   User C1 can see only the *Wholesale* warehouse.
-   User C2 can see only the *Retail* warehouse.

## Forms for Warehouse Security {#_854306fc-9172-4c39-95c8-1f5c56eadfd0 .section}

In the following table, you can find the list of forms that you can use to manage restriction groups with warehouses and tasks that you can solve by using each form.

|Tasks|Forms|
|-----|-----|
|To initially configure the visibility of a warehouse to users|[Warehouse Access](../Shared/../UserGuide/IN_10_20_00.md) \(IN102000\)|
|To change the visibility of a warehouse in multiple restriction groups|[Restriction Groups by Warehouse](../Shared/../UserGuide/IN_10_20_10.md) \(IN102010\)|
|To change the visibility of warehouses to a user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

