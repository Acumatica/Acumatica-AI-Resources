# Database Maintenance: General Information {#_fb069b91-154b-4745-8991-300d5c8a6ae3 .concept}

In Acumatica ERP, the data for all tenants and snapshots is stored in the database and may take a lot of space. To prevent uncontrolled growth of the database \(for example, if you have created many snapshots\), the database size available for your Acumatica ERP instance is limited in your license.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Monitor the size of a database
-   Optimize a database
-   Clean up a database

## Applicable Scenarios { .section}

You may need to lean about database maintenance if you are a system administrator and you need to monitor and clean up the database on a regular basis so that it has sufficient space for users to perform needed operations.

## Monitoring of the Database Size { .section}

You use the [Space Usage](SM_20_35_25.md) \(SM203525\) form to view the system calculations of the used space and the space limit defined by your license. Also, you can review the list of all tenants and snapshots, and view the tables that are consuming a lot of database space. This can help you to identify the actions you should take to reduce the size of the database, if needed.

**Attention:** The statistics of using database space, which are displayed on the [Space Usage](SM_20_35_25.md) form, do not include data related to the System tenant. The statistics include the size of indexes.

Also, we recommend that before you copy a tenant or take, import, or restore a snapshot, you make sure that you have enough database space available for your instance by clicking **View Space Usage** on the More menu of the [Tenants](SM_20_35_20.md) \(SM203520\) form.

## Cleanup of a Database { .section}

To clean up the database so that it has sufficient space for users to perform the needed operations, you can remove the unnecessary tenants \(unlicensed or test tenants\) and snapshots by using the [Delete Snapshots and Tenants](SM_50_30_00.md) \(SM503000\) form. You can open this form by clicking **Optimize Database** on the More menu of the [Tenants](SM_20_35_20.md) \(SM203520\) form. You can also select a row with a snapshot you want to remove on the **Snapshots** tab of the [Tenants](SM_20_35_20.md) form and then click **Delete** on the table toolbar. The system opens the [Delete Snapshots and Tenants](SM_50_30_00.md) form with *Delete Snapshot* selected in the **Action** box. In this box, you can select what exactly \(that is, tenant, snapshot, or orphaned snapshot\) you want to delete in order to clean up the database.

On the **Tables** tab of the [Space Usage](SM_20_35_25.md) \(SM203525\) form, you can view the list of tables with data related to all tenants and snapshots in your instance, including the size of each table in the Acumatica ERP database. The following tables generally use most of the database space of the Acumatica ERP instance:

-   *UploadFileRevision*: Contains information about the database size used for attachments. To find the unused attachments so that you can delete them, you use the [Search in Files](SM_20_25_20.md) \(SM202520\) form.
-   *AUScheduleHistory*: Contains information about the database size used for saving the history of the schedules. To review the forms where the automatic processes are scheduled, you use the [Automation Schedule Statuses](SM_20_50_30.md) \(SM205030\) form. To delete the history of a particular scheduled process, you use the [Automation Schedule History](SM_20_50_35.md) \(SM205035\) form. For details, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).
-   *AuditHistory*: Contains information about the database size used for saving the audit history. To review the audit history, you use the [Audit History by Screen](SM_20_55_30.md) \(SM205530\) form. You cannot delete the audit history, so we recommend that you turn on the field-level audit for no more than few forms. For details, see [Managing Field-Level Auditing](SA_Managing_Field_Level_Auditing_Mapref.md).

**Parent topic:**[Maintaining Database by Using the Web Interface](../UserGuide/SA_Maintaining_Database_by_Using_Web_Interface_Mapref.md)

