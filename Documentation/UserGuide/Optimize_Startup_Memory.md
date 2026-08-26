# To Optimize Memory Consumption During Startup {#_78df5812-9b83-4242-8e08-3700c955ed5e .task}

On initialization of the domain, the system compiles every page from the site map and stores the pages in the web server cache. This gives users the ability to quickly open any page without having to wait for it to compile when the page is opened for the first time. The downside of compiling every page during startup is the significant increase in memory consumption for a short period after the initialization.

To avoid this increase in memory consumption, you can disable the compilation of all pages during startup.

## To Optimize Memory Consumption During Startup { .section}

1.  Open the `web.config` file for the instance. Usually it can be located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.
2.  Set the CompilePages setting to False in the appSettings section of the `web.config` file, as follows.

    ```
    <appSettings>
      ...
      <add key="CompilePages" value="False"/>
      ...
    </appSettings>
    ```

    With the CompilePages flag set to False, a page will be compiled on the first request by a user. Hence, the page will be opened slowly the first time. However, after the first request, the page will be opened as quickly as it is when CompilePages is set to True.

3.  Save the `web.config` file, which automatically restarts the website.

**Parent topic:**[Troubleshooting Acumatica ERP](../UserGuide/CON_Troubleshooting_Tools.md)

