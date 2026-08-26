# Opportunities: General Information {#_6c78c2b2-684a-493b-8887-68fe499c4824 .concept}

You define a sales opportunity in the system to track potential deals as they progress through your sales pipeline toward closing. This topic provides information about creating opportunities in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Become familiar with ways of creating opportunities
-   Learn about the copying of the settings of contacts and business accounts to opportunities
-   Develop a general understanding of the settings of opportunities
-   Learn about address validation and enrichment through third-party providers
-   Learn about opportunity statuses
-   Learn about using sales territories for the distribution of opportunities between owners
-   Learn about shipping settings in opportunities, sales quotes, sales orders, and invoices
-   Create an opportunity through lead conversion
-   Create an opportunity manually
-   Create an opportunities by using the Acumatica ERP mobile app
-   Create an opportunity with an item without an inventory ID

## Applicable Scenarios { .section}

You may want to learn how to create opportunities in Acumatica ERP in scenarios that include the following:

-   A lead has contacted you and confirmed the intention to buy the company's products or services.
-   An existing customer has confirmed the intention to again buy the company's products or services.

## Creation of Opportunities in Acumatica ERP { .section}

In Acumatica ERP, an opportunity represents a potential, ongoing, or closed deal with a prospective or existing customer. An opportunity record, which is created on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, has a variety of settings, such as the prospect or customer’s contact information, the financial and shipping information, any emails and activities related to the opportunity, and any associated quotes, sales orders, and invoices. With these settings and the related documents, you can easily keep track of and update the most important information about the deal, as described in [Opportunities: Settings](CRM_Sales_Creating_Opportunities_Settings.md). Each opportunity must have an opportunity class selected, which gives you the ability to use the opportunity workflow and stages, as described in [Opportunity Management: Opportunity Stages](CRM_Sales_Managing_Opportunities_Stages.md).

An opportunity can be created in any of the following ways:

-   On the [Leads](CR_30_10_00.md) \(CR301000\) form if you click **Convert to Opportunity** on the More menu for a selected lead. When the lead confirms their interest in buying products or services \(and thus the sales team considers the lead to be qualified\), you can convert the lead to an opportunity and create an opportunity record in the system, as described in [Qualifying Leads \(Sales\)](CRM_Sales_Qualifying_Leads_by_Sales_Mapref.md).
-   By manually entering opportunity data on the [Opportunities](CR_30_40_00.md) form: For an existing customer, you can create an opportunity and associate the opportunity with an existing contact and business account by selecting the contact and business account. For a prospective customer, you can specify contact information on the **Contact** tab of the same form; you can then create an associated contact or both a business account and a contact by clicking **Create Contact** or **Create Account** on the More menu, respectively.
-   By using the Acumatica mobile app: For an existing customer, you can create an opportunity and associate the opportunity with a contact and business account that have already been created in the system.
-   By using an import scenario to import a list of opportunities on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. You can use an import scenario if you want to import opportunities from a legacy CRM system. You can use the predefined *Import Opportunities from Excel* import scenario.
-   On the **Opportunities** tab of the [Contacts](CR_30_20_00.md) \(CR302000\) form if you click **Create Opportunity** on the table toolbar. You may want to create an opportunity on this tab if you are viewing a contact on this form and need to create an opportunity on the fly. You can also create an opportunity by clicking **Create Opportunity** on the More menu of the form.
-   On the **Opportunities** tab of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form for a business account of the *Business Account* or *Customer* type if you click **Create Opportunity** on the table toolbar.
-   On the **Opportunities** tab of the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form for a selected marketing campaign if you click **Add New Opportunity** on the table toolbar.
-   By using the Acumatica add-in for Outlook based on the details of a selected email recipient or sender.

## Creation of Opportunities Through Lead Conversion { .section}

As a rule, during lead conversion, you create a contact and a business account \(if they have not yet been created in the system\), which the system associates with the sales-qualified lead. A business account must be created before or during the lead conversion for leads of a class if the **Require Account for Conversion to Opportunity** check box on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form is selected.

On the **Details** tab of the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, if the **Show Activities from Source Lead** check box is selected, the activities associated with the lead \(which are listed on the **Activities** tab of the [Leads](CR_30_10_00.md) form\) become associated with the newly created opportunity, and you can track the history of communication with the lead, from creation in the system to conversion to an opportunity.

## Processing of an Opportunity Through Statuses { .section}

As an opportunity is being processed by a sales team, it progresses through various statuses. The current status of an opportunity is displayed in the **Status** box in the Summary area of the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

In Acumatica ERP, an opportunity may be assigned one of the following statuses:

-   *New*: The opportunity has been created, but no work has been done on it yet.
-   *Open*: The opportunity is being worked on by a sales team.
-   *Won*: The deal has been successfully closed.
-   *Lost*: The deal has been canceled.

You can change the status of an opportunity by clicking any of the following commands on the More menu of the [Opportunities](CR_30_40_00.md) form and selecting a reason for the change and a stage of the opportunity in the **Details** dialog box:

-   **Open**: Changes the status to *Open*
-   **Close as Won**: Changes the status to *Won*
-   **Close as Lost**: Changes the status to *Lost*

As the opportunity is assigned different statuses, you can select the applicable stage of the opportunity. For details, see [Opportunity Management: Opportunity Stages](CRM_Sales_Managing_Opportunities_Stages.md).

A system administrator can configure notifications related to the statuses of opportunities. For more information, see [Business Events: Use of a Data Entry Form as a Source](SA_Using_Business_Events_Data_Entry_Source_Concept.md).

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

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to CRM forms such as [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\), [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\), and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

.

## Copying of User-Defined Fields Between Records { .section}

While viewing a record on some entry forms, you can create new records—such as CRM records \(for example, opportunities or business accounts\), project quotes, customers, and vendors—from the original record. If both records have user-defined fields, the system copies each field’s values only if both records have this field defined on their entry forms. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

The system copies user-defined field values similarly when a user creates a new record by copying the current one, such as:

-   A sales quote created by copying an existing one on the **Quotes** tab of the [Opportunities](../Shared/../UserGuide/CR_30_40_00.md) form or by clicking **Copy Quote** on the More menu of the [Sales Quotes](../Shared/../UserGuide/CR_30_45_00.md) form
-   A project quote created by clicking **Copy** on the More menu of the [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\) form

**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

