# To Create an Extension Table {#_5bed40cb-5224-404f-965e-a57880593de2 .task}

The Acumatica Customization Platform provides the following options to create a custom column in a table of the database:

-   Add the column to the original table
-   Create a separate table that is an extension of the original table, and add the column to the extension table

In some cases, you may need to store new field values in a separate table or use this table independently from the original database table. You can use the Acumatica Customization Platform to create a separate extension database table. This table must include all main key fields from the original database table and your new fields. You should create a DAC extension that holds the new fields and is mapped to the extension table. The platform will automatically synchronize the extension table with the original database table by expanding every create, retrieve, update, and delete operation on the base \(original\) DAC to each discovered DAC extension that is mapped to an extension table.

To declare a DAC extension that is mapped to an extension table, perform the following actions:

1.  Create an extension table in the database according to the requirements described in [Requirements for an Extension Table Schema](CG_GL_DBSchema_CustomColumns_ExtTable.md).
2.  Declare a DAC extension mapped to the created table, as described in [DAC Extension Mapped to an Extension Table](CG_GL_DBSchema_CustomColumns_DACExtTable.md).

    By using the PXTable attribute, you specify that the DAC extension is mapped to the extension table with the same name.


-   **[Requirements for an Extension Table Schema](../CustomizationPlatform/CG_GL_DBSchema_CustomColumns_ExtTable.md)**  

-   **[DAC Extension Mapped to an Extension Table](../CustomizationPlatform/CG_GL_DBSchema_CustomColumns_DACExtTable.md)**  


**Parent topic:**[Customizing the Database Schema](../CustomizationPlatform/CG_GL_DBSchema.md)

