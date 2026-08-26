# Customization Project with UI Changes: General Information {#_6a17aedf-98c2-4f76-b647-6b63a0553d2f .concept}

To distribute the changes that you have made to the Modern UI of your Acumatica ERP instance to other Acumatica ERP instances, you need to include your Modern UI files in a customization project. You include the Modern UI files in a customization project on the Modern UI Files page of the Customization Project Editor.

**Attention:** The Modern UI changes are applied to each tenant of an Acumatica ERP instance independently.

## Learning Objectives { .section}

In this chapter, you will learn how to include changes to the Modern UI in a customization project.

## Applicable Scenarios { .section}

You include changes to the Modern UI in a customization project if you need to use these changes in another Acumatica ERP instance.

## Preparation for Publishing a Customization Project with Modern UI Files { .section}

For the publication of customization projects with Modern UI files, Node.js must be installed, including the node version manager \(nvm\) and node package manager \(npm\). The Acumatica ERP Configuration wizard installs the needed version of Node.js if the **Install NodeJS** check box is selected on the Website Configuration page of the wizard.

**Tip:** If you want to use the version of Node.js that has already been installed in your system, you can clear the **Install NodeJS** check box and add the following key to the `appSettings` section of the `Web.config` file of your instance: `<add key="NodeJs:NodeJsPath" value="C:\Program Files\NodeJs"/>`, where `value` specifies the path to the location where Node.js has been installed.

Before publishing a customization project with Modern UI files, you may need to further configure the Acumatica ERP instance by specifying the following keys in the `Web.config` file of the instance:

-   NodeJs:NpmCachePath: Specifies the path for the npm cache, such as `C:\instances\site\App_Data\npm-cache`. This key is mostly intended for production use.
-   NodeJs:NodeTempPath: Specifies the path to the Node.js temporary folder. You might need to use this parameter if a customization project was designed for one version of Node.js and you are upgrading to Acumatica ERP with a different version Node.js. You can specify the path similar to the one specified in the existing `web.config` file. An example of the path is shown below.

    ``` {#codeblock_bjn_hf4_zgc}
    <add key="NodeJs:NoteTempPath" value="C:\Acumatica\NodeTemp\PhoneRepairShop" />
    ```

    **Note:** The parameter is specified in the `web.config` file by default.

-   NodeJs:DevBuild: If the value is *true*, turns on developer mode, which will be used while the Customization Project Editor compiles the UI sources.
-   NodeJs:CompileAllScreens: If the value is *false*, during publication of customization projects, compiles the Modern UI source code only for the Acumatica ERP forms whose Modern UI source code has been modified. If the value is *true*, all Modern UI source code is compiled.

## Adding of Files to a Customization Project { .section}

To add Modern UI files to a customization project, you click the **Modern UI Files** node in the navigation pane of the Customization Project Editor. On the toolbar of the [Modern UI Files](../UserGuide/AU_20_46_00.md) page, you click **Add New Record**; in the dialog box that opens, you select the Modern UI files that you need to include in the customization project.

## Publishing of a Customization Project with Modern UI Files { .section}

You can publish a customization project with Modern UI files in the same way as you publish any other customization project. For details about how to publish a customization project, see [Publishing Customization Projects](../CustomizationPlatform/CG_GL_Projects_Publishing.md).

If any error related to the Modern UI files occurs during the publication of the customization project, you can find the log of the compilation of the Modern UI files in the `App_Data\logs` folder of the instance.

**Parent topic:**[Including the Modern UI Changes in a Customization Project](../DeveloperGuide/UIDev_CustomizationProject_Mapref.md)

