# To Add a Custom Table to a Project {#_703bd4ad-81ff-4f4e-ab01-0ebd44191ac9 .task}

You use the Database Scripts page of the Customization Project Editor to add a custom table to a customization project. You can add a custom table to a project by adding the table schema or by adding a custom SQL script.

Adding the table schema is the optimal way of adding custom tables to the project. When you publish the customization project, the platform executes each SQL script of the project to update the database. If an *Sql* item contains a custom database table definition, to update the database with the table schema, the Acumatica Customization Platform checks whether a table with this name already exists in the database. If the table exists, the platform generates SQL statements to alter the existing table so that it matches the schema. The platform does not drop the existing table, and it keeps any data in it. This helps to deploy a newer version of the customization project to a system that is already in use. If the table does not exist, the platform generates SQL statements to create the table. SQL statements are generated in the SQL dialect of the database management system. Therefore, if you add custom tables to the project by adding the table schema, you keep the customization project independent from the database management system that hosts the database of Acumatica ERP.

Alternatively, you can add custom tables by adding a custom SQL script that creates the table in the project, as described in [To Add a Custom SQL Script to a Project](../Shared/../CustomizationPlatform/CG_GL_Items_DBScripts_AddingCustScript.md#).

**Note:** The creation or modification of the System tables is forbidden. A customization project containing such changes will not pass validation tests. For details on the System tables, see [System and Application Tables](../Shared/../StudioDeveloperGuide/DA__con_System_Application_Tables.md).

## To Add a Custom Table to a Customization Project { .section}

After you have created the needed table in the database by using a database administration tool, such as SQL Server Management Studio, you do the following:

**Note:** You have to use a naming convention that provides unique names for your custom tables so that they do not have the names of existing tables of Acumatica ERP.

1.  Open the customization project in the Customization Project Editor.
2.  In the navigation pane, click **Database Scripts** to open the Database Scripts page.
3.  On the More menu \(under **Actions**\), click **Add Custom Table Schema**.
4.  In the **Add Custom Table Schema** dialog box, which opens, select the custom table in the **Table** box, and click **OK**.

    Acumatica Customization Platform generates the table schema and adds the schema to the customization project as an *Sql* item.


Below is an example of the *Sql* item that contains the table schema of the custom table *RBProduct*.

```
 <Sql TableName="RBProduct" TableSchemaXml="#CDATA">
        <CDATA name="TableSchemaXml"><![CDATA[<table name="RBProduct">
  <col name="ProductID" type="Int" identity="true" />
  <col name="ProductCD" type="NVarChar(15)" />
  <col name="ProductName" type="NVarChar(50)" />
  <col name="Active" type="Bit" />
  <col name="StockUnit" type="NVarChar(20)" />
  <col name="UnitPrice" type="Decimal(19,6)" />
  <col name="MinAvailQty" type="Decimal(25,6)" />
  <col name="TStamp" type="Timestamp" />
  <index name="RBProduct_PK" clustered="true" primary="true" unique="true">
    <col name="ProductID" />
  </index>
</table>]]></CDATA>
    </Sql>
```

**Parent topic:**[Database Scripts](../CustomizationPlatform/CG_GL_Items_DBScripts.md)

