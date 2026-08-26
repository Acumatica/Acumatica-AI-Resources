# To Shrink the Database {#_bf50db7f-8812-4355-a247-0b0586381ee0 .task}

Some companies may want to reduce the size of the database because not all of the data in the database is useful. Also, supporting and maintaining the large databases becomes expensive and labor-intensive. To dispose of the unnecessary data, you can shrink data using the Acumatica ERP Configuration wizard.

## To Shrink the Database {#_eacfde5b-9b0e-4913-bd90-0dd1d49ecea5 .section}

1.  Run the Acumatica ERP Configuration wizard. For example, select **Start &gt; Acumatica &gt; Acumatica ERP Configuration**.
2.  On the Welcome page, click **Perform Database Maintenance**.
3.  On the Database Server Connection page, specify the Microsoft SQL Server that will be used by the Acumatica ERP instance:

    1.  In the **Available Servers** box, select a server to connect to.

        If the server list does not include the server you are looking for, click **Reload the List** to rescan your network. The list of database servers may not have a particular server even after your network is rescanned \(if, for instance, the server blocks broadcasts\). In this case, you can type the name or the address of the Microsoft SQL Server machine in the **Server Name** box. If the problem persists, contact your network administrator for assistance.

        **Note:** If you use Microsoft SQL Server Express, the *\(local\)* option will not work even if the database server is running on the same machine. To use the server, start the SQL Browser service first, and then update the list of servers and select your server. Note that Microsoft SQL Server Express should not be used in a production environment because of its limitations.

    2.  Select the authentication method to be used to connect to the database server. If you select the **SQL Server Authentication** option, specify an account with sufficient rights for creating the databases or making changes to them.
    **Note:**

    -   The selected authentication method must be supported by the database server. Note that by default, Microsoft SQL Server 2005 is installed with Windows authentication disabled.
    -   Windows authentication works only for a local Microsoft SQL Server or when both application and database servers are members of the same Windows domain.
4.  Click **Next**.
5.  On the Database Configuration page, to connect to an existing database, do the following:
    1.  Click **Connect to an Existing Database**.
    2.  In the **Available Databases on the Server** box, select a database.

        **Tip:** You can search for a database, by using the **Database Filter** box.

    3.  Select the **Shrink data after repair** check box.
6.  Click **Next**.
7.  On the Tenant Setup page, click **Next**.
8.  On the Database Connection page, click **Next**.
9.  On the Confirmation of Configuration page, click **Finish** to complete the process of perform database maintenance.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

