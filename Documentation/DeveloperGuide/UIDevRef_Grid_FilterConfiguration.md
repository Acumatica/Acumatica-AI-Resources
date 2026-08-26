# Table \(Grid\): Configuration of the Search in the Table {#_096e4485-a909-4932-96f4-0cf99e56f5ad .concept}

To configure the search in the table, you need to specify fast filter settings for the table. A fast filter is applied to the table when a user enters a value in the Search box of the table or in another box on an Acumatica ERP form if the field that corresponds to this box is used for fast filtering.

## Hiding the Search Box or Changing Its Position { .section}

By default, the Search box of a table is displayed on the filter bar of the table. You can hide the Search box or display it on the table toolbar by using the showFastFilter property in the gridConfig decorator, as the following example shows.

```
@gridConfig({
  showFastFilter: 
    GridFastFilterVisibility.False
})
export class FieldValue
  extends PXView
```

## Including Columns in the List of Searched Fields { .section}

To include columns in the list of searched fields, you use the allowFastFilter property in the columnConfig decorator for the needed columns or the fastFilterByAllFields property in the gridConfig decorator. Take into account the following considerations:

-   By default, the search is performed in all string columns.
-   To exclude particular columns from the search, `fastFilterByAllFields` is not needed; you need to use `allowFastFilter: false`.
-   To have only particular columns searched, you can set `fastFilterByAllFields: false` and `allowFastFilter: true` for only these columns.

## Using a Field Value for Fast Filtering { .section}

You may need to filter records in the table by a value that a user has specified in a box on the Acumatica ERP form. To use a field value for fast filtering, you do the following:

1.  Specify an alias for the view model of the qp-grid element, as the following code shows.

    ```
    <qp-grid id="gridSiteStatus" view.bind="ItemInfo" 
      view-model.ref="gridSiteStatusVM">
    </qp-grid>
    ```

2.  Use this alias in the qp-fast-filter attribute of the field that should be used as a fast filter for the table, as shown below.

    ```
    <field name="Inventory" qp-fast-filter.bind="gridSiteStatusVM">
    </field>
    ```


**Tip:** You can also use one field in multiple fast filters by providing an array of view model aliases in the qp-fast-filter attribute, as the following code shows.

```
<field name="Inventory" 
  qp-fast-filter.bind="[gridSiteStatusVM, gridRelatedItemsVM]">
</field>
```

**Parent topic:**[Table \(Grid\)](../DeveloperGuide/UIDevRef_Grid_Mapref.md)

