# Acumatica ERP PatchTool: To Apply Patches {#_3c95f53a-fea3-42dc-bdbb-09c5157312d2 .task}

The following activity will walk you through the process of applying patches to an Acumatica ERP application instance by using the PatchTool command-line utility.

## Story { .section}

Suppose that you are the system administrator of the SweetLife Fruits &amp; Jams company, and you need to apply patches to an Acumatica ERP application instance.

## Process Overview { .section}

In this activity, you will use PatchTool to check for available patches for your Acumatica ERP instance. If new patches are found, PatchTool automatically downloads them and applies them to your instance.

## System Preparation { .section}

Before you begin performing the step of this activity, you should do the following:

1.  Make sure that you’ve completed the [Instance Deployment: To Deploy an Out-of-the-Box Instance](INST_Deploying_Instances_Deploy_Tenant_Without_Demodata_Activity.md) prerequisite activity.
2.  Make sure that the latest version of the PatchTool has been installed on your computer.
3.  Either lock out the system \(see [Upgrading of Acumatica ERP: To Schedule the System Lockout](INST_Upgrading_System_Lockout.md)\) or make sure that all users know about the restart so that they can save their work. This is necessary because applying or rolling back a patch replaces the files in the instance and restarts its website.

## Step: Applying the Patch { .section}

To apply a patch to an Acumatica ERP instance, do the following:

1.  On the Start menu, run a command-line utility installed on your computer as an administrator.

    **Tip:** You can use Command Prompt, the built-in command-line utility for Microsoft Windows.

2.  At the command prompt, enter a command to navigate to the folder where PatchTool is installed and `PatchTool.exe` is stored.

    ``` {#codeblock_ds1_t3v_cfc}
    cd C:\Program Files\Acumatica ERP\Data\PatchUtility\
    ```

3.  At the command prompt, enter `PatchTool.exe patch --path "path to the instance folder"` to start the execution of the configuration file and the deployment of the instance. `[path to the instance folder]` is the path to the Acumatica ERP application instance folder, which is specified in the following format.

    ``` {#codeblock_gyg_vl5_x2c}
    PatchTool.exe patch --path "C:\Program Files\Acumatica ERP\AcumaticaS100"
    ```


PatchTool checks the Acumatica website to see if any patches are available for the specified Acumatica ERP instance:

-   **When no patches are available**, PatchTool returns `No patches are available for download`.
-   **When a patch is available**, PatchTool:
    -   Creates the backup archive file in the instance's default backup folder:

        ``` {#codeblock_fyj_npj_cfc}
        C:\Program Files\Acumatica ERP\BackUp\Sites\AcumaticaS100\
        ```

    -   Downloads the patch and replaces the files in the Acumatica ERP application instance folder.
    -   Restarts the instance.
    -   Returns `The patch with the <*Build\_Number*> version has been applied`.

**Parent topic:**[Using the Acumatica ERP PatchTool utility](../UserGuide/INST_Using_PatchTool_Mapref.md)

