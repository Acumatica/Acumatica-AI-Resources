# Marketing Lists: General Information {#_d85fe1cd-46c6-41be-a123-ab683d0d0d75 .concept}

When your company is nurturing particular leads and contacts, you may want to send newsletters and promotional emails to lists of these contacts. This could be useful for leads with confirmed contact information; you may also want to use marketing lists to communicate with confirmed contacts that are not yet ready to buy any of the currently offered services or products but might be interested in future offers.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a static marketing list \(that is, a list that must be created and changed manually\) and add members to this list
-   Unsubscribe a member from the marketing list
-   Create a dynamic marketing list \(that is, a list that can be automatically formed and updated based on rules that you specify\)

## Applicable Scenarios { .section}

You may want to learn how to manage marketing lists in scenarios that include the following:

-   You have a list of leads with confirmed contact information and need to regularly promote or showcase the products or services that your organization offers.
-   You are ready to launch a marketing campaign and need to create a list with the selected target audience to receive campaign materials.
-   You need to reengage old contacts.
-   You want to receive feedback from contacts on products or services that may be interesting to them.

## Marketing Lists in Acumatica ERP { .section}

A marketing list in Acumatica ERP is a list of members that can include leads, contacts, business accounts, and employees. You can create as many marketing lists as you need. Based on a marketing list, you can create mailing lists for mass-mailing newsletters, special offers, or other information that is periodically sent to the members.

You can view and edit existing marketing lists and create new ones on the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form. On the **List Members** tab of this form, you can view the members of a particular marketing list.

In the **Status** box of the Summary area of the form, you can select *Active* or *Inactive*. If a marketing list has the *Inactive* status, the list is not shown on the **Marketing Lists** tab of the [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), and [Business Accounts](CR_30_30_00.md) \(CR303000\) forms. Also, you cannot select the list as the source on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form; that is, if you select *Marketing Lists* in the **Source** box of the form, the inactive marketing list will not be displayed and available for selection on the **Marketing List** tab of the form.

Each marketing list in Acumatica ERP can be configured to be either dynamic or static, as described in the following sections.

## Static Marketing Lists { .section}

When you create a marketing list on the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, the default **List Type** option \(in the Summary area\) is *Static*. A static marketing list is formed and updated manually.

You can include particular members in a static marketing list by doing any of the following on the **List Members** tab of the form:

-   Clicking **Add Row** on the table toolbar and then adding the needed member in the row. This step can be repeated many times as needed.
-   Using the **Add Members** menu, which opens if you click **Add Members** on the table toolbar. By using the following menu commands, you can select list members from a specific data source:
    -   **Add from Generic Inquiry**: Opens the **Add Members from Inquiry** dialog box, in which you can select a generic inquiry, select any shared filter for the generic inquiry, and add only relevant members from the generic inquiry to the current marketing list.
    -   **Add from Marketing Lists**: Opens the **Add Members from Marketing Lists** dialog box, in which you can select any number of marketing lists and add the members from these lists to the current marketing list.
    -   **Add from Campaigns**: Opens the **Add Members from Campaigns** dialog box, in which you can select any number of marketing campaigns and add the members from the campaigns to the marketing list.
-   Clicking **Copy All**, which opens the Copy Members wizard. For details, see the *Copying of Members Between Marketing Lists* section below.
-   Clicking **Load Records from File** to upload a Microsoft Excel or CSV file with a list of leads, contacts, or business accounts that exist in the system. During the uploading of the Excel file, the system can also create a new lead or contact if no entity with the same member name exists in the system, and add the entity to the marketing list as a new member. For details, see the following section.

You can convert a static marketing list to a dynamic one by clicking **Convert to Dynamic List** on the form toolbar or the More menu of the [Marketing Lists](CR_20_40_00.md) form.

## Lead and Contact Creation During the Uploading of New Members to a Static Marketing List { .section}

On the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, you can upload new members from an Excel file to a static marketing list by using the **Load Records from File** button on the table toolbar of the **List Members** tab. These new members may already be defined in the system as leads, contacts, or business accounts.

During the uploading of a file, the system can also create a new lead or contact if no record with the same member name exists in the system, and then add the record to the marketing list as a new member.

To cause the system to create new records in the system while uploading new members from a file, you need to perform the following general steps on the **List Members** tab:

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

-   If the *Block* option is selected, the system does not create a new record and does not add a new member to the marketing list; it proceeds to the next record in the Excel file.
-   If the *Warn* or *Allow* option is selected, a new record is created and added to the marketing list.

## Dynamic Marketing Lists { .section}

For a dynamic marketing list, the system uses the generic inquiry you specify to automatically add, remove, and change members to meet the criteria specified in the generic inquiry. To make a marketing list dynamic, you click **Convert to Dynamic List** on the form toolbar or the More menu of the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form. In the Summary area, the value in the **List Type** box is changed to *Dynamic* and the **Generic Inquiry** and **Shared Filter** boxes appear on the form. In the **Generic Inquiry** box, you select the generic inquiry from which members will be added. In the **Shared Filter** box, you can select a filter that have been defined for the generic inquiry. The system will apply this filter to the results of the selected generic inquiry, and list members will include only those in the filter. For details, see [Managing Generic Inquiries](SM__MNG_Managing_Generic_Inquiry.md).

You can convert a dynamic marketing list to a static one by clicking **Convert to Static List** on the form toolbar or the More menu. If you click this button or command and at least one member is in the table on the **List Members** tab, the system displays a warning dialog box. You can choose what to do with the members after conversion: keep the current members, or delete them from the list.

## Copying of Members Between Marketing Lists { .section}

You can copy members from the dynamic or static marketing list you are viewing to a new static list or to the existing static list or lists that you select. On the **List Members** tab of the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, when you click **Copy All** on the table toolbar, the Copy Members wizard opens. On the first page of the wizard, you can click either of the following buttons:

-   **Add All Members to a New Static List**
-   **Add All Members to Existing Static Lists**

On the first page of the wizard, if you select **Add All Members to a New Static List** and click **Next**, the Add Members to a New Marketing List page opens, and you can click any of the following buttons:

-   **Create**: To enter the needed settings on the tabs and create a new list
-   **Create and Review**: To enter the needed settings on the tabs, create the new marketing list, and open the new list on the same form
-   **Cancel**: To cancel the creation of the list

If you select **Add All Members to Existing Static Lists** on the first page of the wizard and then click **Next**, the Add Members to Marketing Lists page opens, and you can click any of the following buttons:

-   **Copy**: To copy all members from the current marketing list to the selected marketing lists by selecting the Included check box for each target list
-   **Cancel**: To cancel the copying of the members

## Management of Members' Subscription { .section}

List members may or may not be subscribed to a marketing list. By default, a newly added member is subscribed to the marketing list—that is, a member receives emails that are created and sent on the [Mass Emails](CR_30_80_00.md) \(CR308000\) form if *Marketing Lists* is selected as the source on the **Summary** tab and the list is selected on the **Marketing List** tab.

You can subscribe multiple members to a marketing list or unsubscribe multiple members from a marketing list. On the table toolbar of the **List Members** tab of the [Marketing Lists](CR_20_40_00.md) \(CR204000\) form, you can click **Manage Subscription** &gt; **Subscribe All** or **Manage Subscription** &gt; **Unsubscribe All**.

Clicking the **Subscribe All** or **Unsubscribe All** button subscribes or unsubscribes only the members that are displayed in the table when you click the button \(not all members of the list\). That is, depending on when you click the menu command, you can do any of the following:

-   Subscribe or unsubscribe all the members listed on the tab to the marketing list. In this case, you click the menu command without first filtering records or performing a search.
-   By using the search box, search for the records that match the search string \(for example, email address or business account\) and then click the menu command to subscribe or unsubscribe only the listed members.
-   Select a filter in the box on the table toolbar, and then click the menu command to subscribe or unsubscribe only the listed members.

## Subscription Management for a Particular Lead, Contact, or Business Account { .section}

On the **Marketing Lists** tab of the [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), and [Business Accounts](CR_30_30_00.md) \(CR303000\) forms, you can view all active static marketing lists and those dynamic marketing lists in which the selected lead, contact, business account, or employee is a member. On this tab, you can subscribe a member \(that is, the lead, contact, or business account selected on the form\) to any needed static or dynamic marketing lists by selecting the **Subscribed** check box for the list and then saving these changes.

Also, on the **Marketing Lists** tab of any of these forms, you can click **Subscribe All** or **Unsubscribe All** on the table toolbar to subscribe the member to all the marketing lists shown on the tab or unsubscribe the member from all these lists.

**Parent topic:**[Managing Marketing Lists](../UserGuide/CRM_Mktg_Mng_Marketing_Lists_Mapref.md)

