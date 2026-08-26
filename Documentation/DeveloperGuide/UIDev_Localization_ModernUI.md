# UI Localization: TypeScript and HTML Code of the Modern UI {#_b510e5fb-72c3-42f5-a48c-39dda10f0acc .concept}

The following items in the TypeScript and HTML code of the Modern UI are localized automatically—that is, you do not need to specify anything for them in the TypeScript or HTML code:

-   The UI names in the `caption` attribute of the respective tags in HTML
-   The containerName parameter of the viewInfo decorator in TypeScript

If you want to localize any other text in the TypeScript or HTML code, you need to use one of the approaches described in the following sections.

## Localizing Strings in TypeScript Code {#_227ade16-ab04-418b-a806-4149a5fb2415 .section}

If you need to localize the value of an HTML attribute, such as `text` or `toolTip`, you need to declare a class with the strings for localization and use the [localizable](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=996daf88-0f99-e5b7-2dd6-37e53ad89736) decorator on this class, as shown in the following example.

```language-javascript
import { 
  localizable
} from "client-controls";

@localizable
class ActionCaption {
  static AddRelatedTableRelations = "Add Related Table";
  static BrowseForRelation = "Add Relations";
  static ShowAvailableValues = "Combo Box Values";
}

@localizable
class ActionToolTip {
  static AddRelatedTableRelations = "Add a relation between tables";
  static BrowseForRelation = "Add a related table for the selected table";
  static ShowAvailableValues = "Display the list of combo box values";
}

@gridConfig({
  preset: GridPreset.Details,
  initNewRow: true,
  autoAdjustColumns: true,
  autoRepaint: ["JoinConditions", "RelatedTables", "TablesInformation"],
  topBarItems: {
    moveUpRelations: {...},
    moveDownRelations: {...},
    addRelatedTableRelations: {
      index: 5,
      config: {
        commandName: "addRelatedTableRelations",
        text: ActionCaption.AddRelatedTableRelations,
        toolTip: ActionToolTip.AddRelatedTableRelations
      }
    }
  }
})
export class GIRelation extends PXView { ... }
```

You can also use the localizable decorator to mark a localizable string, as shown in the following examples.

```language-javascript
export class QpDacBrowserCustomElement {
    @localizable
    static NothingFoundMsg: string = 
      "No entries have been found for the {filter}";
}
```

You can also specify the context for the message in the parameter of the decorator, as shown in the following code. The value of the parameter is displayed in the **Key** column of the **Key-Specific Values** tab of the [Translation Dictionaries](../UserGuide/SM_20_05_40.md#) \(SM200540\) form. For example, the value of the parameter can help to distinguish two messages if they have the same identifiers and are declared in the classes with the same names.

```language-javascript
@localizable("PX.Objects.AP.Messages")
class Messages {
    static LinesHintSingleLine = "line selected";
}
```

## Using Localizable Strings Defined in TypeScript in HTML Code { .section}

If in HTML code you need to use the localizable string that is defined in TypeScript, you need to do the following:

1.  You define a property in the screen class that corresponds to the class with localizable messages, as shown in the following example.

    ```language-javascript
    //The class with localizable messages
    @localizable
    export class LocalizableStrings {
      static btnPrevDataField_tooltip = "<Tooltip text>";
    }
    
    //The screen class
    @graphInfo({ 
      graphType: 'PX.BusinessProcess.UI.MobileNotificationMaint', 
      primaryView: 'Notifications' 
    })
    export class SM204004 extends PXScreen {
      //The property that corresponds to the class with localizable messages
      **LocalizableStrings = LocalizableStrings;**
      ...
    }
    ```

2.  You use this property in HTML code, as shown in the following example.

    ```language-xml
    <qp-button id="btnPrevDataField" 
      caption="Insert Previous Data Field" 
      tooltip.bind = 'LocalizableStrings.btnPrevDataField_tooltip'>
    </qp-button>
    ```


## Localizing Strings in HTML Code { .section}

To make the content of a tag in HTML localizable, you mark the tag with the i18n attribute, as shown in the following example. This is the standard attribute for the localization of HTML code.

```language-xml
<a id="UserPrefs_form2_OutlookLink" 
  href="~/../../../OutlookAddinManifest" i18n>
  Download Outlook Add-In Manifest
</a>
```

You can also mark any attribute in HTML with the .i18n attribute suffix to make the value of the attribute localizable, as shown in the following example.

```language-xml
<custom-tag text.i18n="Hello, World!"></custom-tag>
```

**Parent topic:**[Supporting UI Localization](../DeveloperGuide/UIDev_Localization_Mapref.md)

