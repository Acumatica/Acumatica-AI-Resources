# From a Method {#_3a427466-1925-4799-8fee-fe34a77021d0 .concept}

You can access the extension instance through the base \(original\) DAC object by using one of the following generic methods:

-   The GetExtension&lt;T&gt;\(object\) static generic method of the PXCache&lt;T&gt; generic class
-   The GetExtension&lt;T&gt;\(object\) static generic method declared within the non-generic PXCache class

**Tip:** There are no differences between these generic methods. You can use either one.

For example, you might access an instance of a DAC extension as follows. This example uses the row instance of the base DAC to retrieve the rowExt DAC extension object.

```
DACNameExt rowExt = PXCache<DACName>.GetExtension<DACNameExt>(row);
```

To access a custom field, use the instance of a DAC extension that contains the field as follows. The code below illustrates the use of the GetExtension&lt;T&gt;\(object\) static generic method of the PXCache&lt;T&gt; generic class to access an instance of a DAC extension used to access a custom field.

```
var fieldValue = PXCache<DACName>.GetExtension<DACNameExt>(row).UsrFieldName;
```

You can retrieve a DAC extension object or particular field from it by using the methods of `PXCache`, as shown in the code below. This code demonstrates how you can access a field by using the `GetExtension<>` method.

```

//Access to the field through the GetExtension<> method
//localCategory gets the value of the usrLocalTaxCategoryID custom field 
//defined in the InventoryItemExtension DAC extension for the InventoryItem class
protected void InventoryItem_RowUpdating(PXCache sender, PXRowUpdatingEventArgs e)
{
    InventoryItem row = e.NewRow as InventoryItem;
    InventoryItemExtension rowExt = sender.GetExtension<InventoryItemExtension>(row);
    string localCategory = rowExt.UsrLocalTaxCategoryID;
...

```

In event handlers, you can also use the `GetValue()` and `GetValueExt()` methods to access the custom field by its string name, as the code below shows.

```

//Access to the field through the GetValue() method
//localCategory gets the value of the usrLocalTaxCategoryID custom field 
//defined in a DAC extension for the InventoryItem class
protected void InventoryItem_RowUpdating(PXCache sender, PXRowUpdatingEventArgs e)
{
    InventoryItem row = e.NewRow as InventoryItem;
    string localCategory = (string)sender.GetValue(row, "usrLocalTaxCategoryID");
...

```

For custom fields defined in DAC extensions, you can also use other methods of `PXCache` classes, such as `SetValue()` and `SetDefaultExt()`. For more information, see the `PXCache<Table>` class in the API Reference Documentation of Acumatica Framework.

You can refer to the custom field by its BQL name in any methods of Acumatica Framework. The example below shows how you can refer to the field in the `SetEnabled<T>()` method of the `PXUIFieldAttribute` that you can use to configure the UI representation of the field at run time. For more information on available classes and their methods, see the API Reference Documentation of Acumatica Framework.

```

//The usrLocalTaxCategoryID custom field is defined
//in the InventoryItemExtension DAC extension for the InventoryItem class
protected void InventoryItem_RowSelected(PXCache sender, PXRowSelectedEventArgs e)
{
    InventoryItem row = e.Row as InventoryItem;
    PXUIFieldAttribute.SetEnabled<InventoryItemExtension.usrLocalTaxCategoryID>(sender, row, true);
...

```

**Parent topic:**[Access to a Custom Field](../CustomizationPlatform/CG_Platform_Framework_CS_DACExt_Access.md)

