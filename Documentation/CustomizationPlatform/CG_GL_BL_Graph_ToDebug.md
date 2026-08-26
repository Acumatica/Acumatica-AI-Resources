# To Debug the Customization Code {#_43396c5f-3cda-423f-b98d-e6d3c161f01b .concept}

The [Code Editor](../Shared/../UserGuide/AU_20_40_00_CodeEditor.md) does not provide facilities you can use to debug a code item of a customization project. We recommend that you use Microsoft Visual Studio to develop and debug any source code in customization projects. To start debugging using in Visual Studio, you need to perform the following steps, which are described in greater detail below:

1.  Install Acumatica Debugger Tools.
2.  Configure the web.config file for your Acumatica ERP instance.
3.  Perform the debugging.

## Install Acumatica Debugger Tools {#section_zwb_vgb_z4b .section}

The Acumatica debugger tools are PDB files located in the `Bin` folder of the Acumatica ERP site folder.

The PDB files are copied to the `Acumatica ERP/Files/Bin` folder during the installation process if the **Install Debugger Tools** option is selected. If you have not selected this option during installation, you should remove Acumatica ERP and install it again with the **Install Debugger Tools** option selected. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Tools \(Optional\)](../Shared/../UserGuide/INST_Installing_Configuration_Wizard_Install_Tools_Activity.md).

Every time you install or upgrade any Acumatica ERP instance, the Acumatica ERP Configuration wizard copies data from the `Acumatica ERP/Files/Bin` folder to replace instance files. These files are not copied to any instance automatically. To be able to debug Acumatica ERP, you must have them in every instance that you need to debug.

To distribute PDB files, you can do one of the following:

-   Install a new instance
-   Upgrade an existing instance
-   Copy files manually from `Acumatica ERP/Files/Bin`

If you want to copy files manually, note that the most important files are the following:

-   `PX.Data.pdb` \(PDB for `PX.Data.dll`\), which contains the platform core code
-   `PX.Objects.pdb` \(PDB for `PX.Objects.dll`\), which contains the Acumatica ERP business logic

**Note:** DLLs and PDBs should be from the same version of Acumatica ERP.

## Prepare the web.config File for Your Acumatica ERP Instance {#section_kvn_m3b_z4b .section}

When the installation is finished and the instance is ready, you have to specify the debug option by doing the following:

-   In the Acumatica ERP folder, open the `web.config` file \(located in the root folder of the your instance\) in a text editor.
-   In the&lt;system.web&gt; tag of the file, locate the &lt;compilation&gt; element.
-   Set the debug attribute of the element to *true* as follows.

    ```
    <compilation debug="true" ...>
    ```

    **Note:** See [Debug mode in ASP.NET applications](https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/site-behavior-performance/debug-mode-applications) for details.


## Perform the Debugging {#section_gzt_dnb_z4b .section}

To configure Visual Studio to debug the source code of Acumatica ERP, select **Tools** &gt; **Options** &gt; **Debugging** &gt; **General**, and clear the **Enable Just My Code** check box.

To specify the path for PDB files, select **Tools** &gt; **Options** &gt; **Debugging** &gt; **Symbols**, and add a path to your files \(which is typically `C:\\Program files\Acumatica ERP\Files\Bin`\).

To browse an existing *Code* item in Visual Studio, perform the following instructions:

1.  Publish the customization project, as described in [Publishing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects_Publishing.md).
2.  Make sure your instance of Acumatica ERP is running by opening any page of the instance in a browser.
3.  Launch Visual Studio as an administrator.
4.  To open the website of your instance of Acumatica ERP in Visual Studio, on the main menu, click **File** &gt; **Open** &gt; **Web Site**, and select the website folder in the **Open Web Site** dialog box, which opens.
5.  In the **Solution Explorer** of Visual Studio, expand the `App_RuntimeCode` website folder, and double-click the file of the *Code* item to open it.

To debug customization code that has been added from the user interface, see [To Move a Code Item to the Extension Library](../Shared/../CustomizationPlatform/CG_GL_Items_Code_MovingToLib.md).

To start debugging an existing *Code* item in Visual Studio, do the following:

1.  In the item source code, set a breakpoint on the line of the code where you need to stop the process for debugging.
2.  On the main menu, click **Debug** &gt; **Attach to Process**, and in the **Attach to Process** dialog box, which opens, select the `w3wp.exe` process in the list of **Available Processes**.

    **Note:** In the dialog box, ensure that the **Show processes from all users** check box is selected. If the check box is cleared, the list will not display the `w3wp.exe` process record.

3.  In the browser, open the form of Acumatica ERP whose business logic code you want to debug.
4.  In the browser, run an operation that invokes the fragment of the code that contains the breakpoint.

The process will be stopped at the breakpoint, and you can debug the code in Visual Studio.

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

