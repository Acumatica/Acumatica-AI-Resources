# Formula Parameters {#_f3d27b0f-5180-454b-b4ab-ffc8f70043d6 .concept}

A formula may include parameters that reference the data you want use in calculating the values in the report. There are two types of parameters: predefined parameters; and links to specific rows, columns, or individual report cells.

## Predefined Parameters { .section}

The predefined parameters are application-specific and refer to the report parameters that you specify on other ARM forms, such as the [Report Definitions](CS_20_60_00.md) \(CS206000\) form or the [Row Sets](CS_20_60_10.md) \(CS206010\) form. For example, the @StartPeriod parameter refers to the value specified in the **Start Period** box on the [Report Definitions](CS_20_60_00.md) form, and the @BaseRowCode parameter refers to the value specified in the **Base Row** box on the [Row Sets](CS_20_60_10.md) form. All the available predefined parameters are listed in the [Data Source Editor](CS__ref_Data_Source_Editor.md) dialog box.

The table below provides the list of the predefined parameters with their descriptions.

|Parameter|Description|
|---------|-----------|
|@AccountCode|The code of the current account if the *Account* option is selected in the **Expand** box in the Data Source Editor dialog box.

 This is the code of the current subaccount if the *Sub* option is selected in the **Expand** box.

|
|@AccountDescr|The description of the current account if the *Account* option is selected in the **Expand** box in the Data Source Editor dialog box.

 This is the description of the current subaccount if the *Sub* option is selected in the **Expand** box.

|
|@BaseRowCode|The row code specified for the selected row in the **Base Row** column on the [Row Sets](CS_20_60_10.md) form. This row code is referred to by this parameter, which you use in the formula in the **Value** box on the [Column Sets](CS_20_60_20.md) \(CS206020\) form to retrieve the value specified in this row for computing another value in the report.|
|@BookCode|The code of the ledger whose data is used in the report. This parameter refers to the value in the **Ledger** box in the **Default Data Source Settings** section.|
|@BranchName|The company branch identifier in the current tenant. For more information on company branches, see [Branches](CS_10_20_00.md) \(CS102000\) form.|
|@ColumnCode|The code of the current column in the report.|
|@ColumnIndex|The index of the current column in the report.|
|@ColumnSetCode|The code of the current column set in the report.|
|@ColumnText|The description of the current column in the report.|
|@EndAccount|The last account in the range of accounts used in the report. This parameter refers to the value in the **End Account** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@EndAccountGroup|The last account group in the range of account groups used in the report. This parameter refers to the value in the **End Account Group** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.

 **Tip:** This parameter is valid only in reports of the *PM* type.

|
|@EndBranch|The last branch in the range of branches used in the report. This parameter refers to the value in the **End Branch** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@EndPeriod|The end period of the report. This parameter refers to the value in the **End Period** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@EndProject|The last project in the range of projects used in the report. This parameter refers to the value in the **End Project** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.

 **Tip:** This parameter is valid only in reports of the *PM* type.

|
|@EndProjectTask|The last project task in the range of the project tasks used in the report. This parameter refers to the value in the **End Task** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.

 **Tip:** This parameter is valid only in reports of the *PM* type.

|
|@EndSub|The last subaccount in the range of subaccounts used in the report. This parameter refers to the value in the **End Sub** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@StartAccount|The first account in the range of accounts used in the report. This parameter refers to the value in the **Start Account** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@StartAccountGroup|The first account group in the range of account groups used in the report. Refers to the value in the **Start Account Group** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.

 **Tip:** This parameter is valid only in reports of the *PM* type.

|
|@StartBranch|The first branch in the range of branches used in the report. This parameter refers to the value in the **Start Branch** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@StartPeriod|The start period of the report. This parameter refers to the value in the **Start Period** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@StartProject|The first project in the range of projects used in the report. This parameter refers to the value in the **Start Project** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.

 **Tip:** This parameter is valid only in reports of the *PM* type.

|
|@StartProjectTask|The first project task in the range of project tasks used in the report. This parameter refers to the value in the **Start Task** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.

 **Tip:** This parameter is valid only in reports of the *PM* type.

|
|@StartSub|The first subaccount in the range of subaccounts used in the report. This parameter refers to the value in the **Start Sub** box in the **Default Data Source Settings** section of the [Report Definitions](CS_20_60_00.md) form.|
|@ReportDescr|The report description that the system prints in the column set header.|
|@RowCode|The code of the current row in the report.|
|@RowIndex|The index of the current row in the report.|
|@RowSetCode|The code of the current row set in the report.|
|@RowText|The description of the current row in the report.|
|@UnitCode|The code of the current unit in the report.|
|@UnitSetCode|The code of the current unit set in the report.|
|**@UnitText**|The description of the current unit in the report.|

## Links to Rows { .section}

You can use the links to the rows in the formulas to define the parameters. The links to the rows are used when a formula is defined for the row to calculate its values, and the referenced rows are the parameters used in these calculations. For example, when a row is a summarized value of the other two rows, the formula includes the references to the rows to be summarized.

You can use the links to the rows in the formulas designed for the calculation of row and column values. However, we do not recommend that you reference the rows in the formulas defined for columns because of the self-references in these formulas. Self-references can be the source of circular reference errors in the formulas.

The links to the rows have the following format: *row\_code*, where *row\_code* is the code of the referenced row \(for example, *00112*\).

The following are examples of formulas using links to the rows.

```
=@30+C30+E30
=C110-@110+H110
```

In the examples above, *@30*, *C30*, *E30*, *C110*, *H110*, and *@110* are the cells in rows 30 and 110. The row codes are entered manually by the report designer.

## Links to Columns { .section}

You can use the links to the columns in the formulas to define the parameters. You use the links to the columns when a formula is defined for the column to calculate its values, and the referenced columns are the parameters used in these calculations. For example, when a column is a summarized value of the other two columns, the formula includes the references to the columns to be summarized. You can use the links to the columns in the formulas designed for calculation of column and row values. Again, avoid referencing the columns in the formulas defined for rows because self-references in these formulas can cause circular reference errors.

To reference a column, replace its code in the formula as a parameter.

See the following examples of formulas with links to the columns.

```
=A+B+D
=C-D
```

*A*, *B*, *C*, and *D* are the column codes. The codes of the columns are assigned by the system and cannot be changed.

## Links to Cells { .section}

You can use the links to the report cells in the formulas to define the parameters. You use these links when a formula is defined for the column or row to calculate its values, and the referenced cells are the parameters used in these calculations.

To reference a cell, substitute its code into the formula as a parameter.

See the following examples of formulas using links to the cells.

```
=A60+B30+D20
=C30-D20
```

In the examples, *A*, *B*, *C*, and *D* are the column codes, while *20*, *30*, and *60* are the row codes. The cells located in the specified rows of the columns indicated by the first letters are used as the parameters in these formulas.

## Self-Links in Formula Parameters { .section}

The self-links in the formulas can be used in very few cases; they typically are not used to avoid the situations when a self-link results in circular reference error. An example of a useful self-link is the case when some operations must be performed with the values selected directly from the data source, such as calculations of charges for a certain period. To use a self-link in a formula, insert a link to the row or column in the formula defined for this row or column.

The following example of self-reference in a row and column can be used to calculate charges of 5%.

```
=@20*0.05
```

In the example, *20* is the code of the row where the formula is defined. In this example, all values in the 20th row will be multiplied by 0.05.

```
=A*0.05
```

**Tip:** To avoid self-reference, you can use two different rows in the row set: The first row includes the data selected from the data source, while the second one calculates the charges. Then you can exclude the first row from the printed report by selecting the *Hidden* option in the **Printing Control** row attribute on the [Row Sets](CS_20_60_10.md) or [Column Sets](CS_20_60_20.md) form.

**Parent topic:**[ARM Reference](../UserGuide/RP__Tools_ARM_Form_Reference.md)

