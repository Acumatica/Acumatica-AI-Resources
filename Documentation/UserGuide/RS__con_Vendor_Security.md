# Vendor Security {#_01ee3fe2-a6d6-4492-90f5-92ddaebc559c .concept}

As your organization buys goods and services from external organizations, your accountants manage vendors' information and process documents. If your organization works with more than 10 vendors, accountants may work with particular vendors only. In this case, the accountants who do not work with particular vendors should not see them in the system for security reasons and to avoid entry errors. You can use restriction groups to make vendors visible to only the accountants who work with these vendors in the system, as described in this topic.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Visibility of Vendors by User { .section}

You can use restriction groups to configure and manage the visibility of vendors to users in the system. If each accountant in your organization works with specific vendors, you can hide these vendors from other users. For details about restriction groups, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).

For example, suppose that ABComputers is your vendor of computers and office equipment, and only the senior accountant is allowed to process documents from this vendor. To configure the visibility of this vendor, you do the following on the [Vendor Access](../Shared/../UserGuide/AP_10_20_00.md) \(AP102000\) form:

1.  You create a restriction group with direct restriction \(for example, *Group for ABComputers*\).
2.  You add to the group the user account of the senior accountant.
3.  You add to the group the ABComputers vendor.

If you have configured vendor classes, you can specify a default restriction group for a vendor class. With this setting, all new vendors of the class will be automatically added to the restriction group.

## Setting Up Default Restriction Groups for Vendor Classes {#_769aca82-01cf-49ce-8b23-342ac7eaef5b .section}

To ease the addition of new vendors to restriction groups, you can specify a default restriction group for a vendor class, so that vendors of the selected class will be included in the restriction group automatically.

You specify a default restriction group for a vendor class by using the [Vendor Classes](../Shared/../UserGuide/AP_20_10_00.md) \(AP201000\) form. You perform the following steps to specify a default restriction group for a vendor class:

1.  In the **Class ID** box, you select the vendor class for which you want to specify the default restriction group.
2.  In the **Default Restriction Group** box of the **Default General Settings** section on the **General** tab, you select the default restriction group that will be used for the selected vendor class.
3.  On the form toolbar, you click **Include Vendors in Restriction Group** to include all entities of the class in the default restriction group.
4.  You save your changes.

## Removing Class Entities from a Default Restriction Group { .section}

If you want to cancel the visibility restriction for entities of a vendor class, you can remove all class entities from a default restriction group as follows:

1.  You open the [Vendor Classes](../Shared/../UserGuide/AP_20_10_00.md) \(AP201000\) form.
2.  In the **Default General Settings** section on the **General** tab, you clear the value in the **Default Restriction Group** box
3.  On the form toolbar, you click **Include Vendors in Restriction Group**.
4.  You save your changes.

## Forms for Vendor Security { .section}

In the following table, you can find the list of the forms that you can use to manage restriction groups with vendors and the tasks that you can resolve by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of a vendor to users|[Vendor Access](../Shared/../UserGuide/AP_10_20_00.md) \(AP102000\)|
|To change the visibility of a vendor in multiple restriction groups|[Restriction Groups by Vendor](../Shared/../UserGuide/AP_10_20_10.md) \(AP102010\)|
|To change the visibility of vendors to a user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Managing Visibility with Restriction Groups](../UserGuide/RS__mng_Managing_Restriction_groups.md)

