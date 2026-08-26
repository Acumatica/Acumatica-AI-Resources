# To Synchronize Code Changes with the Customization Project {#_ab57b220-bebe-4b22-af61-21c70e5fb49f .concept}

When you create a *Code* item in a customization project, Acumatica Customization Platform performs the following actions:

-   Saves the item content in the database as a *Code* item
-   Adds the item ID to the customization project

When you publish the project, the platform creates the `<CodeItemName>.cs` file in the `App_RuntimeCode` website folder of the current instance of Acumatica ERP.

If you use the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) to modify a *Code* item and click **Save** on the page toolbar, the platform saves the changes only in the database. To update files in the `App_RuntimeCode` folder, you have to publish the project again.

If you have modified the item code in Microsoft Visual Studio, you have to synchronize the changes with the item in the database. To do that, follow the instructions described in [To Update a File Item in a Project](CG_GL_Items_Files_Updating.md) to update files in the customization project.

For more information about the synchronization mechanism provided by the Acumatica Customization Platform, see [Detecting the Project Items Modified in the File System](CG_Platform_TO_Features_AutoDetectMF.md).

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

