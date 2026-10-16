# Shop Floor Kiosk: Production Quantity Reporting

## Reporting Completed Quantity

You report production quantities on the **Production Reporting** page for the selected operation. Depending on your workflow, you can open this page from **Work in Process**, **Work Centers**, **Production Orders**, or **Recent Activity**.

To report completed quantities, do the following:

1.  Open the **Production Reporting** page for the operation.
2.  If the operation uses non-backflushed labor, clock out of the operation when required by your company’s reporting process.
3.  Click **Report Completed and Scrap Qty.**.
4.  In the dialog box, make sure the **Completed** tab is selected.
5.  Enter the completed quantity.
6.  If the operation requires production attributes, enter the required values.
7.  If the produced item is lot- or serial-tracked and requires lot or serial assignment during reporting, review or enter the required lot or serial numbers.
8.  If the item has lot or serial attributes, enter the attribute values.
9.  Click **Submit**.

For operations configured with *Actual Costing*, the **Report Completed and Scrap Qty.** button becomes available only after you clock out of the operation. This ensures that labor time is captured before quantity reporting.

For last operations, the system may require lot or serial number assignment depending on the item tracking configuration. The kiosk supports:

-   Preassigned lot or serial numbers
-   Automatically generated lot or serial numbers
-   Manual lot or serial entry during reporting

## Entering Lot and Serial Attributes

When you report a completed quantity for the last operation, the **Completed** tab of the **Report Quantities** dialog box may display a **Lot Number Attributes** or **Serial Number Attributes** table if attributes have been configured for the item.

Enter the lot or serial attribute values required for the reported quantity. If a required attribute is missing, the kiosk prevents you from reporting a nonzero completed quantity until you provide the required information.

The entered attribute values are included in the resulting production move transaction. You can review them in the **Line Details** dialog box on the [Move](AM_30_20_00.md) \(AM302000\) form in the ERP.

One set of attribute values is entered per reporting transaction and applies to the entire completed quantity. You cannot report different attribute values for different lots or serial numbers in the same transaction.

## Reporting Scrap Quantity

You can report scrapped quantities in the same dialog box used for completed quantity reporting.

To report scrap quantities, do the following:

1.  Open the **Production Reporting** page for the operation.
2.  Click **Report Completed and Scrap Qty.**.
3.  Select the **Scrap** tab.
4.  Enter the scrap quantity.
5.  If required, select a scrap reason.
6.  If the operation requires production attributes, enter the required values.
7.  If the item is lot- or serial-tracked, review or enter the required tracking information.
8.  If the operation's **Scrap Action** is *Quarantine* and the item has lot or serial attributes, enter the attribute values.
9.  Click **Submit**.

The available scrap actions depend on the operation configuration in Acumatica ERP:

-   *No Action*: Records scrap without separate inventory handling
-   *Write Off*: Posts scrap costs to a dedicated scrap account
-   *Quarantine*: Moves scrapped items to a quarantine location for review

The system validates all entered data according to the same business rules used by Acumatica ERP move transactions. If validation fails, the kiosk displays an error message without reloading the page.

## Reviewing Reported Quantities

The **Report Quantities** dialog box includes sections that help you review previously reported quantities before submitting new entries.

The dialog box displays the following information:

-   **Totals**
    -   Total completed quantity
    -   Total scrapped quantity
    -   Remaining quantity to complete
-   **Reported Items**
    -   Previously reported completed quantities
    -   Associated lot or serial numbers when applicable
    -   Recorded lot or serial attribute values when applicable
-   **Scrap**
    -   Previously reported scrap quantities
    -   Associated lot or serial numbers and operations when applicable
    -   Recorded lot or serial attribute values when applicable

You can also review your recent production reporting activity on the **Recent Activity** page. This page displays recent quantity submissions, labor transactions, and material transactions for the signed-in employee.

## Continuing Work After Reporting

After you submit quantities, you can continue working on the operation if additional work remains.

For non-backflushed labor operations, you may:

-   Remain clocked in while reporting partial quantities
-   Clock back in after reporting quantities on the last operation
-   Continue reporting additional completed quantities as work progresses

After quantity reporting is completed, the **Production Reporting** page refreshes automatically to display updated operation progress. The concentric gauge updates the completed and remaining quantities visually.

If additional quantities must be corrected later, you can use the **Subtract from Reported Qty.** action to reverse previously reported completed quantities, subject to ERP validation rules.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

