# To Configure the Query Time-Out {#_62b4944b-22d6-48d6-955d-f672b8ba1057 .task}

By default, the query time-out is set to 30 seconds. If you need to, you can increase the query time-out.

CAUTION:

Make sure that all users of your website are warned about the site restart so that they can save all documents.

## To Configure the Query Time-Out { .section}

1.  Open the `web.config` file for the site instance. Usually it is located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.
2.  In the file, find the following line, where *...* represents the other parameters, which depend on your website settings.

    ```
    <add name="PXSqlDatabaseProvider" type="PX.Data.PXSqlDatabaseProvider, PX.Data" ... />
    ```

3.  Add the `queryTimeout` parameter to the line and specify the query timeout time \(in seconds\).

    ```
    <add name="PXSqlDatabaseProvider" type="PX.Data.PXSqlDatabaseProvider, 
    PX.Data" ... queryTimeout="100" />
    ```

4.  Save the `web.config` file, which automatically restarts the website.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

