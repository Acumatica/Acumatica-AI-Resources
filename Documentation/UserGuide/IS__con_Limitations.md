# Limitations {#_d2714a58-5217-4d73-8862-868965f01251 .concept}

The solution for the synchronization of data between Acumatica ERP and Salesforce has the following limitations:

-   If the **Clone** action is initiated in Salesforce, a duplicate of the *Acumatica\_NoteID* custom property is created, which may cause the failure of the synchronization process. We recommend that users either avoid using the **Clone** action or clear the *Acumatica\_NoteID* value for each clone record.
-   If a lead is converted to a contact in Acumatica ERP, the changes are not synchronized with Salesforce. As a workaround, we recommend that you restrict the ability to convert leads in Acumatica ERP. For instance, you can do this on the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form by restricting access rights to the **Convert to Contact**, **Create Opportunity**, and **Create Business Account** actions, which are available on the [Leads](CR_30_10_00.md) \(CR301000\) form. For information about how you can manage user access rights, see [Managing User Access](SA_Managing_User_Access_Mapref.md).
-   If a lead is converted to a contact in Salesforce, the resynchronization process should be performed on the [Salesforce Data Resync](SF_20_50_35.md) \(SF205035\) form for the changes to be synchronized with Acumatica ERP. The changes may be synchronized automatically if a schedule for the *Failed &amp; Missed Data Resync* process is activated. As a result, an inactive lead record and an active contact record appear in Acumatica ERP. This happens because in Salesforce, a lead and the related contact are stored as two separate records, whereas in Acumatica ERP, a single record having different statuses holds the lead and contact data.

## Using Source and Target Restrictions in Integration Scenarios { .section}

Source and target restrictions may be specified for an integration scenario that uses the *Salesforce Sync* data provider. However, if these restrictions are modified after bi-directional synchronization of data between Salesforce and Acumatica ERP has been initiated, the changes will be ignored by the running synchronization process.

To make the changes in source and target restrictions effective, you need to do the following:

1.  Restart the bi-directional real-time synchronization process on the [Salesforce Sync](SF_20_50_30.md) \(SF205030\) form.
2.  Clear the `LastFullSyncDateTime` field in the `SFEntitySetup` table in the database.
3.  Run the *Full Data Resync* job on the [Salesforce Data Resync](SF_20_50_35.md) form.

Source and target restrictions do not apply when a record is deleted in one of the systems. That is, if a record that meets the conditions of the source or target restrictions has been synchronized and the status of the record has changed to *Skipped*, deletion of the record in the source system will result in deletion of the matching record in the target system.

## Synchronizing Sales Prices {#_a429d61b-d2b9-4fe9-be68-d10ecdf2cc2d .section}

Synchronization of sales prices between the systems works with the following limitations:

-   Promotional prices cannot be exported to Salesforce because Salesforce does not support this type of price.
-   If the *Default Prices for Export to Salesforce \(SF000001\)* or *Base Sales Prices for Export to Salesforce \(SF000002\)* generic inquiry form includes a row with **Break Qty.** set to a value other than *0*, this row is not processed because Salesforce does not support this type of property.

**Parent topic:**[Overview of Synchronization with Salesforce](../UserGuide/IS__con_Integration_with_Salesforce.md)

