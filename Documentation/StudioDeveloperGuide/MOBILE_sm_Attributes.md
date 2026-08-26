# &lt;sm:Attributes&gt; {#_e1ea3a0e-8123-4fbe-bcfe-64a8ab00c2bb .concept}

The sm:Attributes tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|From|The name of the data view for the grid that contains the entity attributes.|
|FormPriority|The priority value that defines the position of the entity attributes on the screen.|
|Name|The identifier of the attributes, as found in the WSDL schema.|

If the sm:Attributes tag is used to map a grid of Acumatica ERP to a form view that displays key-value pairs, you should also use the following attributes in this tag.

|Attribute|Description|
|---------|-----------|
|IDField|The identifier of the grid field, as found in the WSDL schema, that specifies the key field for the key-value pairs. By default, the value is *AttributeID*.|
|IDValue|The identifier of the grid field, as found in the WSDL schema, that specifies the value field for the key-value pairs. By default, the value is *Value*.|
|OrderField|Optional. The grid field identifier, as found in the WSDL schema, that is used for sorting rows in the grid to display in the form view. By default, the value is *Order*.|

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

