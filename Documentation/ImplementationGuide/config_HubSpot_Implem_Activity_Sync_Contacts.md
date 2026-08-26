# Integration with HubSpot: To Synchronize Contacts {#_dda4c573-f18e-49cf-84a1-1f95a4e2d877 .task}

In this activity, you will learn how to configure the synchronization of contacts between HubSpot and Acumatica ERP.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to the necessary tenant.

## Step 1: Verifying the Contact Import Scenario { .section}

To verify and modify \(if necessary\) the import scenario used for contacts, do the following:

1.  Open the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form.
2.  In the **Name** box of the Summary area, select *Import Contacts From Hubspot*.
3.  In the **Provider** box, make sure that the correct provider is selected.
4.  On the **Mapping** tab, make sure that the specified settings are correct; modify them if necessary.
5.  On the **Source Restrictions** tab, make sure that the restrictions give you the ability to correctly synchronize HubSpot contacts with Acumatica ERP contacts.
6.  On the form toolbar, click **Save**.

## Step 2: Verifying the Contact Export Scenario { .section}

To verify and modify \(if necessary\) the export scenario used for contacts, do the following:

1.  Open the [Export Scenarios](../UserGuide/SM_20_70_25.md) \(SM207025\) form.
2.  In the **Name** box of the Summary area, select *Export Contacts to HubSpot Realtime*.
3.  In the **Provider** box, make sure that the correct provider is selected.
4.  On the **Mapping** tab, make sure that the specified settings are correct; modify them if necessary.
5.  On the **Source Restrictions** tab, make sure that the restrictions give you the ability to correctly synchronize Acumatica ERP leads with HubSpot contacts.
6.  On the form toolbar, click **Save**.

## Step 3: Configuring the Real-Time Synchronization Profile for Contacts { .section}

Configure the real-time synchronization for contacts as follows:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_20.md) \(HS205020\) form.
2.  In the table, add a new row, and do the following in the row:
    1.  In the **Entity** column, select *Contact*.
    2.  In the **Import Scenario** column, select *Import Contacts From Hubspot*.
    3.  In the **Export Scenario** column, select *Export Contacts to HubSpot Realtime*.
    4.  In the **Number of Attempts** column, select the appropriate maximum number of attempts the system will make to restart synchronization after it has failed.
    5.  In the **Master Source** column, select the source system.
3.  On the form toolbar, click **Save**.

## Step 4: Verifying the Synchronization { .section}

Verify the systems are correctly integrated with each other as follows:

1.  Open the [Contacts](../UserGuide/CR_30_20_00.md) \(CR302000\) form, and create a contact.

    For details, see [Contacts: To Create a Contact Manually](../UserGuide/CRM_Sales_Creating_Contacts_Create_Contact_Manual.md).

2.  On the table toolbar of the **HubSpot** tab, click **Sync with HubSpot**.
3.  Go to the HubSpot instance, and verify that the contact exists in the system.
4.  In HubSpot, modify any value for the contact.
5.  In Acumatica ERP, return to the [Contacts](../UserGuide/CR_30_20_00.md) form. On the table toolbar of the **HubSpot** tab, click **Sync with HubSpot**.
6.  Verify that the value modified in HubSpot has been also modified in Acumatica ERP.

## Step 5: Synchronizing Out-of-Sync Data { .section}

Do the following to synchronize the data that has become out of sync:

1.  Open the [HubSpot Data Resync](../UserGuide/HS_20_50_35.md) \(HS205035\) form.
2.  In the **Sync to Start** box of the Selection area, select *Full Data Resync*.
3.  In the table, select the Included check box in the row of the *Contacts* entity.
4.  On the form toolbar, click **Process**.

    **Attention:** The process may be time-consuming if a large number of records is involved.


## Step 6: Starting the Real-Time Synchronization Process { .section}

To start the real-time synchronization, perform the following instructions:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_30.md) \(HS205030\) form.
2.  In the table, select the Included check box in the row of the *Contact* entity.
3.  On the form toolbar, click **Start**.

You can create a schedule to run the synchronization processes automatically. For details, see [Integration with HubSpot: To Schedule Synchronization Processes](config_HubSpot_Implem_Activity_Schedule_Sync.md).

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

