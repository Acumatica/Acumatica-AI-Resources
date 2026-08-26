# Uninstalling of Acumatica ERP: General Information {#_f3d0f1d8-eefb-4b66-b540-894c1bcc5bd9 .concept}

In Acumatica ERP, you can use the Acumatica ERP Configuration wizard to remove an existing application instance. If you no longer need the Acumatica ERP Configuration wizard \(for example, if you need another version of the wizard\), you can uninstall it.

This topic provides an overview of the processes of deleting instances and uninstalling the Acumatica ERP Configuration wizard.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Learn about the deletion of application instances
-   Learn about uninstalling the Acumatica ERP Configuration wizard
-   Delete an application instance by using the Acumatica ERP Configuration wizard

## Applicable Scenarios { .section}

You may need to learn how to delete an application instance or Acumatica ERP Configuration wizard in scenarios that include the following:

-   You are a system administrator who needs to remove an unneeded Acumatica ERP application instance.
-   You are a system administrator who needs to uninstall the Acumatica ERP Configuration wizard to install an earlier version of Acumatica ERP.

## Deletion of an Instance { .section}

Deleting an Acumatica ERP application instance removes this website from Internet Information Services and cleans up the virtual folder related to the website. The instance's database stays untouched—you can delete it by using the database management tools, if needed. Deletion of an instance also does not delete any customized pages or files.

You can delete an application instance by using the Acumatica ERP Configuration wizard. On the Application Maintenance page of the wizard, you select the Acumatica ERP instance that you want to delete and then click **Delete**. For details, see [Uninstalling of Acumatica ERP: To Delete an Instance](INST_Uninstalling_Acumatica_Uninstall_Instance_Activity.md).

## Uninstalling of the Acumatica ERP Configuration Wizard { .section}

You might need to uninstall the Acumatica ERP Configuration wizard if you want to install earlier versions of Acumatica ERP. If you uninstall the current version and then install the needed earlier version, you will be able to deploy application instances with earlier versions. Existing application instances or databases will not be removed or altered; instead, the red circle with a white X instead of the green check mark will be shown for them on the Application Maintenance page of the Acumatica ERP Configuration wizard. For details, see [Instance Maintenance: Possible Update Statuses of an Instance](INST_Maintaning_Instances_States_Instances.md).

You can uninstall the Acumatica ERP Configuration wizard on the application server by using the standard Windows procedure. The uninstalling process removes only the applications and tools that have been installed by the Acumatica ERP installer package. All the instances, databases, and customization projects that exist are kept intact and functional.

The general process of completely uninstalling Acumatica ERP from the application server is the following:

1.  For each application instance, unpublish any customization projects.
2.  Use the Acumatica ERP Configuration wizard to delete all application instances.
3.  On the application server computer, uninstall Acumatica ERP Configuration wizard by using the Apps &amp; features tool in Windows.

    The relevant registry data will be removed as well as the program group item.


You can also remove Acumatica ERP in one step, also by using Apps &amp; features. You can do this by selecting Acumatica ERP in the list of application, and then clicking the **Modify** button. In the Change, Repair, or Remove Installation page of the Setup wizard, which opens, you click the **Remove** button.

**Important:** The above procedures do not affect the following entities:

-   Databases created by the application: If you need to delete a database, do so manually by using SQL Server tools.
-   Directories on the file system used by the application: If needed, manually delete the empty directories on the file system and the program group items.

**Parent topic:**[Uninstalling Acumatica ERP](../UserGuide/INST_Uninstalling_Acumatica_Mapref.md)

