# &lt;sm:Layout&gt; {#_cac63c59-8ab4-405d-b071-9ec5ed35e323 .concept}

The sm:Layout tag is used to arrange multiple UI elements on a screen of the mobile app. The tag can contain the following types of nested tags:

-   [&lt;sm:Field&gt;](MOBILE_sm_Field.md)
-   [&lt;sm:ContainerLink&gt;](MOBILE_sm_ContainerLink.md)
-   [&lt;sm:RecordActionLink&gt;](MOBILE_sm_RecordActionLink.md)
-   &lt;sm:Layout&gt;

    **Note:** The sm:Layout tags with the **Template** attribute set to *HeaderSimple* or *HeaderFirstAttachment* can include nested sm:Layout tags with `Template="Inline"`. The sm:Layout tags for which the **Template** attribute is *Inline* cannot include any nested sm:Layout tags.


For details about the relationships between tag types in the mobile site map, see the diagram in [XML Tags](MOBILE_Ref_Tags.md).

## Attributes { .section}

The sm:Layout tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|Name|The identifier of the line layout, as found in the WSDL schema.|
|Template|The template that is used to define the layout. The following values can be used for this attribute:-   *HeaderFirstAttachment*: An indicator that the mobile app should arrange the UI elements, which are mapped by the nested tags, in a group-like header container with an attachment icon on the left. If you click the attachment icon, you can take a photo and attach the photo to the screen of the mobile app. The camera behavior is affected by the attributes of the sm:attachments tag. If the screen of the mobile app already has attachments, the first attachment thumbnail is shown instead of the attachment icon.

The tag with the attribute set to *HeaderFirstAttachment* can include nested sm:Layout tags with `Template="Inline"`. The tags with the attribute set to *HeaderFirstAttachment* cannot be nested in other sm:Layout tags and can be nested only in sm:Container tags.

-   *HeaderSimple*: An indicator that the mobile app should arrange the UI elements, which are mapped by the nested tags, in a group-like header container.

The tag with the attribute set to *HeaderSimple* can include nested sm:Layout tags with `Template="Inline"`. The tag with the attribute set to *HeaderSimple* cannot be nested in other sm:Layout tags and can be nested only in sm:Container tags.

-   *Inline*: An indicator that the mobile app should arrange UI elements, which are mapped by the nested tags, in a line by using the Weight attributes specified for these elements. If the Weight attribute is not defined for a nested tag, the mobile app uses *1* as the default value.

The tag with the attribute set to *Inline* cannot include nested sm:Layout tags. The tags with the attribute set to *Inline* can be nested in other sm:Layout tags.


|

## Examples { .section}

In the following example, the `TotalAmount` field takes 3/6 of the total width, the `Save` action link takes 1/6, and the `Currency` field takes 2/6.

```
<sm:Layout Template="Inline">
    <sm:Field Container="ReceiptDetailsExpenseDetails" Name="TotalAmount" 
        Weight="3"/>
    <sm:RecordActionLink Name="Save"/>
    <sm:Field Container="ReceiptDetailsExpenseDetails" Name="Currency" 
        PickerType="Attached" Weight="2"/>
</sm:Layout>
```

The following example shows how nested sm:Layout tags can be used.

```
<sm:Layout Name="ReceiptHeader" Template="HeaderSimple">
    <sm:Layout Name="ReceiptIdLine" Template="Inline">
        <sm:Field Name="ReceiptID" ForceIsDisabled="true"/>
        <sm:Field Name="Status" ForceIsDisabled="true"/>
    </sm:Layout>
</sm:Layout>
```

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

