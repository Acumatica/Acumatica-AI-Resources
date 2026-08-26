# Data Synchronization: Synchronization Statuses {#_f68709cc-7e8f-468f-a583-6e00cf98f0bc .concept}

When a synchronization record is prepared and processed, the system assigns it one of the statuses described in the following table. You can review the synchronization status of any synchronization record on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

|Status|Description|
|------|-----------|
|*Prepared*|The synchronization record has been created or updated, but out-of-sync data has not been saved in the destination system or systems.|
|*Processed*|The synchronization record has been processed, and data has been recorded to the destination system or systems according to the synchronization settings configured for the entity.|
|*Failed*|The processing of the synchronization record has failed and data could not be recorded to the destination system or systems.|
|*Aborted*|The synchronization record was excluded from synchronization by the system.

 The system automatically assigns the *Aborted* status to a synchronization record if the processing of the synchronization record has failed the number of times specified for the entity in the **Max. Number of Failed Attempts** box on the [Entities](../Shared/../UserGuide/BC_20_20_00.md) \(BC202000\) form. The information about the error that occurred during the synchronization is available for the synchronization record in the **Last Error** column of the table on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) form.

|
|*Skipped*|The synchronization record was manually excluded from synchronization by a user.|
|*Deleted*|The record in the synchronization record has been deleted in Acumatica ERP, in the external system, or in both systems.|
|*Invalid*|The synchronization record cannot be processed because its synchronization is not possible.|
|*Filtered*|The entity has been filtered as a result of applying a filter defined in the code or on the [Entities](../Shared/../UserGuide/BC_20_20_00.md) form.|

**Parent topic:**[Overview of Data Synchronization](../UserGuide/Commerce_AZ_Data_Sync_Mapref.md)

