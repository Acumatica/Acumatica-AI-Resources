# Campaign Classes: General Information {#_4e7d7237-75b4-4387-905c-e30f589853b5 .concept}

In Acumatica ERP, you can group marketing campaigns into classes based on specific characteristics. Campaign classes help you quickly and effectively manage your marketing and sales processes. These include the creation of marketing campaigns, the tracking of expenses related to a marketing campaign, and viewing of campaign statistics.

This topic provides information about campaign classes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a campaign class
-   Use campaign classes and attributes

## Applicable Scenarios { .section}

You may want to learn how to create campaign classes in scenarios that include the following:

-   You need to give users the ability to group campaigns of various types, such as marketing events, mass mailing, and outdoor advertising.
-   You need to give users the ability to group marketing and sales campaigns.

## Defining of Campaign Classes {#section_ntc_z4f_bhc .section}

In Acumatica ERP, a campaign class is a way to group marketing campaigns that share at least one common characteristic. Campaign classes make campaign creation faster and more accurate by providing default settings for new campaigns.

You can define campaign classes based on your company’s business needs and get a comprehensive view of campaign management by using campaign statistics, as described in [Marketing Campaigns: General Information](CRM_Mktg_Mng_Marketing_Campaigns_GeneralInfo.md).

You create campaign classes on the [Campaign Classes](CR_20_25_00.md) \(CR202500\) form. Each class represents a type of campaign your company runs, such as advertising, telemarketing, webinars, marketing events, or mass mailings.

A campaign class has a brief description and may include a set of attributes that store additional information about the campaigns in the class. An attribute is a configurable UI element for tracking a campaign characteristic that’s important to your company but isn’t already on the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form. For more details, see [Attributes](CS__con_Attributes.md).

## How the Class Affects Campaign Creation {#section_otc_z4f_bhc .section}

When you create a marketing campaign on the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, you can first select a campaign class. The system inserts the campaign’s default values based on the class settings. If attributes have been defined for the selected campaign class, they appear on the **Attributes** tab as additional elements.

You can change the class of an existing campaign. If the new class includes any of the same attributes as the previous one, the system preserves their values. All other attributes from the previous class are removed.

## Example of Campaign Classes and Attributes { .section}

Consider the following example of the use of campaign classes and attributes.

**Tip:** Attributes and classes are used similarly for leads, contacts, business accounts, marketing campaigns, opportunities, and cases.

Suppose that you sell two products, one for resale by retailers and the other for direct corporate use. You create multiple marketing campaigns to advertise the products and would like to divide the campaigns into groups based on whether they are intended for retailers or to another type of corporation. You can create two classes for these campaigns:

-   The *Retail* class, for campaigns intended for retail stores of various sizes: This class might contain an attribute called **Size** with the values *Small*, *Midsize*, and *Big* corresponding to the store size, as well as other attributes to give you additional information about these stores.
-   The *Corporate* class, for campaigns intended for organizations that are final consumers: This class might contain an attribute called **Company Type**, which might have such values as *Hospital*, *University*, *School*, and *Other*.

With these classes and their attributes configured in the system, when a user creates a new campaign on the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form and selects a campaign class in the **Campaign Class** box of the Summary area, the attributes of the class appear on the **Attributes** tab. The user can enter the needed attribute values for this campaign.

**Parent topic:**[Defining Campaign Classes](../UserGuide/CRM_Campaign_Classes_Mapref.md)

