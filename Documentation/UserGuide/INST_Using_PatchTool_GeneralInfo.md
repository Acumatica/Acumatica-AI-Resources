# Acumatica ERP PatchTool: General Information {#_651891d0-041c-4476-9cee-b96836742c60 .concept}

This topic shows you how to use the PatchTool command-line utility to check for, apply, and roll back patches for your Acumatica ERP application instance.

**Attention:**

-   Applying or rolling back a patch replaces files in the instance and restarts its website. Either lock out the system \(see [Upgrading of Acumatica ERP: To Schedule the System Lockout](INST_Upgrading_System_Lockout.md)\) or make sure that all users know about the restart so that they can save their work.
-   PatchTool requires internet access to check for and download patches. It uses port 443 \(the standard port for secure web traffic\) to connect to the URL specified in the `BaseUrl` setting. This setting is found in the `appsettings.json` file, which is in the same folder as `PatchTool.exe`. By default, the `BaseUrl` is `https://update.acumatica.com/rest`. Please ensure your firewall allows this connection.
-   Run PatchTool with administrator privileges, as these are necessary to modify files in the Acumatica ERP application instance folder.
-   If there are several Acumatica ERP application instances installed, each instance should be patched or rolled back separately.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Correctly use PatchTool and its syntax
-   Check if new patches are available for your Acumatica ERP application instance by using the utility
-   Use PatchTool to download and apply patches for your Acumatica ERP application instance
-   Roll back a previously installed patch by using PatchTool

## Applicable Scenario { .section}

You may want to use the PatchTool utility if you’re a system administrator responsible for keeping your Acumatica ERP instance up to date.

## Using PatchTool { .section}

The PatchTool command-line utility is an executable file named `PatchTool.exe`. By default, the file is located in the `%Program Files%\Acumatica ERP\Data\PatchUtility\` folder on the computer with Acumatica ERP installed.

**Attention:** Before using the PatchTool utility, we recommend downloading its latest version from the Acumatica website: [https://update.acumatica.com/rest/api/patch/tool](https://update.acumatica.com/rest/api/patch/tool).

When you run `PatchTool.exe`, you specify:

-   An action name \(`check`, `patch`, `download`, or `rollback`\)
-   A set of command-line parameters, with each presented in the following format

    ``` {#codeblock_cjt_54r_w2c}
    -parameter "parameter value"
    ```


When you pass a command-line command to PatchTool, use the following syntax.

``` {#codeblock_fbd_y4r_w2c}

PatchTool.exe check|patch|download|rollback
-p|--path "path to the instance folder"
[-z|--zip "path to the backup archive"] 
[-a|--archive "path to the local patch archive"]
[-b|--build "the build number (in XX.XXX.XXXX format) of the instance to be patched"]
```

**Note:**

-   Parameter values are case-sensitive and must be in quotation marks.
-   You can use each parameter’s short form or full name.
-   If you specify a parameter more than once, its last value will be used.

For details, see [Acumatica ERP PatchTool: Parameters and Values](INST_Using_PatchTool_Parameters.md).

## Checking for Patches {#section_vv2_1y4_y4b .section}

You can check if new patches are available for the Acumatica ERP application instance by running the following command.

``` {#codeblock_ibj_3vr_w2c}
PatchTool.exe check 
--path "path to the instance folder"
```

PatchTool returns the following:

-   If it finds a patch: `A new patch found: <*Build\_Number*>`.
-   If no patches are available: `No patches are available for download`.

## Applying Patches {#section_pdp_jxr_w2c .section}

To download the patch from the Acumatica website, create a `.zip` archive with backup files and apply the patch to the Acumatica ERP application instance by using the following command.

``` {#codeblock_qxf_rxr_w2c}
PatchTool.exe patch 
--path "path to the instance folder" 
[--zip "path to the backup archive"]
```

If the machine where your Acumatica ERP instance is installed doesn’t have internet access, you can download the patch archive on another machine \(as described in the next section\). Copy the patch archive to the machine where your Acumatica ERP instance is installed locally and then use the following command.

``` {#codeblock_qyy_b1s_w2c}
PatchTool.exe patch 
--path "path to the instance folder" 
--archive "path to the local patch archive" 
[--zip "path to the backup archive"]
```

The `-z|--zip` parameter is optional. If you omit it, PatchTool creates a `.zip` archive with backup files in the default backup folder. The folder’s location \(typically, `%Program Files%\Acumatica ERP\BackUp\Sites\<instance name>`\) is defined by the `BackupFolder` parameter of the instance's `web.config` file. In the folder’s name, *&lt;instance name&gt;* is the name of the application instance website.

PatchTool returns the following:

-   On successful application: `The patch with the <*Build\_Number*> version has been applied`.
-   When no patches are available: `No patches are available for download`.

## Downloading Patches {#section_edd_fcj_tgc .section}

You can use the PatchTool utility to retrieve the patch as a `.zip` archive. This could be useful, for example, to copy patches to machines without internet access. To download the patch, use the following command.

``` {#codeblock_tk3_11l_tgc}
PatchTool.exe download 
--archive "path where to save the patch archive"
--build "the build number (in the XX.XXX.XXXX format) of the instance to be patched" 

```

If you launch PatchTool on the same machine where the Acumatica ERP application instance is installed, you can use an alternative syntax:

``` {#codeblock_g2q_mcl_tgc}
PatchTool.exe download 
--archive "path where to save the patch archive"
--path "path to the instance folder" 

```

PatchTool returns the following:

-   On successful download: `Download completed successfully. File saved to <*path*>`.
-   When no patches are available: `No patches are available for download for the <*Build\_Number*> version`.

## Uninstalling Patches {#section_mlf_lds_w2c .section}

To roll back a patch and restore files from the backup archive, use the following command.

``` {#codeblock_ngh_rds_w2c}
PatchTool.exe rollback 
--path "path to the instance folder"  
[--zip "path to the backup archive"]
```

The `-z|--zip` parameter is optional. If you omit it, PatchTool looks in the default backup folder.

PatchTool returns one of the following:

-   On successful rollback: `Rollback completed`.
-   When no patch had been applied: `Nothing to roll back. The site has not been patched.`

You may roll back the Acumatica ERP instance as many times as patches have been applied. Each rollback restores the instance to its prior state.

**Parent topic:**[Using the Acumatica ERP PatchTool utility](../UserGuide/INST_Using_PatchTool_Mapref.md)

