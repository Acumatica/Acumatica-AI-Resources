# Extension Library \(DLL\) Versus Code in a Customization Project {#_6eef9fa0-ab15-4c9f-8376-3c4f1b4118a4 .concept}

While you are developing source code for a customization task, you can either keep the code in the customization project as *DAC* and *Code* items or move the code to an extension library and include the library in the project as a *File* item.

*DAC* and *Code* items are saved in the database, and, if the customization project is published, in the files located in the `App_RuntimeCode` folder of the website. Acumatica Customization Platform compiles all the code located in this folder at run time.

We recommend that you keep the source code in the customization project only if the customization is elementary, such as if the code contains an event handler for a control on a form. When you work with a code item, it is easy to view the code of the applied customization directly in the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) without Microsoft Visual Studio. However, if you are solving a complex customization task, it is generally better to develop the solution code in an extension library by using Visual Studio.

You can use Visual Studio to develop a *Code* item as well as code in an extension library. But the *IntelliSense* feature in Visual Studio is not available for the source code of a *Code* item if the code either uses custom fields or invokes members of class extensions defined in other *Code* and *DAC* items.

You can later customize deployed extensions for the end user by means of code extensions. Therefore, if the customization is compiled to an extension library, more than one customization can be applied to a single Acumatica ERP form.

**Note:** If you have a custom DAC or a DAC extension in one customization and an extension of this custom DAC or a higher-level DAC extension in another customization, a publication of the second customization will fail if the customizations are published in the wrong order. To resolve the issue, convert the DAC extension in the second customization to an extension library. With this approach, no code will be generated during publication, and the order of publication is not important. See [To Move a DAC Item to an Extension Library](cg_platform_toconverdacto.md) for details.

The following table shows the differences in the use of the code in *DAC* and *Code* items and in an extension library.

| |Code in *DAC* and *Code* items|Code in an Extension Library|
|---|------------------------------|----------------------------|
|Best for:|Quick start of a customization|Development of a customization project when more than one developer is involved|
|Primary storage:|Database|File system|
|Location within the website folder:|`App_RuntimeCode`|`Bin`|
|Intellectual property protection:|No—the source code is open in the deployment package|Yes—the source code is not provided in the deployment package|
|Run-time compilation without the application domain being restarted:|Yes|No|
|Editor:|[Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md), Visual Studio|Visual Studio|
|*IntelliSense* feature in Visual Studio:|No|Yes|
|Acuminator extension for Visual Studio:|No|Yes|
|Debugging:|Yes|Yes|
|Integration with a version control system:|Yes|Yes|
|Additional:|Can be moved to an extension library when needed| |

To make a decision about how to work with the code, you should consider the following questions:

-   How much code will be in the customization project?
-   Is there a need for replicability of the customization?
-   How many developers will take part in coding?
-   Do you need to open the source code in the production environment?

We recommend that you use an extension library if any of the following conditions is met:

-   You intend to have more than five class extensions for business logic controllers.
-   The customization will be deployed on more than one system.
-   The customization code will be developed by a team that needs to use a version control system.
-   You have a reason to protect the intellectual property of the source code of the solution.
-   You develop a plug-in for Acumatica ERP.

**Parent topic:**[Extension Library](../CustomizationPlatform/CG_Platform_TO_Code_CS_ExtLibrary.md)

