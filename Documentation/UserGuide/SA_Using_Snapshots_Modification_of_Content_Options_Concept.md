# Snapshots: Custom Snapshot Configurations {#_7e3a77ec-e8b5-4f68-8365-e2e20a9d6208 .concept}

A snapshot consists of the data from the SQL database tables that are included in the snapshot. The list of tables to be included in a snapshot is determined by the export mode that you select when you use the [Tenants](SM_20_35_20.md) \(SM203520\) form to take a snapshot. A predefined set of options is available for selection in the **Export Mode** box of the **Create Snapshot** dialog box. If the predefined options do not suit your needs—for example, for data security reasons—you can configure and add custom options.

You can customize a predefined snapshot configuration in multiple files, and the system will merge all changes to the same snapshot configuration. This capability may be useful when, for example, a customization project adds a new table. You can exclude the records of this table from the snapshot in one customization project and edit a numbering sequence for this table in another customization project.

In this topic, you will read about how the snapshot configuration is stored and can be modified.

## Snapshot Configuration Storage {#section_Snapshot_Contents .section}

The contents of a snapshot that does not include all data—that is, a snapshot with any export mode except *Full* selected in the **Export Mode** box of the **Create Snapshot** dialog box of the [Tenants](SM_20_35_20.md) \(SM203520\) form—are defined by a corresponding snapshot configuration file with the `.esc` extension. These files are usually located in `%Program Files%\`Acumatica ERP`\<instance name>\App_Data\SnapshotConfigs`, where *&lt;instance name&gt;* is the name of the application instance website.

For each snapshot configuration \(ESC file\), the `SnapshotConfigs` folder has a separate folder with the same name as the ESC file. Also, the instance contains a single configuration for a *Full* snapshot. So for the *Full* configuration, the `App_Data/SnapshotConfigs` includes the `Full.esc` file and the `Full` folder.

## Creation of Custom Configurations { .section}

When the system is creating a snapshot, it goes through all tables specified in the configuration file and copies all data with no restrictions or validation. If you want to preserve some data that you consider sensitive—for example, user passwords and settings for connecting with third-party applications—we recommend that you create your own snapshot configuration files to preserve this data, down to SQL table fields. You can either exclude tables and table fields from snapshots or replace data in table fields with predefined values. For examples of configuration settings, see [Snapshots: Examples of Sensitive Data Being Excluded from Snapshots](SM__con_Snapshot_Sensitive_Data.md).

**Attention:** We do not recommend modifying predefined snapshot configuration files because during upgrade, these files will be replaced with the next predefined version.

You can save a copy of the predefined configuration file with a custom name \(a snapshot *adjustment file*\) in thе folder with the same name as the predefined snapshot configuration and modify the contents of this copy to suit your needs. This file can contain only the differences with the predefined ESC file. An example of a snapshot adjustment file is shown in the following code.

```
<Tables >
  <Exclude  table="UploadFile" />
  <Exclude  table="UploadFileInScreen" />
  <Exclude  table="UploadFileRevision" />
  <Exclude  table="NoteDoc" /> 
</Tables>
```

When you have finished making these modifications, you click **Restart Application** on the [Apply Updates](SM_20_35_10.md) \(SM203510\) form, which makes your custom export mode available for the creation of a snapshot on the [Tenants](SM_20_35_20.md) \(SM203520\) form.

**Attention:** Make sure that all users of your website are warned about the site restart so that they can save all documents.

To save a snapshot adjustment file to a customization project, select it on the [Files](AU_20_45_00.md) page of the Customization Project Editor. When the customization project is published, the file will be saved to the `AppData/SnapshotConfigs` folder of the instance. Customization projects that contain the snapshot configuration files for the previous versions should work as they did before.

**Tip:** You can create a custom snapshot configuration by copying the predefined file and saving it to the `SnapshotConfigs` folder. You can also create a folder for a custom configuration and save adjustment files for this custom configuration.

## Merging of the Snapshot Configurations { .section}

When you create a snapshot on the [Tenants](SM_20_35_20.md) \(SM203520\) form, if an instance of Acumatica ERP includes multiple snapshot adjustment files, the system merges them into a single snapshot configuration, and then applies it to the predefined configuration. If the system generates an error during the merge process, a detailed error message is displayed and saved to the trace log, and the snapshot is not created. In the trace log, a user can always see the file in which the conflict occurred.

**Parent topic:**[Using Snapshots](../UserGuide/SA_Using_Snapshots_Mapref.md)

