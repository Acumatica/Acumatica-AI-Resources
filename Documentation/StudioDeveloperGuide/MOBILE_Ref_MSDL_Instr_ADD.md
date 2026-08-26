# add {#_bd8dcd67-29fa-461b-9ccc-f438e53c1b30 .concept}

In the mobile site map of the Acumatica ERP instance, appends the referenced object as a child to the object that was processed by a previous instruction with an opening brace.

*Syntax:*

```
add objectType "objectName"
```

*Parameters:*

-   objectType: The keyword that specifies one of the object types, as described in [Object Types](MOBILE_Ref_MSDL_ObjTypes.md).
-   objectName: The string constant that specifies the object name as it is defined in the WSDL schema. \(See [Getting the WSDL Schema](MOBILE_BasicInfo.md) for details.\) If `objectType` is field, to add to the container a child field from another container, you specify the value of this parameter in the following format: `ContainerName#FieldName`, where `ContainerName` is the name of the container \(as it is specified in the WSDL schema\) that contains the field, and `FieldName` is the name of the field in this container.

*Example:*

Suppose that you need to add a new field to a container that is defined in the mobile site map. We recommend that you do this as shown in the following example.

```
update screen "ERP_ScreenID" {
  update container "WSDL_ContainerName" {
    add field "WSDL_FieldName" {
      FieldTagAttribute1 = Value1
      FieldTagAttribute2 = Value2
    }
  }
}
```

The code above performs the following operations:

1.  Finds the screen by the specified name in the mobile site map
2.  If the previous operation has succeeded, finds the container with the specified name in the mobile site map
3.  If the previous operation has succeeded, finds the container in the WSDL schema of the form
4.  In the WSDL schema, finds the field that has the name specified in the add instruction
5.  If the previous operation has succeeded, adds the field to the mobile site map
6.  If an assignment command for an attribute of the field is specified for the add instruction within braces, sets the attribute to the specified value

**Parent topic:**[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)

