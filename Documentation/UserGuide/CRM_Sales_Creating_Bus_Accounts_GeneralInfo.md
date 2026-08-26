# Business Accounts: General Information {#_c80870d8-d839-4ba8-9360-3f37668155e0 .concept}

As you work with prospective customers, you need to create business accounts in the system, which can later be extended as customer accounts. \(They can also be extended as vendor accounts if your company purchases some products or services from the company.\)

A business account can be used when you create a new entity, such as a contact or lead, that is related to the account. You can associate a newly created contact or lead with an existing business account so that it becomes a representative of this customer or prospect.

This topic provides information about creating business accounts in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Become familiar with ways of creating business accounts
-   Create a business account manually
-   Create a business account by using the Acumatica ERP mobile app
-   Specify a primary contact for the business account
-   Process a business account as it has different statuses
-   Learn about the synchronization of settings in leads, contacts, and business accounts
-   Learn about using sales territories for the distribution of business accounts between owners

## Applicable Scenarios { .section}

You may want to learn how to create business accounts in scenarios that include the following:

-   An employee of your company has contacted a lead and confirmed the contact information and the interest in company's products or services, and you need to convert the lead to an opportunity.
-   You have been assigned as the owner of a contact who is employed by a prospective customer interested in your company's products or services, and you need to create a business account.

## Business Accounts in Acumatica ERP { .section}

In Acumatica ERP, a business account is a record on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form that represents a legal entity \(a company or an individual\) that your company deals with or intends to sell products and services to; it is generally created in the system when your company is marketing its products or services to the business account. This business account can later be extended as a customer \(or as a vendor; a business account can be extended as both a customer and a vendor if you sell products or services to this account and buy products or services from it\).

A lead and a contact \(or multiple leads and contacts\) in the system—which are created on the [Leads](CR_30_10_00.md) \(CR301000\) form and the [Contacts](CR_30_20_00.md) \(CR302000\) form, respectively—may be associated with a business account. To create a business account, you need to specify a contact for this account. If the needed contact has already been created in the system, you can create a business account and associate the contact with the account. If the needed contact has not been created in the system, the system will create it when you are creating the business account. When you are creating a new business account based on a lead, the system automatically copies the contact information from the lead to the business account.

You can delete a business account that has been created based on a lead. In this case, the lead and contact associated with this business account remain in the system.

## Creation of Business Accounts in Acumatica ERP { .section}

The broader process of creating a business account in Acumatica ERP, which is maintained on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, consists of the following steps:

1.  Optional: If you are creating a business account based on an existing lead, validating this lead for duplicates. For details, see [Validating Records for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Mapref.md).
2.  Creating the business account \(from a lead, contact, through lead conversion to an opportunity, or manually\).
3.  Optional: Creating a contact associated with the business account.
4.  Specifying a primary contact for the business account.

You can create a business account in any of the following ways:

-   On the [Leads](CR_30_10_00.md) \(CR301000\) form when you convert the selected lead to an opportunity by clicking **Convert to Opportunity** on the More menu. In the **Create Opportunity** dialog box, which opens, you specify the opportunity and business account settings; the specification of business account settings may be required or optional, depending on the conversion settings on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form for the lead. You then click **Create** or **Create and Review** to create the opportunity and business account. For detailed instructions, see [Lead Qualification by Sales Teams: To Convert a Lead to an Opportunity](CRM_Sales_Qualifying_Leads_by_Sales_To_Convert_a_Lead_To_Opportunity.md).
-   On the [Leads](CR_30_10_00.md) or [Opportunities](CR_30_40_00.md) \(CR304000\) form if you are creating a business account associated with the selected lead or opportunity by clicking **Create Account** on the More menu. In the **Create Account** dialog box, which opens, you specify the basic business account and contact settings, and then you click **Create** or **Create and Review** to create the business account.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form if you are creating a business account associated with the contact selected on the form by clicking **Create Account** on the More menu. In the **Create Account** dialog box, which opens, you specify the business account settings and click **Create** or **Create and Review** to create the business account.
-   Directly on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. In this case, you add a new record and manually enter the settings of the new business account.
-   Directly by using the Acumatica mobile app. For detailed instructions, see [Business Accounts: To Create a Business Account by Using the Acumatica Mobile App](CRM_Sales_Creating_Bus_Accounts_Create_Account_MobApp.md).
-   By using import scenarios to import lists of business accounts on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. You can use the predefined *Import Business Accounts from Excel* import scenario.

Regardless of how you create the business account, you can select a business account class in the **Business Account Class** box on the [Business Accounts](CR_30_30_00.md) form or in one of the dialog boxes mentioned above, which causes the system to insert default settings for the business account, easing the process of content creation. \(For details, see [Defining Business Account Classes](CRM_Bus_Account_Classes_Mapref.md).\)

## Assigning Sales Territories to Leads, Contacts, Business Accounts, and Opportunities { .section}

A sales territory is a territory that in most cases is determined based on the geographical location of the lead, contact, business account, or opportunity. By using sales territories, you can distribute the lead, contact, business account, and opportunity records between different sales territories and the sales representatives who are responsible for the sales territories.

To configure the sales territory functionality, you need to create each sales territory on the [Sales Territories](../Shared/../UserGuide/CS_20_41_00.md) \(CS204100\) form, which is available if the *Customer Management* and *Sales Territory Management* features are enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form. You can assign each sales territory one of the following types:

-   *By Country*: A territory made up of a country or multiple countries
-   *By State*: A territory made up of a state or multiple states of the selected country
-   *Other*: Another type of territory that can be assigned only manually

After sales territories have been created on the [Sales Territories](../Shared/../UserGuide/CS_20_41_00.md) form, the system automatically assigns a sales territory \(excluding territories with the *Other* territory type\) to records during record creation or if a user changes a country, a state, or both of these for an existing record. You can also assign countries and states of a country to an existing sales territory directly on the [Countries/States](../Shared/../UserGuide/CS_20_40_00.md) \(CS204000\) form.

You can see the sales territory to which a record has been assigned on the **Additional Info** tab of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) and [Opportunities](../Shared/../UserGuide/CR_30_40_00.md) \(CR304000\) forms and on the **General** tab of the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\) and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) forms.

You can manually specify a sales territory if the **Override Territory** check box is selected on the data entry form for a record. In this case, the sales territory is not updated automatically if you change a country, a state, or both of these in the address settings of the record. If another record is created based on this record, the system copies the state of the check box and the selected sales territory to the target record.

You can also use the sales territory ID as a setting on the **Conditions** tab of the [Assignment Maps](../Shared/../UserGuide/EP_20_50_10.md) \(EP205010\) form, based on which the assignment of leads, contacts, business accounts, or opportunities to owners proceeds in the following cases:

-   The creation of new records if the *Assignment Map* option is selected in the **Default Owner** box of the appropriate form to define a class of leads, contacts, business accounts, or opportunities
-   Mass-assignment of records to owners by using the following mass-processing forms: [Assign Leads](../Shared/../UserGuide/CR_50_30_10.md) \(CR503010\), [Assign Contacts](../Shared/../UserGuide/CR_50_30_11.md) \(CR503011\), [Assign Business Accounts](../Shared/../UserGuide/CR_50_33_10.md) \(CR503310\), and [Assign Opportunities](../Shared/../UserGuide/CR_50_31_10.md) \(CR503110\)

## Relations Between a Business Account and Its Associated Records { .section}

As you work with a business account in Acumatica ERP, you can track the records associated with the account on the **Relations** tab of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

## Processing of a Business Account Through Statuses { .section}

As a business account is being processed by a marketing or sales team, it progresses through various statuses. The current status of a business account is displayed in the **Customer Status** box in the Summary area of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. You can manually change the status of a business account.

In Acumatica ERP, a business account may be assigned one of the following statuses:

-   *Prospect*: The business account is a prospective customer that may be interested in signing a deal but has not done this yet.

    This option is available for selection if the business account has the *Business Account* type.

-   *Active*: The business account is active, appears in all **Business Account** lookup tables, and can be selected in documents and other records.

    This option is available for selection if the business account has the *Customer* or *Customer &amp; Vendor* type.

-   *On Hold*: The business account \(and the corresponding customer account, if applicable\) is temporarily on hold.

    The business account and the associated customer cannot be selected in documents and other records, and they do not appear in lookup tables for the **Business Account** and **Customer** element.

-   *Inactive*: The business account \(and the associated customer, if applicable\) is inactive. The business account and the associated customer cannot be selected in documents and other records. That is, they do not appear in lookup tables for the **Business Account** and **Customer** element. Any existing document or record with an inactive account or the associated customer cannot be processed; any attempt to modify the document or record results in an error.
-   *One-Time*: The business account is for a one-time customer. The account becomes inactive after all the payments have been received.

    This option is available for selection if the business account has the *Customer* or *Customer &amp; Vendor* type.

-   *Credit Hold*: The business account has been put on credit hold, which prevents users from creating any new sales orders for the customer: Users cannot select the customer in the **Customer** box in the Summary area of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

    This option is available for selection if the business account has the *Customer* or *Customer &amp; Vendor* type.


To mass-change the statuses of multiple business accounts or mass-update their settings, you can use the [Update Business Accounts](CR_50_33_20.md) \(CR503320\) form.

For details about extending a business account to be a customer or vendor, see [Business Accounts: Extension of a Business Account as a Customer or Vendor](CRM_Sales_Creating_Bus_Accounts_Extension_as_Customer_Vendor.md).

## Synchronization of Settings in Leads, Contacts, and Business Accounts { .section}

In Acumatica ERP, you can easily synchronize a lead’s contact settings with the same settings in the related contact and business account. With this synchronization turned on, any change to the contact information in one record causes the system to automatically update the related records.

**Tip:** The synchronization of settings applies to:

-   The contact settings on the **General** tab of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) and [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\) forms
-   The settings in the **Primary Contact** section \(for the primary contact\) and the **Account Address** section \(for the business account\) on the **General** tab of the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form

The way the system synchronizes these settings depends on:

-   Whether the business account associated with the lead and the contact has been extended to be a customer or a vendor
-   Whether the **Override** check box is selected on the **General** tab of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form

**If the Business Account Hasn’t Been Extended**

If the business account hasn’t yet been extended to be a customer or a vendor, the records’ contact settings on the [Leads](../Shared/../UserGuide/CR_30_10_00.md), [Contacts](../Shared/../UserGuide/CR_30_20_00.md), and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) forms are synchronized as follows:

-   If the **Override** check box is cleared for the lead \(the default state\): Updating the settings of a record on one of the forms causes these settings to be updated on other forms.

    **Tip:** If the lead’s settings aren’t updated automatically from the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) form, select and then clear the **Override** check box on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form.

-   If the **Override** check box is selected for the lead: The settings on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form can differ from these settings on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) forms; synchronization isn’t performed between the lead, contact, and business account.

**If the Business Account Has Been Extended**

If the business account associated with the contact and the lead has been extended as a customer or a vendor, the contact settings on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) and [Leads](../Shared/../UserGuide/CR_30_10_00.md) forms are read-only. Synchronization occurs **in one direction only** —from the business account on the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) form. The settings are synchronized as follows:

-   If the **Override** check box is cleared for the lead \(the default state\): The address settings on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) and [Leads](../Shared/../UserGuide/CR_30_10_00.md) forms are updated automatically when they’re changed on the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) form. You can override the contact’s address settings on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) form by selecting the **Override Address** check box on the **General** tab. Similarly, you can override the lead’s address settings on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form by selecting the **Override** check box on the **General** tab.
-   If the **Override** check box is selected for the lead: The contact and address information on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form can differ from the same information of the related contact and business account on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) forms; synchronization isn’t performed between the related records. If the contact and address information is updated on the [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) form, the changes are not applied to the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form.

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to CRM forms such as [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\), [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\), and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

.

## Copying of User-Defined Fields Between Records { .section}

While viewing a record on some entry forms, you can create new records—such as CRM records \(for example, opportunities or business accounts\), project quotes, customers, and vendors—from the original record. If both records have user-defined fields, the system copies each field’s values only if both records have this field defined on their entry forms. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

The system copies user-defined field values similarly when a user creates a new record by copying the current one, such as:

-   A sales quote created by copying an existing one on the **Quotes** tab of the [Opportunities](../Shared/../UserGuide/CR_30_40_00.md) form or by clicking **Copy Quote** on the More menu of the [Sales Quotes](../Shared/../UserGuide/CR_30_45_00.md) form
-   A project quote created by clicking **Copy** on the More menu of the [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\) form

**Parent topic:**[Creating Business Accounts](../UserGuide/CRM_Sales_Creating_Bus_Accounts_Mapref.md)

