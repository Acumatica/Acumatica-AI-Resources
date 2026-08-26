# Instance Maintenance: General Information {#_13d3b182-3994-45f0-923b-2da18aa8b20b .concept}

In Acumatica ERP, you can review and adjust various settings of the instance, such as its name or database.

This topic provides an overview of the adjustments that you can make to existing instances and databases by using the Acumatica ERP Configuration wizard.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Check the state of Acumatica ERP application instances and their databases
-   View the settings of an Acumatica ERP instance
-   Change the name of an Acumatica ERP instance
-   Change a database in an Acumatica ERP instance

## Applicable Scenarios { .section}

You may need to learn how to make some changes in an Acumatica ERP instance in scenarios that include the following:

-   You are a system administrator who needs to link the existing Acumatica ERP instance to a new database.
-   You are a system administrator who needs to view some settings of the Acumatica ERP instance and change its name.

## Viewing of an Instance’s Settings { .section}

You can view the following settings of an existing Acumatica ERP instance on the Instance Information page of the Acumatica ERP Configuration wizard:

-   **Instance Name**
-   **Instance Type**, which can be *RegularSite* to indicate Acumatica ERP or *CompanyPortal* to indicate the Acumatica Self-Service Portal.
-   **Instance File Path**
-   **Database**
-   **Database Version**
-   **Files Version**
-   **Instance URL**
-   **Website Name**
-   **Virtual Directory Name**

You can open the Instance Information page as follows:

1.  Run the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Perform Application Maintenance**.
3.  Select the row with the instance whose settings you wish to review.
4.  Click **Review Instance Info**.

On the Instance Information page, the instance and virtual directory names can be edited. The Instance Information page also provides quick access to the folder where the files of this instance are stored. Additionally, you can create a shortcut for the instance URL to get quick access to the site.

## Changing of the Instance Database { .section}

You can change the database of an existing Acumatica ERP instance—for example, if you want to switch to a backup database. You can also associate the application instance with a new database and create it on the fly. To create a new database, you can use the **Perform Database Maintenance** option on the Welcome page of the Acumatica ERP Configuration wizard. For more details, see [To Perform Database Maintenance](Maintaining_Databases.md).

When you connect the application instance to another existing database, the version of the database is checked. The versions of the database and the Acumatica ERP Configuration wizard must be the same. If the database has a lower version, you must update it to correspond to the Acumatica ERP Configuration wizard version. This can be done during the process of changing the database. This will also require you to update the instance site.

**Parent topic:**[Maintaining Instances](../UserGuide/INST_Maintaning_Instances_Mapref.md)

