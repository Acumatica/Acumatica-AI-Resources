# Acumatica ERP Installation in a Data Center: To Create a Database Instance on Amazon RDS {#_99819981-d763-43ee-a38c-e2447c2954e8 .task}

The following activity will walk you through the process of creating a database instance on Amazon Relational Database Service \(Amazon RDS\).

**Attention:** This activity walks you through the configuration of third-party software. Please note the following:

-   The vendor of the third-party software may change the user interface and settings. Therefore, the form elements and setting names that you see may differ from the ones described in the activity.
-   The activity will be updated to describe changes in the user interface and settings.

## Story { .section}

Suppose that you are the system administrator, and you need to create a database instance on Amazon RDS.

## Process Overview { .section}

In this activity, you will create an Amazon RDS database instance.

## System Preparation { .section}

Before you begin creating an Amazon RDS database instance, make sure that you have performed the following prerequisite activity: [Acumatica ERP Installation in a Data Center: To Launch an Amazon EC2 Instance](INST_Installing_Launch_Amazon_Instance_Activity.md).

## Step: Creating a Database Instance on Amazon RDS { .section}

To create an Amazon RDS database instance, do the following:

1.  Sign in to the Amazon Web Services \(AWS\) Management Console, and open Amazon RDS.
2.  On the right side of the toolbar, select the region in which you want to create the database instance.

    **Important:** You must select the same region for your EC2 and RDS instances and for the key pair you use to sign in to your instances.

3.  In the navigation pane, click **Databases**.
4.  Click **Create Database**.
5.  On the **Create Database** page, select the **Easy Create** option button.
6.  In the **Configuration** section, specify the information about your database instance, including the following settings:
    1.  **Engine Type**: *Microsoft SQL Server*
    2.  **DB Instance Size**: *Dev/Test*
    3.  **DB Instance Identifier**: `AcumaticaAWS`
    4.  **Master Username**: `admin`
    5.  **Credentials Management**: *Self Managed*
    6.  **Master Password**: The password you plan to use for the database instance
7.  In the **Set Up EC2 Connection** section, specify the following settings:
    1.  **Connect to an EC2 Compute Resource**: Selected
    2.  **EC2 Instance**: `AcumaticaAWS`
8.  In the **View Default Settings for Easy Create** section, review the settings you have specified for your database instance, and click **Create Database**.

    Wait until the Amazon RDS database instance has been created.

9.  On the **Databases** page, which opens, make sure that the new database instance appears in the list of instances. The database instance will have a status of *Creating* until it is created and ready for use. When the status changes to *Available*, you can connect to the database instance. Depending on the database instance class and storage allocated, it could take several minutes for the new instance to become available.
10. Select the database, and make a note of the DNS name of the instance that is specified in the **Endpoint** box on the **Connectivity &amp; Security** tab of the page; you will need this name during the deployment of the Acumatica ERP instance.

**Parent topic:**[Installing Acumatica ERP in a Data Center](../UserGuide/INST_Installing_in_Data_Center_Mapref.md)

