# Record Validation for Duplicates: Merging of Duplicate Records {#_658acae1-9861-458f-8f9c-af2b2af3950b .concept}

Suppose that you’ve performed duplicate validation for a record and at least one duplicate record has been found. Each duplicate record is listed in the **Records for Merging** table on the **Duplicates** tab of one of these forms:

-   [Leads](CR_30_10_00.md) \(CR301000\)
-   [Contacts](CR_30_20_00.md) \(CR302000\)
-   [Business Accounts](CR_30_30_00.md) \(CR303000\)
-   [Customers](AR_30_30_00.md) \(AR303000\)
-   [Vendors](AP_30_30_00.md) \(AP303000\)

## Merging of Records on the Duplicates Tab {#_e5c77f3d-093b-4eb4-bc9d-4ff252988c54 .section}

In the **Records for Merging** table of the **Duplicates** tab of the needed data entry form, you can merge the lead, contact, or business account with their duplicate records of the same type. You can merge the customer or vendor record with a duplicate record of only the *Business Account* type.

You can select only one record at a time to be merged with the record selected on the form. The duplicate values of UI elements are highlighted.

You start merging duplicate records by selecting a record in the table and clicking **Merge** on the table toolbar. In the **Merge Conflicts** dialog box, you can merge the record selected on the form and the duplicate record you’ve selected in the **Records for Merging** table. In the **Target Record** box, you select *Current Record* or *Duplicate Record* to indicate which record to keep as a result of the merge. In the table of the dialog box, for any conflicting field values in the records, you can select the values to keep after the merge.

**Important:**

The system doesn’t the following records to be merged:

-   Leads that are associated with different contacts
-   Contacts that are associated with different business accounts
-   Business accounts that have been extended as customers \(*Customer* type\) or vendors \(*Vendor* type\) with customers or vendors

If you select any of these records in the **Records for Merging** table, you cannot click the **Merge** button, and the system shows an error message.

When you have resolved conflicts between the matching fields and merged the target record with the duplicate record, the duplicate record is no longer displayed in the **Records for Merging** table on the **Duplicates** tab.

For the duplicate record, the system inserts the *Duplicated* status in the **Duplicate** box of the [Leads](CR_30_10_00.md), [Contacts](CR_30_20_00.md), [Business Accounts](CR_30_30_00.md), [Customers](AR_30_30_00.md), or [Vendors](AP_30_30_00.md) form and closes this record as duplicate. Also, most of the settings in the Summary area of the form and the settings on the tabs of the form become unavailable for editing.

For the target record, after you have saved the changes on the form, the system updates the record's settings, the **Duplicates** tab is no longer displayed, and the system inserts the *Validated* status in the **Duplicate** box of the corresponding form.

If the duplicate record has any associated activities or attached files, the system transfers them to the target record during the merge. The activities become associated with the target record—that is, the target record is selected in the **Related Entity** box on the corresponding data entry form of each associated activity.

For details about merging duplicate records, see [Record Validation for Duplicates: To Validate a Lead for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Validating_Lead.md).

## Copying of Relations from a Duplicate Record to a Target Record { .section}

When a target record is merged with the duplicate record, the system copies the relations with associated records from a duplicate record and adds to a target record as follows:

-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, from a duplicate lead to the lead that is kept after the merge, activities on the **Activities** tab, marketing campaigns on the **Campaigns** tab, marketing lists on the **Marketing Lists** tab, and any associated records on the **Relations** tab.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, from a duplicate contact to the contact that is kept after the merge, activities on the **Activities** tab, marketing campaigns on the **Campaigns** tab, marketing lists on the **Marketing Lists** tab, leads on the **Leads** tab, and any associated records on the **Relations** tab.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, from a duplicate business account to the account that is kept after the merge, activities on the **Activities** tab, marketing campaigns on the **Campaigns** tab, marketing lists on the **Marketing Lists** tab, leads on the **Leads** tab, opportunities on the **Opportunities** tab, and any associated records on the **Relations** tab. If a case has been associated with the duplicate account of the *Business Account* type, the case is also copied from the duplicate account to the target account on the **Cases** tab.

**Parent topic:**[Validating Records for Duplicates](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mapref.md)

