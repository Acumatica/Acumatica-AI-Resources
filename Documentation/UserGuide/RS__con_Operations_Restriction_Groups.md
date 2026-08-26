# Operations with Restriction Groups {#_af4b07a9-476a-4475-8183-8bffc9eb6947 .concept}

The operations that you can perform with restriction groups \(such as creating the groups, adding entities to a group, deleting entities from a group, and viewing group details\) depend on the form. This topic describes the operations that you can perform with restriction groups.

## Creating a Restriction Group { .section}

You create a restriction group to restrict the visibility of some system entities. You do the following:

1.  You open one of the row-level security forms, which you can use to create restriction groups with the particular system entities you want to add. For example, for a user, you open the [Restriction Groups by User](SM_20_10_35.md) \(SM201035\) form. For the list of entities, see [Restriction Groups in Acumatica ERP](SM__con_Overview_of_Restriction_Groups.md).
2.  You enter a group name that reflects what the group limits visibility to.
3.  You select the group type. For information about the types of restriction groups, see [Types of Restriction Groups](SM__con_Types_of_Restriction_Groups.md).
4.  If the group includes users, on the **Users** tab, you select the users that will be included in the group.
5.  On the tab with the list of entities, you select the values of the entity that should be included in the group. \(For example, if the entity is warehouses, you select the particular warehouses you want to include in the group.\) Repeat this step for each entity type that you want to include in the group.
6.  You save your changes.

## Deactivating a Restriction Group { .section}

If you do not want to apply the restrictions of some group to the system entities included in the group, you do the following:

1.  You open the [Restriction Groups](SM_20_10_30.md) \(SM201030\) form.
2.  In the Selection area, you select the restriction group you want to edit.
3.  You clear the **Active** check box.
4.  You save your changes.

    Restrictions configured in the group are no longer applied to the entities.


## Adding Entities to an Existing Restriction Group {#_5352f349-5e81-434f-9121-0ee8532d0797 .section}

While addressing your everyday tasks, you may need to add users and entities to restriction groups that you have created and configured previously. For example, suppose that a new employee of your organization should use accounts with limited visibility, or that new inventory items have been added to the system and should be in a particular restriction group.

When you need to add an entity to an existing group, you perform the following steps:

1.  You open a row-level security form that displays restriction groups for the entity you want to add to the restriction group. For example, for a user, you open the [Restriction Groups by User](SM_20_10_35.md) \(SM201035\) form.
2.  In the Selection area, you select the entity that you want to add to a restriction group. For example, in the **Login** box, you select *Todd Bloom*.
3.  In the table with the list of restriction groups, you select the unlabeled Included check box for each group in which you want to include the selected entity.
4.  You save your changes.

After you have included the entity in the restriction groups, the system applies the visibility limitations to the entity.

Similarly, you can remove entities from a restriction group by clearing the Included check box for this group.

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

