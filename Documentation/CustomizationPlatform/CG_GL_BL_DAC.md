# Data Access Class {#_c4ba7af4-1145-4781-8dc6-ab706dfc59de .concept}

A data access class \(DAC\) is used to represent a database table in the code of Acumatica ERP. If a DAC is bound to the database, it must have the same class name as the database table. A DAC must be declared with the `public` access modifier to be correctly recognized by the Acumatica Customization Platform. A DAC is inherited from the PXBqlTable class and the IBqlTable interface and contains data field declarations.

You can use [Customization Project Editor](../UserGuide/SM_20_45_10.md) to do the following:

-   Create a new DAC
-   Add a custom field to an existing DAC
-   Customize the declaration of a data field of an existing DAC

For detailed information on customizing data access classes, see the following topics:

-   [To Start the Customization of a Data Access Class](CG_GL_BL_DAC_ToOpen.md)
-   [To Add a Custom Data Field](CG_GL_BL_DAC_AddCustomField.md)
-   [To Create a New DAC](CG_GL_BL_DAC_NewDAC.md)
-   [To Create a DAC Extension](CG_GL_BL_DAC_DACExt.md)

See [Data Field](CG_GL_BL_DataField.md) for detailed instructions on the customization of a data field.

-   **[To Start the Customization of a Data Access Class](../CustomizationPlatform/CG_GL_BL_DAC_ToOpen.md)**  

-   **[To Add a Custom Data Field](../CustomizationPlatform/CG_GL_BL_DAC_AddCustomField.md)**  

-   **[To Create a New DAC](../CustomizationPlatform/CG_GL_BL_DAC_NewDAC.md)**  

-   **[To Create a DAC Extension](../CustomizationPlatform/CG_GL_BL_DAC_DACExt.md)**  

-   **[To Enable a DAC Extension Conditionally \(IsActive\)](../CustomizationPlatform/CG_GL_BL_DAC_IsActive.md)**  


**Parent topic:**[Customizing Business Logic](../CustomizationPlatform/CG_GL_BL.md)

