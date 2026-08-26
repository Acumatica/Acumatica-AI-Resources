# To Hide or Display an Existing Tenant {#_d5cc590d-9aa9-4112-aedc-2d577e14bc09 .task}

If you want to make a tenant unavailable for other users, you can deactivate it by using the Acumatica ERP Configuration wizard. The deactivation of the tenant does not affect its data. You can make the tenant visible when you need it again.

**Note:** In the Acumatica ERP Configuration wizard, on the Tenant Setup page, you can also configure the list of tenants that a user can see only the tenants this user has access to. For more information, see [Managing Tenants Locally](SA_MNG_Managing_Tenants_Locally.md).

## To Hide or Display an Existing Tenant { .section}

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

**Parent topic:**[Managing Tenants Locally](../UserGuide/SA_MNG_Managing_Tenants_Locally.md)

