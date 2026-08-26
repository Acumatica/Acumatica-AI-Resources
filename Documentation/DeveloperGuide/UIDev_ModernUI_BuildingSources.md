# Modern UI Development: Building the Source Code {#_a2588a07-c385-4f9e-8722-37c2924b92e8 .concept}

When you want to start migrating Acumatica ERP forms to the Modern UI or you want create a new form based on it, you need to build the source code of each form to see its Modern UI version.

## Performing the Prerequisite Actions {#_b88ccb95-67cd-4d85-b6bf-4714ce4db9f7 .section}

Before you begin building the source code for the first time, you do the following:

1.  Make sure you have Node.js installed on your computer. By default, the Acumatica ERP Configuration wizard installs it when you deploy a new application instance.
2.  Run the following command in the `FrontendSources` folder. You can use the terminal in Visual Studio Code, Windows PowerShell, or a similar program.

    ```language-powershell
    npm run getmodules
    ```

    This command installs the required dependencies needed to build the sources correctly.

    **Tip:** The system performs this instruction automatically during the first publication of a customization project that contains any Modern UI files.


## Building the Source Code for All Acumatica ERP Forms { .section}

To build the sources in the `FrontendSources` folder of your instance, you need to run a command in the same folder. This command generates the form schema and JavaScript code from the TypeScript code and creates the mapping between the JavaScript and TypeScript code. You use this mapping to debug the client code in a web browser.

To build the sources during the UI development, you run the following command in the `FrontendSources` folder.

```language-powershell
npm run build-dev
```

To build the sources in production mode, you run the following command in the `FrontendSources` folder.

```language-powershell
npm run build
```

**Tip:** The system performs this instruction automatically during the publication of a customization project that contains any Modern UI files.

We recommend that you use the `build-dev` command instead of the `build` command during the development. This provides easier debugging in a web browser.

## Building the Source Code for Particular Acumatica ERP Forms { .section}

To speed up the build process, you can initiate the build for only specific forms instead of all of them. To do this, you can run one of the following modified versions of the command \(instead of the one in the preceding section\) in the `FrontendSources\screen` folder:

-   ```language-powershell
npm run build-dev --- --env screenIds=SO301000
```

    This command above builds the sources for only the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

-   ```language-powershell
npm run build-dev --- --env modules="AR,AP,GL"
```

    This command builds the sources for only the forms in the specified functional areas \(AR, AP, and GL in this example\).


**Tip:** You need to use quotation marks if you specify more than one form or area to be built.

## Building the Source Code in the Development Folder for Custom and Customized Forms { .section}

To build the source code for all the forms you’ve created or customized in the `development` folder, you run the following command in the `FrontendSources\screen` folder.

```language-powershell
npm run build-dev --- --env customFolder=development
```

You can initiate the build for only specific forms instead of all of them. To do this, you run the following command.

```language-powershell
npm run build-dev --- --env customFolder=development screenIds=SO301000
```

**Tip:** As with the example in the preceding section, you can use the `modules` parameter instead of the `screenIds` parameter to build the sources for only the forms in specific functional areas.

The command above builds the sources for only the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, which you may have customized in the `development` folder.

To create new forms or customize existing forms for the Modern UI, you use the `development` folder located in the `FrontendSources\screen\src\` folder of your instance. For details on creating the source files for these forms in the `development` folder, see [Modern UI Development: Creating Modern UI Source Files for Custom and Customized Forms](UIDev_ModernUI_DevelopmentFolder.md). For details on including the source files from the `development` folder in your customization project, see [Including the Modern UI Changes in a Customization Project](UIDev_CustomizationProject_Mapref.md).

**Tip:** For troubleshooting errors during the building of the Modern UI, you can use additional build options. For details, see [Modern UI Troubleshooting: Build Options](UIDev_Troubleshooting_LogLevel.md).

## Automatically Rebuilding the Source Code for Particular Acumatica ERP Forms { .section}

During the migration of the needed forms to the Modern UI, you make changes to the generated source files in the `FrontendSources\screen` folder of your instance. To see the changes you make to a form, you’ll need to rebuild the corresponding source files every time a change is made. To save time, you can run a command that causes the source files to be rebuilt automatically each time a file is modified and saved in this folder.

To automatically rebuild the sources for only specific forms, you can run one of the following commands in the `FrontendSources\screen` folder once:

-   ```language-powershell
npm run watch --- --env screenIds="SO301000,FS305100"
```

    This command automatically rebuilds the sources for only the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) and [Service Contract Schedules](../UserGuide/FS_30_51_00.md) \(FS305100\) forms when their corresponding source files are modified and saved.

-   ```language-powershell
npm run watch --- --env modules="AR,AP,GL"
```

    This command automatically rebuilds the sources for only the forms in the specified functional areas \(AR, AP, and GL in this example\).

-   ```language-powershell
npm run watch --- --env customFolder=development screenIds="RS201000, RS202000"
```

    This command automatically rebuilds the sources you’ve created in the `development` folder for only the forms whose screen IDs have been specified in the `screenIds` parameter \(RS201000 and RS202000 in this example\). You can also use the `modules` parameter instead of `screenIds` to automatically rebuild the sources for only the forms in specific functional areas.


**Tip:** To run the `watch` command from the root folder of your instance, you can navigate to the root folder in Windows PowerShell and run the following command along with the `screenIds` or `modules` parameter.

```language-powershell
npm run watch --prefix .\FrontendSources\screen\
```

**Attention:** We recommend that you not use the `watch` command without the `screenIds` or `modules` parameter because the command may behave in an unstable manner.

**Parent topic:**[Getting Started with the Modern UI](../DeveloperGuide/UIDev_ModernUI_Mapref.md)

