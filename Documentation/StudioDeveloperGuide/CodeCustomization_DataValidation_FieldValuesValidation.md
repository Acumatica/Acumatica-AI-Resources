# Data Validation: Validation of Field Values {#_f914ffdd-8e71-4fc6-b82c-4639d60b1c6a .concept}

If you want to independently validate a value inserted by a user, you should implement the FieldVerifying event handler for the data field. You can use this approach to check restrictions on the absolute value.

Generally, if validation fails, you can cancel the update of the field and restore the control to its value before the user changed it by throwing an exception of the PXSetPropertyException type, as is shown in the following example.

```
if ((decimal)e.NewValue < 0)
{
    throw new PXSetPropertyException("The quantity cannot be negative.");
}
```

**Important:** If an exception of the PXSetPropertyException type is thrown outside of a FieldVerifying or FieldUpdating event, it will cause a rollback of any changes the user made, and the user's changes will be lost. If you want to prevent this rollback, you can call the PXGraph.ThrowWithoutRollback method and pass an instance of the PXSetPropertyException type to it, as shown in the following example.

```
PXGraph.ThrowWithoutRollback(new 
PXSetPropertyException("The quantity cannot be negative"));
```

You could instead correct the entered value to a valid value, as shown in the following example.

```
if (product != null && (decimal)e.NewValue < product.MinAvailQty)
{
    e.NewValue = product.MinAvailQty;
    ...
}
```

If you correct the entered value, you should not throw an exception; instead, you should let the method finish normally. However, we recommend that you display a warning indicating that the value has been corrected automatically. To do this, you can invoke the RaiseExceptionHandling&lt;&gt;\(\) method of the PXCache&lt;&gt; type, as the following code example shows. This method displays a warning for the validated data field but does not raise an exception, so the method finishes normally and `e.NewValue` is set.

```
sender.RaiseExceptionHandling<ShipmentLine.lineQty>(
    line, e.NewValue,
    new PXSetPropertyException(
        "The quantity has been corrected to the minimum possible value.",
        PXErrorLevel.Warning));
```

You still have to initialize an instance of the PXSetPropertyException type. But this time you do not throw an exception; you provide this instance as a parameter to the RaiseExceptionHandling&lt;&gt;\(\) method. You should specify the error level if you want the message attached to the control to not be displayed with the default error sign. To attach a warning to the control, specify PXErrorLevel.Warning in the PXSetPropertyException constructor.

## Formation of Strings { .section}

You can insert a display name of a field in a message shown by using the RaiseExceptionHandling method and the PXSetPropertyException exception. The display name is taken from the DisplayName attribute of the PXUIField attribute attached to a DAC field.

To insert the display name, you should surround the DAC field name mentioned in the string message with square brackets.

Suppose that the DAC field is represented by the following code.

```
[PXDBDecimal()]
[PXDefault(TypeCode.Decimal, "0.0")]
[PXUIField(DisplayName = "Order Quantity")]
public virtual Decimal? Quantity { get; set; }
public abstract class quantity : PX.Data.BQL.BqlDecimal.Field<quantity> { }
```

The following example shows how you would indicate the display name of the DAC field.

```
The [quantity] cannot be negative.
```

The resulting message looks as follows.

```
The Order Quantity cannot be negative.
```

In Acumatica Framework, another legacy mechanism is used in some code to insert display names: The *\{0\}* placeholder is added to the string constructor, and arguments are not passed and formatted for it. Then the placeholder is replaced with the `DisplayName` of the DAC field in whose event handler the PXSetPropertyException exception is raised.

**Note:** Placeholders with numbers other than *0* are not supported.

For example, the following code raises the exception.

```
protected virtual void _(Events.FieldVerifying<RSSVWorkOrderLabor, 
                                               RSSVWorkOrderLabor.quantity> e)
{
  ...
  if ((decimal)e.NewValue < 0)
  {
    throw new PXSetPropertyException("The {0} cannot be negative.");
  }
}
```

Then the resulting string looks as follows.

```
The Order Quantity cannot be negative.
```

**Important:** The replacement of the *\{0\}* placeholder with the display name of a DAC field when the corresponding format argument is not specified is an old legacy mechanism. It should not be used in new code, and its support may be removed in the future. Instead, we recommend that you use the approach described at the beginning of the section.

**Parent topic:**[Validating Data](../StudioDeveloperGuide/CodeCustomization_DataValidation_Mapref.md)

