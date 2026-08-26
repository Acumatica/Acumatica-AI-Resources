# PXCommandLine Tool: UpdatePages {#_3658f8c0-bfe6-483f-ab28-d4fedca9a7f3 .concept}

You can use the `UpdatePages` value of the `/method` parameter to update the pages and files of your Acumatica ERP website from a customization package file. This file can have the `.zip` or `.xml` file extension. You must specify the path to this file by using the `/path` parameter. You can also specify the path to the directory that contains the customization instead of specifying the path to a customization package file.

You may also use the optional `/replace` parameter to instruct the customization engine to replace the existing pages and files of your website.

You can call the `UpdatePages` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method UpdatePages
/path "path\to\package.zip" 
[/replace]
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

