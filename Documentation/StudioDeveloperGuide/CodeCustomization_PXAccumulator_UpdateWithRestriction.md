# PXAccumulator: Implementation of an Update with Restrictions {#_c7096bfc-de10-4e3d-8f68-771b8104f4f8 .concept}

When you use a custom accumulator attribute, you might need to check some restrictions during the update of the data in the database. You can specify the restriction conditions in the accumulator attribute. The attribute adds the conditions to the `WHERE` clause of the SQL query. When the framework executes the query, the record is not updated in the database if the condition is `false`. In this case, the database returns no affected rows, and the framework throws the PXLockViolationException exception.

You can add a restriction to a field value in the accumulator attribute in one of the following ways:

-   By using the Restrict\(\) method of the column collection in PrepareInsert\(\). The condition that you specify in the Restrict\(\) method is checked against the value stored in the database. You need to override the PersistInserted\(\) method to throw a more specific exception if a restriction violation occurs.
-   By using the AppendException\(\) method of the column collection in PrepareInsert\(\). This method actually configures an exception that is thrown when the specified restriction is violated. The condition you specify is checked against the result after the new value is added to the value stored in the database.

## Example with the Restrict\(\) Method { .section}

The following code example adds a restriction to the `ProductQty.AvailQty` field by using the Restrict\(\) method.

```
ProductQty newQty = (ProductQty)row;
if (newQty.AvailQty < 0m)
{
    columns.Restrict<ProductQty.availQty>(PXComp.GE, -newQty.AvailQty);
}
```

The restriction that is set with the Restrict\(\) method does not work on the insertion of the `ProductQty` data record. In the code above, you compare the existing value with `-newQty.AvailQty`.

## Example with the AppendException\(\) Method { .section}

The following code example adds the same restriction \(that is, the restriction of the previous example\) to the `ProductQty.AvailQty` field by using the AppendException\(\) method.

```
ProductQty newQty = (ProductQty)row;
if (newQty.AvailQty < 0m)
{
    columns.AppendException(
        "Updating product quantity in stock will lead to a " + 
        "negative value.",
        new PXAccumulatorRestriction<ProductQty.availQty>(PXComp.GE, 0m));
}
```

The restriction that is set with the AppendException\(\) method works on the insertion and update of the `ProductQty` data record. In the code above, you compare the resulting value, `-newQty.AvailQty` plus the existing value, with `0m`.

## Handling of PXLockViolationException { .section}

You override the PersistInserted\(\) method in the attribute and handle PXLockViolationException in it. In the overridden PersistInserted\(\) method, you first have to invoke the base method and then have to catch the PXLockViolationException exception that can be thrown in the base method.

The framework raises the PXLockViolationException exception in a general case if the database returns no rows affected by the `UPDATE` command. When you catch the PXLockViolationException exception, you have to check whether the restriction conditions take place and do one of the following:

-   If a restriction condition is `false`, throw the PXRowPersistingException exception to return the appropriate error message to the UI. When the PXRowPersistingException exception occurs, the transaction is rolled back and no record is updated in the database.
-   If the restriction conditions are `true`, rethrow the PXLockViolationException exception because it was not caused by violation of restriction conditions.

If no exceptions occur in PersistInserted\(\), the new value is saved to the database.

**Note:** For an ordinary data update without accumulators, you can check value restrictions at different times before the data is updated in the database. In particular, on the FieldVerifying and RowUpdating events, you can check the values for restrictions at the model level, before the changes are saved to the PXCache object. When these events occur, you typically validate the values entered by the user. If you need to check a value immediately before it is saved to the database, you can do this in the RowPersisting event handler.

**Parent topic:**[Updating Data with a Custom PXAccumulator Attribute](../StudioDeveloperGuide/CodeCustomization_PXAccumulator_Mapref.md)

