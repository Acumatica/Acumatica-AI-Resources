# UI Customization Development: General Information {#_ecd9634b-cb63-458a-bad2-4d1c5b382788 .concept}

When you customize the UI of Acumatica ERP in TypeScript and HTML, you may add new Acumatica ERP forms or customize existing ones. For details on implementing a new form, see [UI Definition in HTML and TypeScript: General Information](UIDev_UIDefinition_GeneralInfo.md). For a form whose UI you need to customize, you add TypeScript and HTML files for customization extensions of the form. Each file name starts with the screen ID and ends with a postfix that indicates the purpose of the extension, as you can see in the `S0301000_Customization1.ts` file name.

**Attention:** The Modern UI changes are defined for each tenant of an Acumatica ERP instance independently.

## Learning Objectives { .section}

In this chapter, you will learn how to add new elements, such as boxes and tabs, to the UI of an Acumatica ERP form in TypeScript and HTML.

## Applicable Scenarios { .section}

You may need to customize the UI of Acumatica ERP in TypeScript and HTML if any of the following scenarios apply:

-   Your customization project is introducing capabilities that are not provided by Acumatica ERP.
-   You are developing integration with an external system.
-   Your customization project needs to support custom workflows that integrate multiple systems.

## Extension in TypeScript { .section}

To define an extension of an existing Acumatica ERP form in TypeScript, you use TypeScript mixins. For details about mixins, see [https://www.typescriptlang.org/docs/handbook/mixins.html\#alternative-pattern](https://www.typescriptlang.org/docs/handbook/mixins.html#alternative-pattern).

In the TypeScript file of an extension, you define an interface that extends the screen class and a class with the same name the interface has.

**Attention:** We recommend that you make sure the following postfixes match: the posfix in the name of the TypeScript file with the extension, and the postfixes in the names of the classes and interfaces that extend original classes.

In the examples below, the following should be declared in the `GL401000_MultiCurrency.ts` file:

-   The `GL401000_MultiCurrency` and `GLHistoryEnqFilter_MultiCurrency` classes
-   The `GL401000_MultiCurrency` and `GLHistoryEnqFilter_MultiCurrency` interfaces

The `_MultiCurrency` postfix of the file matches the postfix of the classes and the interfaces.

Instead of extending the screen class, the interface can extend other extension classes or multiple classes \(such as the screen class and an extension class\). The order of the applied extensions is defined similarly to the way it is defined for graph extensions in C\# code. For details about the order, see [The Order in Which Extensions Are Loaded](../CustomizationPlatform/CG_Platform_Framework_CS.md#_225856fd-aa53-4aa4-8466-45266ec95b96).

In the extension class, you do any of the following:

-   Initialize new data views in the same way as you do in the screen class. For details about the screen class and view classes, see [Screen Class in TypeScript](UIDev_UIDefinition_GeneralInfo.md#_1e51a19b-363a-4595-ba4c-99bdf0d7e499) and [View Classes in TypeScript](UIDev_UIDefinition_GeneralInfo.md#_e6e70710-e57a-4ae9-9a46-81d676ddd869).

-   Optional: In the parameter of the `featureInstalled` decorator, specify the feature for which the extension should be available.

-   Optional: Define new actions in the same way as you do in the screen class. For details about action definitions, see [Action Definitions in TypeScript](UIDev_UIDefinition_GeneralInfo.md#_48f6ba21-06dc-442b-bdbf-4af7bea5e024) and [Button: Configuration](UIDevRef_Button_Configuration.md).
-   Optional: Adjust the TypeScript code of the original form.

An example is shown in the following code.

```language-javascript
import { featureInstalled, FeaturesSet } from "client-controls";
import { GL401000 } from "src/screens/GL/GL401000/GL401000";

export interface GL401000_MultiCurrency extends GL401000 { }
@featureInstalled(FeaturesSet.Multicurrency)
export class GL401000_MultiCurrency {
}
```

For each data view that you need to modify, you add an interface and a class for the extension data view, as shown in the following example.

```language-javascript
import { featureInstalled, FeaturesSet } from "client-controls";
import { GLHistoryEnqFilter } from "src/screens/GL/GL401000/GL401000";

export interface GLHistoryEnqFilter_MultiCurrency 
  extends GLHistoryEnqFilter { }
@featureInstalled(FeaturesSet.Multicurrency)
export class GLHistoryEnqFilter_MultiCurrency {
    ShowCuryDetail: PXFieldState<PXFieldOptions.CommitChanges>;
}
```

For more examples of adjustments of TypeScript code, see [UI Adjustments in HTML and TypeScript: TypeScript Examples](UIDev_AdjustmentInExtension_TS.md).

## Extension in HTML { .section}

In the HTML file of an extension, you can modify the layout of the screen, if necessary. The following code shows an example of a modification.

```language-xml
<template>
    <field after="#columnSecond [name='SubCD']" name="ShowCuryDetail"></field>
</template>
```

In this example, the after attribute of the field tag shows that the `ShowCuryDetail` field should be placed after the tag with the `SubCD` name in the container with the `columnSecond` ID.

**Important:** All tags that customize the original HTML code of an Acumatica ERP form must be located on the highest level of the extension layout—that is, in the template tag of the highest level.

For more examples of layout adjustments, see [UI Adjustments in HTML and TypeScript: HTML Examples](UIDev_AdjustmentInExtension_HTML.md).

**Parent topic:**[Customizing Acumatica ERP Forms in HTML and TypeScript](../DeveloperGuide/UIDev_Customization_Mapref.md)

