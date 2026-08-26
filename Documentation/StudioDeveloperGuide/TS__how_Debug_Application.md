# To Debug Acumatica Framework-Based Applications {#_17394b71-06d5-41d4-86ca-e677a148f317 .task}

This topic describes how to link an Acumatica Framework-based application site to the database and start the Acumatica Framework application in debug mode.

## To Debug an Application from Visual Studio { .section}

1.  In Visual Studio, open the solution of your Acumatica Framework-based application.
2.  In the `Site` folder of the solution, open the `web.config` file.
3.  In the `connectionStrings` section of the file, modify the connection string by specifying the credentials to your development database as follows:
    -   For a locally installed Microsoft SQL Server that uses SQL Server authentication \(line breaks are for display purposes only\)

        ```
        <connectionStrings>
            <remove name="ProjectX" />
            <add name="ProjectX" providerName="System.Data.SqlClient" 
                connectionString="Data Source=(local);Initial Catalog=Project_Catalog; 
                                  User Id=User_ID; Password=User_Password"
        </connectionStrings>
        ```

    -   For a locally installed Microsoft SQL Server that uses Windows authentication \(line breaks are for display purposes only\)

        ```
        <connectionStrings>
            <remove name="ProjectX" />
            <add name="ProjectX" providerName="System.Data.SqlClient" 
                connectionString="Data Source=(local);Initial Catalog=Project_Catalog; 
                                  Integrated Security=True"/>
        </connectionStrings>
        ```

    -   For a remote Microsoft SQL Server that uses SQL Server authentication \(line breaks are for display purposes only\)

        ```
        connectionStrings>
            <remove name="ProjectX" />
            <add name="ProjectX" providerName="System.Data.SqlClient" 
                connectionString="Data Source=Server_Name; Initial Catalog=Project_Catalog; 
                                  User Id=User_ID; Password=User_Password"
        </connectionStrings>
        ```

4.  In the `system.web` section of the file, set the `debug` attribute of the `compilation` element to `True`, as shown in the following example.

    ```
    <compilation debug="True" defaultLanguage="c#" 
        numRecompilesBeforeAppRestart="9999" targetFramework="4.8" 
        batch="False" optimizeCompilations="True">
    ```

5.  In Visual Studio, right-click the `Site` folder of the solution, and click **Set as StartUp Project**.
6.  Optional: If you need to debug a server error that throws an exception, do the following:
    1.  On the toolbar, click **Debug** &gt; **Windows** &gt; **Exception Settings**.
    2.  In the **Exception Settings** panel, which opens, expand **Common Language Runtime Exceptions**, and select the check box for the exception that is thrown \(such as **System.ArgumentOutOfRangeException**\).
7.  Run the solution in the Debug mode.

**Parent topic:**[Troubleshooting Acumatica Framework-Based Applications](../StudioDeveloperGuide/TS__mng.md)

