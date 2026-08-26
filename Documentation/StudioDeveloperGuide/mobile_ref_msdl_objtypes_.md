# type {#_0b432df8-07b8-4967-9fd6-14bbf62d5464 .concept}

For attachments, an object that defines a file name extension of the permitted file type.

**Note:** On iOS devices, it is possible to upload only image files. Files of other types are not supported.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|Extension|The file name extension of the permitted file type.|

## Example { .section}

The following examples defines three types of files that can be attached to the record: JPG, PNG, and PDF.

```
attachments {
  add type "jpg" {
    extension = "jpg"      
  }
  add type "png" {
    extension = "png"
  }
  add type "pdf" {
    extension = "pdf"
  }
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

