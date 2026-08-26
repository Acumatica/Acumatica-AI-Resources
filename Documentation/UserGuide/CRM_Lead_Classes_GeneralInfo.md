# Lead Classes: General Information {#_c2021679-f705-4e15-abb7-c24b8cceeb41 .concept}

In Acumatica ERP, you can group leads into classes based on specific characteristics. The use of lead classes may help you quickly and effectively manage your marketing and sales processes. These include lead acquisition, conversion of leads to opportunities, creation of customers, and preparation of financial reports.

This topic provides information about lead classes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a lead class
-   Select the lead class that the system will use by default for each new lead

## Applicable Scenarios { .section}

You may want to learn how to create lead classes in scenarios that include the following:

-   You need to give users the ability to group leads that represent companies of the same industry, such as banks, supermarkets, or pharmacies.
-   You need to give users the ability to group leads that represent companies of the same business sector, such as manufacturers, merchandisers, or service providers.
-   You need to give users the ability to group leads that have been acquired through such sources as an organic search, a marketing campaign, or a purchased list.
-   You need to set up the system to automatically assign new leads to the appropriate owners.

## Defining of Lead Classes { .section}

In Acumatica ERP, a lead class is a way to group leads that share at least one common characteristic. Lead classes make lead creation faster and more accurate by providing default settings for new leads.

You can collect additional information about the leads in each class by defining a set of attributes for the class. An attribute is a configurable UI element for tracking a characteristic of each lead that’s important to your company but isn’t already on the [Leads](CR_30_10_00.md) \(CR301000\) form. For more details, see [Attributes](CS__con_Attributes.md).

You define each lead class on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form and specify settings such as these:

-   The default source for the creation of new leads; the system inserts this source for a new lead of the lead class.
-   The way the system determines the default owner of a lead of the class. If the default owner is determined through an assignment map, you can also specify the map.
-   The contact class, business account class, and opportunity class that the system inserts by default for a new contact, business account, or opportunity created based on a lead of the class.
-   The setting that determines whether a business account must be created during lead conversion.
-   The default opportunity stage for a new opportunity created based on a lead of the class.
-   The default email account for sending emails to leads of the class.

If your company no longer needs a particular lead class, you can remove it from the system only if no existing leads have that lead class specified.

## How the Class Affects Lead Creation { .section}

When you create a lead on the [Leads](CR_30_10_00.md) \(CR301000\) form and select a lead class, the system inserts the lead’s default settings based on the class settings. \(You can override these default settings.\)

If attributes have been defined for the selected lead class, they appear on the **Attributes** tab as additional elements. Depending on how they were defined for the class, they may be required or optional.

If you change the lead class of an existing lead, the system updates the lead’s default settings based on the new class. If the new class includes any of the same attributes as the previous one did, the system preserves their values. All other attributes from the previous class are removed.

If one lead class is used more frequently than the others, you can specify it as the default lead class on the **General** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. Then on lead creation, the system inserts this class and its associated default settings automatically. This class can be changed.

**Tip:** If you create a lead by using the [Contacts](CR_30_20_00.md) \(CR302000\) form, the system may insert a different lead class than the default one. If a lead class is specified on the [Contact Classes](CR_20_50_00.md) \(CR205000\) form for the source contact class, the system inserts this lead class.

## Example of Lead Classes and Attributes { .section}

Consider the following example of the use of lead classes and attributes.

**Tip:** Attributes and classes are used similarly for leads, contacts, business accounts, marketing campaigns, opportunities, and cases.

Suppose that you sell two products, one for resale by retailers and the other for direct corporate use. You handle many leads and would like to divide them into groups based on whether they are related to a retail store or to a corporation. You can create two classes for these leads:

-   The *Retail* class, for leads associated with retail stores of various sizes: This class might contain an attribute called **Size** with the values *Small*, *Midsize*, and *Big* corresponding to the store size, as well as other attributes to give you additional information about these stores.
-   The *Corporate* class, for leads associated with organizations that are final consumers: Because some organizations may be tax-exempt, you might define an attribute called **Tax Status** with two possible values, *Tax-Exempt*, and *Taxable*. Another attribute, **Company Type**, might have such values as *Corporation*, *Hospital*, *University*, and *School*.

With these classes and their attributes configured in the system, when a user creates a new lead on the [Leads](CR_30_10_00.md) \(CR301000\) form and selects a lead class in the Summary area, the attributes of the class appear on the **Attributes** tab. The user can enter the needed attribute values for this lead.

**Parent topic:**[Defining Lead Classes](../UserGuide/CRM_Lead_Classes_Mapref.md)

