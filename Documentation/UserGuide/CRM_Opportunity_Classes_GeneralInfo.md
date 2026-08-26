# Opportunity Classes: General Information {#_15c06d98-fb27-4386-86f0-f4c471ed3fca .concept}

In Acumatica ERP, you can group opportunities into classes based on specific characteristics. Opportunity classes help you quickly and effectively manage your sales processes. These include conversion of leads to opportunities, estimation of probabilities of closing a deal, and preparation of financial reports.

This topic provides information about opportunity classes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create an opportunity class
-   Use opportunity classes and attributes
-   Select the opportunity class that the system will use by default for each new opportunity
-   Define opportunity stages

## Applicable Scenarios { .section}

You may want to learn how to create opportunity classes in scenarios where you need to give users the following abilities:

-   Group opportunities that contain either products or services
-   Group direct sales opportunities and partner sales opportunities
-   Group standard opportunities and opportunities that contain special offers and discounts
-   Group primary and renewal opportunities
-   Estimate the probabilities of closing a deal by using opportunity stages

## Defining of Opportunity Classes {#section_o23_hpf_bhc .section}

In Acumatica ERP, an opportunity class is a way to group opportunities that share at least one common characteristic. Opportunity classes make opportunity creation faster and more accurate by providing default settings for new opportunities. Opportunity classes are also used for reporting purposes.

You can collect additional information about the opportunities in each opportunity class by defining a set of attributes for the class. An attribute is a configurable UI element for tracking a characteristic of each opportunity that’s important to your company but isn’t already on the [Opportunities](CR_30_40_00.md) form. For example, you might define attributes for the opportunity’s industry, product characteristic, or type of partner commission. For more details, see [Attributes](CS__con_Attributes.md).

You define each opportunity class on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form and specify settings such as these:

-   The way the system determines the default owner of an opportunity of the class. If the default owner is determined through an assignment map, you can also specify the map.
-   The contact class and business account class that the system inserts by default for a new contact or business account created based on an opportunity of the class.
-   The default email account for sending emails to opportunities of the class.

If your company no longer needs a particular opportunity class, you can remove it from the system only if no existing opportunities have that class specified.

## How the Class Affects Opportunity Creation {#section_dcs_hwv_bhc .section}

When you create an opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form and select an opportunity class, the system inserts the opportunity’s default settings based on the class settings. \(You can override these default settings.\)

If attributes have been defined for the selected opportunity class, they appear on the **Attributes** tab as additional elements. Depending on how they were defined for the class, they may be required or optional.

If you change the opportunity class of an existing opportunity, the system updates the opportunity’s default settings based on the new class. If the new class includes any of the same attributes as the previous one did, the system preserves their values. All other attributes from the previous class are removed.

If one opportunity class is used more frequently than the others, you can specify it as the default opportunity class on the **General** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. Then on opportunity creation, the system inserts this default class and its associated default settings. This class can be changed.

**Tip:** If you create an opportunity by using the [Leads](CR_30_10_00.md) \(CR301000\) or [Contacts](CR_30_20_00.md) \(CR302000\) form, the system may insert a different class than the default opportunity class. If an opportunity class is specified on the [Lead Classes](CR_20_70_00.md) \(CR207000\) or [Contact Classes](CR_20_50_00.md) \(CR205000\) form for the source lead or contact class, the system inserts this opportunity class.

## Opportunity Stages { .section}

An opportunity typically progresses through several stages, each representing a step in the sales process and associated with a probability of successfully closing the deal. Tracking opportunities by stage helps sales teams estimate future sales revenue more accurately.

In Acumatica ERP, you can define opportunity stages and their probabilities for each opportunity class. In the **Stages** section of the **Details** tab of the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, you’ll see a list of the available opportunity stages. While creating an opportunity class, you select the **Active** check box for the stages you want to include; at least one stage must be active for the class.

If you clear the check box for a stage that has already been used in an opportunity of the class, this stage isn’t listed for opportunities of the class, but it still will be shown in reports.

The system offers the following predefined opportunity stages:

-   *Prospect*: The contact or business account associated with the opportunity is known, but interest in the offered products or services hasn’t been established.
-   *Nurture*: A salesperson is negotiating with the prospect or customer or learning about their interest in products and services. This stage may be useful if your company decides not to track leads separately.
-   *Qualification*: A salesperson is determining the prospect or customer's interest in purchasing particular products or services.
-   *Development*: A salesperson is clarifying the requirements for products or services, as well as the budget, delivery schedule, and project scope \(if applicable\).
-   *Solution*: A salesperson is negotiating with the prospect or customer about the content of the solution \(proposal\) and the set of products or services to be purchased. The salesperson may be creating product demonstrations or other evaluation tools, and the prospect or customer is evaluating the products or services.
-   *Proof*: A salesperson has developed a proposal, and the prospect or customer is evaluating it. The salesperson may select a primary sales quote at this stage.
-   *Negotiation*: A salesperson and the prospect or customer are negotiating the prices, discounts, and terms of the proposed deal.
-   *Won*: The prospect or customer has accepted the proposal and is ready to sign the contract or place an order \(or has already done this\). Some companies advance the opportunity to this stage only after the invoice has been issued or a payment has been received.

You can modify this list by adding new stages. For each new stage, you specify the identifier, name, probability percentage, and sort order. If you add a new stage for a class, this stage will also appear for other classes with the **Active** check box cleared.

You can delete a stage only if it is inactive for all the existing opportunity classes. Once you’ve deleted the stage, it will no longer be shown for any opportunity class.

If an opportunity is created based on a contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form, the system assigns it the opportunity stage that has been specified in the corresponding contact class. For details, see [Contact Classes: General Information](CRM_Contact_Classes_GeneralInfo.md).

## Example of Opportunity Classes and Attributes { .section}

Consider the following example of the use of opportunity classes and attributes.

**Tip:** Attributes and classes are used similarly for leads, contacts, business accounts, marketing campaigns, opportunities, and cases.

Suppose that you sell two products, one for resale by retailers and the other for direct corporate use. You handle many opportunities and would like to divide them into groups based on whether they are related to a retail store or to another type of corporation. You can create two classes for these opportunities:

-   The *Retail* class, for opportunities associated with retail stores of various sizes: This class might contain an attribute called **Size** with the values *Small*, *Midsize*, and *Big* corresponding to the store size, as well as other attributes to give you additional information about these stores.
-   The *Corporate* class, for opportunities associated with organizations that are final consumers: Because the organizations may be different types, you might define an attribute called **Company Type** and it might have such values as *Hospital*, *University*, *School*, and *Other*.

With these classes and their attributes configured in the system, when a user creates a new opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form and selects an opportunity class in the **Opportunity Class** box of the Summary area, the attributes of the class appear on the **Attributes** tab. The user can enter the needed attribute values for this opportunity.

**Parent topic:**[Defining Opportunity Classes](../UserGuide/CRM_Opportunity_Classes_Mapref.md)

