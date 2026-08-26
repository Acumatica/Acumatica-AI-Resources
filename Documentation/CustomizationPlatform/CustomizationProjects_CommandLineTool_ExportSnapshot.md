# PXCommandLine Tool: ExportSnapshot {#_1a8c839d-9f2d-49a3-b27b-19999a5b7a50 .concept}

You can use the `ExportSnapshot` value of the `/method` parameter to create a snapshot in the XML format by using a snapshot configuration file and to export the snapshot to the `Snapshots` directory of your Acumatica ERP instance. You must specify the path to the snapshot configuration file that you want to use by using the `/config` parameter. This file must have the `.esc` file extension.

You may also use the optional `/c` parameter to specify the company ID from which the snapshot should be taken. If this parameter is not specified, the *2* company ID is used by default.

You can call the `ExportSnapshot` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method ExportSnapshot
/config "path\to\snapshot\export\config.esc"
[/c "3"]
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

