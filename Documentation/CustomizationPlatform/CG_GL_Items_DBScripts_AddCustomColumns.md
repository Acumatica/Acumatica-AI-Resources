# To Add a Custom Column to an Existing Table {#_c4f3f7d3-d071-4962-8e12-c1421548f87a .task}

You use the Database Scripts page of the Customization Project Editor to add custom columns of an existing table of Acumatica ERP to a customization project. If you add custom fields to a data access class by using the [Data Class](../UserGuide/AU_DataClassEditor.md), you do not need to add the custom columns to the database table manually; the Acumatica Customization Platform adds these columns automatically. You may need to add a column manually if you added a custom field to a data access class in code.

We recommend that you not write custom SQL scripts to add changes to the database schema. If you add a custom SQL script, you must adhere to platform requirements that apply to custom SQL scripts, such as the support of multitenancy and the support of SQL dialects of the target database management systems. If you use the approach described in this topic, during the publication of the customization project, the platform generates SQL statements to alter the existing table so that this statement conforms to all platform requirements.

## To Add a Custom Column to an Existing Table { .section}

To add a custom column, do the following:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  In the navigation pane, click **Database Scripts** to open the [Database Scripts](../UserGuide/AU_20_90_00.md) page.
3.  On the More menu \(under **Actions**\), click **Add Custom Column to Table**.

    The **Add Custom Column to Table** dialog box opens.

4.  In the dialog box, specify the table to which the column should be added and the name and type of the new column, and click **OK**.

The Acumatica Customization Platform adds the columns to the customization project as a *Table* item.

## To Specify the Default Value for a Column { .section}

**Attention:** The information in this section is provided for informational purposes only. We recommend that you not use this approach, which goes against established best practices, to specify default values for table columns that you update or add in a table schema of your customization project. This approach could result in these default values not being applied because the internal mechanism of the database engine sometimes fails to set the specified column default values, especially nonzero values, at the database level. Default values of *0* for columns are generally supported, but in some edge cases, they may not be set correctly. To reliably set column default values for a table, you should use the approach described in [Best Practices](CG_GL_Items_DBScripts_Best_Practices.md).

By default, the system adds a custom column that can have Null values. If you need to add a column that does not allow Null values and you want to specify the default value for this column, do the following:

1.  Add a custom column, as described in the previous section.
2.  In the main menu of the Customization Project Editor, click **File** &gt; **Edit Project Items**.

    The Edit Project Items page opens.

3.  In the table on the page, click the row with a database table that contains the custom column for which you want to specify the default value.
4.  In the **Source** section of the page, do the following:
    -   Remove the `AllowNull` attribute, or specify the *False* value for it.
    -   Add the `DefaultValue` attribute.
5.  Save your changes.

**Tip:** You can also set the default value by running a script. However, we recommend that you not run a script because executing a custom script could compromise the integrity and consistency of the application data. Furthermore, the custom script would work with only the specific database engine \(such as MS SQL or MySQL\) that it was written for. So the script would need to be rewritten to be compatible with other types of database engines. For more information on how to add a custom script, see [To Add a Custom SQL Script to a Project](CG_GL_Items_DBScripts_AddingCustScript.md).

The following code shows the *0* default value being specified for the `UsrFlag` column of the `ARTran` table. The type of the column is bool.

```
<Table TableName="ARTran">
<Column TableName="ARTran" ColumnName="UsrFlag" ColumnType="bool" 
	DefaultValue="0" DecimalPrecision="0" DecimalLength="0" IsNewColumn="True" 
	IsUnicode="True" />
</Table>
```

The following code shows the *test* default value being specified for the `usrTest` column of the `ARTran` table. The type of the column is string.

```
<Table TableName="ARTran">
<Column TableName="SOOrder" ColumnName="usrTest" ColumnType="string" 
	DefaultValue="'test'" MaxLength="10" DecimalPrecision="0" 
	DecimalLength="0" IsNewColumn="True" IsUnicode="True" />
</Table>
```

**Parent topic:**[Database Scripts](../CustomizationPlatform/CG_GL_Items_DBScripts.md)

