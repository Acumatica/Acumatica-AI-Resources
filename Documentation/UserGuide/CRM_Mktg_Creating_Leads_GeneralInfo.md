# Leads: General Information {#_bbc6e9f5-eed8-4bd6-992c-53937f89a6ef .concept}

The processing of leads in Acumatica ERP starts with adding leads to the system. This topic provides information about lead creation in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with ways of creating leads
-   Learn about using sales territories for the distribution of leads between owners
-   Learn about lead classification
-   Learn about the synchronization of settings in leads, contacts, and business accounts
-   Create a lead manually
-   Import leads from a purchased list
-   Create a lead by using the Acumatica add-in for Outlook

## Applicable Scenarios { .section}

You may want to learn how to create leads in Acumatica ERP in scenarios that include the following:

-   You have obtained some contact information about a potential customer.
-   You have acquired a list of cold leads \(individuals or organizations who never contacted your organization or expressed any interest in your products or services\) from a vendor or a public source.
-   You have started working with the system and need to import your existing leads from your legacy system into Acumatica ERP.
-   You have received an email from a potential customer.

## Marketing Leads in Acumatica ERP { .section}

A marketing lead is contact information representing an individual or a company that has a potential interest in products or services your organization offers. Leads make up the organization’s marketing audience, which is the target for marketing activities, such as marketing campaigns or advertisements.

A marketing manager defines the organization’s marketing strategy, goals, and target audience, as well as acquiring and managing data on the marketing audience. When the audience data has been acquired, the marketing manager can create the needed leads in the system.

## Lead Creation { .section}

In Acumatica ERP, you can create a lead:

-   By manually entering lead data on the [Leads](CR_30_10_00.md) \(CR301000\) form. For detailed instructions, see [Leads: To Create a Lead Manually](CRM_Mktg_Creating_Leads_Create_Lead.md).
-   By clicking **Create Lead** on the More menu of the [Contacts](CR_30_20_00.md) \(CR302000\) or [Business Accounts](CR_30_30_00.md) \(CR303000\) form.
-   By using import scenarios to import lists of leads on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. You can use the predefined *Import Leads from Excel* import scenario. For detailed instructions, see [Leads: To Import Leads from a Purchased List](CRM_Mktg_Creating_Leads_Import_List_of_Leads.md).
-   By uploading new leads from an Excel file on the [Marketing Lists](CR_20_40_00.md) \(CR204000\) or [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form. For details, see [Marketing Lists: General Information](CRM_Mktg_Mng_Marketing_Lists_GeneralInfo.md) and [Marketing Campaigns: General Information](CRM_Mktg_Mng_Marketing_Campaigns_GeneralInfo.md).
-   By creating a lead from the Acumatica add-in for Outlook based on the details of the selected email recipient or sender. For detailed instructions, see [Using the Acumatica Add-In for Outlook](OU_00_00_00.md) and [To Create a Lead by Using the Acumatica Add-In](OU__how_To_Create_Lead.md).
-   By enabling integration with web services on the [Web Services](SM_20_70_40.md) \(SM207040\) form for the automatic import of leads. For details, see [Web Service Endpoints](../CustomizationPlatform/CG_GL_Items_WebServices.md).
-   By using the integration with HubSpot. For details, see [Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md).
-   By activating incoming mail processing on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form for the automatic creation of leads based on information about the sender. For details, see [Incoming Mail Processing](EM__con_Mail_Processing.md).
-   By using the Acumatica mobile app.

As soon as leads have been added to the system and checked for duplicates, you can assign them to owners individually or through mass processing based on the rules specified in the system. For details, see [Validating Records for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Mapref.md) and [Assigning Leads to Owners and Workgroups](CRM_Mktg_Assigning_Leads_To_Owners_Mapref.md). The assigned owners can then start working on the leads.

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

## Contact Information { .section}

On the **General** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form, you can specify contact-related settings such as the name, contact information, and address of the selected lead. Also, the **Personal Data Privacy** section of this tab holds information about the lead's consent to the processing of personal data if the *GDPR Compliance Tools* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. \(For details about GDPR compliance tools, see [Handling Personal Data](GD__MNG_Handling_Personal_Data.md).\)

## Tracking of Communication with Leads in Acumatica ERP { .section}

Once a lead has been created in the system, you can create and track various activities related to this lead, including emails, phone calls, tasks, and events. \(Depending on the lead processing workflow in your company, you may be the owner of the lead, but this is not required.\) For each lead, you can create new activities, cancel or complete activities, and attach files or notes to activities. You can manage all activities associated with a lead on the **Activities** tab of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) form.

For details, see [Emails and Activities: Emails](../Shared/../UserGuide/CRM_Mktg_Managing_Emails_Activities_Emails.md), [Emails and Activities: Events](../Shared/../UserGuide/CRM_Mktg_Managing_Emails_Activities_Events.md), [Emails and Activities: Activities](../Shared/../UserGuide/CRM_Mktg_Managing_Emails_Activities_Activities.md), and [Emails and Activities: Tasks](../Shared/../UserGuide/CRM_Mktg_Managing_Emails_Activities_Tasks.md).

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

## Flexible Classification of Leads { .section}

In Acumatica ERP, you can easily categorize leads into different classes and gather different sets of additional information about leads of different classes. A lead class is a grouping entity for leads that can make the creation of leads faster and more accurate. When you create a new lead, the system can automatically assign a class to this lead and you can change the class as needed. For details, see [Defining Lead Classes](CRM_Lead_Classes_Mapref.md).

## Relations Between a Lead and Its Associated Records { .section}

As you work with a lead in Acumatica ERP, you can track the records associated with the lead on the **Relations** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to CRM forms such as [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\), [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\), and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

.

## Copying of User-Defined Fields Between Records { .section}

While viewing a record on some entry forms, you can create new records—such as CRM records \(for example, opportunities or business accounts\), project quotes, customers, and vendors—from the original record. If both records have user-defined fields, the system copies each field’s values only if both records have this field defined on their entry forms. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

The system copies user-defined field values similarly when a user creates a new record by copying the current one, such as:

-   A sales quote created by copying an existing one on the **Quotes** tab of the [Opportunities](../Shared/../UserGuide/CR_30_40_00.md) form or by clicking **Copy Quote** on the More menu of the [Sales Quotes](../Shared/../UserGuide/CR_30_45_00.md) form
-   A project quote created by clicking **Copy** on the More menu of the [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\) form

**Parent topic:**[Creating Leads](../UserGuide/CRM_Mktg_Creating_Leads_Mapref.md)

