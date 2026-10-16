# Migrating Custom Frontend Code: To Implement an Event Handler

This activity will walk you through the process of implementing an event handler to migrate custom JavaScript code to the Modern UI.

## Story

Suppose that on the Services and Prices \(RS203000\) form, you need to change a CSS style of a cell in a table on the Repair Items tab. The **Base Price** cell should have different color depending on the value in the cell.

## Process Overview

You will review the code in the `RS301000.aspx.cs` file, implement the GetCellCss event handler in the `RS203000.ts` file, define the CSS styles, and publish the project.

## System Preparation

Before you begin migrating the ASPX.CS code, perform the [Updating a Customization Project for the Modern UI: To Convert a Customization Project](UIDev_Customization_ConvertProject_Activity.md) activity. In this activity, you import a customization project and convert it using the conversion tool.

## Step 1: Review the Code in the RS203000.aspx.cs file

To review the code in the `RS203000.aspx.cs` file, do the following:

1.  Open the `T210` customization project.
2.  On the Files page, open the `RS203000.aspx.cs` file.
3.  Review code of the `gridRepairItems_RowDataBound` method.

    The code of the method gets the value of the `BasePrice` cell, gets the PXGridCell object for the same cell, and assigns the CSS class for the cell depending on its value.

    ```
    protected void gridRepairItems_RowDataBound(object sender, 
                                                PXGridRowEventArgs e)
    {
      var row = PX.Data.PXResult.UnwrapMain(e.Row.DataItem);
      if (row == null)
        return;
    
      PX.Data.PXCache cache = ds.DataGraph.Caches[row.GetType()];
      decimal? basePrice =  cache.GetValue(row, "BasePrice") as decimal?;
    
      if (basePrice == null)
        return;
    
      PXGridCell basePriceCell = e.Row.Cells.Cast<PXGridCell>()
        .FirstOrDefault(c => string.Equals(c.DataField, 
          "BasePrice", StringComparison.OrdinalIgnoreCase));
    
      if (basePriceCell == null)
        return;
    
      basePriceCell.Style.CssClass = (basePrice >= 15)
        ? BasePriceCss.FirstStyle
        : BasePriceCss.SecondStyle;
    } 
    ```


## Step 2: Implement the Event Handler

To implement the event handlers, do the following:

1.  Open the `T210` customization project.
2.  On the Modern UI Files page, open the `RS203000.ts` file.
3.  In the `RS203000.ts` file, in the `RS203000` screen class, implement the GetCellCss event handler for the `BasePrice` field of the `RepairItems` view.

    ```
    @handleEvent(CustomEventType.GetCellCss, 
      { view: "RepairItems", column: "BasePrice" })
    getRepairItemsCellCss(
      args: CellCssHandlerArgs<PXViewCollection<RSSVRepairItem>>): string | undefined {
      if (args?.selector?.cellValue > 15) {
      // see static/custom.css
        return "red-text-cell";
      }
      return "green-text-cell"
    }
    ```

4.  Implement the CSS styles: The default CSS styles are implemented in the `FrontendSources\screen\static\custom.scss` file. The file already contains the definition of the red-text-cell style. To add the missing CSS style:
    1.  Create the `styles.css` file in the following folder.

        ```
        FrontendSources\screen\src\development\screens\RS\common
        
        ```

        **Note:** You need to create a separate file because the `custom.scss` file cannot be saved to the customization project.

    2.  In the `styles.scss` file, add the definition of the green-text-cell style as shown below.

        ```
        .green-text-cell {
          color: green;
        }
        ```

    3.  In the `RS203000.html` file, link the `styles.css` file from the common folder: Add the require tag after the first template tag.

        ```
        <require from="../common/styles.scss"></require>
        
        ```

5.  Save your changes.
6.  Export the files from the `development` folder to the customization project.

## Step 3: Test the Changes

To test event handler, do the following:

1.  Publish the customization project.
2.  Open the Services and Prices \(RS203000\) form.
3.  Notice the cell styles on the **Repair Items** tab.

**Parent topic:**[Migrating JavaScript and ASPX.CS Code to the Modern UI](../DeveloperGuide/UIDev_Customization_MigrateCode_Mapref.md)

