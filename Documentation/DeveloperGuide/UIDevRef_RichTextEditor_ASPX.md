# Rich Text Editor: Conversion from ASPX to HTML and TypeScript

The information in the following tables will help you to convert the ASPX elements that are related to a rich text editor to HTML or TypeScript elements.

## AutoSize

The following table shows the correspondence between the AutoSize element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_c4d985e6-bce2-4e72-b9f1-8ae615230f55"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

AutoSize```
<px:PXRichTextEdit ...>
  <AutoSize 
    Enabled="True" 
    MinHeight="216" />
</px:PXRichTextEdit>
```

</td><td>

Use the properties in the config attribute of the qp-rich-text-editor control.```
<qp-rich-text-editor 
  id="edBody"
  state.bind="ItemSettings.Body"
  class="stretch">
</qp-rich-text-editor>
```

</td></tr><tr><td>

Enabled```
<px:PXRichTextEdit ...>
  <AutoSize 
    Enabled="True" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the expandToContent property in the config attribute of the qp-rich-text-editor control.```
<qp-rich-text-editor 
  config.bind="{expandToContent: true}">
</qp-rich-text-editor>
```

</td></tr><tr><td>

MinHeight```
<px:PXRichTextEdit ...>
  <AutoSize  
    MinHeight="216" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the expandToContentMinHeight property in the config attribute of the qp-rich-text-editor control.```
<qp-rich-text-editor 
  config.bind=
    "{expandToContentMinHeight: 216}">
</qp-rich-text-editor>
```

</td></tr></tbody>
</table>

## InsertDatafield

The following table shows the correspondence between the InsertDatafield element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_308928f3-dc26-4400-8a2b-71619ed35e4c"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

InsertDatafield```
<px:PXRichTextEdit ...>
  <InsertDatafield
    DataMember="EntityItems"
    DataSourceID="ds"
    TextField="Name"
    ValueField="Path"
    ImageField="Icon" />
</px:PXRichTextEdit>
```

</td><td>

Add the insert-data-field tag between the opening and closing qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    data-member="EntityItems"
    id-field="Key"
    text-field="Name"
    value-field="Path"
    icon-field="Icon">
  </insert-data-field>
</qp-rich-text-editor>
```

</td></tr><tr><td>

DataMember```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    DataMember="EntityItems" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the data-member attribute of the insert-data-field tag in HTML. This attribute specifies the data view whose fields should be displayed when the **Data Field** command is clicked on the toolbar of the qp-rich-text-editor control.```
<qp-rich-text-editor ...>
  <insert-data-field 
    data-member="EntityItems" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

</td></tr><tr><td>

DataSourceID```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    DataSourceID="ds" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the id-field attribute of the insert-data-field tag in HTML. This attribute specifies the unique identifier field that belongs to the data view specified in the datamember attribute.```
<qp-rich-text-editor ...>
  <insert-data-field 
    id-field="Key" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

</td></tr><tr><td>

TextField```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    TextField="Name" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the text-field attribute of the insert-data-field tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    text-field="Name" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

</td></tr><tr><td>

ValueField```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    ValueField="Path" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the value-field attribute of the insert-data-field tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    value-field="Path" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

</td></tr><tr><td>

ImageField```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    ImageField="Icon" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the icon-field attribute of the insert-data-field tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    icon-field="Icon" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

</td></tr></tbody>
</table>

## InsertDatafieldPrev

The following table shows the correspondence between the InsertDatafieldPrev element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_7da78d7c-fc5a-4a93-80db-1434730f85a9"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

InsertDatafieldPrev```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev
    DataMember="PreviousEntityItems"
    DataSourceID="ds"
    TextField="Name"
    ValueField="Path"
    ImageField="Icon" />
</px:PXRichTextEdit>
```

</td><td>

Add the insert-data-field-prev tag between the opening and closing qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev
    data-member="EntityItemsWithPrevious"
    id-field="Key"
    text-field="Name"
    value-field="Path"
    icon-field="Icon">
  </insert-data-field-prev>
</qp-rich-text-editor>
```

</td></tr><tr><td>

DataMember```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    DataMember="PreviousEntityItems" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the data-member attribute of the insert-data-field-prev tag in HTML. This attribute specifies the data view whose fields should be displayed when the **Previous Data Field**command is clicked on the toolbar of the qp-rich-text-editor control.```
<qp-rich-text-editor ...>
  <insert-data-field-prev
    data-member="EntityItemsWithPrevious" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

</td></tr><tr><td>

DataSourceID```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    DataSourceID="ds" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the id-field attribute of the insert-data-field-prev tag in HTML. This attribute specifies the unique identifier field that belongs to the data view specified in the data-member attribute.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    id-field="Key" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

</td></tr><tr><td>

TextField```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    TextField="Name" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the text-field attribute of the insert-data-field-prev tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    text-field="Name" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

</td></tr><tr><td>

ValueField```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    ValueField="Path" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the value-field attribute of the insert-data-field-prev tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    value-field="Path" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

</td></tr><tr><td>

ImageField```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    ImageField="Icon" ... />
</px:PXRichTextEdit>
```

</td><td>

Use the icon-field attribute of the insert-data-field-prev tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    icon-field="Icon" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

</td></tr></tbody>
</table>

## PXRichTextEdit

The following table shows the correspondence between the PXRichTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXRichTextEdit```
<px:PXRichTextEdit 
  ID="edBody" 
  runat="server" 
  DataField="Body" 
  Style="border-width: 0px;"
  AllowAttached="true" 
  AllowSearch="true" 
  AllowLoadTemplate="false" 
  AllowSourceMode="true">
</px:PXRichTextEdit>
```

</td><td>

Use the qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor 
  id="edBody"
  state.bind="ItemSettings.Body"
  class="stretch">
</qp-rich-text-editor>
```

</td></tr><tr><td>

ID```
<px:PXRichTextEdit 
  ID="edBody">
</px:PXRichTextEdit>
```

</td><td>

Use the id attribute of the qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor 
  id="edBody">
</qp-rich-text-editor>
```

</td></tr><tr><td>

DataField```
<px:PXRichTextEdit 
  DataField="Body">
</px:PXRichTextEdit>
```

</td><td>

Use the state attribute of the qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor 
  state.bind="ItemSettings.Body">
</qp-rich-text-editor>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to rich text editors. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXRichTextEdit

</td><td>

-   AllowAttached
-   AllowLoadTemplate
-   AllowSearch
-   AllowSourceMode
-   runat
-   Style

</td></tr></tbody>
</table>

**Parent topic:**[Rich Text Editor](../DeveloperGuide/UIDevRef_RichTextEditor_Mapref.md)

