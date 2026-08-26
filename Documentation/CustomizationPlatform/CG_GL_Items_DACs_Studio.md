# To Work with Data Access Classes {#_0951313e-02f6-4a87-b51c-9125e5570737 .concept}

You can use Microsoft Visual Studio to work with a data access class \(DAC\) that has been added to a customization project.

A customization project can contain code for a DAC in the following item types \(see [Supported DAC Extension Formats](CG_Platform_Framework_CS_DACExt_DACFormat.md) for details\):

-   As a *DAC* item with XML data for an existing DAC
-   As a *Code* item with the code of an existing DAC extension
-   As a *Code* item with the code of a custom DAC
-   In a *File* item that keeps a `.dll` file of the extension library that contains the binary code of a DAC extension or custom DAC

Once a customization project is published, you can use Visual Studio to develop, modify, and debug the customization code of a *Code* item on the fly. However, you cannot use this approach for a *DAC* item.

If you need to work in Visual Studio with the code of the DAC whose changeset is added to a customization project as a *DAC* item in XML format, perform the following actions:

1.  Follow the instructions described in [To Convert a DAC Item to a Code Item](CG_GL_Items_DACs_Converting.md) to convert the item to the *Code* item.
2.  Follow the instructions described in [To Work with a Code Item](CG_Platform_Studio_CodeItem.md) to change the code of the DAC extension.

**Parent topic:**[Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md)

