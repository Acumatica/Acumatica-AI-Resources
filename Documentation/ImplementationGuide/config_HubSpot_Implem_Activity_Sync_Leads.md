# Integration with HubSpot: To Synchronize Leads {#_5f48d343-d7bc-496a-81ce-5a05c41770a5 .task}

In this activity, you will learn how to configure the synchronization of leads between HubSpot and Acumatica ERP.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to the necessary tenant.

## Step 1: Verifying the Lead Import Scenario { .section}

To verify and modify \(if necessary\) the import scenario used for leads, do the following:

1.  Open the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form.
2.  In the **Name** box of the Summary area, select *Import Leads From Hubspot*.
3.  In the **Provider** box, make sure that the correct provider is selected.
4.  On the **Mapping** tab, make sure that the specified settings are correct; modify them if necessary.
5.  On the **Source Restrictions** tab, make sure that the restrictions give you the ability to correctly synchronize HubSpot contacts with Acumatica ERP leads.
6.  On the form toolbar, click **Save**.

## Step 2: Verifying the Lead Export Scenario { .section}

To verify and modify \(if necessary\) the export scenario used for leads, do the following:

1.  Open the [Export Scenarios](../UserGuide/SM_20_70_25.md) \(SM207025\) form.
2.  In the **Name** box of the Summary area, select *Export Leads to HubSpot Realtime*.
3.  In the **Provider** box, make sure that the correct provider is selected.
4.  On the **Mapping** tab, make sure that the specified settings are correct; modify them if necessary.
5.  On the **Source Restrictions** tab, make sure that the restrictions give you the ability to correctly synchronize Acumatica ERP leads with HubSpot contacts.
6.  On the form toolbar, click **Save**.

## Step 3: Configuring the Real-Time Synchronization Profile for Leads { .section}

Configure the real-time synchronization for leads as follows:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_20.md) \(HS205020\) form.
2.  In the table, add a new row, and do the following in the row:
    1.  In the **Entity** column, select *Lead*.
    2.  In the **Import Scenario** column, select *Import Leads From Hubspot*.
    3.  In the **Export Scenario** column, select *Export Leads to HubSpot Realtime*.
    4.  In the **Number of Attempts** column, select the appropriate maximum number of attempts the system will make to restart synchronization after it has failed.
    5.  In the **Master Source** column, select the source system.
3.  On the form toolbar, click **Save**.

## Step 4: Verifying the Integration { .section}

Verify that the systems are correctly integrated with each other as follows:

1.  Open the [Leads](../UserGuide/CR_30_10_00.md) \(CR301000\) form, and create a lead.

    For details, see [Leads: To Create a Lead Manually](../UserGuide/CRM_Mktg_Creating_Leads_Create_Lead.md).

2.  On the table toolbar of the **HubSpot** tab, click **Sync with HubSpot**.
3.  Go to the HubSpot instance, and verify that the contact related to the lead exists in the system.
4.  In HubSpot, modify any value for the contact.
5.  In Acumatica ERP, return to the [Leads](../UserGuide/CR_30_10_00.md) form. On the table toolbar of the **HubSpot** tab, click **Sync with HubSpot**.
6.  Verify that the value modified in HubSpot has been also modified in Acumatica ERP.

## Step 5: Synchronizing the Out-of-Sync Data { .section}

Do the following to synchronize the data that has become out of sync:

1.  Open the [HubSpot Data Resync](../UserGuide/HS_20_50_35.md) \(HS205035\) form.
2.  In the **Sync to Start** box of the Selection area, select *Full Data Resync*.
3.  In the table, select the Included check box in the row of the *Lead* entity.
4.  On the form toolbar, click **Process**.

    **Attention:** The process may be time-consuming if a large number of records is involved. It may take hours or even days.


## Step 6: Starting the Real-Time Synchronization Process { .section}

To start the real-time synchronization, perform the following instructions:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_30.md) \(HS205030\) form.
2.  In the table, select the Included check box in the row of the *Lead* entity.
3.  On the form toolbar, click **Start**.

You can create a schedule to run the synchronization processes automatically. For details, see [Integration with HubSpot: To Schedule Synchronization Processes](config_HubSpot_Implem_Activity_Schedule_Sync.md).

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

