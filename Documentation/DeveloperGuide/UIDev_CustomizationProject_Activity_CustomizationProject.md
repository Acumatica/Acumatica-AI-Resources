# Customization Project with UI Changes:To Include Source Files in a Customization Project {#_aa97eea3-3fe8-48db-a03d-ba268dee1401 .task}

This activity will walk you through the process of including source files in a customization project.

## Story { .section}

Suppose that for the Smart Fix company, you’ve migrated multiple forms to the Modern UI and added elements to the Modern UI of particular forms. You need to include all these changes in a customization project to be able to distribute the changes to the Acumatica ERP instances that are used by employees of the Smart Fix company.

## Process Overview { .section}

You will rebuild all your changes and include them in a customization project.

## System Preparation { .section}

Before you begin including Modern UI source files in a customization project, do the following:

1.  Perform the following prerequisite activities:
    1.  [Modern UI Development: To Deploy an Instance with Custom Forms and the Modern UI](UIDev_ModernUI_Activity_PrepareInstance.md)
    2.  [Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for Modern UI Development](UIDev_ModernUI_Activity_BuildingSourcesAll.md)
2.  Complete at least one of the following activities:
    -   [UI Definition in HTML and TypeScript: To Create the UI of a Form](UIDev_UIDefinition_Activity_CreateForm.md)
    -   [UI Definition in HTML and TypeScript: To Convert an Acumatica ERP Form to the Modern UI with the Converter](UIDev_UIDefinition_Activity_Converter.md)
    -   [Data Entry Form: To Create the UI of a Data Entry Form](UIDev_DataEntryScreen_Activity_CreateFromScratch.md)
    -   [Processing Form: To Create the UI of a Processing Form](UIDev_ProcessingScreen_Activity_CreateFormScratch.md)
    -   [UI of a Setup Form: To Create the UI of a Setup Form](UIDev_SetupScreen_Activity_CreateSetupForm.md)
3.  Perform at least one of the following activities:
    -   [UI Customization Development: To Add Elements to an Acumatica ERP Form](UIDev_Customization_Activity_CustomFields.md)
    -   [UI Customization Development: To Add a Tab to an Acumatica ERP Form](UIDev_Customization_Activity_CustomTab.md)

## Step 1: Building the Source Files { .section}

To build the source code of the Modern UI for the current tenant, including the customization code, execute the following command in the `FrontendSources` folder.

```language-bourne
npm run build-dev
```

## Step 2: Including Files in the Customization Project { .section}

You use the `development` folder located in the `FrontendSources\screen\src\` folder of your instance to customize forms for the Modern UI. Once you've finished, you can include these files in your customization project.

To redistribute the Modern UI customization files, you need to include them in the customization project with the backend customization code as follows:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the *PhoneRepairShop* project name to open this customization project.
2.  On the navigation pane of the Customization Project Editor, which opens, click **Modern UI Files**. The Modern UI Files page opens.
3.  On the page toolbar, click **Add New Record**.
4.  In the **Add Files** dialog box, select the **Selected** check box in the rows with the following files:

    -   `development\screens\IN\IN202500\extensions\IN202500_PhoneRepairShop.html`
    -   `development\screens\IN\IN202500\extensions\IN202500_PhoneRepairShop.ts`
    -   `development\screens\RS\RS101000\RS101000.html`
    -   `development\screens\RS\RS101000\RS101000.ts`
    -   `development\screens\RS\RS201000\RS201000.html`
    -   `development\screens\RS\RS201000\RS201000.ts`
    -   `development\screens\RS\RS202000\RS202000.html`
    -   `development\screens\RS\RS202000\RS202000.ts`
    -   `development\screens\RS\RS301000\RS301000.html`
    -   `development\screens\RS\RS301000\RS301000.ts`
    -   `development\screens\RS\RS501000\RS501000.html`
    -   `development\screens\RS\RS501000\RS501000.ts`
    **Tip:** You may not have particular files if you have not performed the prerequisite activities, in which these files and folders are created. In this case, you can select the check boxes for all files from the list above that appear in the dialog box, and disregard the other listed files.

5.  Click **Save**.

**Parent topic:**[Including the Modern UI Changes in a Customization Project](../DeveloperGuide/UIDev_CustomizationProject_Mapref.md)

