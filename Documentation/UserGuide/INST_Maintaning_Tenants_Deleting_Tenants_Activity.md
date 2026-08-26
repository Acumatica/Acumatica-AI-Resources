# Tenant Maintenance: To Delete a Tenant {#_57db7663-2759-4a47-9037-7e18afdf8d8b .task}

The following activity will walk you through the process of deleting a tenant.

## Story { .section}

Suppose that you are the system administrator of your company, and you need to delete an unneeded tenant from an existing Acumatica ERP application instance.

## Process Overview { .section}

In this activity, you will delete a tenant from an existing instance.

## System Preparation { .section}

Before you begin performing the step of this activity, perform the following prerequisite activity: [Tenant Maintenance: To Create an Additional Tenant](INST_Maintaning_Tenants_Creating_Additional_Tenant_Activity.md).

## Step: Deleting a Tenant { .section}

If you need to delete a tenant, do the following:

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Perform Application Maintenance**.
3.  On the Application Maintenance page, do the following:
    1.  In the **Installed Sites** list, click the appropriate Acumatica ERP instance.
    2.  In the bottom area of the page, click **Maintain Tenants**.
4.  In the **SQL Server Authentication** dialog box, select the authentication method to be used to connect to the database, and then click **OK**.
5.  On the Tenant Setup page, select the tenant row in the **Installed Tenants** list.
6.  Click **Delete**.
7.  When you are prompted, click **OK** to delete the selected tenant.
8.  Click **Next**.
9.  On the Confirmation of Configuration page, do the following:
    1.  Check the configuration settings you have specified.
    2.  If you want to save the configuration settings in an XML file on your computer, click **Save Configuration**.
    3.  Click **Finish** to delete the tenant.

**Parent topic:**[Maintaining Tenants](../UserGuide/INST_Maintaning_Tenants_Mapref.md)

