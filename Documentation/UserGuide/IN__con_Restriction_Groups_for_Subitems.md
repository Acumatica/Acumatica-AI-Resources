# Inventory Item Security {#_09c9c94d-1707-4e55-bb2c-29343e18864f .concept}

An organization that distributes goods may have many items in stock. In this case, users who work with inventory items in the system may have specific tasks and work with only particular item classes. When users create a sales order, they need to enter an inventory ID for each product. You can define restriction groups to limit the lists of inventory items particular users see.

In this topic, you will read about managing the visibility of inventory items to users in the system.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Visibility of Inventory Items to Users { .section}

The list of inventory items from which employees should select an item can be very long, which increases the probability of an entry error. By using restriction groups, you can reduce the list of inventory items that users see on forms. For more information about restriction groups, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).

**Note:** You cannot include the empty item code that has been specified on the [Projects Preferences](../Shared/../UserGuide/PM_10_10_00.md) \(PM101000\) form \(which is *N/A* by default\) in restriction groups.

For example, suppose that your organization sells furniture, and that each sales manager works with furniture for a particular room, such as kitchen, living room, and bedroom. When managers create a sales order, they should select items from only the list of furniture they sell to avoid entry mistakes. Further suppose that User K sells kitchen furniture, User L sells living room furniture, and User M sells bedroom furniture. To restrict the visibility of inventory items to the appropriate users in the system, you would create the following restriction groups with direct restriction on the [Inventory Item Access](../Shared/../UserGuide/IN_10_30_00.md) \(IN103000\) form:

1.  Group K: In this group, include User K and all inventory IDs for kitchen furniture items.
2.  Group L: To this group, add User L and all inventory IDs for items of living room furniture.
3.  Group M: In this group, include User M and all inventory IDs for bedroom furniture items.

As a result, the visibility of the inventory items in sales orders will be restricted in the system as follows:

-   User K can view and select only inventory items for kitchen furniture.
-   User L can work with only inventory items for living room furniture.
-   User M can see and select only inventory items for bedroom furniture.
-   Other users cannot see the inventory items that have been added to the three restriction groups in the system.

## Setting Up Default Restriction Groups for Item Classes {#_769aca82-01cf-49ce-8b23-342ac7eaef5b .section}

To ease the process of adding new items to restriction groups, you can specify default restriction groups for an item class, so that items of the selected item class will be included in the restriction group automatically. On the [Item Classes](../Shared/../UserGuide/IN_20_10_00.md) \(IN201000\) form, you perform the following steps to specify default restriction groups for an item class:

1.  In the **Class ID** box, you select the item class for which you want to specify the default restriction groups.
2.  On the **Restriction Groups** tab, you select the check boxes in the rows with the restriction groups in which the item class should be included.

    **Note:** The visibility restrictions configured for an item class apply to only the inventory items of this class and do not affect the visibility of the item class on the [Item Classes](../Shared/../UserGuide/IN_20_10_00.md) form.

3.  On the More menu, you click **Apply Restriction Settings to All Inventory Items** to include all existing entities of the class in the default restriction groups.
4.  You save your changes.

## Forms for Inventory Item Security { .section}

In the following table, you can find the list of the forms that you can use to manage restriction groups with inventory items and the tasks that you can perform by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of an inventory item to users|[Inventory Item Access](../Shared/../UserGuide/IN_10_30_00.md) \(IN103000\)|
|To change the visibility of an inventory item in multiple restriction groups|[Restriction Groups by Item](../Shared/../UserGuide/IN_10_30_20.md) \(IN103020\)|
|To change the visibility of inventory items to a user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|
|To change the visibility of the inventory items that belong to an item class in multiple restriction groups|[Restriction Groups by Item Class](../Shared/../UserGuide/IN_10_30_10.md) \(IN103010\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Security of Inventory Entities](../UserGuide/InvMgmt_Inventory_Entities_Security.md)

