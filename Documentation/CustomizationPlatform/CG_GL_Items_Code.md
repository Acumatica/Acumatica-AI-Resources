# Code {#_faf4b93e-1a41-4811-a792-a4c4b40c5689 .concept}

You use the Code page of the [Customization Project Editor](../UserGuide/SM_20_45_10.md) to manage *Code* items in the customization project. On the page, you can perform the following operations with items:

-   Add a new *Code* item of any of the following subtypes to the project:
    -   *New Graph*: A new business logic controller that is derived from the PXGraph&lt;&gt; class
    -   *New DAC*: A data access class that is derived from the PXBqlTable class and the IBqlTable interface
    -   *Graph Extension*: A graph extension that is derived from the PXGraphExtension&lt;&gt; class
    -   *DAC Extension*: A DAC extension \(which is also referred to as a *cache extension*\) that is derived from the PXCacheExtension&lt;&gt; class
    -   *Code File*: Custom C\# code
    -   *Customization Plug-in*: A class that is derived from the CustomizationPlugin class
-   Delete a *Code* item from the project

You can open the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) for a *Code* item by clicking the object name of the item in the page table.

**Note:** You can develop the customization code in the Code Editor. However, we recommend that you develop the code in Microsoft Visual Studio \(as described in [Integrating the Project Editor with Microsoft Visual Studio](CG_Platform_Studio.md)\) and use the editor for either minor code correction or the insertion of ready portions of code.

To move the code from a *Code* item to the extension library that is bound to the customization project, use the **Move to Ext. Library** command on the page toolbar of the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md).

For detailed information on working with *Code* items, see the following topics:

-   [To Create a Custom Business Logic Controller](CG_GL_Items_Code_NewGraph.md)
-   [To Create a Custom Data Access Class](CG_GL_Items_Code_CustomDAC.md)
-   [To Customize an Existing Graph](CG_GL_Items_Code_AddingGraphExt.md)
-   [To Customize an Existing Data Access Class](CG_GL_Items_Code_AddingDACExt.md)
-   [To Add Custom Code to a Project](CG_GL_Items_Code_AddingCustom.md)
-   [To Add a Customization Plug-In to a Project](CG_GL_Items_Code_AddingPlugIn.md)
-   [To Delete a Code Item From a Project](CG_GL_Items_Code_Deleting.md)
-   [To Move a Code Item to the Extension Library](CG_GL_Items_Code_MovingToLib.md)

You can use Visual Studio to work with a *Code* item of a customization project that is currently published. During the publication of the project, the platform creates the `<CodeItemName>.cs` file with the item content in the `App_RuntimeCode` folder of the website. If you make changes to the code in Visual Studio, you have to update the item in the customization project. See [Detecting the Project Items Modified in the File System](CG_Platform_TO_Features_AutoDetectMF.md) for details.

**Note:** You can customize *Code* items for the Self-Service Portal as well.

-   **[To Create a Custom Business Logic Controller](../CustomizationPlatform/CG_GL_Items_Code_NewGraph.md)**  

-   **[To Create a Custom Data Access Class](../CustomizationPlatform/CG_GL_Items_Code_CustomDAC.md)**  

-   **[To Customize an Existing Graph](../CustomizationPlatform/CG_GL_Items_Code_AddingGraphExt.md)**  

-   **[To Customize an Existing Data Access Class](../CustomizationPlatform/CG_GL_Items_Code_AddingDACExt.md)**  

-   **[To Add Custom Code to a Project](../CustomizationPlatform/CG_GL_Items_Code_AddingCustom.md)**  

-   **[To Add a Customization Plug-In to a Project](../CustomizationPlatform/CG_GL_Items_Code_AddingPlugIn.md)**  

-   **[To Delete a Code Item From a Project](../CustomizationPlatform/CG_GL_Items_Code_Deleting.md)**  

-   **[To Move a Code Item to the Extension Library](../CustomizationPlatform/CG_GL_Items_Code_MovingToLib.md)**  


**Parent topic:**[Managing Items in a Project](../CustomizationPlatform/CG_GL_Items.md)

