# Contact Classes: General Information {#_3c00a5b8-dc0d-4906-a20a-7eb0ce702b7b .concept}

In Acumatica ERP, you can group contacts into classes based on specific characteristics. Contact classes help you quickly and effectively manage your marketing and sales processes. These include lead acquisition, contact creation, conversion of leads to opportunities, creation of customers, and preparation of financial reports.

This topic provides information about contact classes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a contact class
-   Select the contact class that the system will use by default for each new contact

## Applicable Scenarios { .section}

You may want to learn how to create contact classes in scenarios that include the following:

-   You need to give users the ability to group contacts that represent companies of the same industry, such as banks, supermarkets, or pharmacies.
-   You need to give users the ability to group contacts that represent companies of the same business sector, such as manufacturers, merchandisers, or service providers.
-   You need to give users the ability to group contacts that have been acquired through such sources as organic search, marketing campaign, or purchased list.
-   You need to set up the system to automatically assign new contacts to the appropriate owners.

## Defining of Contact Classes { .section}

In Acumatica ERP, a contact class is a way to group contacts that share at least one common characteristic. Contact classes make contact creation faster and more accurate by providing default settings for new contacts.

You can collect additional information about the contacts in each class by defining a set of attributes for the class. An attribute is a configurable UI element for tracking a characteristic of each contact that’s important to your company but isn’t already on the [Contacts](CR_30_20_00.md) \(CR302000\) form. For more details, see [Attributes](CS__con_Attributes.md).

You define each contact class on the [Contact Classes](CR_20_50_00.md) \(CR205000\) form and specify such settings as these:

-   The source of the default owner of a contact of the class. Possible sources include the creator, the assignment map, and the source entity from which the contact of the class has been created. If the default owner is determined through an assignment map, you can also specify the map.
-   The lead class, business account class, and opportunity class that the system inserts by default for a new lead, business account, or opportunity created based on a contact of the class.
-   The default opportunity stage for a new opportunity created based on a contact of the class.
-   The default email account for sending emails to contacts of the class.

If your company no longer needs a particular contact class, you can remove it from the system only if no existing contacts have that contact class specified.

## How the Class Affects Contact Creation { .section}

When you create a contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form and select a contact class, the system inserts the contact’s default settings based on the class settings. \(You can override these default settings.\)

If attributes have been defined for the selected contact class, they appear on the **Attributes** tab as additional elements. Depending on how they were defined for the class, they may be required or optional.

If you change the contact class of an existing contact, the system updates the contact’s default settings based on the newly selected class. If the new class includes any of the same attributes as the previous one did, the system preserves their values. All other attributes from the previous class are removed.

If one contact class is used more frequently than the others, you can specify it as the default contact class on the **General** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. Then on contact creation, the system inserts this class and its associated default settings automatically. This class can be changed.

**Tip:** You can also create a contact by using a dialog box on the [Leads](CR_30_10_00.md) \(CR301000\) or [Opportunities](CR_30_40_00.md) \(CR304000\) form. In this case, the system may insert a different class than the default contact class. If a contact class is specified on the [Lead Classes](CR_20_70_00.md) \(CR207000\) or [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form for the source lead or opportunity class, the system inserts this contact class.

## Example of Contact Classes and Attributes { .section}

Consider the following example of the use of contact classes and attributes.

**Tip:** Attributes and classes are used similarly for leads, contacts, business accounts, marketing campaigns, opportunities, and cases.

Suppose that you sell multiple products to retailers. You handle many contacts and would like to divide them into groups based on whether they are related to a small retail store or to a midsize retail store. You can create two classes for these contacts:

-   The *Small* class, for contacts associated with retail stores: This class might contain an attribute called **Interest** with the values *Juicers*, *Jams*, and *Jelly* corresponding to the type of product the retail store is interested in, as well as other attributes to give you additional information about these stores.
-   The *Midsize* class, for contacts associated with midsize stores: Because some organizations may be different types, you might define an attribute called **Company Type** with possible values such as *Supermarket* and *Restaurant*.

With these classes and their attributes configured in the system, when a user creates a new contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form and selects a contact class on the **CRM Info** tab, the attributes of the class appear on the **Attributes** tab. The user can enter the needed attribute values for this contact.

**Parent topic:**[Defining Contact Classes](../UserGuide/CRM_Contact_Classes_Mapref.md)

