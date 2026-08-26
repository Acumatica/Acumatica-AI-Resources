# Integration with HubSpot: To Synchronize Marketing List {#_f35be88c-0862-4f0e-9bb3-5fae3b467adc .task}

In this activity, you will learn how to configure the synchronization of marketing list headers and marketing list membership between HubSpot and Acumatica ERP.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to the necessary tenant.

## Step 1: Verifying the Marketing List Import Scenario { .section}

To verify and modify \(if necessary\) the import scenario used for marketing lists, do the following:

1.  Open the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form.
2.  In the **Name** box of the Summary area, select *Import Marketing Lists From Hubspot*.
3.  In the **Provider** box, make sure that the correct provider is selected.
4.  On the **Mapping** tab, make sure that the specified settings are correct; modify them if necessary.

    **Note:** Depending on which system is the master system, activate or deactivate the *Dynamic List* field. Generally, if the master system for contact lists is HubSpot, all marketing lists in Acumatica ERP are static.

5.  On the **Source Restrictions** tab, check the restrictions, and change them if necessary.
6.  On the form toolbar, click **Save**.

## Step 2: Verifying the Marketing List Export Scenario { .section}

To verify and modify \(if necessary\) the export scenario used for marketing lists, do the following:

1.  Open the [Export Scenarios](../UserGuide/SM_20_70_25.md) \(SM207025\) form.
2.  In the **Name** box of the Summary area, select *Export Marketing Lists to HubSpot Realtime*.
3.  In the **Provider** box, make sure that the correct provider is selected.
4.  On the **Mapping** tab, make sure that the specified settings are correct; modify them if necessary.
5.  On the **Source Restrictions** tab, check the restrictions, and change them if necessary.
6.  On the form toolbar, click **Save**.

## Step 3: Configuring the Real-Time Synchronization Profile for Marketing Lists { .section}

Configure the real-time synchronization for marketing lists as follows:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_20.md) \(HS205020\) form.
2.  In the table, add a new row, and do the following: in the row
    1.  In the **Entity** column, select *Marketing List*.
    2.  In the **Import Scenario** column, select *Import Marketing Lists From Hubspot*.
    3.  In the **Export Scenario** column, select *Export Marketing Lists to HubSpot Realtime*.
    4.  In the **Number of Attempts** column, select the appropriate maximum number of attempts the system will make to restart synchronization after it has failed.
    5.  In the **Master Source** column, select the source system.
3.  On the form toolbar, click **Save**.

## Step 4: Verifying the Synchronization { .section}

Verifythe systems are correctly integrated with each other as follows:

1.  Open the [Marketing Lists](../UserGuide/CR_20_40_00.md) \(CR204000\) form, and create a marketing list.
2.  On the table toolbar of the **HubSpot** tab, click **Sync with HubSpot**.
3.  Go to the HubSpot instance, and verify that the marketing list exists in the system.
4.  In HubSpot, modify any value for the marketing list.
5.  In Acumatica ERP, return to the [Marketing Lists](../UserGuide/CR_20_40_00.md) form. On the table toolbar of the **HubSpot** tab, click **Sync with HubSpot**.
6.  Verify that the value modified in HubSpot has been also modified in Acumatica ERP.

## Step 5: Synchronizing Out-of-Sync Data { .section}

Do the following to synchronize the data that has become out of sync

1.  Open the [HubSpot Data Resync](../UserGuide/HS_20_50_35.md) \(HS205035\) form.
2.  In the **Sync to Start** box of the Selection area, select *Full Data Resync*.
3.  In the table, select the Included check box in the row of the *Marketing List* entity.
4.  On the form toolbar, click **Process**.

    **Attention:** The process may be time-consuming if a large number of records is involved.


## Step 6: Starting the Real-Time Synchronization Process { .section}

To start the real-time synchronization, perform the following instructions:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_30.md) \(HS205030\) form.
2.  In the table, select the Included check box in the row of the *Marketing List* entity.
3.  On the form toolbar, click **Start**.

## Step 7: Synchronizing the Marketing List Membership with the HubSpot Contact List { .section}

Do the following:

1.  Open the [HubSpot Marketing List Members](../UserGuide/HS_20_50_50.md) \(HS205050\) form.

    **Note:** Use the form you have permission to access.

2.  In the **Marketing List** box of the Summary area, select the marketing list whose membership you want to synchronize with HubSpot.
3.  In the **Action** box, select *Push Members to HubSpot*.
4.  On the form toolbar, click **Fetch**.
5.  After the process is complete, for all members, make sure that the **Entity Sync Status** is *Synchronized*.

    **Note:** Members that do not have the *Synchronized* status cannot be added to HubSpot.

6.  On the form toolbar, click **Process All**.

## Step 8: Synchronizing the HubSpot Contact List Membership with Acumatica Marketing List Membership { .section}

Do the following:

1.  Open the [HubSpot Marketing List Members](../UserGuide/HS_20_50_50.md) \(HS205050\) form.

    **Note:** Use the form that you have permission to access.

2.  In the **Marketing List** box of the Summary area, select the marketing list whose membership you want to synchronize with HubSpot.
3.  In the **Action** box, select *Pull Members from HubSpot*.
4.  On the form toolbar, click **Fetch**.
5.  After the process is complete, for all members, make sure that the **Entity Sync Status** is *Synchronized*.

    **Note:** Members that do not have the *Synchronized* status cannot be added as marketing list members to Acumatica ERP.

6.  On the form toolbar, click **Process All**.

You can create a schedule to run the synchronization processes automatically. For details, see [Integration with HubSpot: To Schedule Synchronization Processes](config_HubSpot_Implem_Activity_Schedule_Sync.md).

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

