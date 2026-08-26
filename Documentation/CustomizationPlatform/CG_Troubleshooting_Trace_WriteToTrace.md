# To Write to the Trace Log from the Code {#_02895968-0545-41ca-8b2b-0c1b39256bce .concept}

When you are developing and troubleshooting the customization code, you may need to know what happens during code execution \(for example, an action being called or an event being raised\). You can write information to the trace log directly from your code by using one of the following approaches:

-   Using the methods of the ILogger&lt;T&gt; interface, which is provided by Microsoft
-   Using the methods of the PXTrace static class

**Note:** By default, the trace log is stored on the Acumatica ERP server for the current user session. If the user opens two Acumatica ERP forms simultaneously in two tabs or windows of a browser, the Acumatica ERP server creates a subsession for each opened form and stores the trace logs separately for each subsession. After a session or subsession of the user is completed \(due to the user logging off or being timed out\), the server clears the appropriate log.

To save the trace logs of all subsessions of all users in a single file on the server, a user with the *Administrator* role has to change the `web.config` file of the Acumatica ERP instance to configure the appropriate trace provider. See the *Trace* section of [Using Logs](../Shared/../UserGuide/CON_Troubleshooting_Tools_Logs.md) for details.

A user can see the log message in the trace log if the user clicks **Settings** &gt; **Trace** on the form title bar after the corresponding logic has been executed.

## Writing to the Trace Log by Using the Methods of ILogger&lt;T&gt; { .section}

Acumatica ERP supports the logging mechanism provided by the `Microsoft.Extensions.Logging.Abstractions` NuGet package. You can use this mechanism in custom code to write to the trace log.

To use this mechanism, you should do the following:

1.  Install the `Microsoft.Extensions.Logging.Abstractions` NuGet package to the Visual Studio project that contains custom code.
2.  Add the following `using` directive to the code file that contains the logic for which you need to write to the log.

    ```
    using Microsoft.Extensions.Logging;
    ```

3.  In the graph that executes the logic, add a property of the ILogger&lt;T&gt; type, and assign the InjectDependency attribute to the property, as shown in the following example. Use the graph as the type parameter.

    **Tip:** For details about the InjectDependency attribute, see [Dependency Injection: Use of Dependency Injection](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_Use.md).

    ```language-csharp
    public class RSSVWorkOrderEntry : PXGraph<RSSVWorkOrderEntry, RSSVWorkOrder>
    {
        //Other code of the graph
    
        //The logger
        [InjectDependency]
        private ILogger<RSSVWorkOrderEntry> MyLogger { get; set; }
    }
    ```

4.  In the code for which you need to write to the log, such as in an action of the graph, call the methods of the ILogger&lt;T&gt; interface to write to the trace log. For details about the methods of the interface, see [ILogger&lt;TCategoryName&gt; Interface](https://docs.microsoft.com/en-us/dotnet/api/microsoft.extensions.logging.ilogger-1?view=dotnet-plat-ext-3.1) in the Microsoft documentation. The following example shows the call of the LogInformation method.

    ```
    public class RSSVWorkOrderEntry : PXGraph<RSSVWorkOrderEntry, RSSVWorkOrder>
    {
        //Other code of the graph
    
        //The logger
        [InjectDependency]
        private ILogger<RSSVWorkOrderEntry> MyLogger { get; set; }
    
        //A method in the graph
        public void AssignOrder(RSSVWorkOrder order)
        {
            //Implementation of the method
            
            //Writing to the log
            MyLogger.LogInformation(
                "The {OrderNbr} work order has been assigned.", order.OrderNbr);
        }
    }
    ```

    **Note:** Do not use string formatting inside the log messages, as is shown in the following code example.

    ```
    MyLogger.LogInformation(
        string.Format("The {0} work order has been assigned.", order.OrderNbr));
    MyLogger.LogInformation(
        $"The {order.OrderNbr} work order has been assigned."));
    ```


## Writing to the Trace Log by Using the Methods of PXTrace { .section}

You can write information to the trace log directly from your code by using the following methods of the PXTrace static class:

-   `public static void WriteError(string message)`
-   `public static void WriteError(Exception e)`
-   `public static void WriteWarning(string message)`
-   `public static void WriteWarning(Exception e)`
-   `public static void WriteInformation(string message)`
-   `public static void WriteInformation(Exception e)`
-   `public static void WriteVerbose(string message)`

To manage writing information to the trace log, you can use the following methods of the PXTrace static class:

-   `public static Serilog.ILogger WithStack()`

    By default, the stack trace is not collected so that the project does not impair system performance. To turn on the collection of the stack trace, call the WithStack method, as the following code example shows. Note that in the presented code, the stack trace is collected only if the appropriate logging level has been set up.

    ```
    PXTrace.WithStack().Information(“some info”);
    ```

-   `public static Serilog.ILogger WithSourceLocation()`

**Attention:** To use the WithStack and WithSourceLocation methods, you must include the external `Serilog` library. We recommend that you use the `Serilog` library located in the `Bin` folder of Acumatica ERP.

The WithStack and WithSourceLocation methods can be chained with Serilog.ILogger methods.

## Adding a Log Method to the Published Customization Code { .section}

If you want to avoid changes in the customization project, you can add this method to the customization code that has already been applied to the application instance. To do this, perform the following actions:

1.  Make sure that the customization project that contains the code you are debugging has been published. If the project is unpublished, publish it, as described in [Publishing Customization Projects](CG_GL_Projects_Publishing.md).
2.  Launch Microsoft Visual Studio.
3.  In Visual Studio, open the file with the code that is currently saved in the `App_RuntimeCode` website folder.
4.  Add a call of one of the methods listed above to the appropriate code sample.
5.  Save your changes to the file.
6.  In the browser, open or refresh the form that you are troubleshooting.
7.  On the form, perform the sequence of actions that invokes the changed code.
8.  Click **Tools** &gt; **Trace** to open the Acumatica Trace page.
9.  On the page, explore the trace log to make sure that the changed code sample has been executed.

**Tip:** When you publish or export the project, the Acumatica Customization Platform compares the code in the `App_RuntimeCode` website folder with the appropriate code in the database and discovers the files that have been changed in the file system. If a modified file is found, there is a conflict, and the platform opens the **Modified Files Detected** dialog box, in which you can direct the system to update the files in the project or discard the changes. See [Detecting the Project Items Modified in the File System](CG_Platform_TO_Features_AutoDetectMF.md) for details.

## Specifying the Logging Level { .section}

Events that you log in code have different logging levels. You can specify a logging level in `web.config` so that only events up to that level will be logged. You set up the logging level by using the following settings in the `web.config` file:

-   `system.web/pxtrace/@minimumLevel`: An indicator of the overall minimum level of severity of events that can be logged by the providers defined in the `pxtrace` section.
-   `system.web/pxtrace/add/@minimumLevel`: An indicator of the minimum level of severity of events that a particular provider in the `pxtrace` section must log. For example, you can specify a different level of severity for a provider that saves log messages to a file.

The logging levels are the following: `Fatal`, `Error`, `Warning`, `Information`, `Debug`, `Verbose`. By default, the `Verbose` level is specified.

**Parent topic:**[Troubleshooting Customization](../CustomizationPlatform/CG_Troubleshooting.md)

