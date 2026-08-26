# GIQL: Defining Parameters {#_514c117a-ff51-4470-b4a7-6dc142be6fba .concept}

You can define parameters of a generic inquiry by using GIQL. You can later use the parameters in the GIQL expressions.

## Parameter Syntax { .section}

To define a parameter, use the DECLARE statement. Each parameter can include essential properties such as the display name, schema/field type, and default value. The structure of the DECLARE statement is shown in the following code.

```
DECLARE parameter_name
  SCHEMA schema_reference
  [ <Checkbox> | <Combobox> ( 'key' : 'value', ... ) ]
  [ DAFAULT default_value ]
  [ AS 'display_name' ]
  [ REQUIRED ]
  [ HIDDEN ]
```

The DECLARE statement can have the following arguments:

-   `parameter_name`: The name of the parameter used to reference it within the query. Must be a valid identifier.
-   SCHEMA: The schema or field in the database that the parameter is linked to. This associates the parameter with a specific table field, allowing it to dynamically filter or condition the query based on the field’s values.
-   &lt;Chechbox&gt;: Optional. The type of the control for a parameter of the Boolean type.
-   &lt;Combobox&gt;: Optional. The drop-down control with a list of predefined values. The key word must be followed by the VALUES clause that specifies available options as key-value pairs.
    -   VALUES: For parameters with the &lt;Combobox&gt; type, the VALUES clause defines a set of available options as key-value pairs. Each key-value pair should be enclosed in parentheses, with the key on the left and the value on the right.
-   DEFAULT: Optional. A default value for the parameter if no other value is provided. The value must match the type specified by the schema field or control type.
-   AS ‘Display Name’: Optional. A display name for the parameter. AS should be specified as the last operator in the parameter declaration.
-   REQUIRED: Optional. An indicator that the parameter must have a value before the query can be executed. If specified, the editor will enforcea user to input a value and will block execution until a valid value is specified.
-   HIDDEN: Optional. An indicator that the parameter will be hidden from the generic inquiry output. This option might be useful for configurations such as GI on GI, where the parameter does not need to be visible to the end user.

## Parameter Examples { .section}

An example of parameter definition is shown in the following code.

```
DECLARE InventoryID SCHEMA [PX.Objects.AM.AMProdItem].InventoryID AS 'Inventory ID'
DECLARE EmployeeID SCHEMA [PX.Objects.AM.AMMTran].EmployeeID AS 'Employee ID'
DECLARE EndDateFrom SCHEMA [PX.Objects.AM.AMProdItem].EndDate DEFAULT @MonthStart-12 AS 'From Date'
DECLARE ToEndDate SCHEMA [PX.Objects.AM.AMProdItem].EndDate DEFAULT @Today AS 'To Date'
```

The code above declares four parameters and specifies default values for them: `InventoryID`, `EmployeeID`, `EndDateFrom`, and `ToEndDate`.

The parameters can be used in the GIQL query as shown in the following example.

```
WHERE (AMProdOper.StatusID = 'M'
OR AMProdOper.StatusID = 'L'
OR AMProdOper.StatusID = 'C')
AND (AMProdItem.InventoryID = InventoryID
OR InventoryID IS NULL)
AND (AMMTran.DocType = 'L'
AND (AMProdOper.ActualLaborTime > {=0})
AND (AMMTran.EmployeeID = EmployeeID
OR EmployeeID IS NULL)
AND (AMProdItem.EndDate >= EndDateFrom
OR EndDateFrom IS NULL)
AND (AMProdItem.EndDate <= ToEndDate
OR ToEndDate IS NULL)
```

**Parent topic:**[Using Generic Inquiry Query Language \(GIQL\)](../UserGuide/SM_MNG_GIQL_Mapref.md)

