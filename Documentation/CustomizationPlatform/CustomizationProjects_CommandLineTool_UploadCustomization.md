# PXCommandLine Tool: UploadCustomization {#_a63cdd10-5ec0-47c9-bab7-79207cca10d3 .concept}

You can use the *UploadCustomization* value of the `/method` parameter to upload a customization project from a customization package \(`.zip` archive\) to an Acumatica ERP instance.

You can use the following required and optional parameters with this method:

-   `/path`: Required. You use this parameter to specify the path to the customization package \(`.zip` archive\) that you want to upload to your instance.
-   `/name`: Optional. You use this parameter to specify the custom name for the customization project. If the parameter is unspecified, the name of the archive without the extension will be used.
-   `/replace`: Optional. You specify this parameter to instruct the customization engine to override an existing customization project with the same name as the project you want to upload. The PX.CommandLine tool will throw an error if all of the following conditions are met:
    -   You do not specify this parameter
    -   You upload a customization project by specifying a name by using the `/name` parameter
    -   A customization project with the same name already exists

You can call the `UploadCustomization` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"\] 
/method UploadCustomization
/path "path\to\zip\archive\package.zip"
[/name "CustomizationName"]
[/replace]
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

