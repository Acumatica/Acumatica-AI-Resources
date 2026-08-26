# To Turn On Snapshot Isolation Mode for a Database {#_e7939cc8-f569-4c26-8780-4e1afa89e255 .task}

In order for an Acumatica ERP instance that uses a SQL Server database to work properly, snapshot isolation must be turned on for the instance database. In this topic, you can find information about how to use SQL Server Management Studio to check if snapshot isolation mode is turned on and how to turn on this mode for your database.

## To Check If Snapshot Isolation Mode Is Turned On { .section}

-   Run the following query in SQL Server Management Studio:

    ```
    SELECT is_read_committed_snapshot_on FROM sys.databases 
                            WHERE name = '<database name>'
    ```

    where *&lt;database name&gt;* is the name of the database whose settings you want to check.


If the `is_read_committed_snapshot_on` parameter is set to 1, snapshot isolation mode is turned on. If not, you have to turn on snapshot isolation mode.

## To Turn On Snapshot Isolation Mode for a Database { .section}

1.  In SQL Server Management Studio, right-click the database and click **Properties** to open the **Database Properties** dialog box.
2.  Select the **Options** page.
3.  In the **Miscellaneous** section, set **Is Read Committed Snapshot On** to *True*.
4.  Click **OK** to save the settings and close the dialog box.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

