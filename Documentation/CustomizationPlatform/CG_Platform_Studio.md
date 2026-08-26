# Integrating the Project Editor with Microsoft Visual Studio {#_82193b77-5be3-47a0-9bf6-ae654b00c9a3 .concept}

You do not need to install Microsoft Visual Studio to customize the Acumatica ERP UI or to develop a simple changes of business logic, because the platform includes the [Customization Tools](CG_Platform_Tools.md), which are designed for these purposes and available in your web browser. However you can use Visual Studio to develop the customization code.

If you plan to use Visual Studio on the server that hosts the website of Acumatica ERP, the environment where you install and use Acumatica ERP should meet particular requirements, which are described in [System Requirements for the Acumatica ERP Installation](../UserGuide/INST_Preparing_Installation_System_Requirements.md).

To use Visual Studio while customizing Acumatica ERP, you can select one of the following approaches:

-   Create an [Extension Library](CG_Platform_TO_Code_CS_ExtLibrary.md), develop the customization code in Visual Studio, compile the DLL binary file within the `Bin` folder of the website, and add this custom file to the customization project
-   Develop and debug the customization code of a customization project on the fly by using Visual Studio

This part of the guide describes the second approach, because the first one is obvious and does not require any integration between the Customization Project Editor and Visual Studio.

To use the second approach, you should perform the following steps each time you want to use Visual Studio to develop and debug the customization code on the fly:

1.  In the [Data Class](../UserGuide/AU_DataClassEditor.md), create extensions for existing data access classes if required, as described in [To Create a DAC Extension](CG_GL_BL_DAC_DACExt.md).
2.  In the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md), for business logic controllers, create new classes or class extensions that contain required code templates, as described in [To Create a Custom Graph](CG_GL_BL_Graph_NewGraph.md) and [Graph Extensions: Creating a Graph Extension Through the UI](../StudioDeveloperGuide/CodeCustomization_GraphExtension_CreateInEditor.md).
3.  Publish the customization project to obtain the corresponding C\# files within the `App_RuntimeCode` website folder. \(See [Project Publication: General Information](CustomizationProjects_PublishingProjects_GeneralInfo.md) for details.\).
4.  By using Visual Studio, develop, modify, and debug the customization code in these files on the fly. \(See [To Debug the Customization Code](CG_GL_BL_Graph_ToDebug.md) for details.\)
5.  In the Customization Project Editor, update the code in the customization project, as described in [To Synchronize Code Changes with the Customization Project](CG_Platform_Studio_CodeItems.md).

-   **[To Work with a Code Item](../CustomizationPlatform/CG_Platform_Studio_CodeItem.md)**  

-   **[To Work with Data Access Classes](../CustomizationPlatform/CG_GL_Items_DACs_Studio.md)**  

-   **[To Debug the Customization Code](../CustomizationPlatform/CG_GL_BL_Graph_ToDebug.md)**  

-   **[To View and Debug Acumatica ERP Source Code](../CustomizationPlatform/CG_GL_BL_Debug_Acu_Code.md)**  

-   **[To Synchronize Code Changes with the Customization Project](../CustomizationPlatform/CG_Platform_Studio_CodeItems.md)**  

-   **[To Create an Extension Library](../CustomizationPlatform/cg_platform_tocreateextensionlib.md)**  

-   **[Useful Tips](../CustomizationPlatform/cg_gs_usefultips.md)**  


