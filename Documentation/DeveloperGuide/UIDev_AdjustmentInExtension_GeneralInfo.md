# UI Adjustments in HTML and TypeScript: General Information {#_69ae302a-9673-422f-bfca-e1ab9a9b5378 .concept}

The frontend code of an Acumatica ERP form includes the UI definition in HTML and TypeScript. You may need to adjust the layout of the form in HTML or modify the views and fields that are available on the form in TypeScript.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Adjust the layout of an Acumatica ERP form or a reusable UI definition in HTML
-   Adjust the TypeScript code of an Acumatica ERP form or a reusable UI definition

## Applicable Scenarios { .section}

You adjust the layout or TypeScript code of an Acumatica ERP form in the following cases:

-   You are developing a customization project that changes the Modern UI of a predefined Acumatica ERP form.
-   You are developing a complex Acumatica ERP form with multiple tabs and dialog boxes and want to split the frontend code of the form into smaller parts by using extensions. In the extensions, you need to connect the smaller parts to the whole form by adjusting the layout or the TypeScript code of the form.
-   You are developing an Acumatica ERP form for which the availability of particular UI elements depends on a feature. You add these elements in extensions and connect these elements to the whole form by adjusting the layout or TypeScript code of the form.
-   You have developed a reusable UI definition and need to insert it into an Acumatica ERP form while adjusting the layout or TypeScript code that is defined in the reusable UI definition. \(For details about reusable UI definitions, see [Reusing a UI Definition](UIDev_UIDefinitionReuse_Mapref.md).\)

## UI Adjustments in HTML and TypeScript { .section}

You can adjust the layout of an Acumatica ERP form in HTML by adding controls to the form, removing them from the form, or reordering them. You can also modify the layout based on a condition. For examples of layout adjustments, see [UI Adjustments in HTML and TypeScript: HTML Examples](UIDev_AdjustmentInExtension_HTML.md).

**Important:** All tags that customize the original HTML code of an Acumatica ERP form must be located on the highest level of the extension layout—that is, in the template tag of the highest level.

In TypeScript, you may need to add new fields or view classes to the form, modify field options, and add, remove, or modify decorators of fields or view classes. For examples of these adjustments, see [UI Adjustments in HTML and TypeScript: TypeScript Examples](UIDev_AdjustmentInExtension_TS.md).

**Parent topic:**[Adjusting HTML and TypeScript Code](../DeveloperGuide/UIDev_AdjustmentInExtension_Mapref.md)

