# PXCommandLine Tool: ValidateCustomization {#_59bd2cfa-8c61-4a9a-9be5-140f6d5ee4b0 .concept}

You can use the *ValidateCustomization* value of the `/method` parameter to validate customization projects before upgrading an Acumatica ERP instance. You must have the files of the target version of the website and of the current version of the website that has all the required customization projects published. You should use the `/website` parameter to specify the path to the target version of the website and the `/src` parameter to specify the path to the current version of the website. You should also specify a value for the `/CustomizationTempFilesPath` parameter, if required, as described in [PXCommandLine Tool: ValidateExtensions](CustomizationProjects_CommandLineTool_ValidateExtensions.md).

When the `ValidateCustomization` method is called, the tool applies the customization projects from the current version of the website to the target version of the website and validates the result. If a validation errors occurs, the tool exits with `Code 1`.

You can call the `ValidateCustomization` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method ValidateCustomization
/src "path\to\source\website"
[/CustomizationTempFilesPath "path\to\temp\folder"]
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

