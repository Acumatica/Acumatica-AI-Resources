# Business Logic Implementation {#_b02bd27f-3e86-4210-9e0f-c0df7aa701d9 .concept}

The business logic of an Acumatica Framework-based application is implemented by overloading certain methods invoked by the system in the process of manipulating data. For such procedures as inserting a data record or updating a data record, the PXCache controllers generate series of events causing invocation of the methods called event handlers.

The business logic can be divided into common logic relevant to different parts of the application and the logic specific to an application form \(webpage\). The common logic is implemented through event handler methods defined in attributes, while the form-specific logic is implemented as methods in the associated graph.

## Common Business Logic { .section}

You implement the common business logic by defining event handlers in attributes. If such attribute is added to the declaration of a data access class, attribute logic is applied to the data records of this type for any graph used to access this table.

There are a number of predefined attributes implemented in the framework. For example, in the following declaration of a data field for a column, the PXDBDecimal attribute binds this field to a database column of the decimal type.

```
[PXDBDecimal(2)]
public virtual string AvailQty { get; set; }
```

The attributes that bind a field to a specific data type exist for most database data types.

Another typical example of an attribute is PXUIField. It is used to configure the input control for the column in the user interface. This allows having the same visual representation of the column on all application screens \(unless a screen redefines it\). The following example shows the use of the PXUIField attribute.

```
[PXDBDecimal(2)]
[PXUIField(DisplayName = "Available Qty", Enabled = false)]
public virtual string AvailQty { get; set; }
```

You can also defined your own attributes, as shown in the following code.

```
// Application-defined attribute that implements common business logic
public class MyAttribute : PXEventSubscriberAttribute,
                           IPX*EventName*Subscriber
{
    // An event handler
    protected virtual void *EventName*(PXCache sender,
                                     PX*RowEventName*EventArgs e)
    {
        ...
    }
    ...
}
```

These custom attributes can also be added to the DAC declaration, as shown in the following example.

```
[PXDBDecimal(2)]
[PXUIField(DisplayName = "Available Qty", Enabled = false)]
[MyAttribute]
public virtual string AvailQty { get; set; }
```

For details about attributes, see [Working with Attributes](BL__mng_Working_With_Attributes.md).

## Screen-Specific Business Logic { .section}

For a specific screen, the application can redefine the common logic or extend it. For this purpose, you should define event handlers in the graph associated with the screen. Each event handler method is tied to a particular table or a table field via the naming convention.

For example, you can verify a value of a column as shown in the following code.

```
public class ProductRecalc : PXGraph<ProductRecalc>
{
    ...
    // Event handler verifying that the value of the AvailQty column
    // in Product records is greater than 0.
    // It is triggered when, for instance, a Product record is updated.
    protected virtual void Product_AvailQty_FieldVerifying(
        PXCache sender, 
        PXFieldVerifyingEventArgs e)
    {
        Product p = (Product)e.Row;
        if (p != null && p.AvailQty != null)
        {
            if (p.AvailQty < 0)
                throw new PXSetPropertyException<Product.availQty>(
                    "Value must be greater than 0.");
        }
    }
}
```

For details about events, see [Working with Events](BL__mng_Working_With_Events.md).

**Parent topic:**[Getting Started with Acumatica Framework](../StudioDeveloperGuide/FGS__mng.md)

