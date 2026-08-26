# update {#_65a74995-14bc-4af9-a547-091be631b98d .concept}

In the mobile site map of the Acumatica ERP instance, switches the MSDL interpreter to editing mode for specified object.

*Syntax:*

```
update objectType "objectName"
```

*Parameters:*

-   objectType: A keyword that specifies one of the object types, as described in [Object Types](MOBILE_Ref_MSDL_ObjTypes.md).
-   objectName: The string constant that specifies the object name as it is defined in the WSDL schema. \(See [Getting the WSDL Schema](MOBILE_BasicInfo.md) for details.\)

*Example:*

Suppose that you need to add a new field to a container of a screen that is defined in the mobile site map. We recommend that you do this as shown in the following example.

```
update screen "ERP_ScreenID" {
  update container "WSDL_ContainerName" {
    add field "WSDL_FieldName" {
      ...
    }
  }
}
```

The code above performs the following operations:

1.  Finds the screen with the specified name in the mobile site map
2.  If the previous operation has succeeded, finds the container with the specified name in the mobile site map
3.  If the previous operation has succeeded, finds the container in the WSDL schema of the form
4.  In the WSDL schema, finds the field with the name specified in the add instruction
5.  If the previous operation has succeeded, adds the field to the mobile site map

**Parent topic:**[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)

