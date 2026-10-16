# Time Span: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the time span control to HTML or TypeScript elements.

## PXTimeSpan

The following table shows the correspondence between the PXTimeSpan element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTimeSpan```
<px:PXTimeSpan ... />
```

</td><td>

Replace it with field \(whose control type is automatically defined as a time span from the backend code\). In rare cases, you should replace it explicitly with the qp-time-span control.

</td></tr><tr><td>

AllowEdit```
<px:PXTimeSpan AllowEdit="True" ... />
```

</td><td>

Use the allowEdit property of the config attribute of the qp-time-span control. If the property is set to *true*, a user can enter values that are not available in the combo box.

 ```
<field
  config-allow-edit.bind="true" >
</field>
```

</td></tr><tr><td>

AllowNull```
<px:PXTimeSpan AllowNull="False" ... />
```

</td><td>

Use the allowNull property of the config attribute of the qp-time-span control. If the property is set to *true*, an empty value is allowed for the combo box. By default, the allowNull value is *true*.```
<field config-allow-null.bind="false"></field>
```

</td></tr><tr><td>

Enabled```
<px:PXTimeSpan Enabled="False" ... />
```

</td><td>

Use the enabled property of the config attribute of the qp-time-span control. If the property is false, a user cannot select a value in the control.```
<field config-enabled.bind="false"></field>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the time span control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXTimeSpan

</td><td>

-   TimeMode
-   InputMask
-   runat
-   ID
-   Size

</td></tr></tbody>
</table>

**Parent topic:**[Time Span](../DeveloperGuide/UIDevRef_TimeSpan_Mapref.md)

