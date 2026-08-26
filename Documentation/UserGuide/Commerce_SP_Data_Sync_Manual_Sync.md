# Data Synchronization: Manual Synchronization {#_59f1d01a-67a2-49b6-9e9f-c8540f2cfb5d .concept}

Manual synchronization might be useful when you need to synchronize data during the initial configuration or when data has not been synchronized for some reason and manual troubleshooting is needed.

## Manual Data Preparation { .section}

To manually start the data preparation process, you perform the following general steps:

1.  You open the [Prepare Data](BC_50_10_00.md) \(BC501000\) form.
2.  In the Selection area of the form, in the **Store** box, you select the online store with which you are synchronizing data.
3.  In the **Prepare Mode** box, you select one of the following options:

    -   *Incremental*: You select this mode to prepare for processing only the synchronization records that have changed since the last successful data preparation.
    -   *Incremental by Date*: You select this mode to prepare for processing only records that have been modified during the specified date range and that have not yet been processed.
    -   *Full*: You select this mode to prepare for processing all records of the selected entity, even if they have been synchronized previously.
    If you are starting the data preparation process for an entity for the first time, *Full* mode is used, regardless of the mode selected in the **Prepare Mode** box.

4.  In the table, you select the unlabeled check box in the rows of the needed entities, and on the form toolbar, you click **Prepare**.

## Manual Data Processing { .section}

To manually start data processing, you perform the following general steps:

1.  You open the [Process Data](BC_50_15_00.md) \(BC501500\) form.
2.  In the Selection area, in the **Store** box, you select the online store with which you are synchronizing data.

    The table shows only the synchronization records that have not been synchronized yet \(that is, the synchronization records with the *Prepared* and *Failed* status\).

3.  In the **Entity** box, you select the entity for which you want to display synchronization records in the table.

    If you want to process out-of-sync synchronization records for all entities, leave the box empty.

4.  In the table, you select the unlabeled check box in the rows of the synchronization records that you need to process.
5.  On the form toolbar, you click **Process** to synchronize the selected synchronization records.

    If you want to process all synchronization records in the table, you click **Process All** on the form toolbar.


**Tip:** If you synchronize a large number of records, we recommend that you limit the number of rows to be loaded to the table of the [Process Data](../Shared/../UserGuide/BC_50_15_00.md) form by selecting a value in the **Processing Limit \(Rows\)** box of the Selection area. The loaded records are included in processing when you click **Process All** on the form toolbar. When the system completes the processing of loaded records, the remaining records are loaded to the table until the limit is reached.

For an example with step-by-step instructions on how to synchronize data manually, see [Data Synchronization: To Perform the First Synchronization](Commerce_SP_Data_Sync_Activity_First_Sync.md).

**Parent topic:**[Overview of Data Synchronization](../UserGuide/Commerce_SP_Data_Sync_Mapref.md)

