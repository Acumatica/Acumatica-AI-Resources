# To Configure the Report Time-Out {#_ae06a5df-8656-4570-aac6-c46808cc0559 .task}

When you have to run a report that takes a long time to complete \(for example, a General Ledger report that covers multiple periods\), the report can time out before it finishes. To avoid this error, you can increase the report time-out value. By default, the report time-out is set to 300 seconds.

CAUTION:

Make sure that all users of your website are warned about the site restart so that they can save all documents.

## To Configure the Report Time-Out { .section}

1.  Open the `web.config` file for the site instance. Usually it is located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.
2.  In the file, find the following line, where *...* represents the other parameters, which depend on your website settings.

    ```
    <add name="PXSqlDatabaseProvider" type="PX.Data.PXSqlDatabaseProvider, PX.Data" ... />
    ```

3.  Add the `reportQueryTimeout` parameters to the line and specify the report timeout time \(in seconds\).

    ```
    <add name="PXSqlDatabaseProvider" type="PX.Data.PXSqlDatabaseProvider, 
    PX.Data" ... reportQueryTimeout="600" />
    ```

4.  Save the `web.config` file, which automatically restarts the website.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

