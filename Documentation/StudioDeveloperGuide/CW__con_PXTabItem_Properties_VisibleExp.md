# Conditional Hiding of a Tab Item {#_5e6701bc-1107-42f8-b9c6-9c5a586bc6ab .concept}

You can use the Visible property of the PXTabItem element to set the visibility of the tab item. However, if you need to set the dependency of a tab item's visibility from a condition, you should use one of the following approaches:

-   Set the AllowSelect property of PXCache of the data view in a RowSelected event handler.
-   Use the VisibleExp and BindingContext properties of the PXTabItem element.

## Using AllowSelect { .section}

In a RowSelected event handler, you can configure the AllowSelect property of PXCache of the data view that corresponds to the tab item. In ASPX, you also need to set the RepaintOnDemand property of PXTabItem to `False`.

For example, the following code makes the **Applications** tab of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form visible or invisible depending on the document type.

```
protected virtual void ARInvoice_RowSelected(PXCache cache, PXRowSelectedEventArgs e)
{
    ...
    Adjustments.Cache.AllowSelect =
      doc.DocType != ARDocType.CashSale &&
      doc.DocType != ARDocType.CashReturn;
    ...
}
```

## Using VisibleExp { .section}

The VisibleExp property contains a condition expression that defines a Boolean value used to set the visibility of the tab item. The expression must consist of two parts and an operator to compare these parts. The expression can contain the values of controls that belong to the container specified in the BindingContext property.

As an example of the conditional hiding of a tab item, on a form with form and tab containers, if you need to set the visibility of a tab item to depend on a check box of the form container, you can define the VisibleExp and BindingContext properties of the PXTabItem element, as illustrated in the following ASPX code snippet.

```
<px:PXFormView ID="form" ...>
...
  px:PXCheckBox ... ID="myControlID" ... />
...
</px:PXFormView>
...
<px:PXTab ...>
...
  <px:PXTabItem ... BindingContext="form" ...
  VisibleExp="DataControls[&quot;myControlID&quot;].Value == true">
...
</px:PXTab>
```

In the code above, the expression uses the DataControls .NET property of the `form` object as a dictionary to find the needed control by the specified ID.

**Parent topic:**[Configuring Tabs](../StudioDeveloperGuide/CW__mng_Configuring_Tabs.md)

