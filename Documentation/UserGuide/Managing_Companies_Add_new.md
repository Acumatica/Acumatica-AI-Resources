# To Add a New Tenant by Using the Acumatica ERP Configuration wizard {#_649153e7-ec83-4173-a866-01f8c526b84a .task}

You can add a virtually unlimited number of tenants to an application instance.

## To Add a New Tenant { .section}

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the Welcome page, click **Perform Application Maintenance**.
3.  On the Application Maintenance page, do the following:
    1.  In the **Installed Sites** list, select the appropriate Acumatica ERP instance.
    2.  Click **Maintain Tenants**.
4.  In the **SQL Server Authentication** dialog box, select the authentication method to be used to connect to the database.
5.  Click **OK**.
6.  On the Tenant Setup page, click **Create** to add a new tenant.

    A new row is appended to the table with the **New** check box selected.

7.  To rename the tenant, double-click the tenant name in the **Tenant Name** column, type a new tenant name, and press Enter.

    **Attention:** This name is used only when multiple tenants are present; otherwise, the Sign-In page will not display a tenant selection box. Due to integration with OData, the name cannot contain the following special symbols: `,;:+=?^<>/\{}[]|#$%&@`.

8.  If you want to fill the database with demo data, select *SalesDemo* in the **Insert Data** column.

    **Tip:** Datasets with names such as *U100* and *T100* contain demo data and are specially designed for the completion of Acumatica education courses.

9.  Optional: For each tenant, specify the following settings:

    -   **Visible**: Select this check box to have this tenant available for the end users.
    -   **Parent Tenant ID**: Select the identifier of the tenant you want to use as the parent for this tenant.
    -   **Secure Tenant on the Sign-In Page**: This check box defines whether all tenants of the instance are displayed on the Sign-In page. If you select the check box, the box where the tenant can be selected on the Sign-In page of the instance will not be displayed until a user enters the username and password. After the user is authorized, the system displays a list of the companies where the user has the user account that was entered. If the check box is cleared, all tenants of the instance will be displayed on the Sign-In page, allowing users to select their tenant before entering their username and password.
    The following read-only settings are also displayed for each tenant:

    -   **ID**: The numerical identifier of the tenant.
    -   **New**: A check box that indicates \(if selected\) that this tenant is newly created and has not been deployed yet. If the check box is cleared, the tenant has been deployed.
    -   **Additional Info**: The tenant name in the database.
10. Optional: Select the **Advanced Settings** check box so that the Acumatica ERP Configuration wizard enables options, such as defining parent datasets and inserting datasets, and displays the System tenant.
11. On the Confirmation of Configuration page, do the following:
    1.  Check the configuration settings you have specified.
    2.  If you want to save the configuration settings in an XML file on your computer, click **Save Configuration**.
    3.  Click **Finish** to deploy the new tenant.

**Parent topic:**[Managing Tenants Locally](../UserGuide/SA_MNG_Managing_Tenants_Locally.md)

