# Selector Control: Configuration from Backend {#_fa079f56-6579-4984-88a9-139214a0750e .concept}

You use selector controls to provide a list from which the user can select a data record and then to set the ID of the selected data record as the data field value.

## Defining a Selector Control { .section}

To configure a selector control, you use the PXSelector attribute in the definition of the data field in the data access class \(DAC\), as shown in bold type in the following example.

```language-csharp
[PXDBInt(IsKey = true)]
[PXDefault]
[PXUIField(DisplayName = "Product ID")]
**\[PXSelector\(typeof\(Search&lt;Product.productID&gt;\),
            typeof\(Product.productCD\),
            typeof\(Product.productName\),
            typeof\(Product.unitPrice\),
            SubstituteKey = typeof\(Product.productCD\)\)\]**
public virtual int? ProductID
...
```

In the first parameter, you specify a Search&lt;&gt; BQL query to select data records for the control. The Search&lt;&gt; command has the same syntax as the Select&lt;&gt; command, except that you specify the data field of the main DAC. In the Search&lt;&gt; command, you can specify conditions and join data from other DACs. When a user selects a data record in the control, the control assigns the value of the specified field to the data field.

**Tip:** You can omit Search&lt;&gt; in the first parameter of PXSelector, if you specify only a DAC field without a complex expression that may contain `WHERE`, `JOIN`, `ORDER BY`, or `GROUP BY` conditions. Thus, in the example above, you can specify `typeof(Product.productID)` instead of `typeof(Search<Product.productID>)` in the first parameter.

## Defining the List of Columns { .section}

You configure the columns that should be shown in the control by providing the types of the fields after the Search&lt;&gt; command; see the code in bold type in the following example.

```language-csharp
[PXSelector(typeof(Search<Product.productID>),
            **typeof\(Product.productCD\),
            typeof\(Product.productName\),
            typeof\(Product.unitPrice\),**
            SubstituteKey = typeof(Product.productCD))]
public virtual int? ProductID
...
```

The code above defines three columns.

You can join multiple DACs in the Search&lt;&gt; command and specify fields from the joined DACs as columns. The following code example shows in bold type the `LeftJoin` clause and the fields from the joined DAC added to the selector control as columns.

```language-csharp
[PXDBString(10, IsKey = true, IsUnicode = true, InputMask = "")]
[PXDefault]
[PXUIField(DisplayName = "Shipment Nbr.")]
[PXSelector(typeof(
    Search2<Shipment.shipmentNbr,
        **LeftJoin&lt;Customer, On&lt;Customer.customerID,
                              Equal&lt;Shipment.customerID&gt;&gt;&gt;**>),
            typeof(Shipment.shipmentNbr),
            typeof(Shipment.customerID),
            **typeof\(Customer.customerCD\),
            typeof\(Customer.companyName**))]
public virtual string ShipmentNbr
...
```

**Tip:** If you do not specify any columns, the control will display all columns that have the Visibility property of the PXUIField attribute set to PXUIVisibility.SelectorVisible.

## Replacing the Displayed Key Value { .section}

The SubstituteKey property specifies the field whose value should be shown in the control in the UI instead of the field specified in the Search&lt;&gt; command.

The SubstituteKey property is shown in the bold type in the following code.

```language-csharp
[PXSelector(typeof(Search<Product.productID>),
            typeof(Product.productCD),
            typeof(Product.productName),
            typeof(Product.minAvailQty),
            **SubstituteKey = typeof\(Product.productCD\)**)]
public virtual int? ProductID
...
```

In the example above, the ProductID field of a shipment line stores the ProductID value of the selected product, while in the UI. the control shows the ProductCD value. Conversion between the ProductID and ProductCD values happens in the FieldUpdating and FieldSelecting event handlers, which are implemented within the PXSelector attribute.

**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

