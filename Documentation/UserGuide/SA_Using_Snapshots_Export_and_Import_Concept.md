# Snapshots: Export and Import {#_35882433-8f5b-42e7-abec-bb5116d63dd1 .concept}

Snapshots are stored in the database. To free disk space, you can export snapshots to store them in external storage, and then delete obsolete and already-exported snapshots. Exported snapshots can later be imported back into the instance.

Also, to move a snapshot to another instance, you export the snapshot from the source instance and import it to the destination instance. In this topic, you will read about the details of snapshot export and import.

## Snapshot Export {#export_snapshot .section}

Before it can be exported to external storage, a snapshot should be *prepared*—that is, the snapshot's data should be saved to a file. You can save it in binary or XML format. A snapshot in binary format takes less space. Saving the snapshot in XML format may be useful if you need to compare snapshot contents line by line.

On the **Snapshots** tab of the [Tenants](SM_20_35_20.md) \(SM203520\) form, the system selects a check box in the **Ready for Export** column for the snapshot that has been prepared for export, that is, it has been saved to ZIP archive.

**Important:** The system does not upgrade ZIP archives of the snapshots that have been prepared for export. After the upgrade, the system will clear the check box in the **Ready for Export** column for these snapshots and will not change their version in the **Version** column. You can prepare these snapshots for export once again, and the system will update their version along with the creation of the ZIP archive.

When you export a snapshot, the system copies the prepared file to external storage; the snapshot itself remains in the database.

An exported snapshot is saved as a ZIP archive. It contains the exported data in a collection of files with the `.adb` or `.xml` extension and the description of the snapshot in the `manifest.xml` file.

## Validation of the Snapshot Before Import { .section}

The `Manifest.xml` file includes the snapshot details that were generated when the snapshot was created. If you need to import the data of a snapshot to a tenant from an instance that is different from the instance of its source tenant, you need to determine whether the destination instance is compatible with the snapshot. In the `manifest.xml` file, you can find the following information, which can help you understand whether your instance is compatible with a snapshot:

-   The Acumatica ERP version of the instance that has been used to prepare the snapshot \(that is, the instance of the source tenant\).
-   The snapshot contents—that is, the export mode selected during the creation of the snapshot.
-   An indicator of whether the snapshot was created in system maintenance mode. If it was, the snapshot is marked as safe.
-   The list of customization projects that were applied to the instance of the source tenant and whose custom data was included in the snapshot. These projects will be added to the destination tenant. You will specify whether to include custom data during snapshot import.

The version of the snapshot \(that is, the version of the instance used to take the snapshot\) must match the version of the application instance at the destination. The system will not allow you to import a snapshot with a version either earlier or later than that of the destination instance.

If the snapshot's version is later, you need to upgrade the destination instance to match the snapshot's version. Conversely, if the snapshot's version is earlier, you should first upgrade the source instance to align with the version of the destination instance and then export the snapshot.

## Snapshot Import {#import_snapshot .section}

You can restore snapshots that are saved in the database of the instance of a destination tenant.

To do this, you import a snapshot to a selected tenant on the [Tenants](SM_20_35_20.md) \(SM203520\) form. The version of the snapshot \(that is, the version of the instance used to take the snapshot\) must match the version of the application instance in the destination.

**Important:** Through the web interface, you can import snapshots only if their size does not exceed 1 GB. To restore snapshots larger than 1 GB, use the Acumatica ERP Configuration wizard. Note that the restoration of larger snapshots is limited to those in XML format only. For details, see [Managing Tenants Locally](../Shared/../UserGuide/SA_MNG_Managing_Tenants_Locally.md).

When you import a snapshot, you need to specify whether the system should import custom data from the snapshot by using the **Include Data From Custom Columns** check box in the **Upload Snapshot Package** dialog box. If the check box is selected, custom data is entered for the elements that were added by customization projects applied to the instance where the snapshot was taken.

Also, you need to specify whether the system should preliminarily match the data from the snapshot with the database structure in your current Acumatica ERP instance, to reveal any conflicts before the system imports the snapshot. The system performs this matching if you select the **Check Database Structure Before Import** check box in the **Upload Snapshot Package** dialog box.

**Tip:** You can have a virtually unlimited number of snapshots. The only limitation is the disk space used by snapshots stored in the database. Due to API limitation, the maximum size of the snapshot file is 2 GB. We recommend that before you take or import a snapshot, you make sure that you have enough free space in the Acumatica ERP database. You can use the **View Space Usage** command on the More menu of the [Tenants](../Shared/../UserGuide/SM_20_35_20.md) \(SM203520\) form to open the [Space Usage](../Shared/../UserGuide/SM_20_35_25.md) \(SM203525\) form and review the available space.

Customization projects may include changes in the database structure \(such as changing a field length\). These changes may cause conflicts during the insertion of data from the snapshot to your current Acumatica ERP instance \(for example, if the length of the inserted field exceeds the maximum length in the database of your current Acumatica ERP instance\). When this check is performed and there are conflicts, the system returns an error message that lists all fields from the snapshot that have caused conflicts. You can resolve these conflicts by changing the database structure in your current Acumatica ERP instance.

**Tip:** If you have access to the destination instance database, you can resolve conflicts directly in the database management studio; otherwise, you can develop a customization project with a script that resolves the conflicts.

The following table summarizes our recommendations regarding whether during the import of a snapshot, you should select the **Include Data From Custom Columns** and **Check Database Structure Before Import** check boxes in the **Upload Snapshot Package** dialog box. These recommendations depend on the set of customization projects applied to the source instance when a snapshot was taken and the set applied to the destination instance when a snapshot is to be imported.

|Instance of the Source Tenant|Instance of the Destination Tenant|Check Boxes|Source and Destination Tenants Belong to the Same Instance|Source and Destination Tenants Belong to Different Instances|
|-----------------------------|----------------------------------|-----------|----------------------------------------------------------|------------------------------------------------------------|
|No customization projects had been applied when the snapshot was taken.|No customization projects are applied when the snapshot is to be imported.|**Include Data From Custom Columns**|The system ignores the state of the check box.|The system ignores the state of the check box.|
|**Check Database Structure Before Import**|The system ignores the state of the check box.|The system ignores the state of the check box.|
|No customization projects had been applied when the snapshot was taken.|Some customization projects are applied when the snapshot is to be imported.|**Include Data From Custom Columns**|The system ignores the state of the check box.|The check box should be cleared.|
|**Check Database Structure Before Import**|The check box should be cleared.|The check box should be selected.|
|Some customization projects had been applied when a snapshot was taken.|No customization projects are applied when the snapshot is to be imported.|**Include Data From Custom Columns**|The check box should be cleared.|The check box should be cleared.|
|**Check Database Structure Before Import**|The check box should be cleared.|The check box should be selected.|
|The set of customization projects applied to the source instance when a snapshot was taken is the same as the set of projects applied to the destination instance when the snapshot is to be imported.|**Include Data From Custom Columns**|The check box should be selected if want to share custom data between tenants.|The check box should be selected if want to share custom data between tenants.|
|**Check Database Structure Before Import**|The check box should be cleared.|The check box should be cleared.|
|The set of customization projects applied to the source instance when a snapshot was taken is different from the set of projects applied to the destination instance when the snapshot is to be imported.|**Include Data From Custom Columns**|The system ignores the state of the check box.|The check box should be cleared.|
|**Check Database Structure Before Import**|The system ignores the state of the check box.|The check box should be selected.|

An imported snapshot is stored in the database, and you can restore the data from the snapshot whenever you want.

**Parent topic:**[Using Snapshots](../UserGuide/SA_Using_Snapshots_Mapref.md)

