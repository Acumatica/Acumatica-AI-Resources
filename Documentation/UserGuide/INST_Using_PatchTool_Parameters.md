# Acumatica ERP PatchTool: Parameters and Values

The following table lists the command-line parameters you can use in the PatchTool command-line utility. You'll find the full and short names, values, and description of each parameter.

<table id="table_k1t_3ys_w2c"><thead><tr><th>

Parameter

</th><th>

Values

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Command name

</td><td>

-   *check*
-   *patch*
-   *download*
-   *rollback*
-   *patchInstaller*
-   *rollbackInstaller*

</td><td>

The action that PatchTool should perform.

 The `patchInstaller` and `rollbackInstaller` commands apply patches to the Acumatica ERP Configuration wizard and roll back these patches.

</td></tr><tr><td>

`--path` or `-p`

</td><td>

The path to the instance folder or wizard folder

</td><td>

If the patch is applied to an instance, the path to the Acumatica ERP application instance folder or to the Acumatica ERP installer folder. If the patch is applied to the Acumatica ERP Configuration wizard, the path to folder where the wizard is located.

 **Example:**`--path "C:\Program Files\Acumatica ERP\MyInstance"`

</td></tr><tr><td>

`--zip` or `-z`

</td><td>

The path to the backup archive file

</td><td>

The path to the `.zip` archive with backup files.

 When applying a patch, the utility creates the backup archive file at the specified location. When uninstalling a patch, the utility loads the backup archive file from the specified location.

 If you apply a patch to an instance or rollback it from an instance, the parameter can be omitted. In this case, the utility will create or load the file from the default backup folder. The location of this is determined by the `BackupFolder` parameter of the instance's `web.config` file. Typically, it resides at `%Program Files%\Acumatica ERP\BackUp\Sites\<instance name>`, where *&lt;instance name&gt;* is the name of the application instance website.

 When you use `patchInstaller` or `rollbackInstaller`, this parameter is required. The path must include a `.zip` file name. When PatchTool applies a patch to the Acumatica ERP Configuration wizard, it creates this archive. When PatchTool rolls back a patch from the wizard, it restores files from this archive.

 **Example:**`--zip "C:\Backup\archive.zip"`

</td></tr><tr><td>

`--archive` or `-a`

</td><td>

The path to the patch archive file.

</td><td>

Specifies the path to the `.zip` archive with patch files.

 Use this parameter to download the patch on one machine and then copy it to the machine where your Acumatica ERP instance is installed.

 **Example:** `--archive "C:\Patches\patch2025p4.zip"`

</td></tr><tr><td>

`--build` or `-b`

</td><td>

The build number \(in the XX.XXX.XXXX format\) of the instance to be patched.

</td><td>

Specifies the build number of the Acumatica ERP instance you want to download the patch for.

 Use this parameter to download the patch on one machine and then copy it to the machine where your Acumatica ERP instance is installed.

 **Example:** `--build "25.200.0000"`

</td></tr></tbody>
</table>

**Parent topic:**[Using the Acumatica ERP PatchTool utility](../UserGuide/INST_Using_PatchTool_Mapref.md)

