# To Work with a Code Item {#_bb254435-c33a-453a-bc58-9d0798deba59 .concept}

The [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) does not provide facilities you can use in Microsoft Visual Studio to develop and debug any source code in customization projects. To start working with a *Code* item in Visual Studio, perform the following instructions:

1.  Publish the customization project, as described in [Publishing Customization Projects](CG_GL_Projects_Publishing.md).

    After you have published the customization project, the `<CodeItemName>.cs` file with the item code is placed in the `App_RuntimeCode` folder of the website.

2.  Launch Visual Studio.
3.  To open the `<CodeItemName>.cs` file in Visual Studio, on the main menu, click **File &gt; Open &gt; File**, and select the file in the **Open File** dialog box, which opens.

    **Note:** If you need to debug the customization code, you have to open the website instead of the file. See [To Debug the Customization Code](CG_GL_BL_Graph_ToDebug.md) for details.

4.  After you have finished editing the source code of the item, click **Save** to save your changes in the file.

    Because the `App_RuntimeCode` folder contains the customization code that is published, the changes in the file are immediately applied to the application instance.

5.  Open or refresh the form that uses the code, to make sure that the business logic has been changed for the form.

    **Note:** If an error exists in the changed file, the website might be corrupted. You can recover the website, for example, in one of the following ways:

    -   Debug the code
    -   Undo the changes
    -   Publish the customization project again to update the files in the `App_RuntimeCode` folder
    -   Delete the file from the `App_RuntimeCode` folder
6.  To update the *Code* item in the customization project, follow the instructions described in [To Synchronize Code Changes with the Customization Project](CG_Platform_Studio_CodeItems.md).

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

