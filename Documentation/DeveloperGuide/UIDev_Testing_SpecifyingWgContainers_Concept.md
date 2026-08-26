# Testing of the Modern UI: Names of WG Containers {#_62d4f55b-6c7a-452b-811e-0138f19fbe10 .concept}

To maintain the testability of the forms in the Modern UI, the names of WG containers must be the same as the names of respective wrapper containers for the Classic UI. By default, the WG container names for qp-fieldset and qp-grid are generated automatically so that they are the same as the names in the Classic UI.

The name of the WG container is generated as follows: `<ViewName>_<ElementID>`, where ElementID is the value of the id attribute specified in the tag.

For complex cases or when the element IDis different from the one specified in the Classic UI, you can specify the name of the WG container manually in HTML by using the following approaches.

## The wg-container Attribute Without a Name { .section}

To make the WG container name have the &lt;ViewName&gt;\_&lt;ElementID&gt; format, you add the wg-container attribute to a tag that has the view and ID specified and do not specify the name of the WG container.

The wrapper generator will generate a single container for all fields inside this tag, ignoring all containers inside the tag.

**Note:** In the Modern UI, the values of the id attribute are visible to users for personalization, so they should be easy to understand. Therefore, we recommend that you specify the legacy name of the container in the wg-container attribute, as described in the following sections, and create a new user-friendly identifier. For instructions on specifying the id values, see the page corresponding to the UI element in [UI Component Guide](UIDevRef_Guide.md).

## The wg-container Attribute for the qp-template Tag { .section}

To assign the same WG container name to all fields inside all fieldsets of the qp-template tag, you specify the wg-container attribute in the qp-template tag. The resulting name will have the following format: `<Template_id>`, where `<Template_id>` is the value of the id attribute of the qp-template tag.

The following table shows the usage of the wg-container attribute in the qp-template tag of the HTML template and the corresponding tag in the ASPX file.

|HTML|ASPX|
|----|----|
|```
<qp-template
  name="7-10-7"
  id="**Document\_form**" 
  **wg-container**
  class="equal-height">
  <qp-fieldset
    slot="A"
    id="first"
    view.bind="Document">
    <field name="OrderType"></field>
    ...
  </qp-fieldset>
  <qp-fieldset
    slot="B"
    id="second"
    view.bind="Document">
    <field
      name="CustomerID" 
      config-allow-edit.bind="true">
    </field>
    ...
  </qp-fieldset>
  <qp-fieldset
    slot="C"
    label-size="col-lg-6"
    id="summary"
    view.bind="Document"
    caption="Summary" 
    class="highlights-section">
    <field name="OrderQty"></field>
    ...
  </qp-fieldset>
</qp-template>
```

|```
	
<px:PXFormView 
  ID="**form**" 
  runat="server" 
  DataSourceID="ds"
  Style="z-index: 100"
  Width="100%"
  DataMember="**Document**" 
  Caption="Order Summary" 
  ...>
  ...
</px:PXFormView>
```

|

This approach is useful when the fields used to be in the same WG container but ended up separated in multiple fieldsets of the same template, such as three columns in the Summary area.

## The wg-container Attribute with the Explicitly Specified Name { .section}

To make the name of WG container exactly the same as it was in the Classic UI, you specify it as a value of the wg-container attribute. All nested controls will have the same WG container name that is specified in the parent tag.

The following table shows how to specify the name of the WG container in the HTML file and the corresponding code in ASPX.

|HTML|ASPX|
|----|----|
|```
<qp-fieldset
  slot="C" 
  id="groupVoucherDetails" 
  view.bind="Voucher"
  **wg-container="VoucherDetails\_Voucher"**
  caption="Voucher Details">
  <field name="VoucherBatchNbr"></field>
  <field name="WorkBookID"></field>
</qp-fieldset>
```

|```
<px:PXFormView 
  ID="**VoucherDetails**" 
  runat="server" 
  DataMember="**Voucher**" 
  DataSourceID="ds">
  <Template>
    <px:PXTextEdit .../> 
    <px:PXTextEdit .../>
  </Template>
</px:PXFormView>
```

|

## Names of WG Containers Inside a Fieldset { .section}

In the qp-fieldset tag, if you need to specify the names of the WG container for multiple fields, you put these fields inside the using tag and specify the name of the WG container in the using tag. This approach may be useful if fields from different WG containers are included in the same fieldset.

The following table shows an example of the using tag in HTML and the corresponding code in ASPX.

|HTML|ASPX|
|----|----|
|```
<qp-fieldset ...>
  <field name="ClassID"></field>
  **&lt;using**
    **wg-container="Details\_formDetails2**" 
    view="AssetDetails">
    <field name="PropertyType"></field>
    <field name="Status"></field>
  **&lt;/using&gt;**
  <field name="AssetTypeID"></field>
  ...
</qp-fieldset>
```

|```
<px:PXTab ...>
  <px:PXSelector .../>
  <px:PXFormView ID="**formDetails2**" 
    runat="server" DataSourceID="ds" 
    DataMember="**Details**" ...>
    <Template>
      <px:PXLayoutRule .../>
      <px:PXDropDown .../>
      <px:PXDropDown .../>
    </Template>
  </px:PXFormView>
  <px:PXSelector ... />
  ...
</px:PXTabItem>
```

|

## The wg-name Attribute { .section}

To specify the name of the element inside a container, for the qp-field and qp-button tags, you can use the wg-name attribute.

The following table shows usage of the wg-name attribute and the corresponding code in ASPX.

|HTML|ASPX|
|----|----|
|```
<field 
  name="CuryOrigDocAmt">
  <qp-button 
    id="buttonAdjustDocumentAmount" 
    wg-name="btnAdjustDocAmt"
    state.bind=
      "model.viewModel.AdjustDocAmt" 
    class="col-2">
  </qp-button>
</field>
```

|```
<px:PXLayoutRule 
  runat="server" Merge="True" />
  <px:PXNumberEdit 
    ID="edCuryOrigDocAmt" 
    runat="server"
    DataField="CuryOrigDocAmt" 
    CommitChanges="True"/>
  <px:PXButton 
    ID="btnAdjustDocAmt" 
    CommandName="AdjustDocAmt"
    CommandSourceID="ds" 
    runat="server" 
  .../>
<px:PXLayoutRule runat="server" />
```

|

## WG Containers for the qp-info-box Control {#_98c723af-512e-4ea3-baca-49d366b0ac9c .section}

By default, the qp-info-box control are not included into wrappers. If you want to include the qp-info-box control into wrappers, specify the WG attributes manually, as shown in the following example. For more details about the qp-info-box control, see [Error, Warning, or Informational Notification](UIDevRef_InfoBox_Mapref.md).

|HTML|ASPX|
|----|----|
|```
<qp-info-box
  caption.bind=
    "AccountTypeChangePrepare.Message.value"
  id="messageLabel"
  type="info"
  **wg-container=
    "AccountTypeChangePrepare\_FormAccountTypeChange"
  wg-name="MessageLabel\_"&gt;**
</qp-info-box>
```

|```
<px:PXFormView 
  **ID="FormAccountTypeChange"** ...
  **DataMember="AccountTypeChangePrepare"**>
  <Template>
    <px:PXLayoutRule .../>
    <px:PXLabel runat="server"
      **ID="messageLabel"**
      SkinID="Label" Height="100%"
      OnDataBinding=
        "messageLabel_DataBinding"/>
  </Template>
</px:PXFormView>
```

|

**Parent topic:**[Testing the Modern UI](../DeveloperGuide/UIDev_Testing_Mapref.md)

