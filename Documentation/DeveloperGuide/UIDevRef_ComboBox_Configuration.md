# Combo Box: Configuration {#_7ae228cf-c106-4766-a5fe-d267bfd88779 .concept}

In this topic, you can learn how to adjust a combo box for specific cases.

## Defining a Drop-Down List { .section}

To configure a drop-down list, you use the PXStringList or PXIntList attribute in the definition of the data field in the data access class \(DAC\), as shown in bold type in the following example.

```
[PXDBString(1)]
[PXDefault(ShipmentStatus.OnHold)]
[PXUIField(DisplayName = "Status")]
**\[PXStringList\(
    new string\[\]
    \{
        ShipmentStatus.OnHold, ShipmentStatus.Shipping,
        ShipmentStatus.Cancelled, ShipmentStatus.Delivered
    \},
    new string\[\]
    \{
        "On Hold", "Shipping", "Cancelled", "Delivered"
    \}\)\]**
public virtual string Status
{
    get;
    set;
}
```

**Tip:** You use PXStringList when the values that are assigned to the field are strings, and you use PXIntList when the values are integers.

In this example, ShipmentStatus is an enumeration defined in the following way.

```
public static class ShipmentStatus
{
    public const string OnHold = "H";
    public const string Shipping = "S";
    public const string Cancelled = "C";
    public const string Delivered = "D";
}
```

As parameters, you provide two arrays of strings:

-   The array of values assigned to the field and saved to the database with the data record
-   The array of labels displayed in the user interface

## Modifying a Drop-Down List at Run Time { .section}

You can modify a drop-down list at runtime by using the SetList&lt;&gt;\(\) static method of the PXStringList attribute. You can do this in the RowSelected event handler or graph constructor.

The following code example shows the use of the SetList&lt;&gt;\(\) method.

```language-csharp
PXStringListAttribute.SetList<Shipment.status>(
    sender, row,
    new string[]
    {
        ShipmentStatus.OnHold,
        ShipmentStatus.Shipping,
    },
    new string[]
    {
        "On Hold",
        "Shipping",
    });
```

This code sets a new list of values and labels for the Status field.

In the type parameter, you specify the data field associated with the control. You also provide the cache object, the data record that will be affected by the method, the list of values, and the list of labels.

If the list of possible values of a drop-down control is changed dynamically at runtime, you should use the RowSelected event handler to manage the list. Otherwise, we recommend that you create the list in the graph constructor.

## Inserting a Not-Listed Value { .section}

If a drop-down list is configured with the PXStringList attribute, you can allow a user to enter values that are not options in the list. You do this by setting the AllowEdit property of the PXDropDown control to True on the ASPX page \(see the setting in bold type in the following code\).

```
<px:PXDropDown ID="edStatus" runat="server" DataField="Status"
               **AllowEdit="True"**>
</px:PXDropDown>
```

## Selecting Multiple Values { .section}

By default, a user can select one value from a drop-down list. The user will be able to select multiple values if you do all of the following:

-   Set the allowMultiSelect property of the config attribute of the [qp-drop-down](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=bc0d2a73-9cf0-0913-7740-927613f91b48) control.

    ```language-javascript
    @controlConfig({allowMultiSelect: true})
    TimeZone: PXFieldState;
    ```

-   Set the MultiSelect property of the PXStringList attribute to `true`, as shown in the following code.

    ```language-csharp
    [PXString(20)]
    [PXUIField(DisplayName = "Priority")]
    [PXStringList(
        new string[]
        {
        WorkOrderPriorityConstants.High,
        WorkOrderPriorityConstants.Medium,
        WorkOrderPriorityConstants.Low
        },
        new string[]
        {
        Messages.High,
        Messages.Medium,
        Messages.Low
        },
        **MultiSelect = true**)]
    public virtual string Priority { get; set; }
    ```


The selected values are displayed in the control separated by a comma. You can change the character that is used as a separator by using the valuesSeparator property of the config attribute of the [qp-drop-down](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=bc0d2a73-9cf0-0913-7740-927613f91b48) control.

**Parent topic:**[Combo Box](../DeveloperGuide/UIDevRef_ComboBox_Mapref.md)

