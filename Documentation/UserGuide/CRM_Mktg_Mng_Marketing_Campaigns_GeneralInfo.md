# Marketing Campaigns: General Information {#_46f8010d-fed3-4d9c-8c86-4838951baa81 .concept}

A marketing campaign is a specific set of marketing activities aimed to achieve a particular marketing goal, such as promoting products and services, stimulating demand, boosting brand recognition, or generating revenue. Acumatica ERP provides you with tools that help you track campaign preparation and analyze the results of campaign execution.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a marketing campaign
-   Move the marketing campaign through stages
-   Track expenses related to the marketing campaign through integration with project accounting
-   View marketing campaign statistics

## Applicable Scenarios { .section}

You may want to learn how to manage a marketing campaign in scenarios that include the following:

-   You need to analyze and evaluate the results of a marketing campaign.
-   You need to launch a small email marketing campaign.

## Marketing Campaigns in Acumatica ERP { .section}

In Acumatica ERP you can track the leads, opportunities, revenue, and expenses associated with a marketing campaign; thus, you can analyze the results and evaluate the efficiency of this marketing campaign.

When you acquire new leads and then create them on the [Leads](CR_30_10_00.md) \(CR301000\) form or import them into the system, you can select a marketing campaign as the source of the lead. You can send emails to generate interest among the existing leads and track these emails and activities related to nurturing the leads during the campaign. If a lead is converted to an opportunity and the opportunity has been won or lost, you will be able to track and evaluate the revenue of this marketing campaign. You can link a marketing campaign with a project and track expenses related to the marketing campaign. For details, see the following sections.

## Preparation of a Marketing Campaign { .section}

In Acumatica ERP, you can create a new marketing campaign \(such as an email campaign\) or start tracking the progress of a campaign \(such as a billboard advertisement campaign\) that has already been launched. The data that you enter when you create a campaign can be used in reports.

Before you start tracking the progress of a marketing campaign, you should do the following preparatory work:

-   On the [Campaign Classes](CR_20_25_00.md) \(CR202500\) form, define campaign classes to set up the types of campaigns your company uses; each campaign class may have a list of attributes that can be used for detailed reporting as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md).
-   On the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, prepare a list of campaign members: You can select campaign members among leads, contacts, business accounts, and employees; also, you can select campaign members from any other entity that has contact information \(for example, by creating a generic inquiry that collects contacts from invoices\). For details, see the following section.
-   On the [Marketing Campaigns](CR_20_20_00.md) form, create a campaign and specify the necessary settings, such as the planned budget and the return on investment you expect to receive as a result of the campaign. This information may be useful when you analyze campaign results.

As a marketing campaign proceeds, on the [Marketing Campaigns](CR_20_20_00.md) form, you can select any of the following stages:

-   *Planning*: A marketing person is preparing the marketing campaign.
-   *Execution*: A marketing person has started sending emails to the campaign members and creating activities related to the campaign.
-   *Completed*: The marketing campaign is over, and analysis of the results of the marketing campaign is planned or in progress.
-   *Canceled*: A marketing person has canceled the marketing campaign before its completion.

## Management of Members in a Marketing Campaign { .section}

On the **Marketing Lists** tab of the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, all the static and dynamic marketing lists available in the system are shown. You can add members from a marketing list or multiple lists by selecting the **Selected** check box in the row of these marketing lists and saving your changes to the form. If you change the set of selected marketing lists and click **Save**, the system shows a warning message. You can keep the current campaign members or update the members from the newly selected set of marketing lists.

You can update the set of the campaign members added from marketing lists on the **Members** tab of the form by clicking **Update List** on the table toolbar. Manually added members remain in the campaign.

Also, by clicking **Clear All** on the table toolbar, you can remove all the members currently listed in the table as follows:

-   If you click the button without first filtering records, removes all the members from the list
-   If you first filter records in the table or search for records that meet the needed criteria, and then you click the button, removes only the listed members from the list

## Lead and Contact Creation During the Uploading of New Members { .section}

On the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form, you can upload new members from an Excel file to a marketing campaign by using the **Load Records from File** button on the table toolbar of the **Members** tab. These new members may already be defined in the system as leads, contacts, or business accounts.

During the uploading of a file, the system can also create a new lead or contact if no record with the same member name exists in the system, and then add the record to the campaign as a new member.

To cause the system to create new records in the system while uploading new members from a file, you need to perform the following general steps on the **Members** tab:

1.  On the table toolbar, you click **Load Records from File** \(![](../Shared/Images/Icons_Upload_File.png)\).
2.  In the **Import Data** dialog box, you click Upload File select the file you want to upload.
3.  On the Specify Common Settings page of the dialog box \(which opens after you upload the file\), you can make any needed changes to the default settings for the imported file and then confirm your changes by clicking **Next**.
4.  On the Map Properties to Columns page of the dialog box, which opens, you perform mapping that adheres to the following guidelines:
    -   The `Type` field must be mapped to the column in the Excel file that contains the type of the record. Based on the value in this column in the Excel file, the system creates a new record in the system as follows:
        -   If the column contains *Lead*, the system creates a new lead.
        -   If the column is empty or contains *Contact*, the system creates a new contact.
    -   For the system to create a new lead, the `Last Name` or `Account Name` field must be mapped with a column in the Excel file that contains the same value.
    -   For the system to create a new contact, the `Last Name` field must be mapped with a column in the Excel file that contains the same value.

        If a user specifies their own locale, a translated box value, or both of these, the system also processes the new records and creates a lead or contact in the system with the **Language/Locale** box filled in on the [Contacts](../Shared/../UserGuide/CR_30_20_00.md) or [Leads](../Shared/../UserGuide/CR_30_10_00.md) form.


During the creation of the new record, the system may find a possible duplicate record in the system. If a possible duplicate is found, then depending on the selected value in the **Create on Entry** column for the matching field on the [Duplicate Validation](CR_10_30_00.md) \(CR103000\) form for this pair of records, the following happens:

-   If the *Block* option is selected, the system does not create a new record and does not add a new member to the marketing campaign; it proceeds to the next record in the Excel file.
-   If the *Warn* or *Allow* option is selected, a new record is created and added to the marketing campaign.

## Tracking of Emails and Activities Associated with a Marketing Campaign { .section}

In Acumatica ERP, you can keep track of emails and activities related to a marketing campaign as follows:

-   Associate various activities with the campaign, as described in [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md)
-   Associate generated or existing leads with the campaign by selecting the marketing campaign as the source of the lead in the **Source Campaign** box of the Summary area on the [Leads](CR_30_10_00.md) \(CR301000\) form
-   Send individual emails to the campaign members, as described in [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md)
-   Send mass emails to the campaign members, as described in [Managing Mass Emails](CRM_Mktg_Managing_Mass_Emails_Mapref.md)

## Marketing Campaign Statistics { .section}

In Acumatica ERP, you can view the following marketing campaign statistics on the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form:

-   On the **Campaign Details** tab, the following values, which cannot be edited but may help you evaluate the effectiveness of an ongoing campaign:
    -   **Total Members**: The total number of members assigned to the campaign
    -   **Members Contacted**: The number of campaign members that have been contacted and have activities associated with them
    -   **Members Responded**: The total number of campaign members that have responded to the campaign
    -   **Leads Generated**: The number of leads that have been created because of the campaign
    -   **Leads Converted**: The number of leads converted to opportunities because of the campaign
    -   **Opportunities**: The number of opportunities associated with the campaign
    -   **Won Opportunities**: The number of opportunities associated with the campaign that have been eventually won
    -   **Opportunities Value**: The total amount of the opportunities associated with the campaign
    -   **Won Opportunities Value**: The total amount of the won opportunities associated with the campaign
-   On the **Members** tab, the number of created opportunities, activities, and emails related to the campaign and associated with a particular campaign member
-   On the **Generated Leads** and **Opportunities** tabs, lists of all leads and opportunities that have this marketing campaign specified as their source campaign

You can generate campaign-related reports and use these reports to calculate the revenue affected by a campaign. For more information, see [Marketing Reports: Campaign Analysis](CRM_Marketing_Reports_Campaign_Metrics.md).

**Parent topic:**[Managing Marketing Campaigns](../UserGuide/CRM_Mktg_Mng_Marketing_Campaigns_Mapref.md)

