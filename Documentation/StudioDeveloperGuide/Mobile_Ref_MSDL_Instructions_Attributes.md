# attributes {#_e0dbef2d-3a54-414c-9391-cbbb0cbe34de .concept}

An object that maps an entity attributes to the mobile app screen.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|From|The name of the data view for the grid that contains the entity attributes.|
|FormPriority|The priority value that defines the position of the entity attributes on the screen.|
|Name|The identifier of the attributes, as found in the WSDL schema.|

The attributes object can also be used to map a grid of Acumatica ERP to a form view that displays key-value pairs. Then you should also use the following attributes inside the instruction.

|Attribute|Description|
|---------|-----------|
|IDField|The identifier of the grid field, as found in the WSDL schema, that specifies the key field for the key-value pairs. By default, the value is *AttributeID*.|
|IDValue|The identifier of the grid field, as found in the WSDL schema, that specifies the value field for the key-value pairs. By default, the value is *Value*.|
|OrderField|Optional. The grid field identifier, as found in the WSDL schema, that is used for sorting rows in the grid to display in the form view. By default, the value is *Order*.|

## Example { .section}

In the following example, a grid containing two entity attributes is added.

```
add attributes "GridDataView" {
  displayName = "Status"
  displayName = "Quantity"
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

