# Combo Box: Conversion from ASPX to HTML and TypeScript {#_5f184c13-a0d2-4ed7-a970-506fd7c28b6a .concept}

The following tables will help you to convert the ASPX elements that are related to combo boxes to HTML or TypeScript elements.

## PXDropDown { .section}

The following table shows the correspondence between PXDropDown and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXDropDown```
<px:PXDropDown ... />
```

|Replace it with field \(whose control type is automatically defined as a combo box from the backend code\). In rare cases, you should replace it explicitly with the qp-drop-down control.|
|AllowEdit```
<px:PXDropDown 
  AllowEdit="True" ... />
```

|Use the allowEdit property of the config attribute of the qp-drop-down control. If the property is set to *true*, a user can enter values that are not available in the combo box.

 ```
<field
  config-allow-edit.bind="true" >
</field>
```

|
|AllowMultiSelect```
<px:PXDropDown 
  AllowMultiSelect="True" ... />
```

|Use the allowMultiSelect property of the config attribute of the qp-drop-down control. If the property is set to *true*, a user can select multiple values from the combo box.

 ```language-javascript
@controlConfig({allowMultiSelect: true})
TimeZone: PXFieldState;
```

|
|AllowNull```
<px:PXDropDown 
  AllowNull="True" ... />
```

|Use the allowNull property of the config attribute of the qp-drop-down control. If the property is set to *true*, an empty value is allowed for the combo box.

 ```
<field
  config-allow-null.bind="true" >
</field>
```

|
|AutoSuggest```
<px:PXDropDown 
  AutoSuggest="True" ... />
```

|Use the autoSuggest property of the config attribute of the qp-drop-down control. If the property is set to *true*, while a user is typing to search for a value in the combo box, the system should suggest matching values available in the combo box.

 ```
<field
  config-auto-suggest.bind="true" >
</field>
```

|
|CommitChanges```
<px:PXDropDown 
  CommitChanges="True" ... />
```

|Use PXFieldOptions.CommitChanges in TypeScript code.```
export class Account extends PXView {
  Type:
  PXFieldState<PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXDropDown 
  DataField="AutoPost" ... />
```

|Use the name attribute of the field tag.

 ```
<field name="AutoPost">
</field>
```

|
|Enabled```
<px:PXDropDown 
  Enabled="False" ... />
```

|Use PXFieldOptions.Disabled in TypeScript code. The property specifies that the combo box is unavailable for editing.```
export class Account extends PXView {
  Type:
  PXFieldState<PXFieldOptions.Disabled>;
}
```

|
|ID```
<px:PXDropDown 
  ID="chkAutoPost" ... />
```

|If the qp-field tag is being used to replace the PXDropDown ASPX element, specify the id attribute of this tag. In other cases, the ID is not necessary for a combo box.|
|ValuesSeparator```
<px:PXDropDown 
  ValuesSeparator=";" ... />
```

|Use the valuesSeparator property of the config attribute of the qp-drop-down control. The property specifies the character that is used to separate selected values in the combo box while the allowMultiSelect property is set to *true*.```
<field config-value-separator.bind=";" >
</field>
```

|

## Obsolete ASPX Control and Properties { .section}

The following table lists the obsolete ASPX element that is related to combo boxes. You do not need to replace this ASPX element with any HTML or TypeScript element.

|ASPX Control|Properties|
|------------|----------|
|PXDropDown|-   NullText
-   runat
-   Size
-   SuppressLabel

|

**Parent topic:**[Combo Box](../DeveloperGuide/UIDevRef_ComboBox_Mapref.md)

