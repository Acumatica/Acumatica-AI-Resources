# Tab: Configuration {#_a6a626ec-f75e-41dd-9370-a7b09de0f9de .concept}

In this topic, you can learn how to define the layout of a tab and how to adjust the tab visibility.

## Tab Layout { .section}

You organize the layout of a tab as follows:

-   If the tab will contain only a table, see [Table \(Grid\)](UIDevRef_Grid_Mapref.md).
-   If the tab will not contain only a table, you use a nested qp-template tag. For details about the organization of the layout with qp-template, see [Form Layout: Predefined Templates](UIDev_DesigningLayout_Templates.md).

## Tab Layout in an Extension { .section}

The ref attribute specifies the ID of the tab that is defined in an extension, as shown in the following code.

```
<qp-tab ref="tabUserInfo_Content">
</qp-tab>
```

The tab in an extension can be defined as the following code shows. In this example, you need to use nested template tags. The first template tag is a template for the whole extension, and the second one is a template for the tab content.

```
<template>
  <template id="tabUserInfo_Content">
    <qp-template ...>
    </qp-template>
  </template>
</template>
```

## Conditional Visibility of a Tab { .section}

To display the tab conditionally, you can use `visible.bind='<condition>'` for the qp-tab tag, as shown in the following example.

```
<qp-tab id="tabDuplicates" caption="Duplicates" ref="tabDuplicates_Content" 
  visible.bind="Lead.DuplicateFound.value === true" load-on-demand="true"></qp-tab>
```

However we recommend that you define conditional visibility of a tab in the graph code. For details, see [Configuration of the User Interface in Code](../StudioDeveloperGuide/BL__con_UI_Presentation_Logic.md).

**Parent topic:**[Tab](../DeveloperGuide/UIDevRef_Tab_Mapref.md)

