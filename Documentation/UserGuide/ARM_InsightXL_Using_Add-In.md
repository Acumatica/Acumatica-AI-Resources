# InsightXL: Using the Excel Add-In

Once you’ve installed the InsightXL Excel add-in, the **Acumatica** tab appears in Excel.


By using the commands on this tab, you can:

-   Connect to Acumatica ERP
-   Refresh values in Excel by pulling data from Acumatica ERP
-   Insert Acumatica ERP helper functions
-   Drill down into calculated values to see the underlying data

## Connecting InsightXL to Acumatica ERP

To connect InsightXL to Acumatica ERP, click **Connection** on the **Acumatica** tab to open the add-in's right panel and sign in to Acumatica ERP. When you are signed in, this panel displays the status of the workbook synchronization and informs you if the displayed data needs to be refreshed. If you work with multiple tenants, you can also use this panel to switch between the tenants you can access.

## Refreshing Data Exported to Excel

Use the **Refresh** menu command on the **Acumatica** tab to recalculate and repopulate values from Acumatica ERP in your workbook.

During the refresh, the add-in groups the Acumatica ERP functions in the worksheet or workbook and sends them to the server, where the ARM engine calculates their values. It then sends the calculated values back to Excel. The add-in then identifies any other functions \(for example, Excel functions\) that reference those values, recalculates formulas containing those functions, and inserts the results into the appropriate cells.

Before refreshing the workbook, make sure that no cell is selected for editing. While the refresh is in progress, you can monitor its status and progress in the right panel.

You can control what you refresh in your workbook:

-   **Pending and Errors**: Refresh cells with errors or cells that were recently changed but not yet calculated in the current sheet.
-   **Current Sheet**: Refresh only the active sheet.
-   **All Sheets**: Refresh the entire workbook.
-   **Cancel Refresh**: Cancel a refresh if it’s taking too long.

## Using Helper Functions

The add-in's **Acumatica** tab includes the **Insert** group of buttons that place supported functions in the worksheet in the cell you're working in:

-   **Field**: Inserts a drop-down list in Excel sourced from the related entities in Acumatica ERP, such as account class, account, company, branch, ledger, and financial period.
-   **Chart of Accounts**: Expands an array of accounts by inserting them into the selected cell and the cells below it.
-   **Fin. Periods**: Expands an array of periods by inserting them into the selected cell and the cells to the right of it.

Click a cell that contains a calculated *Beginning Balance*, *Debit*, *Credit*, *Turnover*, or *Ending Balance* value, and then click **Drilldown**. This opens a new sheet named **Drilldown** with the underlying data.

**Attention:** A workbook can have only one drilldown sheet at a time. If you select a different cell and click **Drilldown**, the existing drilldown sheet will be deleted, and a new one will be created for the selected cell.

## Exporting ARM Reports to Excel

You can export an existing ARM report to Excel by clicking **Export** &gt; **Excel \(Connected\)** on the report form's toolbar. The report is exported along with the functions and formulas used to calculate report values.


**Parent topic:**[Using InsightXL to Work with ARM Reports in Excel](../UserGuide/ARM_InsightXL_Mapref.md)

