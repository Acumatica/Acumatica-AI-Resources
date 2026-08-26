# Upgrading of Acumatica ERP: To Update the Database of an Acumatica ERP Instance {#_e70b2943-7d89-4f2b-b789-a20caf8e33b4 .task}

The following activity will walk you through the process of updating the database of the Acumatica ERP instance.

**Attention:** The updating of the instance is a separate process that you may need to perform.

## Story { .section}

Suppose that you are the system administrator of your company, and you need to update only the database of the existing Acumatica ERP instance.

## Process Overview { .section}

In this activity, you will update the database of the Acumatica ERP instance.

## System Preparation { .section}

Before you begin performing the step of this activity, make sure that you have completed the [Upgrading of Acumatica ERP: To Schedule the System Lockout](INST_Upgrading_System_Lockout.md) prerequisite activity.

## Step: Updating the Database of an Instance { .section}

To update the database of the Acumatica ERP instance, do the following:

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Perform Application Maintenance**.
3.  On the Application Maintenance page, do the following:
    1.  In the **Installed Sites** list, click the Acumatica ERP instance whose database you want to update. You can see the current version in the **DB Version** box.
    2.  In the drop-down menu next to the **Upgrade** button, select **Upgrade Only Database**.
4.  When you are prompted, click **Yes** to continue the update.
5.  In the **SQL Server Authentication** dialog box, specify the authentication method to be used to connect to the database.

    If you select the **SQL Server Authentication** option button, specify the username and password of an account that has sufficient rights to make changes to the databases.

6.  If you want to shrink data after the database maintenance, select the **Shrink Data After Upgrade** check box.
7.  Click **OK**.

The time required for the update depends upon your database server performance and the differences between the old and current versions of the database schema.

After you have updated the database, you should update the site, as described in [Upgrading of Acumatica ERP: To Update an Acumatica ERP Site](INST_Upgrading_Updating_Site.md). Also, we strongly recommend rebuilding the search indexes by using the [Rebuild Full-Text Entity Index](SM_20_95_00.md) \(SM209500\) form.

**Parent topic:**[Upgrading Acumatica ERP](../UserGuide/INST_Upgrading_Mapref.md)

