# PXCommandLine Tool: ValidateExtensions {#_e0fcfc0c-14e8-49dc-9a46-1f089258d637 .concept}

You can use the *ValidateExtensions* value of the `/method` parameter to run validations of all `PXGraph` and `PXCache` extensions in your instance's memory. If a validation error occurs, the tool exits with `Code 1`, and the validation error is written to the console.

You should also specify the `/CustomizationTempFilesPath` parameter if the `CustomizationTempFilesPath` parameter is not specified in the `Web.config` file. This parameter provides a temporary path to an existing folder that the customization engine uses while performing the validations.

You can call the `ValidateExtensions` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method ValidateExtensions
[/CustomizationTempFilesPath "path\to\temp\folder"\]
```

**Tip:** The `CustomizationTempFilesPath` parameter is generally already defined in the `Web.config` file.

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

