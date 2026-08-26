# Time Span: Conversion from ASPX to HTML and TypeScript {#_a91c70a8-9619-4810-9e94-46cf33eb5b8b .concept}

The following tables will help you to convert the ASPX elements that are related to the time span control to HTML or TypeScript elements.

## PXTimeSpan { .section}

The following table shows the correspondence between the PXTimeSpan element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTimeSpan```
<px:PXTimeSpan ... />
```

|Replace it with field \(whose control type is automatically defined as a time span from the backend code\). In rare cases, you should replace it explicitly with the qp-time-span control.|
|AllowEdit```
<px:PXTimeSpan AllowEdit="True" ... />
```

|Use the allowEdit property of the config attribute of the qp-time-span control. If the property is set to *true*, a user can enter values that are not available in the combo box.

 ```
<field
  config-allow-edit.bind="true" >
</field>
```

|
|AllowNull```
<px:PXTimeSpan AllowNull="False" ... />
```

|Use the allowNull property of the config attribute of the qp-time-span control. If the property is set to *true*, an empty value is allowed for the combo box. By default, the allowNull value is *true*.```
<field config-allow-null.bind="false"></field>
```

|
|Enabled```
<px:PXTimeSpan Enabled="False" ... />
```

|Use the enabled property of the config attribute of the qp-time-span control. If the property is false, a user cannot select a value in the control.```
<field config-enabled.bind="false"></field>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the time span control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXTimeSpan|-   TimeMode
-   InputMask
-   runat
-   ID
-   Size

|

**Parent topic:**[Time Span](../DeveloperGuide/UIDevRef_TimeSpan_Mapref.md)

