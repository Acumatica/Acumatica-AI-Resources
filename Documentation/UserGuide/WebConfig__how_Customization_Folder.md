# To Shorten the Names of the Customization Folders {#_ea9f75ff-229e-4864-83f2-9d6467b51a3d .task}

In Acumatica ERP, the names of the *Validation* and *Website* customization folders start with the name of the application instance website. For example, a path to the Website folder of the *InstanceName* instance may be as follows.

```
C:\Program Files (x86)\Acumatica ERP\Customization\InstanceName\
InstanceNameValidation\InstanceNameWebsite
```

Because the Customization folder includes the folder with the instance name, you can configure the system to shorten the names of the *Validation* and *Website* folders by excluding the *&lt;instance\_name&gt;* prefix, that is, the name of the application instance website. The paths to the *Validation* and *Website* folders remain unique.

## To Shorten the Names of the Customization Folders { .section}

CAUTION:

Make sure that all users of your website are warned about the site restart so that they can save all documents.

1.  Open the `web.config` file for the site instance. Usually it is located in `%Program Files%\Acumatica ERP\<instance_name>`, where *&lt;instance\_name&gt;* is the name of the application instance website.
2.  In the appSettings section of the `web.config` file, add the following sections.

    ```
    <add key="CstSolutionName" value="SolutionDev"/>
    <add key="CstWebsiteName" value="Dev"/>
    ```

3.  Save the `web.config` file, which causes the website to automatically restart.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

