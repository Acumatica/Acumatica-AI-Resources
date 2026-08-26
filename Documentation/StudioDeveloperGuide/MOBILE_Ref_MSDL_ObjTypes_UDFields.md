# UDFields {#_477ed21f-0f7e-4ba3-a93c-cbbff0b95044 .concept}

An object that maps user-defined fields of a form to the equivalent screen in the mobile app. A single use of the UDFields object maps all user-defined fields of a particular screen.

## Attributes { .section}

The object contains no attributes.

## Example { .section}

The following example maps user-defined fields of the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form to the Cases screen. *UDFInline* is an arbitrary name that has not been used anywhere else in the mapping.

```
update screen "CR306000" {
  update container "CaseSummary" {
    add UDFields "UDFInline"
  }
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

