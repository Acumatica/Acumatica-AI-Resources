# Modern UI Development: Creating Modern UI Source Files for Custom and Customized Forms {#_530837da-5462-4e84-a35c-457172bbef01 .concept}

The Modern UI of a form is defined by an HTML file and a TypeScript file. If you’re customizing the Modern UI of an existing form, you create extension files that are derived from its original HTML and TypeScript code. For details, see [Defining Acumatica ERP Forms in HTML and TypeScript](UIDev_UIDefinition_Mapref.md) and [Customizing Acumatica ERP Forms in HTML and TypeScript](UIDev_Customization_Mapref.md).

## Using the Development Folder { .section}

You use the `development` folder—located in the `FrontendSources\screen\src\` folder of your instance—to create new forms or to customize existing forms for the Modern UI.

The source files of the forms that you create or customize in this folder aren’t affected by system operations, such as the publishing and unpublishing of customization projects. Also, you can build the source files in this folder and check the results in the browser without affecting any system files. Because of this isolation, the `development` folder is the ideal location for developing custom and customized forms. Once you’re satisfied with the results, you can include the source files in your customization project. For details, see [Including the Modern UI Changes in a Customization Project](UIDev_CustomizationProject_Mapref.md).

By default, the `development` folder doesn’t exist in the instance—you must create it manually. Within it, you create the `screens` folder.

## Creating Modern UI Source Files in the Development Folder { .section}

In the `FrontendSources\screen\src\development\screens\` folder, you should create subfolders with two-letter names. Each subfolder will contain the source code of the forms whose screen IDs start with these letters. For each form in the subfolder, you should create a folder named after its screen ID, such as `RS201000`. Within this folder, you should create HTML and TypeScript files with the screen ID as the file name, such as `RS201000.ts` and `RS201000.html`.

The following example shows the folder structure you need to create within the `development` folder for a custom form with the RS201000 screen ID and a customized [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. For customized forms, the HTML and TypeScript files are stored in the `extensions` folder:

```
- screens
- - RS
- - - RS201000
- - - - RS201000.html
- - - - RS201000.ts
- - SO
- - - SO301000
- - - - extensions
- - - - - SO301000_extension1.html
- - - - - SO301000_extension1.ts
```

**Tip:** If you create a custom form by clicking **Create New Screen** on the [Screens](../UserGuide/AU_20_10_00.md) page of the Customization Project Editor, the system automatically:

-   Generates the HTML and TypeScript files for the new form.
-   Displays these files on the [Modern UI Files](../UserGuide/AU_20_46_00.md) page. You can click **Export to Development Folder** on the page toolbar to export the files to the `development` folder.
-   Generates the `development` folder \(if it doesn't already exist\) and the appropriate subfolder structure, and places the HTML and TypeScript files in the appropriate folder.

**Parent topic:**[Getting Started with the Modern UI](../DeveloperGuide/UIDev_ModernUI_Mapref.md)

