# Preparation for Configuration of Restriction Groups {#_b4a8b4d0-55d1-4aad-ac3d-c0f902ef152b .concept}

Before you start configuring restriction groups, you need to gather the information that will help you to plan your restriction groups, as described in this topic.

## Preparation for the Configuration of Restriction Groups { .section}

Before you create and configure restriction groups, you need to do the following for each visibility-related task you want to resolve:

1.  Determine whether or not users will be included in your restriction group. The restriction group consists of users and entities if you need to limit the visibility of entities \(for example, customers\) for users. The restriction group consists of only entities \(and no users\) if you need to restrict the visibility of entities \(for example, subaccounts\) when they are used with particular entities of a different type \(for example, GL accounts\). For details, see [Restriction Groups in Acumatica ERP](SM__con_Overview_of_Restriction_Groups.md).
2.  Select the restriction group type:
    -   For a group with users:
        -   If a smaller number of users *should* see the entities, you select a group with direct restriction. When you configure a restriction group, you will add the entities and the users who should see the entities to the group.
        -   If a smaller number of users *should not* see the entities, you select a group with inverse restriction. You will add the entities and the users who shouldn’t see the entities to the group.
    -   For a group without users:
        -   If the number of entities of Type 1 \(such as subaccounts\) that *should* be visible when the entity of Type 2 \(such as an account\) is selected is smaller than the number of entities of Type 1 that shouldn't be visible, you select a group with direct restriction. When you configure a restriction group, the group will include entities of Type 1 that should be visible and the entity of Type 2.
        -   If the number of entities of Type 1 that *shouldn’t* be visible when the entity of Type 2 is selected is smaller than the number of entities of Type 1 that should be visible, you select a group with inverse restriction. The group will include entities of Type 1 that shouldn’t be visible and the entity of Type 2.
3.  Estimate the number of restriction groups you need to resolve this task: You determine how many groups you need to create by using the following guidelines:
    -   If a particular user or a set of users should \(or shouldn't\) see entities of different types \(such as customers or GL accounts\), you need to create a separate restriction group for each entity type.
    -   If multiple sets of users should \(or shouldn't\) see different values of entities of the same type \(such as warehouses\), you need to create a separate group for each entity value or set of entity values.
    -   You can include particular combinations of entities in one group with users. For supported combinations of entities, see [Configuration of Restriction Groups](RS__con_Configuration_Restriction_Groups.md).
    -   If you need to control the accounts and subaccounts that can be used together, you must create at least two groups and include all subaccounts in either of the groups.

For examples of using restriction groups, see [Types of Restriction Groups](SM__con_Types_of_Restriction_Groups.md).

After you plan the restriction groups, you can create and configure them. For details, see [Configuration of Restriction Groups](RS__con_Configuration_Restriction_Groups.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

