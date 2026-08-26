# Tenant Maintenance: To Change Tenant Visibility {#_8cff069b-5eac-4fc9-8920-d8393d3f3af4 .task}

The following activity will walk you through the process of changing the visibility of a tenant.

## Story { .section}

Suppose that you are the system administrator of your company, and you have need to change the visibility of a tenant in an existing Acumatica ERP application instance.

## Process Overview { .section}

In this activity, you will change the visibility of a tenant in an existing instance.

## System Preparation { .section}

Before you begin performing the step of this activity, perform one of the following prerequisite activities to deploy the Acumatica ERP application instance: [Instance Deployment: To Deploy an Instance with Demo Data](INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) or [Instance Deployment: To Deploy an Out-of-the-Box Instance](INST_Deploying_Instances_Deploy_Tenant_Without_Demodata_Activity.md).

## Step: Changing the Visibility of a Tenant { .section}

To change the visibility of a tenant, do the following:

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Perform Application Maintenance**.
3.  On the Application Maintenance page, do the following:
    1.  In the **Installed Sites** box, select the appropriate Acumatica ERP instance.
    2.  In the bottom area of the page, click **Maintain Tenants**.
4.  In the **SQL Server Authentication** dialog box, which is opened, select the authentication method to be used to connect to the database, and then click **OK**. The system closes the dialog box.
5.  On the Tenant Setup page, in the **Visible** column of the **Installed Tenants** table, do either of the following:
    -   Clear the check box in the row of the tenant you want to hide.
    -   Select the check box in the row of the tenant you want to display.
6.  Click **Next**.
7.  On the Confirmation of Configuration page, do the following:
    1.  Check the configuration settings you have specified.
    2.  If you want to save the configuration settings in an XML file on your computer, click **Save Configuration**.
    3.  Click **Finish**.

**Parent topic:**[Maintaining Tenants](../UserGuide/INST_Maintaning_Tenants_Mapref.md)

