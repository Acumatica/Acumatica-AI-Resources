# Acumatica ERP PatchTool: Parameters and Values {#_8555ab7a-78ea-4556-81cd-55beedcdd0f7 .concept}

The following table lists the command-line parameters you can use in the PatchTool command-line utility. You'll find the full and short names, values, and description of each parameter.

|Parameter|Values|Description|
|---------|------|-----------|
|Command name|-   *check*
-   *patch*
-   *download*
-   *rollback*

|The action that PatchTool should perform.|
|`--path` or `-p`|The path to the instance folder|The path to the Acumatica ERP application instance folder or to the Acumatica ERP installer folder.

 **Example:**`--path "C:\Program Files\Acumatica ERP\MyInstance"`

|
|`--zip` or `-z`|The path to the backup archive file|The path to the `.zip` archive with backup files.

 When applying a patch, the utility creates the backup archive file at the specified location. When uninstalling a patch, the utility loads the backup archive file from the specified location.

 If the parameter is omitted, the utility will create or load the file from the default backup folder. The location of this is determined by the `BackupFolder` parameter of the instance's `web.config` file. Typically, it resides at `%Program Files%\Acumatica ERP\BackUp\Sites\<instance name>`, where *&lt;instance name&gt;* is the name of the application instance website.

 **Example:**`--zip "C:\Backup\archive.zip"`

|
|`--archive` or `-a`|The path to the patch archive file.|Specifies the path to the `.zip` archive with patch files.

 Use this parameter to download the patch on one machine and then copy it to the machine where your Acumatica ERP instance is installed.

 **Example:** `--archive "C:\Patches\patch2025p4.zip"`

|
|`--build` or `-b`|The build number \(in the XX.XXX.XXXX format\) of the instance to be patched.|Specifies the build number of the Acumatica ERP instance you want to download the patch for.

 Use this parameter to download the patch on one machine and then copy it to the machine where your Acumatica ERP instance is installed.

 **Example:** `--build "25.200.0000"`

|

**Parent topic:**[Using the Acumatica ERP PatchTool utility](../UserGuide/INST_Using_PatchTool_Mapref.md)

