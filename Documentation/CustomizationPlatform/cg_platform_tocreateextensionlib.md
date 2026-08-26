# To Create an Extension Library {#_f7e12f94-c8be-4013-8990-9341161bb252 .concept}

To develop customization code in an extension library, you should first create this extension library. This topic describes how to create the extension library using the Customization Project Editor.

## To Create an Extension Library { .section}

1.  On the main menu of the Customization Project Editor, click **Extension Library** &gt; **Create New**.

    The **Create Extension Library** dialog box opens.

2.  Specify the location and name of the Visual Studio project that will contain the extension library.
3.  Click **OK** to close the dialog box and start the process of creating the library.

During the process, Acumatica Customization Platform creates the following files in the folder specified in the dialog box.

|File|Description|
|----|-----------|
|`<Project_name>.sln`|The Microsoft Visual Studio Solution file|
|`Solution.bat`|The Windows batch file to open the website solution in Microsoft Visual Studio|
|`Solution.lnk`|The shortcut file to the project to open the website solution in Microsoft Visual Studio|
|`folder.lnk`|The shortcut file to the website folder|
|`<Project_name>/<Project_name>.csproj`|The Visual C\# Project file|
|`<Project_name>/Examples.cs`|The Visual C\# Source file that contains examples of source code to customize data access classes and business logic controllers|
|`<Project_name>/Properties/AssemblyInfo.cs`|The Visual C\# Source file that contains general information about the assembly|

The platform also creates the `OpenSolution.bat` batch file, which is a copy of the `Solution.bat` file created in the solution project folder. Depending on the settings of your browser, the `OpenSolution.bat` file is saved either in the `Downloads` folder or in another location.

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

