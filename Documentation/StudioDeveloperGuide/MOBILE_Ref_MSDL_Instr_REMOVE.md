# remove {#_75a603f0-0fae-4784-842a-8c1ea54df03f .concept}

In the mobile site map of the Acumatica ERP instance, removes the referenced object, along with any child objects it has, from the mobile site map.

*Syntax:*

```
remove objectType "objectName"
```

*Parameters:*

-   objectType: A keyword that specifies one of the object types, as described in [Object Types](MOBILE_Ref_MSDL_ObjTypes.md).
-   objectName: The string constant that specifies the object name as it is defined in the WSDL schema. \(See [Getting the WSDL Schema](MOBILE_BasicInfo.md) for details.\)

*Example:*

Suppose that you need to remove a field from a container that is defined in the mobile site map. We recommend that you do this as shown in the following example.

```
update screen "ERP_ScreenID" {
  update container "WSDL_ContainerName" {
    remove field "WSDL_FieldName"
  }
}
```

The code above performs the following operations:

1.  Finds the screen with the specified name in the mobile site map
2.  If the previous operation has succeeded, finds the container with the specified name in the mobile site map
3.  If the previous operation has succeeded, removes the field from the mobile site map

    **Note:** If the field contains a selector container, the container is also removed from the mobile site map.


**Parent topic:**[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)

