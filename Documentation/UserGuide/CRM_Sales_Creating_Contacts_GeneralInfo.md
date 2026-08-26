# Contacts: General Information {#_596bbac2-3409-4735-81f8-4734569e56ed .concept}

You can create contacts in Acumatica ERP to represent the people associated with leads and business accounts \(and later customers, if a sale occurs, or even vendors\). This topic provides information about creating contacts in Acumatica ERP.

**Tip:** Contacts can be associated with a variety of entities in the system. In this chapter, we focus on contacts as they relate to the customer relationship management \(CRM\) functionality. That is, the chapter primarily discusses the contacts associated with prospective customers before they have purchased your company's products or services.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with ways of creating contacts
-   Learn about using sales territories for the distribution of contacts between owners
-   Learn about the synchronization of settings in leads, contacts, and business accounts
-   Create a contact manually
-   Create a contact by using the Acumatica ERP mobile app
-   Create a contact by using the Acumatica add-in for Outlook

## Applicable Scenarios { .section}

You may want to learn how to create contacts in scenarios that include the following:

-   An employee of your company has contacted a lead and confirmed the contact information and the interest in company's products or services, and you need to convert the lead to an opportunity.
-   You have been assigned to a lead whose contact information and interest in the company's products or services has been confirmed.

## Contacts in Acumatica ERP { .section}

In Acumatica ERP, a contact is a record on the [Contacts](CR_30_20_00.md) \(CR302000\) form that represents an individual and that can be associated with a variety of entities in the system. When you create a contact record, you enter the settings related to the information you have obtained, such as the individual’s name, address, email address, and phone number.

If you have created a lead in the system before you create the related contact, you specify the lead’s basic contact information on the **General** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form. When you create a contact for this lead, the system copies the contact information of the lead to the associated contact.

Any contact can be associated with one lead or multiple leads and with only one business account. You can synchronize contact information in the associated lead, contact, and business account to keep your data consistent and reliable. You can also easily navigate between the associated contacts, leads, and business accounts.

## Contact Creation in Acumatica ERP { .section}

In Acumatica ERP, you can create contacts in multiple ways depending on your company’s business processes and maintain them on the [Contacts](CR_30_20_00.md) \(CR302000\) form. If you use customer relationship management \(CRM\) functionality and you are processing a lead for which the contact information and interest in buying the company's products or services have been confirmed, you can convert the lead to an opportunity, which may involve the creation of a business account and a contact for this lead. You can validate an individual lead for duplicates before you create a contact. For details, see [Validating Records for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Mapref.md). You can also create a contact manually if needed.

In Acumatica ERP, you can create a contact in any of the following ways:

-   On the [Leads](CR_30_10_00.md) \(CR301000\) form when you convert the lead selected on the form to an opportunity: You click **Convert to Opportunity** on the More menu. In the **Create Opportunity** dialog box, which opens, you specify the opportunity and business account settings. \(The system automatically inserts the basic settings for the contact based on the settings of the lead, but you can override any of them.\) You then click **Create** or **Create and Review** to create the opportunity and contact. For detailed instructions, see [Lead Qualification by Sales Teams: To Convert a Lead to an Opportunity](CRM_Sales_Qualifying_Leads_by_Sales_To_Convert_a_Lead_To_Opportunity.md).
-   On the [Leads](CR_30_10_00.md), [Business Accounts](CR_30_30_00.md) \(CR303000\), [Opportunities](CR_30_40_00.md) \(CR304000\), [Vendors](AP_30_30_00.md) \(AP303000\), or [Customers](AR_30_30_00.md) \(AR303000\) forms if you create a contact associated with the entity selected on the form: You click **Create Contact** on the More menu. In the **Create Contact** dialog box, which opens, you specify the basic contact settings, and then you click **Create** or **Create and Review** to create the contact. \(You can specify additional settings on the [Contacts](CR_30_20_00.md) form.\)
-   On the [Leads](CR_30_10_00.md) or [Opportunities](CR_30_40_00.md) form if you specify the settings of the primary contact when you create a business account for the selected lead or opportunity: You start to create the account by clicking **Create Account** on the form toolbar. In the **Create Account** dialog box, which opens, you specify the basic business account and contact settings, and click **Create** or **Create and Review** to create the business account and contact.
-   Directly on the [Contacts](CR_30_20_00.md) \(CR302000\) form: In this case, you add a new record and manually enter the settings of the new contact.
-   By uploading new contacts from an Excel file on the [Marketing Lists](CR_20_40_00.md) \(CR204000\) or [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form. For details, see [Marketing Lists: General Information](CRM_Mktg_Mng_Marketing_Lists_GeneralInfo.md) and [Marketing Campaigns: General Information](CRM_Mktg_Mng_Marketing_Campaigns_GeneralInfo.md).
-   By creating a contact from the Acumatica add-in for Outlook, based on the details of the selected email recipient or sender: For detailed instructions, see [Contacts: To Create a Contact by Using the Acumatica Add-In for Outlook](CRM_Sales_Creating_Contacts_Create_Contact_Acu_AddIn.md)
-   Directly by using the Acumatica ERP mobile app: For detailed instructions, see [Contacts: To Create a Contact by Using the Acumatica Mobile App](CRM_Sales_Creating_Contacts_Create_Contact_MobApp.md).
-   By using import scenarios to import lists of contacts on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. You can use the predefined *Import Contacts from Excel* import scenario.

The system assigns the *Active* status to a new contact; this status, displayed in the **Status** box of the Summary area on the [Contacts](CR_30_20_00.md) form, indicates that the contact is available in lookup tables for the **Contact** element on various forms. If the contact is no longer applicable \(for example, the person represented by the contact has resigned from the company you are working with\), you can select the *Inactive* value in the **Status** box. If a contact is inactive, this contact cannot be selected in lookup tables for the **Contact** element on forms.

Regardless of how you create the contact, you can select a contact class on the [Contacts](CR_30_20_00.md) form or in one of the dialog boxes mentioned above, which causes the system to insert default settings for the contact, easing the process of contact creation. \(For details, see [Defining Contact Classes](CRM_Contact_Classes_Mapref.md).\)

The [Contacts](CR_30_20_00.md) form contains the complete settings of the contact, which you can view and edit. On the **Activities** tab of this form, you can create and work with all the activities related to the contact, including planned, current, and completed activities. For details, see [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md).

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

## Contact Relations with Acumatica ERP Entities { .section}

Once a contact has been defined in the system on the [Contacts](CR_30_20_00.md) \(CR302000\) form, it can be associated with any of the following entities in Acumatica ERP:

-   Leads: A lead or multiple leads can be associated with a contact. On the **Leads** tab of the [Contacts](CR_30_20_00.md) form, you can see the list of leads associated with the contact or even create a lead.
-   Business accounts: In the **Business Account** box of the Summary area of the [Contacts](CR_30_20_00.md) form, an associated business account may be specified for a contact. Multiple contacts can be associated with one business account, but only one primary contact can be selected for an account. For details, see [Creating Business Accounts](CRM_Sales_Creating_Bus_Accounts_Mapref.md).
-   Marketing lists: A contact may be added to a marketing list and subscribed to newsletters and other mailings. On the **Marketing Lists** tab of the [Contacts](CR_30_20_00.md) form, you can see all marketing lists that are created and active. For more information about marketing lists, see [Managing Marketing Lists](CRM_Mktg_Mng_Marketing_Lists_Mapref.md).
-   Marketing campaigns: On the **Campaigns** tab of the [Contacts](CR_30_20_00.md) form, you can view a list of all completed, ongoing, and planned marketing campaigns in which the contact is involved. For details about campaigns in Acumatica ERP, see [Managing Marketing Campaigns](CRM_Mktg_Mng_Marketing_Campaigns_Mapref.md).
-   Opportunities: The **Opportunities** tab of the [Contacts](CR_30_20_00.md) form lists all opportunities linked to the contact. You can also create an opportunity from this tab.
-   Cases: The **Cases** tab of the [Contacts](CR_30_20_00.md) form contains a list of all cases associated with the contact. On the table toolbar, you can click **Create Case** to create a case associated with the contact.
-   Employees: When the employee record is created and saved in the system, the system creates a contact for this employee and associates this employee record with this contact record. You can see the contact information on the [Employees](EP_20_30_00.md) \(EP203000\) form, in the **Contact Info** section on the **General** tab.

As you work with a contact in Acumatica ERP, you can track the records associated with the contact on the **Relations** tab of the [Contacts](CR_30_20_00.md) form. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to CRM forms such as [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\), [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\), and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

.

## Copying of User-Defined Fields Between Records { .section}

While viewing a record on some entry forms, you can create new records—such as CRM records \(for example, opportunities or business accounts\), project quotes, customers, and vendors—from the original record. If both records have user-defined fields, the system copies each field’s values only if both records have this field defined on their entry forms. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

The system copies user-defined field values similarly when a user creates a new record by copying the current one, such as:

-   A sales quote created by copying an existing one on the **Quotes** tab of the [Opportunities](../Shared/../UserGuide/CR_30_40_00.md) form or by clicking **Copy Quote** on the More menu of the [Sales Quotes](../Shared/../UserGuide/CR_30_45_00.md) form
-   A project quote created by clicking **Copy** on the More menu of the [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\) form

**Parent topic:**[Creating Contacts](../UserGuide/CRM_Sales_Creating_Contacts_Mapref.md)

