# Shop Floor Kiosk: Production Quantity Reporting {#_b3f1b151-e3c5-4793-83ba-f48b9a7ea9af .concept}

## Reporting Completed Quantity { .section}

You report production quantities on the **Production Reporting** page for the selected operation. Depending on your workflow, you can open this page from **Work in Process**, **Work Centers**, **Production Orders**, or **Recent Activity**.

To report completed quantities, do the following:

1.  Open the **Production Reporting** page for the operation.
2.  If the operation uses non-backflushed labor, clock out of the operation when required by your company’s reporting process.
3.  Click **Report Completed and Scrap Qty.**.
4.  In the dialog box, make sure the **Completed** tab is selected.
5.  Enter the completed quantity.
6.  If the operation requires production attributes, enter the required values.
7.  If the produced item is lot- or serial-tracked and requires lot or serial assignment during reporting, review or enter the required lot or serial numbers.
8.  Click **Submit**.

For operations configured with *Actual Costing*, the **Report Completed and Scrap Qty.** button becomes available only after you clock out of the operation. This ensures that labor time is captured before quantity reporting.

For last operations, the system may require lot or serial number assignment depending on the item tracking configuration. The kiosk supports:

-   Preassigned lot or serial numbers
-   Automatically generated lot or serial numbers
-   Manual lot or serial entry during reporting

## Reporting Scrap Quantity { .section}

You can report scrapped quantities in the same dialog box used for completed quantity reporting.

To report scrap quantities, do the following:

1.  Open the **Production Reporting** page for the operation.
2.  Click **Report Completed and Scrap Qty.**.
3.  Select the **Scrapped** tab.
4.  Enter the scrap quantity.
5.  If required, select a scrap reason.
6.  If the operation requires production attributes, enter the required values.
7.  If the item is lot- or serial-tracked, review or enter the required tracking information.
8.  Click **Submit**.

The available scrap actions depend on the operation configuration in Acumatica ERP:

-   *No Action*: Records scrap without separate inventory handling
-   *Write Off*: Posts scrap costs to a dedicated scrap account
-   *Quarantine*: Moves scrapped items to a quarantine location for review

The system validates all entered data according to the same business rules used by Acumatica ERP move transactions. If validation fails, the kiosk displays an error message without reloading the page.

## Reviewing Reported Quantities { .section}

The quantity reporting dialog box includes sections that help you review previously reported quantities before submitting new entries.

The dialog box displays the following information:

-   **Totals**
    -   Total completed quantity
    -   Total scrapped quantity
    -   Remaining quantity to complete
-   **Reported Items**
    -   Previously reported completed quantities
    -   Associated lot or serial numbers when applicable
-   **Scrap**
    -   Previously reported scrap quantities
    -   Associated lot or serial numbers and operations when applicable

You can also review your recent production reporting activity on the **Recent Activity** page. This page displays recent quantity submissions, labor transactions, and material transactions for the signed-in employee.

## Continuing Work After Reporting { .section}

After you submit quantities, you can continue working on the operation if additional work remains.

For non-backflushed labor operations, you may:

-   Remain clocked in while reporting partial quantities
-   Clock back in after reporting quantities on the last operation
-   Continue reporting additional completed quantities as work progresses

After quantity reporting is completed, the **Production Reporting** page refreshes automatically to display updated operation progress. The concentric gauge updates the completed and remaining quantities visually.

If additional quantities must be corrected later, you can use the **Subtract from Reported Qty.** action to reverse previously reported completed quantities, subject to ERP validation rules.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

