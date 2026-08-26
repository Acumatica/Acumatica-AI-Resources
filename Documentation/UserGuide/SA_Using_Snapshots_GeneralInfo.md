# Snapshots: General Information {#_1c08a5ce-c9c0-4b36-904e-b2cbae9473ea .concept}

A snapshot is the full or partial data of an Acumatica ERP tenant saved locally in the database of the instance to which the tenant belongs, or in a specified location. Snapshots can also be used as tenant templates when you need to add to an Acumatica ERP instance new tenants that are similar in configuration. Additionally, you can use snapshots to set up a test environment for your company where you test the configuration changes required for your company before you apply them to your production tenant.

A tenant that is used to take a snapshot is called a *source tenant*, and a tenant where you plan to restore a snapshot is called a *destination tenant*. Source and destination tenants may belong to the same instance or to different instances.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Take a snapshot of tenant-specific content
-   Export a snapshot to external storage
-   Review the `manifest.xml` file of the snapshot to find out its details
-   Import a snapshot
-   Restore a snapshot in a destination tenant

## Applicable Scenarios { .section}

You use snapshots in the following cases:

-   You are an implementation consultant, and before starting the user acceptance testing \(UAT\) phase of an implementation, you need to prepare a test instance to perform UAT. The test instance should be identical to the one you have configured for production. You take a snapshot of the production tenant and restore it on the test instance dedicated to UAT.
-   Your company has decided to test new Acumatica ERP functionality in a copy of your production tenant. Because you are a system administrator, you have been asked to create a test instance and import production data to it. You take a snapshot of the production tenant and restore it on an instance dedicated to testing.
-   You are a system administrator, and you have been tasked with creating a tenant with a training dataset for a new employee of your company. You download a snapshot with a training dataset and restore it on the test tenant dedicated to the employee training.

## Snapshot Contents { .section}

When you take a snapshot on the [Tenants](SM_20_35_20.md) \(SM203520\) form, the snapshot contains the data from the SQL database tables included in the snapshot. The set of tables to be included in a snapshot is defined by the export mode that you select in the **Export Mode** box of the **Create Snapshot** dialog box. The following predefined export modes are available:

-   *Full*: All data related to the tenant
-   *Full except Attachments and Wiki*: The full data related to the tenant, excluding attachments and wiki articles
-   *Full except Attachments*: The full data related to the tenant, excluding attachments
-   *Settings and Business Accounts*: The tenant's complete set of configuration settings and business accounts, including attachments
-   *Settings and Business Accounts except Attachments*: The tenant's complete set of configuration settings and business accounts, excluding attachments
-   *Settings except Attachments*: The tenant's configuration settings, excluding attachments
-   *Settings only*: The tenant's configuration settings, including attachments

**Important:** If the *Project Accounting* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form, project-related data is stored as follows for snapshots with the *Settings and Business Accounts* and *Settings and Business Accounts except Attachments* export modes:

-   Projects and project tasks are included in the snapshot and assigned the *In Planning* status.
-   Project templates are included in the snapshot; revenue budget lines and cost budget lines are included in project templates.
-   Common tasks are included in the snapshot along with the budget line information.

Customization project files are included in a snapshot even when you create snapshots in *Full except Attachments and Wiki* or *Full except Attachments* export modes. So, you no longer have to re-import your customizations after restoring snapshots.

You select the export mode based on the intended use of the snapshot. If you need a snapshot for testing purposes or for making a tenant template, configuration settings may be enough for you. If you need a complete copy of a tenant, you should select an option that includes full tenant data.

**Attention:** The tables that stores data related to the following functionality are excluded from the snapshot process:

-   AP documents recognition
-   Bank feed integration
-   Multilanguage and user-defined field values \(`KvExt` tables\)

You can add a custom export mode if the predefined set does not suit your needs \(for example, for data security reasons\). For details, see [Snapshots: Custom Snapshot Configurations](SA_Using_Snapshots_Modification_of_Content_Options_Concept.md).

## Snapshot Creation { .section}

You take a snapshot of the configuration and data of a tenant by using the [Tenants](SM_20_35_20.md) \(SM203520\) form. For a snapshot, you specify which data you want to include by selecting one of the available export modes. Data from published customizations is a part of the database and is always included in snapshots. When you take a snapshot, any previously taken snapshots are not included in the new snapshot.

**Tip:** You can have a virtually unlimited number of snapshots. The only limitation is the disk space used by snapshots stored in the database. Due to API limitation, the maximum size of the snapshot file is 2 GB. We recommend that before you take or import a snapshot, you make sure that you have enough free space in the Acumatica ERP database. You can use the **View Space Usage** command on the More menu of the [Tenants](../Shared/../UserGuide/SM_20_35_20.md) \(SM203520\) form to open the [Space Usage](../Shared/../UserGuide/SM_20_35_25.md) \(SM203525\) form and review the available space.

The process of creating a snapshot may take a significant amount of time because the database tables are copied one by one for a snapshot, and this process sometimes results in errors. For example, a user may save changes to documents that have been partially copied; consequently, the data in the snapshot would be corrupted. Therefore, you need to activate maintenance mode \(that is, when the system is locked out for maintenance, as described in [Upgrading of Acumatica ERP: To Schedule the System Lockout](INST_Upgrading_System_Lockout.md)\) before creating snapshots.

**Attention:** Because the process of taking a snapshot could result in errors, we do not recommend that you use snapshots to back up data. We recommend that you instead use database management applications to back up the database of your Acumatica ERP instance.

After creating a snapshot, you need to manually switch off maintenance mode \(that is, unlock the system\) by clicking **Stop Maintenance** on the form toolbar of the [Apply Updates](SM_20_35_10.md) \(SM203510\) form.

## Snapshot Storage, Upgrade, and Deletion { .section}

Once a snapshot is created, it appears on the **Snapshots** tab of the [Tenants](SM_20_35_20.md) \(SM203520\) form. Tenant snapshots are stored in the database as tenants with special tenant IDs \(negative integers\). When you upgrade the application and the database, the stored snapshots are upgraded as well.

To free disk space, you can export snapshots to store them in external storage, and then delete snapshots that are obsolete or stored externally. For details on deleting snapshots, see [Delete Snapshots and Tenants](SM_50_30_00.md). Exported snapshots can later be imported back into the system. For details, see [Snapshots: Export and Import](SA_Using_Snapshots_Export_and_Import_Concept.md).

**Important:** Snapshots stored in external storage are not updated when you update your application instance. If a snapshot has a version older than the version of the system, you cannot import the snapshot to the system.

Deleting a snapshot is a permanent operation—you will not be able to recover a deleted snapshot.

## Snapshot Visibility Across Tenants { .section}

In a multitenant configuration, you can sign in to one tenant and then take a snapshot of any tenant available to you, whether it is the tenant you signed in to or another tenant that you can access. The snapshots you take are stored within the tenant you are signed in to when you take them; you will not be able to access them if you sign in to another tenant.

Within the base tenant, when a snapshot is taken, it is associated with its source tenant. That is, to see the snapshot in the list on the **Snapshots** tab, you should select its source tenant in the **Tenant ID** box of the Summary area of the [Tenants](SM_20_35_20.md) \(SM203520\) form. While a snapshot is associated with a tenant \(that is, while the associated tenant is displayed for the snapshot in the **Tenant ID** column on the **Snapshots** tab\), you can export or restore the snapshot only for the associated tenant.

To make the snapshot available for export or restoration regardless of the selected tenant, you can select a particular snapshot on the **Snapshots** tab and change its visibility by clicking **Change Visibility** on the table toolbar. By clicking this button, you toggle between normal visibility \(indicated by the **Tenant ID** column being filled in for the snapshot, which associates the snapshot with the tenant\) and increased visibility \(indicated by the **Tenant ID** column being blank\). If you click this button for a snapshot with normal visibility, the system removes the association and clears the **Tenant ID** column for the snapshot. Then the snapshot is available on the **Snapshots** tab, regardless of the tenant you have selected in the **Tenant ID** box of the Summary area. You can export or restore the snapshot for any tenant selected in the **Tenant ID** box of the Summary area.

Also, you can move a snapshot between tenants \(for security reasons, for example\). You can take a snapshot of the source tenant, remove the association, select the destination tenant in the **Tenant ID** box of the Summary area, and click **Change Visibility** on the table toolbar of the **Snapshots** tab for the selected snapshot. The system associates the snapshot with the destination tenant, and the snapshot is not available for other tenants of the system, even its source tenant.

## Snapshot Restoration { .section}

When you take a snapshot, it is saved to the tenant to which you are currently signed in. In a multitenant configuration, you can sign in to one tenant and move or share snapshots between other tenants, which you can access by changing snapshot visibility. Alternatively, you can export a snapshot, store it in an external location, and import it to the needed tenant. For details on exporting and importing snapshots, see [Snapshots: Export and Import](SA_Using_Snapshots_Export_and_Import_Concept.md).

**Important:** Through the web interface, you can import snapshots only if their size does not exceed 1 GB. To restore snapshots larger than 1 GB, use the Acumatica ERP Configuration wizard. Note that the restoration of larger snapshots is limited to those in XML format only. For details, see [Managing Tenants Locally](../Shared/../UserGuide/SA_MNG_Managing_Tenants_Locally.md).

In the **Tenant ID** box of the Summary area of the [Tenants](SM_20_35_20.md) \(SM203520\) form, you select the tenant for which you want to restore a snapshot. The system displays the snapshots available for the selected tenant on the **Snapshots** tab. These snapshots can be imported, moved from another tenant, or shared by all tenants of the instance. Before restoring a snapshot, you should activate maintenance mode \(as described in [Upgrading of Acumatica ERP: To Schedule the System Lockout](INST_Upgrading_System_Lockout.md)\). When you restore a snapshot by clicking **Restore Snapshot** on the form toolbar, you set the data of the selected tenant to the state of the source tenant when the snapshot was taken.

**Tip:** If you restore a snapshot created from a tenant with the *Active* status, or if you copy such a tenant to another tenant with the *Test Tenant* status, the system will not change the status of the destination tenant.

If you restore an unsafe snapshot \(one that was not taken in maintenance mode\), the system displays a warning message and adds a warning that a user can view in the **About Acumatica** dialog box by clicking **Settings** &gt; **About...** on the form title bar.

**Attention:** We recommend that you avoid restoring unsafe snapshots in a production system, because these snapshots can create corrupted data.

After restoring a snapshot, you need to manually switch off maintenance mode \(that is, unlock the system\) by clicking **Stop Lockout** on the form toolbar of the [Apply Updates](SM_20_35_10.md) \(SM203510\) form.

**Parent topic:**[Using Snapshots](../UserGuide/SA_Using_Snapshots_Mapref.md)

