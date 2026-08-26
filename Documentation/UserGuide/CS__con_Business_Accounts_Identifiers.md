# Business Account Identifiers {#_9a495cd5-4cdf-4145-acea-52a620db1426 .concept}

In Acumatica ERP, business accounts are used to store information related to customers, vendors, and employees, as well as similar information about your organization's companies and branches \(this information is used on outgoing documents\). Acumatica ERP gives you flexibility in configuring identifiers for these business accounts, as described in this article. If needed, you can use similar but distinct identifiers for customers, vendors, and employees.

The same business can be both your customer and your vendor, with a separate identifier for each capacity. Also, customers and vendors can be organized into a hierarchy that reflects their actual business relationships.

## Creation of Objects with Identifiers Based on Segmented Keys {#_d6c04c46-eb0b-4da8-bba6-f9723297a7f5 .section}

After you have configured the segmented key and populated its segments, you can create objects with identifiers based on this key on forms that are designed for managing the objects. For example, you use the [Subaccounts](GL_20_30_00.md) \(GL203000\) form to create subaccounts. If the **Allow Adding New Values On the Fly** check box is selected for the segmented key, users can create the objects when they are filling in data entry forms.

When you create an object identifier defined by a segmented key with multiple segments, you see the input mask \(for example, *––/–/–––*, where the slash is a segment separator\) that shows the number of segments and the length of each segment.

You can configure the system to make sure that users create correct identifiers by selecting the **Validate** check box for each segment of the key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form. With this check box selected, users can enter the identifier that consists of only existing segment values that have been created on the [Segment Values](CS_20_30_00.md) \(CS203000\) form.

If you clear the **Validate** check box for a segment, users can create an identifier that contains new segment values. In this case, the system validates the new segment values only in accordance with the segment definition: the type of the string and its length. The system does not copy the new segment values that users enter on the fly to the [Segment Values](CS_20_30_00.md) form. If needed, you can add these values manually to the list of segment values.

**Attention:** For objects with identifiers that support hierarchical structure \(such as inventory item classes\), the system does not perform validation of segments controlled by the **Validate** check box because you enter segment values for these objects on a form used for managing the objects \(such as the [Item Classes](IN_20_10_00.md) \(IN201000\) form\).

## Defining Identifiers for Business Accounts { .section}

You can decide upon and configure the rules for creating business account identifiers during system deployment. The *BIZACCT* segmented key, which you define by using the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, is used for configuring the general structure of identifiers for business accounts, including accounts for your companies and branches. This structure includes the overall identifier length, the number of segments, and the type of segments.

Before you configure the key, consider the information you would like to include in company, branch, vendor, customer, and employee IDs. Make such decisions as how many segments the identifiers will have, whether auto-numbering should be used for one of the segments, and whether values for each segment should be validated. \(These options are described in more detail in [Segmented Identifiers](CS__con_Identifier_Segmentation.md).\) You also need to decide whether to use the *BIZACCT* segmented key directly for companies, branches, vendors, customers, and employees or to configure separate keys based on *BIZACCT*, as the following sections describe.

**Tip:** If you plan to use integrated credit card processing, you need to make sure that the length of customer identifiers that you are going to set up is accepted by the processing center you use.

Suppose that the maximum length of **Customer ID** in the processing center is 20 characters. If you are going to set up a customer record for which you plan to save a large number of credit cards, you will need to set up a customer name of 17 characters or shorter. This is required because when the limit of payment profiles per customer profile, which is defined by the processing center, is reached, an additional customer profile is generated in the processing center and the numbering takes at least 3 characters.

For details on setting up integrated card processing, see [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

Once you have defined all needed segmented keys, you use the [Segment Values](CS_20_30_00.md) \(CS203000\) form to enter the valid values for segments that should be validated.

## Using BIZACCT Directly for Companies, Branches, Vendors, Customers, and Employees { .section}

Once you have configured the *BIZACCT* segmented key, it can be used by default for company, branch, vendor, customer, and employee identifiers. However, in this case, if you turn on auto-numbering for *BIZACCT*, entities of different types \(such as companies, vendors, or employees\) will not be easy to distinguish by their identifiers.

## Configuring Separate Identifiers for Companies, Branches, Vendors, Customers, and Employees { .section}

If you want these types of identifiers to look different at a glance, use the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form to configure the *COMPANY*, *BRANCH*, *VENDOR*, *CUSTOMER*, and *EMPLOYEE* segmented keys, all of which inherit their structure \(number of segments, segment types, and overall length\) from the *BIZACCT* key. If *BIZACCT* has an auto-numbered segment, consider using different prefixes for numbering sequences for each type of identifier.

**Attention:** For the *COMPANY*, *BRANCH*, *CUSTOMER*, *VENDOR*, and *EMPLOYEE* segmented keys, you can configure only limited differences, such as different sets of values for validated segments, or different prefixes for the auto-numbering sequences if one of the segments in the *BIZACCT* key was configured as an auto-numbered segment.

## Using Parent Accounts { .section}

In Acumatica ERP, your company's customers and vendors can be organized into hierarchies with *parent* and *child* companies to reflect the relations among the companies while allowing you to preserve each as a separate entity in the system, if needed. Any of your vendors or customers can be a parent of another vendor or customer. When you create a vendor or customer business account, you can select the ID of its parent in the **Parent Account** list on the [Vendors](AP_30_30_00.md) \(AP303000\) or [Customers](AR_30_30_00.md) \(AR303000\) form. On either form, this list includes all vendor and customer identifiers based on the *BIZACCT* segmented key, so that you can pick the appropriate vendor or customer as a parent.

On some forms, users can select objects of different types from the same lookup list. For example, when preparing time cards, employees can select in the same box either a project or a contract on which they spent their work hours. To make this possible, identifiers of these objects should have similar structures. The structure that should be common for multiple segmented keys, is defined in the *parent* segmented key. Segmented keys for object identifiers that should have similar structure are called *child* keys and inherit their structure from the *parent* key. That is, the child key has the same number of segments as the parent key, and all its segments have the same lengths as the respective segments of the parent key.

By default, the child key has the same structure as the parent key, and the segment values specified for the parent key are available for identifiers based on the child key. However, you can make identifiers based on a child key distinguishable at a glance from identifiers based on the parent key in the following ways:

-   For an alphanumeric segment, you can enter different sets of values for the parent and child key segments.
-   For an auto-numbered segment, you can assign numbering sequences with different properties—for example, with different prefixes.

In the example of time cards mentioned in the beginning of the section, the *CONTRACT* segmented key inherits its structure from the *PROJECT* segmented key.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

