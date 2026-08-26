# Acumatica ERP Installation in a Data Center: To Install Acumatica ERP on Amazon EC2 {#_5f0fd7ee-e57e-4083-96c9-cf59af691d52 .task}

The following activity will walk you through the process of installing the Acumatica ERP Configuration wizard and deploying an Acumatica ERP instance on the Amazon Elastic Compute Cloud \(Amazon EC2\) instance.

**Attention:** This activity walks you through the configuration of third-party software. Please note the following:

-   The vendor of the third-party software may change the user interface and settings. Therefore, the form elements and setting names that you see may differ from the ones described in the activity.
-   The activity will be updated to describe changes in the user interface and settings.

## Story { .section}

Suppose that you are the system administrator, and you need to deploy an Acumatica ERP instance on the Amazon EC2 instance.

## Process Overview { .section}

In this activity, you will install the Acumatica ERP Configuration wizard and deploy an Acumatica ERP instance on the Amazon EC2 instance.

## System Preparation { .section}

Before you begin deploying an Acumatica ERP instance on the Amazon EC2 instance, make sure that you have performed the following prerequisite activities: [Acumatica ERP Installation in a Data Center: To Launch an Amazon EC2 Instance](INST_Installing_Launch_Amazon_Instance_Activity.md) and [Acumatica ERP Installation in a Data Center: To Create a Database Instance on Amazon RDS](INST_Installing_Create_Database_on_Amazon_RDS_Activity.md).

## Step: Deploying Acumatica ERP on the Amazon EC2 Instance { .section}

To deploy Acumatica ERP on Amazon EC2, do the following:

1.  From the [Acumatica Community](https://community.acumatica.com/) website, download an Acumatica ERP installation package with the version of Acumatica ERP you want to install. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Configuration Wizard](INST_Installing_Configuration_Wizard_Activity.md)
2.  Run the Remote Desktop file that you have downloaded on your computer while launching an Amazon EC2 instance.

    **Tip:** You use the Remote Desktop Connection service to connect to the web server running on your Amazon EC2 instance.

3.  Copy the Acumatica ERP installation package to the web server on the Amazon EC2 instance.
4.  Install the Acumatica ERP Configuration wizard, as described in [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Configuration Wizard](INST_Installing_Configuration_Wizard_Activity.md).

    Wait until the installation of the Acumatica ERP Configuration wizard is complete.

5.  On the Welcome page of the Acumatica ERP Configuration wizard, which opens, click **Deploy a New Acumatica ERP Instance**.
6.  On the Database Server Connection page, specify the following server settings for the database that will be used by the Acumatica ERP instance:
    1.  **Server Type**: *Microsoft SQL Server*.
    2.  **Server Name**: The DNS name of the Amazon RDS database instance you have created. You can copy it from the **Endpoint** box on the **Connectivity &amp; Security** tab of the **Databases** page of Amazon RDS. Also, if there is a custom port number, you can specify it after a comma.

        **Tip:** If you cannot connect to the server, check the security groups you have selected for the EC2 and RDS instances. You must select the same group for both services.

    3.  **SQL Server Authentication**: Selected.

        In the boxes that become available on the page, specify the following settings:

        -   **Login**: *Admin*
        -   **Password**: The password you have created for the Amazon RDS database instance
7.  Click **Next**.
8.  On the Database Configuration page, specify the following settings:
    1.  **Create a New Database**: Selected
    2.  **New Database's Name**: `AcumaticaAWS`
9.  Click **Next**.
10. On the Tenant Setup page, review the new tenant that the wizard creates by default with no data preloaded; it has the default name *Company* in the **Tenant Name** column.

    **Tip:** The name specified in this column is displayed on the Sign-In page of the application instance and in the instance’s user interface.

    You can also configure the tenant, add more tenants, or restrict the list of tenants a user can see on the Sign-In page. For more information, see [Maintaining Tenants](INST_Maintaning_Tenants_Mapref.md).

11. Click **Next**.
12. On the Database Connection page, set up the authentication method that this instance of Acumatica ERP will use to connect to the database by specifying the following settings:
    1.  **SQL Server Authentication**: Selected
    2.  **Use Existing Login Credentials**: Selected
        -   **Login**: *Admin*
        -   **Password**: The password that you have created for the Amazon RDS database instance
13. Click **Next**.
14. On the Instance Configuration page, specify the following settings:
    -   **Instance Name**: `AcumaticaAWS`
    -   **Create Acumatica ERP Site**: Selected
    -   **Local Path to the Instance**: The path on the local computer where you run the web service to this application instance
15. Click **Next**.
16. On the Website Configuration page, specify the following settings:
    1.  **Available Websites**: *Default Web Site*
    2.  **Create Virtual Directory**: Selected
    3.  **Virtual Directory Name**: `AcumaticaAWS`
    4.  **Compile the Site**: Selected
    5.  **Install Node.js**: Selected
    6.  **Use Modern UI as Default**: Selected
    7.  **Use Existing Application Pool**: Selected
    8.  **Available Application Pools**: *DefaultAppPool*
17. Click **Next**.
18. On the RabbitMQ Configuration page, make sure the **Set up RabbitMQ on this server automatically** option is selected and then click **Next**.
19. On the Confirmation of Configuration page, check the configuration settings you have specified, and click **Finish** to deploy this Acumatica ERP instance.
20. Click **OK** in the dialog box after the installation is complete; the system returns you to the Welcome page of the Acumatica ERP Configuration wizard.

The new Acumatica ERP instance is created on the Awazon EC2 instance, and now you can access it for the first time. For details, see [Instance Deployment: Accessing an Instance for the First Time](INST_Deploying_Instances_First_Sign_In.md) and [Instance Deployment: To Deploy an Out-of-the-Box Instance](INST_Deploying_Instances_Deploy_Tenant_Without_Demodata_Activity.md).

**Parent topic:**[Installing Acumatica ERP in a Data Center](../UserGuide/INST_Installing_in_Data_Center_Mapref.md)

