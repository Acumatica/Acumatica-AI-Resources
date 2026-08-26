# Security of GL Budget Articles {#_7257e0bc-837d-45ad-acba-bcdeaefc6e29 .concept}

In Acumatica ERP, organizations implement general access restrictions by assigning roles to users of the system. The roles assigned to users allow them to access the needed resources to perform specific tasks required for their jobs. If a role allows a user to view or edit budget articles in the general ledger, the user can view all the articles, including those that might be sensitive.

By using restriction groups, you can limit the visibility of sensitive budget articles so that only particular users can see and work with these articles. In this topic, you will read about configuring restriction groups for managing the security of sensitive GL budget articles.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Managing the Visibility of GL Budget Articles by User { .section}

You can configure restriction groups that will limit the visibility of GL budget articles \(leaf articles or nodes at any level\) for users. As a result, the users not included in the group will not be able to see the budget articles \(and subarticles of these articles, if there are any\).

For example, suppose that the *Wages* budget article should be available to only the chief financial officer of your organization. To configure the visibility of this budget article, you need to do the following on the [GL Budget Access](../Shared/../UserGuide/GL_10_50_30.md) \(GL105030\) form:

1.  You create a restriction group \(for example, *Group for Wages Budget Article*\) with direct restriction.
2.  You add to the group the user account of the chief financial officer.
3.  You add to the group the *Wages* budget article.

For more details about restriction groups, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).

## Forms for Security of GL Budget Articles { .section}

In the following table, you can find the list of forms that you can use to manage restriction groups with GL budget articles and tasks that you can resolve by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of a GL budget article to users|[GL Budget Access](../Shared/../UserGuide/GL_10_50_30.md) \(GL105030\)|
|To change the visibility of a GL budget article in multiple restriction groups|[Restriction Groups by Budget Article](../Shared/../UserGuide/GL_10_50_20.md) \(GL105020\)|
|To change the visibility of a GL budget article by user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

