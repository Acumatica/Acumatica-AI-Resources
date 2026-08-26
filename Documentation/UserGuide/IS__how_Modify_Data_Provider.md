# To Modify a File Data Provider {#_3f0206e9-cf13-4d2d-bad5-3eb29f20e82c .task}

You can use the [Data Providers](SM_20_60_15.md) \(SM206015\) form to modify existing data providers.

If the data source has changed—for example, if you have added a column to the Excel file—you have to update the data provider. To update the data provider, you have to replace the file attached to the provider on the [Data Providers](SM_20_60_15.md) \(SM206015\) form and update the provider schema.

## To Modify a File Data Provider { .section}

1.  On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, select the provider that you want to modify, and on the form title bar, click **Files**.
2.  In the **Files** dialog box, click **Edit** to the right of the file name.

    Clicking **Edit** opens the [File Maintenance](SM_20_25_10.md) form \(SM202510\), which displays the details of the file attachment.

3.  On the form toolbar, click **Check Out** to make the file unavailable to other users for editing while you are updating it. You may skip this step if no other users can work with this file simultaneously.
4.  Click **Get Latest Version** on the form toolbar, and download the file. Open the file and modify it. Save the edited version to your computer.

    **Tip:** You do not necessarily have to download the file first; you can just upload a new version and skip this step.

5.  On the form toolbar of the [File Maintenance](SM_20_25_10.md) form, click **Upload New Version** to open the **File Upload** dialog box, and upload the edited version of the file into the system. If you checked the file out, select the **Check In** check box to make the file available for editing to other users.

    On the **Versions** tab, notice the list of available file versions. If necessary, you could download or restore the needed file version. To download a file version, select the needed version and click **View Selected Version** on the table toolbar. Then you can upload the file as a new version. To delete a file version, click **Delete Row** on the table toolbar.

6.  Close the [File Maintenance](SM_20_25_10.md) form and the **Files** dialog box to resume work on the [Data Providers](SM_20_60_15.md) \(SM206015\) form.
7.  On the **Schema** tab, on the toolbar of the **Source Fields** pane, click **Fill Schema Objects**. The system updates the list of available objects. Make sure the **Active** check box is selected for all objects that you need to use for data import or data export.
8.  For each active source object, select the object on the **Source Fields** pane and click **Fill Schema Fields** on the toolbar of the **Source Fields** pane. The system updates the list of available fields. Make sure the **Active** check box is selected for all fields that you need to use for data import or data export.
9.  Click **Save** on the form toolbar.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

