# Using Snapshots {#_8b030702-d8aa-41af-9675-f95e7fafb299 .concept}

Acumatica ERP is an application with multitenant architecture in which any instance includes at least one tenant that is a separate tenant. If you need to create multiple similar tenants, you do not have to configure each tenant from scratch; you can use snapshots instead.

Snapshots provide a way to save full or partial data of your Acumatica ERP tenant, and later restore the tenant to the state it had when the snapshot was taken. Snapshots can be exported from the source tenant and then restored to another tenant, thus speeding up the configuration of a new tenant. Snapshots are stored in the Acumatica ERP database, and you may face with a situation when the database is out of space. As such, it is important to monitor the database size and delete unneeded snapshots.

The topics of this chapter explain how to use snapshots, including taking a snapshot, storing it locally or in external storage, importing it to your instance, and restoring the data from the snapshot.

-   **[Snapshots: General Information](../UserGuide/SA_Using_Snapshots_GeneralInfo.md)**  

-   **[Snapshots: Export and Import](../UserGuide/SA_Using_Snapshots_Export_and_Import_Concept.md)**  

-   **[Snapshots: Custom Snapshot Configurations](../UserGuide/SA_Using_Snapshots_Modification_of_Content_Options_Concept.md)**  

-   **[Snapshots: Examples of Sensitive Data Being Excluded from Snapshots](../UserGuide/SM__con_Snapshot_Sensitive_Data.md)**  

-   **[Snapshots: To Take, Restore, and Delete a Snapshot](../UserGuide/SA_Using_Snapshots_To_Use_a_Snapshot_Activity.md)**  

-   **[Snapshots: To Export and Import a Snapshot](../UserGuide/SA_Using_Snapshots_To_Export_and_Import_a_Snapshot_Activity.md)**  


