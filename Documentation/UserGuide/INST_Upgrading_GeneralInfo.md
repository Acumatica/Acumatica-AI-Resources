# Upgrading of Acumatica ERP: General Information {#_0d0187ee-44d4-4534-a423-21d43ef77556 .concept}

You can upgrade Acumatica ERP by installing a new major version of the system. You can also update Acumatica ERP by installing an update with a new minor version of the system. A major version provides functional enhancements and new features. A minor version includes fixes for reported issues and occasionally functionality improvements. Both major and minor versions are distributed in builds, which are installation packages of the system. Builds are cumulative—each new build includes everything from the previous builds, along with any new fixes. This eliminates the need to install previous builds before installing the latest one.

To upgrade or update Acumatica ERP, you need to first upgrade or update the Acumatica ERP Configuration wizard to the needed version.

This topic provides an overview of upgrading and updating Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Install the next version of the Acumatica ERP Configuration wizard
-   Update an application instance to the next version of Acumatica ERP

## Applicable Scenarios { .section}

You may need to learn how to upgrade or update Acumatica ERP in scenarios that include the following:

-   You are a system administrator who needs to upgrade Acumatica ERP to the latest product version.
-   You are a system administrator who needs to update one of the Acumatica ERP instances to the next product version.

## Before You Proceed { .section}

We strongly recommend that before you upgrade or update Acumatica ERP to a newer product version, you do the following:

1.  Back up all configuration files and databases used by the application instances.
2.  If you have created any custom views with the `SCHEMABINDING` clause in the Acumatica ERP database, remove them. \(You can create these views anew after the update.\)
3.  If you have been replicating the Acumatica ERP database, turn off the replication. \(Otherwise, the system cannot be updated.\)
4.  If you developed a client application by using the screen-based SOAP API, follow the procedure described in [To Update a Client Application that Uses Screen-Based Web Services](../Shared/../IntegrationDevelopmentGuide/IS__how_Update_API_Using_Wrapper.md) to prevent a failure of your application that can happen because of the UI changes in the system.
5.  On the [Automation Schedule Statuses](../Shared/../UserGuide/SM_20_50_30.md) \(SM205030\) form, make sure that no processes are scheduled for the update time. If you find any scheduled processes, reschedule them so that they start after the update.
6.  On the [Tenants](../Shared/../UserGuide/SM_20_35_20.md) \(SM203520\) form, click **Optimize Database** to check your Acumatica ERP database for orphaned snapshots, and delete any that the system finds.

## Upgrading Process { .section}

The general process of system upgrading \(to a major version\) or updating \(to a minor version\) by using the Acumatica ERP Configuration wizard, which has already been installed on the server, is the following:

1.  If necessary, notify users about the upcoming upgrade or update and automatically lock out the system for the time of the upgrade or update on the [Apply Updates](SM_20_35_10.md) \(SM203510\) form, as described in [Upgrading of Acumatica ERP: To Schedule the System Lockout](INST_Upgrading_System_Lockout.md). A message alerting users to the system lockout will be displayed on the Sign-In page.

    **Attention:** When the lockout is in effect, the following happens in the system:

    -   Only users that have the *Administrator* role can sign in to the system.
    -   The system stops all processes that were run by a schedule.
2.  Obtain the needed Acumatica ERP build in the [Acumatica Community](https://community.acumatica.com/) website. You need to use your partner's username and password to access the site. Download an installation package, and run it to upgrade or update the Acumatica ERP Configuration wizard.

    The procedure is the same as the procedure for installing Acumatica ERP Configuration wizard. For details, see [Acumatica ERP Installation On-Premises: General Information](INST_Installing_Configuration_Wizard_GeneralInfo.md).

3.  Start upgrading or updating the database and the site of your application instance. The system will automatically perform the following actions:

    1.  For instances that contain published customization projects, validating the compatibility of the currently published customization code with the code of the new product version. If the validation is successful, the system upgrade or update the database and the site. If the validation fails, the **Validation Failed** window opens to display the list of the executed checks and the discovered errors, and the upgrade process is interrupted. To resolve any issues that were discovered, contact your Acumatica support provider.
    2.  Upgrading or updating the database and site of the instance.
    If you need to upgrade or update the database without upgrading or updating the site or to upgrade or update only the site \(without the database\), see the next section in this topic.

    **Important:** We strongly recommend that you use the common procedure described in this section for a usual upgrade or update of your Acumatica ERP application instance.

    The time required for the upgrade or update depends on the performance of your database server, the differences between the old and current versions of the database schema, the hardware configuration of the server, and the current system load. When the upgrade or update of the instance is finished, the Acumatica ERP Configuration wizard updates the list of instances.

4.  If you are upgrading or updating your system from a version that did not include search indexes, you need to build search indexes by using the [Rebuild Full-Text Entity Index](SM_20_95_00.md) \(SM209500\) form. If the system has search indexes that were built before the upgrade or update, we recommend rebuilding search indexes by using the form. For details, see [Building Search Indexes](SA_Building_Search_Indexes_Mapref.md).
5.  If you are locked out the system, unlock the system on the [Apply Updates](SM_20_35_10.md) form, as described in [Upgrading of Acumatica ERP: To Unlock an Acumatica ERP Instance](INST_Upgrading_Unlock_System.md).

## Separate Upgrade of the Database and the Site {#_7f50d93f-2196-4526-8742-e5a2a57aada5 .section}

You might need to upgrade or update the Acumatica ERP database without upgrading or updating the site, upgrade or update only the site, or consequently upgrade or update the database and the site.

**Important:** If you need to upgrade or update the Acumatica ERP application instance and the Self-Service Portal instance that is connected to the database of the Acumatica ERP application instance, you can first upgrade or update the Acumatica ERP application instance \(that is, the website and the database\) and then the site of the Self-Service Portal. You can also upgrade or update the Self-Service Portal with its database and then upgrade or update only the site of the Acumatica ERP application instance.

To do the divided upgrade or update, you can use the **Upgrade Only Website** and **Upgrade Only Database** commands, which you can find in the drop-down list to the right of the **Upgrade** button on the Application Maintenance page of the Acumatica ERP Configuration wizard. For details, see [Upgrading of Acumatica ERP: To Update the Database of an Acumatica ERP Instance](INST_Upgrading_Updating_Database.md) and [Upgrading of Acumatica ERP: To Update an Acumatica ERP Site](INST_Upgrading_Updating_Site.md).

**Important:** When you upgrade or update your Acumatica ERP instance by using the **Upgrade Only Website** or **Upgrade Only Database** commands, the system does not validate the customization compatibility. If you have published customization projects in your Acumatica ERP instance, the instance may stop working after an upgrade or update because of incompatible customization code. For details, see [Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md).

**Parent topic:**[Upgrading Acumatica ERP](../UserGuide/INST_Upgrading_Mapref.md)

