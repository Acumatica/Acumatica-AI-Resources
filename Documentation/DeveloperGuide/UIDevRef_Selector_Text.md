# Selector Control: Configuration of the Control's Text {#_81444cc1-fba1-4c41-8f7f-75b310ea2c82 .concept}

The text in a selector control is determined by the parameters specified in the `PXSelector` attribute \(or a derived attribute, such as `Customer`\) on the DAC field. By default, the value of the SubstituteKey parameter of the PXSelector attribute is displayed in the selector control.

## Adding Additional Text to the Default Text { .section}

You can add additional text to the selector element. This text will be shown after the default text, separated by a hyphen. To add the additional text to the text box, specify the field that contains the additional text in the `DescriptionField` parameter of the PXSelector attribute \(or its descendants\), as shown in the following code.

```language-csharp
[PXDefault]
[Customer(
    typeof(Search<BAccountR.bAccountID, Where<True, Equal<True>>>),
    Visibility = PXUIVisibility.SelectorVisible,
    DescriptionField = typeof(Customer.acctName),
    Filterable = true)]
...
public virtual Int32? CustomerID
```

## Replacing Default Text { .section}

You can replace the identifier from the SubstituteKey parameter with more human-readable text that is specified in the DescriptionField parameter value of the PXSelector attribute. To replace the default text \(within the link\) with a human-readable field, you can do one of the following:

-   In the DAC code, on the DAC field, in the PXSelector attribute, specify `SelectorMode = PXSelectorMode.DisplayModeText`.
-   In the HTML code, in the field tag, specify `displayMode = "text"` \(see the descriptions of other possible values in qp-selector\).
-   Only for a grid column: In the TypeScript code, in the columnConfig decorator, specify `displayMode: GridColumnDisplayMode.Text`.

If you need to specify which field should be displayed in the column selector explicitly, you can specify the field in the textField tag, as shown in the following example.

```language-javascript
@columnConfig({ 
  hideViewLink: true, 
  textField: "ShipmentPlanType_INPlanType_LocalizedDescr" })
```

## Entering a Value in the Selector Box { .section}

You can configure the selector box so that when a user enters a value by typing characters in the selector box, the entered string is assigned as the value of the field—that is, the valueField property of the control. For this purpose, you need to do the following in the controlConfig decorator:

1.  For the displayMode property, specify `"text"`.
2.  For the selectorMode property, specify `PXSelectorMode.TextModeEditable`.

    **Note:** You can use the selectorMode property to configure the autocomplete feature, the display mode, and the `"text"` mode of the selector box.


For example, suppose that you need a user to be able to enter the URL of a link manually in a selector column. The following code implements this behavior.

```
@columnConfig({ 
  displayMode: GridColumnDisplayMode.Both, 
  editorConfig: { 
    displayMode: "text", 
    selectorMode: PXSelectorMode.TextModeEditable 
  } 
})
Link: PXFieldState<PXFieldOptions.CommitChanges>;
```

**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

