# selector {#_666041b0-2ca5-4f2a-ba2b-5d953381c00b .concept}

In a field in the mobile site map of the Acumatica ERP instance, switches the MSDL interpreter to editing mode for the selector content.

*Syntax:*

```
selector {}
```

The braces are mandatory. Within the braces, you can add assignment commands for attributes of the [container](mobile_ref_msdl_objtype_container.md) object and instructions for the fields that are used as selector columns.

*Example:*

Suppose that you need to define for a field a selector container that contains four columns but displays only three. You can add the following code within an instruction for the field.

```
 any instruction for the field {
  selector {
    fieldsToShow = 3
    add field "BusinessAccount"
    add field "Type"
    add field "BusinessAccountName"
    add field "BAccountID"
 }
}
```

**Parent topic:**[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)

