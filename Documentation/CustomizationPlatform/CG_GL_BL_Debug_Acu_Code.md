# To View and Debug Acumatica ERP Source Code {#_40fcc931-64ac-4016-9d05-7426a22712da .task}

Acumatica ERP has open source code and you can easily view it with the Source Code browser. For details, see [Source Code](../UserGuide/SM_20_45_70.md) browser.

However, in some cases, for example, when you need to find a method to override, it is helpful to debug Acumatica ERP source code with breakpoints and see which breakpoint is hit in which scenario. To be able to debug Acumatica ERP code, you should configure your extension library in Visual Studio.

## Before You Proceed { .section}

You can view and debug Acumatica ERP source code inside an extension library. Before you start configuring your extension library in Visual Studio, create it. For details, see [To Create an Extension Library](cg_platform_tocreateextensionlib.md).

## To Configure the Extension Library { .section}

1.  Check whether the Acumatica debugger tools are installed and remember their location.

    The Acumatica debugger tools are PDB files located in the `Bin` folder of the Acumatica ERP site folder.

    The PDB files are copied to the `Acumatica ERP/Files/Bin` folder during the installation process if the **Install Debugger Tools** option is selected. If you haven't selected this option during installation, you should remove Acumatica ERP and install it again with the **Install Debugger Tools** option selected. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Tools \(Optional\)](../UserGuide/INST_Installing_Configuration_Wizard_Install_Tools_Activity.md).

    Every time you install or upgrade any Acumatica ERP instance, the Acumatica ERP Configuration wizard copies data from the `Acumatica ERP/Files/Bin` folder to replace instance files. These files are not copied to any instance automatically. But to be able to debug Acumatica ERP, you must have them in every instance that you need to debug.

    So to distribute these PDB files, you can do one of the following:

    -   Install a new instance
    -   Upgrade an existing instance
    -   Copy files manually from `Acumatica ERP/Files/Bin`
    **Note:** DLL and PDB files should be from the same version of Acumatica ERP.

2.  Configure the `web.config` file of the instance by doing the following:

    1.  In the file system, open in the text editor the `web.config` file that is located in the root folder of the your instance.
    2.  In the `<system.web>` tag of the file, locate the `<compilation>` element.
    3.  Set the debug attribute of the element to *True*, as shown in the following code.

        ```
        <system.web>
         <compilation debug="True" ...>
        ```

    4.  Save your changes.
    **Note:** Be careful with this option on production environment, as debug configuration can significantly slow down Acumatica ERP performance.

3.  Configure the extension library by doing the following:
    1.  In Visual Studio, open the extension library.
    2.  In the main menu, select **Tools** &gt; **Options**.
    3.  In the **Debugging** &gt; **General** section, clear the **Enable Just My Code** check box.
    4.  In the **Debugging** &gt; **Symbols** section, in the **Symbols file \(.pdb\) locations** list, add the path to the location of the PDB files which you discovered in instruction 1 of the step. For example,

        ```
        C:\Program Files\Acumatica ERP\Files\Bin
        ```

    5.  Click **OK**.

## To Browse and Debug the Source Code { .section}

After you have configured the extension library, you can view and debug source code of Acumatica ERP. Do the following:

1.  Learn the full name of the graph in which the method you want to debug is located. It is shown in the **Graph Name** box of the Source Code Browser. For details, see [To Explore the C\# Code of a BLC](CG_GL_Stages_Explore_BLC.md).

    For example, suppose you want to debug the **Release** action of the Payments and Applications \(AR302000\) form. The full graph name is `PX.Objects.AR.ARPaymentEntry`.

2.  Open Acumatica ERP source code files. All files are located in the `<Site_folder>/App_Data/CodeRepository` folder. The `CodeRepository.csproj` Visual Studio project file which contains references to all of the source code files, is provided in the same folder for easier navigation of the source code. Open the `CodeRepository.csproj` project file in Visual Studio.
3.  Navigate to the file with the code of the graph.

    For the **Release** action of the Payments and Applications form, the graph is located in `PX.Objects/AR/ARPaymentEntry.cs`.

4.  Add a breakpoint inside the method you want to debug.
5.  Attach the Visual Studio debugger to a running process.

    To do that, on the main menu, click **Debug &gt; Attach to Process**, and in the **Attach to Process** dialog box, which opens, select the `w3wp.exe` process in the list of **Available Processes**.

    **Note:** In the dialog box, ensure that the **Show processes from all users** check box is selected. If the check box is cleared, the list will not display the `w3wp.exe` process record.

6.  In Acumatica ERP, open a form on which the method being debugged is called and perform actions to hit the added breakpoint.

## Other Tips on Debugging Acumatica ERP Code { .section}

Besides action methods like the `ARPaymentEntry.Release` method, you can debug event handlers implemented for attributes \(located in the `PX.Data` namespace\) and `{Get; Set;}` methods of DAC properties.

For debugging Acumatica ERP code, you can also use the following Visual Studio features:

-   The Immediate Window where you can debug and evaluate expressions, execute statements, and print variable values. For details, see [Immediate window](https://docs.microsoft.com/en-us/visualstudio/ide/reference/immediate-window?view=vs-2019).
-   The Locals Window where you can see and edit variable values. For details, see [Inspect variables in the Autos and Locals windows](https://docs.microsoft.com/en-us/visualstudio/debugger/autos-and-locals-windows?view=vs-2019).
-   The Call Stack window to view the method calls that are currently on the stack. For details, see [View the call stack and use the Call Stack window in the debugger](https://docs.microsoft.com/en-us/visualstudio/debugger/how-to-use-the-call-stack-window?view=vs-2019).

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

