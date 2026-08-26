# Table \(Grid\): Table with Highlighted Contents {#_9470b32d-f4ae-4848-b2d9-4c4f6c9746d9 .concept}

You may need to highlight the contents of a table. For example, you may need to make a row displayed as bold, such as for a row with total values on an inquiry form. To highlight the contents of the table, you implement a method that modifies the CSS for the row and assigns the handleEvent decorator to it. In the parameters of the decorator, you specify the event type that the method handles and the view or the view and column for which the event is handled.

The following example makes the row of the `Transactions` view bold.

```language-javascript
@handleEvent(CustomEventType.GetRowCss, { view: 'Transactions' })
getTransactionsRowCss(args: RowCssHandlerArgs) {
    if (args?.selector?.rowIndex === 1) {
        // see static/custom.css
        return 'bold-row';
    }
    return undefined;
}
```

The following examples makes the `CuryLineAmt` cell of the `Transactions` view colored red if its value is greater than 1000.

```language-javascript
@handleEvent(CustomEventType.GetCellCss, 
  { view: 'Transactions', column: 'CuryLineAmt' })
getTransactionsCellCss(args: CellCssHandlerArgs): string | undefined {
    if (args?.selector?.rowIndex === 0 &&
        args?.selector?.cellValue > 1000) {
        // see static/custom.css
        return 'red-cell';
    }
    return undefined;
}
```

**Parent topic:**[Table \(Grid\)](../DeveloperGuide/UIDevRef_Grid_Mapref.md)

