# Instance Deployment: To Specify the Tenant Available for Self-Service Portal Users {#_8862cb23-2c20-45b6-b322-04fda5555b8f .task}

In this activity, you will learn how to specify the tenant that will be available for the Self-Service Portal users in a multitenant Acumatica ERP configuration.

## Story { .section}

Suppose that you are the system administrator of your company, and you need to specify the tenant to which the Self-Service Portal users will have access.

## Process Overview { .section}

In this activity, you will configure the available tenant for the Self-Service Portal users.

## System Preparation { .section}

Before you begin configuring the tenant, perform the following prerequisite activity: [Instance Deployment: To Deploy a Self-Service Portal Instance](INST_Deploying_Self_Service_Portal_Activity.md).

## Step: Configuring the Tenant Available to Self-Service Portal Users { .section}

To configure the tenant available to Self-Service Portal users, do the following:

1.  Open the `web.config` file for the Self-Service Portal instance. This file is usually located in `%Program Files%\Acumatica ERP\<instance name>`, where *&lt;instance name&gt;* is the name of the Self-Service Portal instance.
2.  In the file, find the `providers` section, which has the following settings.

    ```
    <add name="PXSqlDatabaseProvider" ... companyID="" .../>
    ```

3.  Change the following key value.

    ```
    companyID="*x*" 
    ```

    *x* is the ID of the tenant that you want to make available to Self-Service Portal users.

4.  Save the `web.config` file; this automatically restarts the website.

**Parent topic:**[Deploying Acumatica ERP Instances](../UserGuide/INST_Deploying_Instances_Mapref.md)

