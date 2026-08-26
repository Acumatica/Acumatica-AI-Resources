# Customization of a Barcode-Driven Form: Barcode Scan Class {#_37754765-d3ca-4032-a219-2a297be6817a .concept}

If you need to override the logic of the barcode scan class, you override the member of the class by using the PXOverride attribute, as shown in the following code.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="SomeWMS.Foo(string)"/>
    [PXOverride]
    public virtual int Foo(string input, Func<string, int> base_Foo)
    {
        // Your logic that overrides the SomeWMS.Foo(string) method
    }
}
```

**Parent topic:**[Customizing a Barcode-Driven Form](../DeveloperGuide/WMSEngine_FormCustomization_Mapref.md)

