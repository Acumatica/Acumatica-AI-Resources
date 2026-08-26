# Customization Project with UI Changes: How UI Customization Works {#_7c39b069-2612-4b33-9313-53460637973f .concept}

In this topic, you can find information about how a customization project that includes changes to the Modern UI works, including how it is published and unpublished.

## Where the Source Code of the Modern UI Changes Is Stored {#_03744112-3f08-4cd1-8eca-9a793b8865cd .section}

When a customization project that contains changes to the Modern UI is published for a particular tenant, the system copies the UI changes included in the customization project to the `FrontendSources\screen\src\customizationScreens\<Tenant Name>` folder. The `FrontendSources\screen\src\customizationScreens` folder contains a subfolder for each tenant for which a customization project with the Modern UI changes is published.

Each tenant folder contains the `Screens` folder. The `customizationScreens\<Tenant Name>\screens` folder contains subfolders with two-letter names. For each new form or each form whose UI has been customized, the subfolder contains a folder with the screen ID as the folder name, such as `S0301000`. This folder includes the following files and folders:

-   For a form whose UI has been customized, the `extensions` folder, which contains TypeScript and HTML files for customization-related extensions of the form.
-   For a new form, the HTML and TypeScript files that have the screen ID as the file name, such as `SO304000.ts` and `SO304000.html`. The `views.ts` file and the `Extensions` folder may also be included for the form.

Below you can see an example of the hierarchy of the files and folders with code that customizes the Modern UI.

```
Site
- FrontendSources\screen\src\customizationScreens
- - Tenant 1
- - - screens
- - - - SO
- - - - - S0301000
- - - - - - extensions
- - - - - - - SO301000_customization1.html
- - - - - - - SO301000_customization1.ts
- - - - - SO304000
- - - - - - extensions (optional)
- - - - - - - SO304000_extension1.html
- - - - - - - SO304000_extension1.ts
- - - - - - SO304000.html
- - - - - - SO304000.ts
- - - - - - views.ts (optional)
```

## Where the Compiled UI Changes Are Saved { .section}

When a customization project that contains changes to the Modern UI is published for a particular tenant, the system takes the original UI sources and the UI sources from the `FrontendSources\screen\src\customizationScreens\<Tenant Name>` folder, compiles them, and produces the files that include all UI changes from the customization project in the `Scripts\Screens\<Tenant Name>` folder. The files outside of the `Scripts\Screens\<Tenant Name>` folder remain unchanged.

Below you can see an example of the hierarchy of the files and folders with the compiled sources of the Modern UI.

```
Site
- Scripts
- - Screens
- - - Tenant 1
- - - - S0301000.hashcode.bundle.js
- - - - S0301000.html
- - - - S0304000.hashcode.bundle.js
- - - - S0304000.html
- - - S0301000.hashcode.bundle.js
- - - S0301000.html
```

## How the UI Customization Project is Unpublished { .section}

When a customization project that contains changes to the Modern UI is unpublished for a particular tenant, the system removes the `Scripts\Screens\<Tenant Name>` and `customizationScreens\<Tenant Name>` folders.

## How a Form Works After the Publication of a UI Customization Project { .section}

When a user opens an Acumatica ERP form, the system first looks for the sources of the form in the `Scripts\Screens\<Tenant Name>` folder. If the files for this form exist in this folder, the system displays the form with the UI changes from the customization project. If no files for this form are found in the folder, the system displays the original form.

**Parent topic:**[Including the Modern UI Changes in a Customization Project](../DeveloperGuide/UIDev_CustomizationProject_Mapref.md)

