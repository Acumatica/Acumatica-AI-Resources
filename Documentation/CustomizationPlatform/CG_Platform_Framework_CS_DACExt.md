# DAC Extensions {#_114ae5af-8667-4933-b53d-c4c8667c85ac .concept}

This topic explores the ways provided by the Acumatica Customization Platform to define data access class \(DAC\) extensions \(which are also referred to as *cache extensions*\) of different levels and shows how different DAC extensions can interact.

To declare a DAC extension, you derive a class from PXCacheExtension&lt;T&gt;. Also, the DAC extension must be declared with the `public` access modifier to be correctly recognized by the Acumatica Customization Platform.

**Important:** In the graph extension, you must declare the IsActive method which enables the extension on condition. For details, see [To Enable a DAC Extension Conditionally \(IsActive\)](CG_GL_BL_DAC_IsActive.md).

## First-Level DAC Extension { .section}

The example below shows a declaration of a first-level DAC extension.

```

public sealed class BaseDACExtension : PXCacheExtension<BaseDAC>
{
    public static void SomeMethod(BaseDACExtension ext)
    {
        BaseDAC dac = ext.Base;
    }
}
```

The extension class includes the read-only Base property, which returns an instance of the base DAC.

## Second-Level DAC Extension { .section}

The example below shows a declaration of a second-level DAC extension.

```

public sealed class BaseDACExtensionOnExtension :
    PXCacheExtension<BaseDACExtension, BaseDAC>
{
    public static void SomeMethod(BaseDACExtensionOnExtension ext2)
    {
        BaseDAC dac = ext2.Base;
        BaseDACExtension dacExt = ext2.Base1;
    }
}
```

The extension class includes the following:

-   The read-only Base property, which returns the instance of the base DAC
-   The read-only Base1 property, which returns the instance of the first-level DAC extension

## Two Variants of a Higher-Level DAC Extension { .section}

A definition of an extension of a higher level has two possible variants. In the first variant, you derive the extension class from the PXCacheExtension generic class with two type parameters, where the first type parameter is set to an extension of the previous level. In the second variant, you derive the extension class from the PXCacheExtension generic class with the same number of type parameters as the level of the extension of the new class. In this case, you set type parameters to extension classes from all lower extension levels, from the previous level down to the base class.

## First Variant of a Higher-Level DAC Extension { .section}

The example below shows the declaration of a third- or higher-level DAC extension that derives from the PXCacheExtension generic class with two type parameters.

```

public sealed class BaseDACMultiExtensionOnExtension :
    PXCacheExtension<BaseDACExtensionOnExtension, BaseDAC>
{
    public static void SomeMethod(BaseDACMultiExtensionOnExtension ext3)
    {
        BaseDAC dac = ext3.Base;
        BaseDACExtensionOnExtension dacExtOnExt = ext3.Base1;
    }
}
```

An extension class defined this way includes the following:

-   The read-only Base property, which returns the instance of the base DAC
-   The read-only Base1 property, which returns the instance of the DAC extension from the previous level

## Second Variant of a Higher-Level DAC Extension { .section}

The example below shows a declaration of a third- or higher-level DAC extension that derives from the PXCacheExtension generic class with three or more type parameters.

```
public sealed class BaseDACAdvMultiExtensionOnExtension : 
    PXCacheExtension<BaseDACExtensionOnExtension, BaseDACExtension, BaseDAC>
{
    public static void SomeMethod(BaseDACAdvMultiExtensionOnExtension ext4)
    {
        BaseDAC dac = ext4.Base;
        BaseDACExtension dacExt = ext4.Base1;
        BaseDACExtensionOnExtension dacExtOnExt = ext4.Base2;
    }
}
```

An extension class defined in this way includes the following:

-   The read-only Base property, which returns the instance of the base DAC
-   The read-only BaseN properties for all extension levels below the current level, where *N* is the sequence number of an extension level

## Attributes Hierarchy of a DAC Field { .section}

Conceptually, a DAC extension is a substitution of the base DAC. The base DAC is replaced at run time with the merged result of the base DAC and every extension discovered.

Each extension on another extension completely overrides the DAC field attributes. The attributes declared on the highest-level extension override all previously declared attributes.

For example, suppose that the attributes of the same DAC field are defined on different extension levels as follows:

-   In the base DAC, as shown below

    ```
    
     [PXUIField(DisplayName = "Base Name")]
     [PXDefault("Default base value")]
    ```

-   In the first-level DAC extension, as the following code shows

    ```
    [PXUIField(DisplayName = "Level1 Name", Visible = false)]
    ```

-   In the second-level DAC extension, as shown below

    ```
    [PXUIField(DisplayName = "Level2 Name")]
    [PXDefault("Default 2nd level value")]
    ```


If all the extensions are applied, any field of the second-level DAC extension will have the following parameters specified by attributes:

-   Display name: *Level2 Name*
-   Visible: *true*
-   Default value: *Default 2nd level value*

**Tip:** You cannot modify the same member of the base DAC in the DAC extensions of the same level. You should use DAC extensions of different levels that successively extend one another.

## DAC Field Read and Write Operations { .section}

The Acumatica Framework can access the value of a DAC field only through an instance of the base DAC. The instance of the DAC extension is used to get the field value only when the field is declared in the extension and is not present in the base DAC.

To assign a value to a field, the application developer should use the instance of the base DAC. You must use the instance of a DAC extension to assign a field value when the field is declared within the extension and is not present in the base DAC.

## In This Section { .section}

-   [Access to a Custom Field](CG_Platform_Framework_CS_DACExt_Access.md)
-   [Customization of Field Attributes in DAC Extensions](CG_Platform_Framework_CS_DACExt_FieldAttributes.md)
-   [Supported DAC Extension Formats](CG_Platform_Framework_CS_DACExt_DACFormat.md)

-   **[Access to a Custom Field](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_Access.md)**  

-   **[Customization of Field Attributes in DAC Extensions](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_FieldAttributes.md)**  

-   **[Supported DAC Extension Formats](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_DACFormat.md)**  


**Parent topic:**[Changes in the Application Code \(C\#\)](../CustomizationPlatform/CG_Platform_Framework_CS.md)

