# Table \(Grid\): Changing of Column Properties Dynamically {#_ab7ed7de-3a99-4ffb-b2fe-8ade93ac09a0 .concept}

You can change column properties dynamically in a table by using an event handler.

The visibility of a column is managed by two properties:

-   The allowShowHide property of a column, which determines whether a user can show or hide the column in the table
-   The visible property, which indicates whether the column should be displayed in the table by default

Suppose that you need to hide some of the columns depending on a condition. When the columns are loaded into the table, the onFilterColumns event occurs. So to hide a column completely, you need to set values for the allowShowHide and visible properties in the event handler for the onFilterColumns event.

To implement the dynamic change of these properties when the table is loaded, you need to do the following:

1.  Implement an event handler for the onFilterColumns event in the screen class.

    The following code shows an example of changing the allowShowHide and visible properties. The event handler is defined in the screen class and accepts the condition for showing the column as a parameter.

    ```language-javascript
    @graphInfo({ 
      graphType: "PX.Objects.AM.MRPDisplay", 
      primaryView: "Detailrecs" 
    })
    export class AM400000 extends PXScreen {
      ...
      protected detailrecsOnFilterColumns(column: IGridColumn, show : boolean): 
        boolean {
        if (column.field === "CreateSubAssemblyOrders" || 
            column.field === "OrderType" || 
            column.field === "ProdOrdID") 
        {
          column.allowShowHide = show ? GridColumnShowHideMode.Server 
            : GridColumnShowHideMode.False;
          column.visible = show;
        }
        return true;
      }
    }
    ```

2.  In the qp-grid tag of the HTML template, specify the name of the event handler in the onFilterColumns attribute. In the attribute value, specify the parameter values for the event handler.

    The following examples show the specification of the event handler with different parameter values.

    ```language-xml
    <qp-grid id="gridPurchaseDisplay" view.bind="ProcessRecords" 
      on-filter-columns.call="detailrecsOnFilterColumns(col, false)"></qp-grid>
    ```

    ```language-xml
    <qp-grid id="gridManufactureDisplay" view.bind="ProcessRecords" 
      on-filter-columns.call="detailrecsOnFilterColumns(col, true)"></qp-grid>
    ```


**Parent topic:**[Table \(Grid\)](../DeveloperGuide/UIDevRef_Grid_Mapref.md)

