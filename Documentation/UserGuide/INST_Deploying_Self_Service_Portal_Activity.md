# Instance Deployment: To Deploy a Self-Service Portal Instance {#_95f1df59-d5f9-42f5-bf61-394b80eeeced .task}

In this activity, you will learn how to deploy the Self-Service Portal instance and connect it to the database used by the existing Acumatica ERP instance.

## Story { .section}

Suppose that you are the system administrator of your company, need to deploy the Self-Service Portal instance to provide access to your Acumatica ERP instance for the customers.

## Process Overview { .section}

In this activity, you will deploy the Self-Service Portal instance and connect it to the database of the existing Acumatica ERP instance.

## System Preparation { .section}

Before you begin deploying the Self-Service Portal instance, make sure that you have performed the following prerequisite activity: [Instance Deployment: To Deploy an Instance with Demo Data](INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).

## Step: Deploying a Self-Service Portal Instance { .section}

To deploy the Self-Service Portal instance, do the following:

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Deploy a New Acumatica ERP Instance**.
3.  On the Database Server Connection page, specify the following settings, and then click **Next** to proceed to the next page:
    -   **Server Type**: *Microsoft SQL Server*
    -   **Server Name**: `(local)`
    -   **Windows Authentication**: Selected
4.  On the Database Configuration page, specify the following settings, and then click **Next** to proceed to the next page:
    1.  **Connect to an Existing Database**: Selected
    2.  **Available Databases on the Server**: The database that is used by the Acumatica ERP instance for which you want to create the Self-Service Portal instance
    3.  **Update Database**: A check box that you select if the schema of the database is outdated
    4.  **Shrink Data After Upgrade**: A check box that you select if you want to shrink data after the database maintenance
5.  On the Tenant Setup page, select the tenant that is used by the Acumatica ERP instance, and click **Next**.
6.  On the Database Connection page, select **Windows Authentication**.
7.  Click **Next**.
8.  On the Instance Configuration page, specify the following settings:
    1.  **Instance Name**: The name to be used for the Self-Service Portal instance
    2.  **Create Self-Service Portal**: Selected
    3.  **Local Path to the Instance**: The path on the local computer to this application instance

        **Tip:** By default, the path looks like `C:\Program Files\Acumatica ERP\<instance name>`. You can change it, if needed.

9.  Click **Next**.
10. On the Website Configuration page, specify the following settings, and then click **Next** to proceed to the next page:

    -   **Website Settings**: *Default Web Site*
    -   **Create Virtual Directory**: Selected
    -   **Virtual Directory Name**: The name of the virtual directory for the Acumatica ERP instance
    -   **Use Existing Application Pool**: Selected
    -   List of existing application pools: *DefaultAppPool*
    Leave the other settings without changes.

11. On the RabbitMQ Configuration page, which opens, make sure the **Set up RabbitMQ on this server automatically** option is selected and then click **Next**.

12. On the Confirmation of Configuration page, do the following:
    1.  Check the configuration settings that you have specified.
    2.  If you want to save the configuration settings in an XML file on your computer, click **Save Configuration**.
    3.  Click **Finish** to deploy this Self-Service Portal instance.

**Parent topic:**[Deploying Acumatica ERP Instances](../UserGuide/INST_Deploying_Instances_Mapref.md)

