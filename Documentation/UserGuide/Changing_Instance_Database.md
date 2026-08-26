# To Change the Database of an Instance {#_4295d4fd-01a7-409e-a03d-00fb390ba31f .task}

You can change the database of an Acumatica ERP instance—for example, if you want to switch to a backup database.

## To Change the Database of an Instance { .section}

1.  On the server where Acumatica ERP is installed, run the Acumatica ERP Configuration wizard. For example, select **Start &gt; Acumatica &gt; Acumatica ERP Configuration**.
2.  On the Welcome page, click **Perform Application Maintenance**.
3.  On the Application Maintenance page, do the following:
    1.  In the **Installed Sites** list, click the instance for which you want to specify another database.
    2.  On the bottom area of the page, click **Change Database**.
4.  On the Database Server Connection page, specify the Microsoft SQL Server that will be used by the Acumatica ERP instance:

    1.  In the **Available Servers** list, select a server to connect to.

        If the server list does not include the server you are looking for, you should click **Reload the List** to rescan your network. The list of database servers may not have a particular server even after your network is rescanned \(if, for instance, the server blocks broadcasts\). In this case, you can type the name or the address of the Microsoft SQL Server machine in the **Server Name** box. If the problem persists, contact your network administrator for assistance.

        **Note:** If you use Microsoft SQL Server Express, the *\(local\)* option will not work even if the database server is running on the same machine. To use the server, start the SQL Browser service first, and then update the list of servers and select your server. Note that Microsoft SQL Server Express should not be used in a production environment because of its limitations.

    2.  Select the authentication method to be used to connect to the database server. If you select the **SQL Server Authentication** option, specify an account with sufficient rights for creating the databases or making changes to them.
    **Note:**

    -   The selected authentication method must be supported by the database server. Note that by default, Microsoft SQL Server 2005 is installed with Windows authentication disabled.
    -   Windows authentication works only for a local Microsoft SQL Server or when both application and database servers are members of the same Windows domain.
5.  Click **Next**.
6.  On the Database Configuration page, select the appropriate option as follows:
    -   To create a new database, click **Create a New Database**, and then type the name of the database.
    -   To connect to an existing database, do the following:
        1.  Click **Connect to an Existing Database**.
        2.  In the **Available Databases on the Server** list, click a database name.

            **Tip:** You can search for a database, by using the **Database Filter** box.

        3.  Depending on the schema of the database you have selected, select the relevant check box to update, repair, or set up the database.
        4.  To shrink data after the database maintenance, select the **Shrink data** check box.
7.  Click **Next**.
8.  On the Tenant Setup page, make any necessary changes to the list of tenants. For more information, see [Managing Tenants by Using the Web Interface](SA_Managing_Tenants_Using_Web_Mapref.md).
9.  Click **Next**.
10. Optional: On the Tables Configuration page \(which is displayed only if you have selected the **Advanced Settings** check box on the Tenant Setup page\), specify whether you want the database tables to be shared by different tenants, and then click **Next**.

    CAUTION:

    Table configuration is a dangerous operation that can result in database corruption. Any changes you make are at your own risk. If you configure tables, be sure to first back up the database.

11. On the Database Connection page, specify the authentication method that this application instance of Acumatica ERP will use to connect to the database, which is one of the following options:
    -   **Windows Authentication**: The Acumatica ERP Configuration wizard will use the default anonymous user account used by Internet Information Services \(IIS\).
    -   **SQL Server Authentication**: Select **Create Login Credentials** to create a new login with *read, write, execute,* and *ddl\_admin* rights, or select **Use Existing Login Credentials** and specify an existing login with *read, write, execute,* and *ddl\_admin* rights.
12. Click **Next**.
13. On the Confirmation of Configuration page, do the following:
    1.  Check the configuration settings you have specified.
    2.  Optional. To make any changes, click **Back** to return to the required wizard page, and then make necessary changes.
    3.  If you want to save the configuration settings in an XML file on your computer, click **Save Configuration**.
    4.  Click **Finish** to deploy the Acumatica ERP instance.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

