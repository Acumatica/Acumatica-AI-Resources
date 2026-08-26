# To Select Roles That Will Have Administrative Privileges {#_c51d3a6c-7a9e-4302-bb0a-3b70d894ab76 .task}

In Acumatica ERP, the *Administrator* role has administrative privileges. For your instance, you can change the default settings and assign administrative privileges to one role or multiple roles whenever you need to.

## Prerequisites { .section}

Configure the roles to which you want to give administrator privileges in your instance. For more information on role configuration, see [Configuring User Roles](User_Roles_Mapref.md).

## To Select a Role or Multiple Roles That Will Have Administrative Privileges { .section}

CAUTION:

Make sure that all users of your website are warned about the site restart so that they can save all documents.

1.  Open the `web.config` file for the site instance. Usually it is located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.
2.  In the file, find the `Providers` section \(in the `pxaccess` subsection of the `px.core` section\), which has the following settings.

    ```
    <providers>
       <remove name="PXDatabaseAccessProvider" />
       <add name="PXDatabaseAccessProvider" type="PX.Data.PXDBFeatureAccessProvider, PX.Data" applicationName="/" administratorRole="Administrator" />
    </providers>
    ```

    The `administratorRole="<role>"` parameter defines which roles have the administrator privileges.

3.  List the roles you want to have the administrative privileges in the `administratorRole` parameter, as shown below.

    ```
    administratorRole="<Roles>"
    ```

    Where `Roles` is the comma-separated \(without spaces\) list of roles to which you want to grant administrative privileges.

4.  Save the `web.config` file, which automatically restarts the website.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

