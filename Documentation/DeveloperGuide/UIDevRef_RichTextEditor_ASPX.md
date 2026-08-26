# Rich Text Editor: Conversion from ASPX to HTML and TypeScript {#_afe85ceb-98bf-43ed-ba63-4187dc9fa032 .concept}

The information in the following tables will help you to convert the ASPX elements that are related to a rich text editor to HTML or TypeScript elements.

## AutoSize { .section}

The following table shows the correspondence between the AutoSize element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|AutoSize```
<px:PXRichTextEdit ...>
  <AutoSize 
    Enabled="True" 
    MinHeight="216" />
</px:PXRichTextEdit>
```

|Use the properties in the config attribute of the qp-rich-text-editor control.```
<qp-rich-text-editor 
  id="edBody"
  state.bind="ItemSettings.Body"
  class="stretch">
</qp-rich-text-editor>
```

|
|Enabled```
<px:PXRichTextEdit ...>
  <AutoSize 
    Enabled="True" ... />
</px:PXRichTextEdit>
```

|Use the expandToContent property in the config attribute of the qp-rich-text-editor control.```
<qp-rich-text-editor 
  config.bind="{expandToContent: true}">
</qp-rich-text-editor>
```

|
|MinHeight```
<px:PXRichTextEdit ...>
  <AutoSize  
    MinHeight="216" ... />
</px:PXRichTextEdit>
```

|Use the expandToContentMinHeight property in the config attribute of the qp-rich-text-editor control.```
<qp-rich-text-editor 
  config.bind=
    "{expandToContentMinHeight: 216}">
</qp-rich-text-editor>
```

|

## InsertDatafield { .section}

The following table shows the correspondence between the InsertDatafield element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|InsertDatafield```
<px:PXRichTextEdit ...>
  <InsertDatafield
    DataMember="EntityItems"
    DataSourceID="ds"
    TextField="Name"
    ValueField="Path"
    ImageField="Icon" />
</px:PXRichTextEdit>
```

|Add the insert-data-field tag between the opening and closing qp-rich-text-editor tag in HTML.```
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

|
|DataMember```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    DataMember="EntityItems" ... />
</px:PXRichTextEdit>
```

|Use the data-member attribute of the insert-data-field tag in HTML. This attribute specifies the data view whose fields should be displayed when the **Data Field** command is clicked on the toolbar of the qp-rich-text-editor control.```
<qp-rich-text-editor ...>
  <insert-data-field 
    data-member="EntityItems" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

|
|DataSourceID```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    DataSourceID="ds" ... />
</px:PXRichTextEdit>
```

|Use the id-field attribute of the insert-data-field tag in HTML. This attribute specifies the unique identifier field that belongs to the data view specified in the datamember attribute.```
<qp-rich-text-editor ...>
  <insert-data-field 
    id-field="Key" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

|
|TextField```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    TextField="Name" ... />
</px:PXRichTextEdit>
```

|Use the text-field attribute of the insert-data-field tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    text-field="Name" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

|
|ValueField```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    ValueField="Path" ... />
</px:PXRichTextEdit>
```

|Use the value-field attribute of the insert-data-field tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    value-field="Path" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

|
|ImageField```
<px:PXRichTextEdit ...>
  <InsertDatafield 
    ImageField="Icon" ... />
</px:PXRichTextEdit>
```

|Use the icon-field attribute of the insert-data-field tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field 
    icon-field="Icon" ...>
  </insert-data-field>
</qp-rich-text-editor>
```

|

## InsertDatafieldPrev { .section}

The following table shows the correspondence between the InsertDatafieldPrev element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|InsertDatafieldPrev```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev
    DataMember="PreviousEntityItems"
    DataSourceID="ds"
    TextField="Name"
    ValueField="Path"
    ImageField="Icon" />
</px:PXRichTextEdit>
```

|Add the insert-data-field-prev tag between the opening and closing qp-rich-text-editor tag in HTML.```
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

|
|DataMember```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    DataMember="PreviousEntityItems" ... />
</px:PXRichTextEdit>
```

|Use the data-member attribute of the insert-data-field-prev tag in HTML. This attribute specifies the data view whose fields should be displayed when the **Previous Data Field**command is clicked on the toolbar of the qp-rich-text-editor control.```
<qp-rich-text-editor ...>
  <insert-data-field-prev
    data-member="EntityItemsWithPrevious" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

|
|DataSourceID```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    DataSourceID="ds" ... />
</px:PXRichTextEdit>
```

|Use the id-field attribute of the insert-data-field-prev tag in HTML. This attribute specifies the unique identifier field that belongs to the data view specified in the data-member attribute.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    id-field="Key" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

|
|TextField```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    TextField="Name" ... />
</px:PXRichTextEdit>
```

|Use the text-field attribute of the insert-data-field-prev tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    text-field="Name" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

|
|ValueField```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    ValueField="Path" ... />
</px:PXRichTextEdit>
```

|Use the value-field attribute of the insert-data-field-prev tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    value-field="Path" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

|
|ImageField```
<px:PXRichTextEdit ...>
  <InsertDatafieldPrev 
    ImageField="Icon" ... />
</px:PXRichTextEdit>
```

|Use the icon-field attribute of the insert-data-field-prev tag in HTML.```
<qp-rich-text-editor ...>
  <insert-data-field-prev 
    icon-field="Icon" ...>
  </insert-data-field-prev>
</qp-rich-text-editor>
```

|

## PXRichTextEdit { .section}

The following table shows the correspondence between the PXRichTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXRichTextEdit```
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

|Use the qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor 
  id="edBody"
  state.bind="ItemSettings.Body"
  class="stretch">
</qp-rich-text-editor>
```

|
|ID```
<px:PXRichTextEdit 
  ID="edBody">
</px:PXRichTextEdit>
```

|Use the id attribute of the qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor 
  id="edBody">
</qp-rich-text-editor>
```

|
|DataField```
<px:PXRichTextEdit 
  DataField="Body">
</px:PXRichTextEdit>
```

|Use the state attribute of the qp-rich-text-editor tag in HTML.```
<qp-rich-text-editor 
  state.bind="ItemSettings.Body">
</qp-rich-text-editor>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to rich text editors. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXRichTextEdit|-   AllowAttached
-   AllowLoadTemplate
-   AllowSearch
-   AllowSourceMode
-   runat
-   Style

|

**Parent topic:**[Rich Text Editor](../DeveloperGuide/UIDevRef_RichTextEditor_Mapref.md)

