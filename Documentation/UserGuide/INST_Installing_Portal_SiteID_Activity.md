# Instance Deployment: To Set Up a Group of Self-Service Portal Instances {#_7ea41d71-fc0e-4b47-b712-db4bfa42a1cb .task}

In this activity, you will learn how to create a group of Self-Service Portal instances.

## Story { .section}

Suppose that you are the system administrator of your company, and you need to set up a group of two Self-Service Portal instances with the *Retail* group identifier.

## Process Overview { .section}

In this activity, you will deploy two Self-Service Portal instances and specify the *Retail* group identifier in their configuration files.

## System Preparation { .section}

Before you begin doing this activity, make sure that you have performed the following prerequisite activity: [Instance Deployment: To Deploy an Instance with Demo Data](INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).

## Step 1: Deploying Self-Service Portal Instances { .section}

To deploy the first Self-Service Portal instance that will be included in the *Retail* group, do the following:

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Deploy a New Acumatica ERP Instance**.
3.  On the Database Server Connection page, specify the following settings, and then click **Next** to proceed to the next page:
    -   **Server Type**: *Microsoft SQL Server*
    -   **Server Name**: `(local)`
    -   **Windows Authentication**: Selected
4.  On the Database Configuration page, specify the following settings, and then click **Next** to proceed to the next page:

    1.  **Connect to an Existing Database**: Selected
    2.  **Available Databases on the Server**: The database that is used by the Acumatica ERP instance for which you want to create the Self-Service Portal instance
    **Important:** For a group of Self-Service Portal instances, the database must be the same across all instance.

5.  On the Tenant Setup page, select the tenant that is used by the Acumatica ERP instance, and click **Next**.
6.  On the Database Connection page, select **Windows Authentication**.
7.  Click **Next**.
8.  On the Instance Configuration page, specify the following settings:
    1.  **Instance Name**: `Portal1`
    2.  **Create Self-Service Portal**: Selected
    3.  **Local Path to the Instance**: The path on the local computer to this application instance

        **Tip:** The path looks like `C:\Program Files\Acumatica ERP\Portal1`.

9.  Click **Next**.
10. On the Website Configuration page, verify the following settings, and then click **Next** to proceed to the next page:
    -   **Website Settings**: *Default Web Site*
    -   **Create Virtual Directory**: Selected
    -   **Virtual Directory Name**: *Portal1*
    -   **Use Existing Application Pool**: Selected
    -   List of existing application pools: *DefaultAppPool*
11. On the Confirmation of Configuration page, do the following:
    1.  Check the configuration settings that you have specified.
    2.  Click **Finish** to deploy this Self-Service Portal instance.

After the deployment of the *Portal1* instance is complete, repeat the instructions and deploy another Self-Service Portal instance. On the Instance Configuration page, specify *Portal2* as the name for the second instance and ensure that this name is also specified in the **Virtual Directory Name** box on the Website Configuration page.

**Important:** When you deploy the *Portal2* instance, make sure that you specify the same database on the Database Configuration page as you did for the *Portal1* instance.

## Step 2: Specifying the Group Identifier for the Self-Service Portal Instances { .section}

To specify that the Self-Service Portal instances that you have deployed in the previous step belong to the *Retail* group of instances, do the following for each of the instances:

1.  Open the `web.config` file corresponding to the Self-Service Portal instance.

    **Tip:** This file is usually located in `%Program Files%\Acumatica ERP\<instance name>`, where *&lt;instance name&gt;* is the name of the Self-Service Portal instance—that is *Portal1* or *Portal2*.

2.  In the file, find the `appSettings` section.
3.  In the `PortalSiteID` setting, which represents the group identifier of the Self-Service Portal instance, specify the *Retail* value as follows.

    ```
    <add key="PortalSiteID" value="Retail" />
    ```

4.  Save the `web.config` file; this causes the system to automatically restart.

**Parent topic:**[Deploying Acumatica ERP Instances](../UserGuide/INST_Deploying_Instances_Mapref.md)

