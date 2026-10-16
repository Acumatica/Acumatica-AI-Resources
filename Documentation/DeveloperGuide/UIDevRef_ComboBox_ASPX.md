# Combo Box: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to combo boxes to HTML or TypeScript elements.

## PXDropDown

The following table shows the correspondence between PXDropDown and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXDropDown```
<px:PXDropDown ... />
```

</td><td>

Replace it with field \(whose control type is automatically defined as a combo box from the backend code\). In rare cases, you should replace it explicitly with the qp-drop-down control.

</td></tr><tr><td>

AllowEdit```
<px:PXDropDown 
  AllowEdit="True" ... />
```

</td><td>

Use the allowEdit property of the config attribute of the qp-drop-down control. If the property is set to *true*, a user can enter values that are not available in the combo box.

 ```
<field
  config-allow-edit.bind="true" >
</field>
```

</td></tr><tr><td>

AllowMultiSelect```
<px:PXDropDown 
  AllowMultiSelect="True" ... />
```

</td><td>

Use the allowMultiSelect property of the config attribute of the qp-drop-down control. If the property is set to *true*, a user can select multiple values from the combo box.

 ```javascript
@controlConfig({allowMultiSelect: true})
TimeZone: PXFieldState;
```

</td></tr><tr><td>

AllowNull```
<px:PXDropDown 
  AllowNull="True" ... />
```

</td><td>

Use the allowNull property of the config attribute of the qp-drop-down control. If the property is set to *true*, an empty value is allowed for the combo box.

 ```
<field
  config-allow-null.bind="true" >
</field>
```

</td></tr><tr><td>

AutoSuggest```
<px:PXDropDown 
  AutoSuggest="True" ... />
```

</td><td>

Use the autoSuggest property of the config attribute of the qp-drop-down control. If the property is set to *true*, while a user is typing to search for a value in the combo box, the system should suggest matching values available in the combo box.

 ```
<field
  config-auto-suggest.bind="true" >
</field>
```

</td></tr><tr><td>

CommitChanges```
<px:PXDropDown 
  CommitChanges="True" ... />
```

</td><td>

Use PXFieldOptions.CommitChanges in TypeScript code.```
export class Account extends PXView {
  Type:
  PXFieldState<PXFieldOptions.CommitChanges>;
}
```

</td></tr><tr><td>

DataField```
<px:PXDropDown 
  DataField="AutoPost" ... />
```

</td><td>

Use the name attribute of the field tag.

 ```
<field name="AutoPost">
</field>
```

</td></tr><tr><td>

Enabled```
<px:PXDropDown 
  Enabled="False" ... />
```

</td><td>

Use PXFieldOptions.Disabled in TypeScript code. The property specifies that the combo box is unavailable for editing.```
export class Account extends PXView {
  Type:
  PXFieldState<PXFieldOptions.Disabled>;
}
```

</td></tr><tr><td>

ID```
<px:PXDropDown 
  ID="chkAutoPost" ... />
```

</td><td>

If the qp-field tag is being used to replace the PXDropDown ASPX element, specify the id attribute of this tag. In other cases, the ID is not necessary for a combo box.

</td></tr><tr><td>

ValuesSeparator```
<px:PXDropDown 
  ValuesSeparator=";" ... />
```

</td><td>

Use the valuesSeparator property of the config attribute of the qp-drop-down control. The property specifies the character that is used to separate selected values in the combo box while the allowMultiSelect property is set to *true*.```
<field config-value-separator.bind=";" >
</field>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Control and Properties

The following table lists the obsolete ASPX element that is related to combo boxes. You do not need to replace this ASPX element with any HTML or TypeScript element.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXDropDown

</td><td>

-   NullText
-   runat
-   Size
-   SuppressLabel

</td></tr></tbody>
</table>

**Parent topic:**[Combo Box](../DeveloperGuide/UIDevRef_ComboBox_Mapref.md)

