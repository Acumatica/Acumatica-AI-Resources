# To Add a New Member {#_bf546967-0fc8-4e5c-9508-441ee7b4922e .concept}

You can add a new member \(such as a variable, data view, or method\) to a custom graph or to an extension for a graph in Acumatica ERP.

Initially, the code of a custom graph or an extension for an existing graph is saved in the appropriate *Code* item of the customization project. If the project has not been published, you can use only the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) to add a new member to the graph code.

After the customization project has been published, the code is also saved in the corresponding C\# file in the `App_RuntimeCode` folder of the website. \(See [Changes in the Application Code \(C\#\)](CG_Platform_Framework_CS.md) for details.\) You can open the file in Microsoft Visual Studio and use Visual Studio to add a new member to the graph code. To do this, perform the following actions:

1.  In Visual Studio, click **File &gt; Open &gt; Web Site**, and select your Acumatica ERP development environment.
2.  Open the `App_RuntimeCode\<CodeItemName>.cs` file.
3.  In the code, add the needed class member.
4.  Save the file.
5.  In the Customization Project Editor, select the **Files** node in the navigation pane.
6.  On the Custom Files page, which opens, click **Detect Modified Files** on the page toolbar.

    **Tip:** The customization platform compares the content of each file added to the site with the content of the associated item of the customization project in the database. If a difference is detected, the platform opens the **Modified Files Detected** dialog box so you can resolve the detected conflicts. You can either update the customization project in the database or discard the file changes in the file system to resolve the conflicts.

7.  In the **Modified Files Detected** dialog box, which opens, ensure that the modified code file is selected.
8.  Click **Update Customization Project** to update the *Code* item that is saved in the database.

If the graph code is included in an extension library whose binary file is added to the customization project as a *File* item, you can use Visual Studio to add a new member to the graph code in the library solution. \(See [Extension Library](CG_Platform_TO_Code_CS_ExtLibrary.md) for details.\) If you make changes to the extension library file in the file system, you have to update the appropriate *File* item in the customization project. See [To Update a File Item in a Project](CG_GL_Items_Files_Updating.md) for details.

**Parent topic:**[Graph](../CustomizationPlatform/CG_GL_BL_Graph.md)

