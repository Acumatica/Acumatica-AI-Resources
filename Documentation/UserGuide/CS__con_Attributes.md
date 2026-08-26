# Attributes {#_51966695-681a-4ca7-9365-d1b5058a1596 .concept}

In Acumatica ERP, you can define attributes for flexible, meaningful classification of leads, opportunities, customers, and inventory items in your company. An attribute is a property \(such as age or industry\) that enables you to specify additional information for objects in the system. For some entities, attributes are defined in the context of a class, which is a grouping of the business accounts \(including leads, opportunities, customers, and cases\), projects, and stock and non-stock items by one or more of their properties. For other entities, attributes can be added directly to a corresponding data entry form.

For each class, you can define a list of attributes to gather class-specific information about members of the class; for example, attributes may carry the information about product brand, manufacturer, lead age, gender, or industry. You can use attributes for entities related to the following functionality:

-   Customer relationship management: Attributes enable you to define additional elements to store information about individual leads, contacts, cases, opportunities, business accounts, and marketing campaigns. For more details, see [Defining Lead Classes](CRM_Lead_Classes_Mapref.md), [Defining Business Account Classes](CRM_Bus_Account_Classes_Mapref.md), [Defining Contact Classes](CRM_Contact_Classes_Mapref.md), [Defining Campaign Classes](CRM_Campaign_Classes_Mapref.md), [Defining Opportunity Classes](CRM_Opportunity_Classes_Mapref.md), and [Defining Case Classes](CRM_Case_Classes_Mapref.md).
-   Accounts payable: Attributes may be used for storing additional information about vendors. You define a list of attributes on the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form and then fill in attribute values for a vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form.
-   Accounts receivable: Attributes store additional properties of contracts and information about customers. You define a list of attributes for customers on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form and then fill in attribute values for particular customers on the [Customers](AR_30_30_00.md) \(AR303000\) form. For contracts, you use [Contract Templates](CT_20_20_00.md) \(CT202000\) to define the list of attributes and then use the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form to fill in attribute values for each individual contract.

    **Note:**

    Some entities are related, such as a customer and its associated business account, or a vendor and its associated business account. However, an attribute defined on the [Customer Classes](AR_20_10_00.md) or [Vendor Classes](AP_20_10_00.md) form is class-specific. Therefore, it does not appear for the business account associated with the customer or vendor on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form unless the same attribute is also defined on the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form for the business account class to which the business account belongs. Similarly, an attribute defined for a particular business class does not appear for the associated customer or vendor on the [Customers](AR_30_30_00.md) or [Vendors](AP_30_30_00.md) form unless the attribute is defined for the customer class or vendor class.

-   Inventory: Attributes store additional properties of stock and non-stock items. You define a list of attributes on the [Item Classes](IN_20_10_00.md) \(IN201000\) form for each class, and then you fill in attribute values for individual inventory items on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms.
-   Projects: Attributes store additional properties of projects, projects tasks, equipment, account groups, and service contracts. You define a list of attributes on the [Project Attributes](PM_20_20_00.md) \(PM202000\) form.
-   Organization: You can use attributes for additional classification of employees. You define a list of attributes on the [Employee Classes](EP_20_20_00.md) \(EP202000\) form and then fill in attribute values for each particular employee on the [Employees](EP_20_30_00.md) \(EP203000\) form.
-   Service management: Attributes store additional properties of service orders and appointments. You define a list of attributes for service orders and appointments on the [Service Order Types](FS_20_23_00.md) \(FS202300\) form and then fill in attribute values on the [Service Orders](FS_30_01_00.md) \(FS300100\), [Appointments](FS_30_02_00.md) \(FS300200\), [Service Contract Schedules](FS_30_51_00.md)\(FS305100\), and [Route Service Contract Schedules](FS_30_56_00.md) \(FS305600\) form.
-   Equipment management: Attributes store additional properties of equipment and service contracts. You define a list of attributes on the [Equipment Types](FS_20_08_00.md) \(FS200800\) form for each equipment type and on the [Project Attributes](PM_20_20_00.md) \(PM202000\) form for contracts. You then fill in attribute values for equipment on the [Equipment](FS_20_50_00.md) \(FS205000\) form. For service contracts, you use the [Service Contracts](FS_30_57_00.md) \(FS305700\) form to fill in attribute values.
-   Route management: You can use attributes to store additional properties of vehicles, route executions, and route service contracts. You define a list of attributes on the [Vehicle Types](FS_20_42_00.md) \(FS204200\) form for each vehicle type, on the [Routes](FS_20_37_00.md) \(FS203700\) form for each route, and on the [Project Attributes](PM_20_20_00.md) \(PM202000\) form for route service contracts. You then fill in attribute values for vehicles on the [Vehicles](FS_20_36_00.md) \(FS203600\) form. For route executions, you fill in attribute values on the [Route Document Details](FS_30_40_00.md) \(FS304000\) form. For route service contracts, you use the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form to fill in attribute values.

Attributes assigned to an entity are displayed on the **Attributes** tab of a corresponding data entry form. Also, attributes can be added as boxes to an additional tab \(the **User-Defined Fields** tab\) of a data entry form.

## Attributes in Classes { .section}

A class contains a set of attributes that must be available in any instance of the class. For example, any lead of a given class must contain all the attributes defined for the lead class.

The sets of attributes for specific classes is defined on the following forms:

-   [Lead Classes](CR_20_70_00.md) \(CR207000\)
-   [Contact Classes](CR_20_50_00.md) \(CR205000\)
-   [Opportunity Classes](CR_20_90_00.md) \(CR209000\)
-   [Case Classes](CR_20_60_00.md) \(CR206000\)
-   [Business Account Classes](CR_20_80_00.md) \(CR208000\)
-   [Campaign Classes](CR_20_25_00.md) \(CR202500\)
-   [Project Attributes](PM_20_20_00.md) \(PM202000\)
-   [Item Classes](IN_20_10_00.md) \(IN201000\)
-   [Employee Classes](EP_20_20_00.md) \(EP202000\)
-   [Vendor Classes](AP_20_10_00.md) \(AP201000\)
-   [Customer Classes](AR_20_10_00.md) \(AR201000\)
-   [Contract Templates](CT_20_20_00.md) \(CT202000\)

For each attribute in a given class, you can specify whether the attribute is required. When creating an instance of the class, you must define the values for all the required attributes.

You specify the attributes for a class by selecting the attributes from the attributes available in the system. If you need an attribute that is not available in the system, you can use the [Attributes](CS_20_50_00.md) \(CS205000\) form to create the attribute, as well as any other attributes you may need. Then you will be able to select the new attribute in any class.

You can deactivate an obsolete attribute for a particular entity class by clearing the **Active** check box for this attribute on the entity class form. In this case, the deactivated attribute will no longer be displayed for records of the class, but all attribute values that have already been specified for existing records still will be stored in the database. If you reactivate the attribute, its values will become visible in the system again. However, if it is not necessary to preserve the data related to an obsolete attribute, you can deactivate the attribute and then delete it by using the Delete Row button on the table toolbar. In this case, the attribute will be permanently deleted from the class and all attribute values will be cleared for the records of the class.

## Import of Records with Attributes { .section}

When a record with attributes is being imported to the system through an import scenario, an error may occur if the target class of the record does not include any of the attributes specified for the record. If this is the case, you may need to verify whether the attribute is correctly specified in the source record or consider adding the attribute to the target class.

## Attribute Types { .section}

For each attribute created by using the [Attributes](CS_20_50_00.md) \(CS205000\) form, you need to specify its type, which can be one of the following:

-   *Text*: A text box into which the user can type text
-   *Combo*: A list box that users can use to type or select options
-   *Multi Select Combo*: A list box where users can select multiple options
-   *Checkbox*: A check box users can select or clear
-   *Datetime*: An element for selecting date and time
-   *Selector*: A box with the lookup table in which users can select a record and then set the ID of this record as the value of the box

For a *Text* attribute, you can specify an input validation rule based on an input mask or a regular expression. Input validation ensures that the entered data is valid and usable. For details, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md).

For a *Combo* and *Multi Select Combo* attribute, you can create a list of possible values, so that the user can select \(respectively\) one value or multiple values from the drop-down list. You can also specify the order of the values listed.

**Attention:** Attributes of the *Selector* type are not available for selection on the **Attributes** tab of forms that have this tab, such as the [Business Accounts](CR_30_30_00.md) \(CR303000\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms.

**Parent topic:**[Managing Attributes and User-Defined Fields](../UserGuide/CS__con_Attributes_and_User_Defined_Fields.md)

