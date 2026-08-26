# Customers: Security Configuration {#_59921d47-e53c-4571-b6ad-d7ef53cc79a2 .concept}

If your organization sells goods and provides services to customers, you may have a great deal of customer-related information stored in Acumatica ERP. When the employees of your organization create documents for customers, they have to select the required customer from the full list of customers. If certain employees work with only very important customers, and other employees are not allowed to see these customers in the system for security reasons, you can create restriction groups to manage the visibility of your customers to users of Acumatica ERP, as described in this topic.

**Tip:** In Acumatica ERP, you can configure groups with direct and inverse restriction. In this topic, for simplicity, groups with direct restriction are used in examples. You can use inverse restriction groups in the same way as you use direct restriction groups. For details on the types of restriction groups, see [Types of Restriction Groups](../Shared/../UserGuide/SM__con_Types_of_Restriction_Groups.md).

## Visibility of Customers by User { .section}

By using restriction groups, you can show or hide particular customers on Acumatica ERP forms, depending on the user who is logged in to the system. For example, if some customers are very important to your organization, dedicated employees might be assigned to process documents that contain information about these customers in the system. For details about restriction groups, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).

For example, suppose that your organization provides cleaning services and Megabank is a very important customer of your organization. Manager M is responsible for all operations in the systems related to Megabank, and other managers should not see Megabank on any forms of the system. To configure the visibility of this customer in the system, you need to do the following on the [Customer Access](../Shared/../UserGuide/AR_10_20_00.md) \(AR102000\) form:

1.  You create a restriction group \(for example, *Group for Megabank*\) with direct restriction.
2.  You add to the group the user account of the Manager M.
3.  You add to the group the Megabank customer.

If you use customer classes and want to include each new customer of a particular class in a restriction group automatically, you can specify a default restriction group for this class.

## Setting Up Default Restriction Groups for Customer Classes {#_769aca82-01cf-49ce-8b23-342ac7eaef5b .section}

To ease the addition of new customers to restriction groups, you can specify a default restriction group for a customer class, so that customers of the selected class will be included in the restriction group automatically.

You specify a default restriction group for a customer class by using the [Customer Classes](../Shared/../UserGuide/AR_20_10_00.md) \(AR201000\) form. You perform the following steps to specify a default restriction group for a customer class:

1.  In the **Class ID** box, you select the customer class for which you want to specify the default restriction group.
2.  In the **Default Restriction Group** box of the **Default General Settings** section on the **General** tab, you select the default restriction group that will be used for the selected customer class.
3.  On the form toolbar, you click **Include Customers in Restriction Group** to include all entities of the class in the default restriction group.
4.  You save your changes.

## Removing Class Entities from a Default Restriction Group { .section}

If you want to cancel the visibility restriction for entities of a customer class, you can remove all class entities from a default restriction group as follows:

1.  You open the [Customer Classes](../Shared/../UserGuide/AR_20_10_00.md) \(AR201000\) form.
2.  In the **Default General Settings** section on the **General** tab, you clear the value in the **Default Restriction Group** box
3.  On the form toolbar, you click **Include Customers in Restriction Group**.
4.  You save your changes.

## Forms for Customer Security { .section}

In the following table, you can find the list of the forms that you can use to manage restriction groups with customers and the tasks that you can resolve by using each form.

|Task|Form|
|----|----|
|To initially configure the visibility of a customer to users|[Customer Access](../Shared/../UserGuide/AR_10_20_00.md) \(AR102000\)|
|To change the visibility of a customer in multiple restriction groups|[Restriction Groups by Customer](../Shared/../UserGuide/AR_10_20_10.md) \(AR102010\)|
|To change the visibility of customers to a user in multiple restriction groups|[Restriction Groups by User](../Shared/../UserGuide/SM_20_10_35.md) \(SM201035\)|

For information about how to add or remove objects from a restriction group, see [Operations with Restriction Groups](../Shared/../UserGuide/RS__con_Operations_Restriction_Groups.md).

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

