# Shop Floor Kiosk: Labor Time Recording {#_8cea36de-460a-457e-8629-8ff11e05dd67 .concept}

The Shop Floor Kiosk lets you record direct labor time while working on production operations. Depending on how the selected operation is configured, you can clock in and out to track labor activity directly from the **Production Reporting** page.

Labor time recording is available only for operations that are not configured for labor backflushing.

## When Labor Time Is Recorded { .section}

You record labor time while working on a production operation through the **Production Reporting** page.

You can open the **Production Reporting** page from any of the supported kiosk workflows, including:

-   **Work in Process**
-   **Work Centers**
-   **Production Orders**
-   **Recent Activity**

The kiosk displays labor time controls only when the selected operation supports manual labor reporting. If the operation uses backflushed labor, the **Clock In** and **Clock Out** buttons are not displayed.

**Attention:**

-   You can be clocked in to only one production operation at a time.
-   The kiosk uses the default shop floor shift assigned to your employee record when labor transactions are created.

## Clocking In to an Operation { .section}

To start recording labor time for an operation:

1.  Sign in to the Shop Floor Kiosk.
2.  Open the **Production Reporting** page for the operation.
3.  On the **Production** tab, click **Clock In**.

When you clock in:

-   The kiosk starts tracking labor time for the selected operation.
-   The operation becomes available through the **Work in Process** workflow.
-   A *Clocked In* activity entry is added to your **Recent Activity** page.

If you are already clocked in to another operation, the kiosk prevents you from starting a second clock entry.

**Tip:** You can use the **Recent Activity** page to confirm that you successfully clocked in to the correct operation.

## Clocking Out of an Operation { .section}

To stop recording labor time:

1.  Open the **Production Reporting** page for the active operation.
2.  Click **Clock Out**.

When you clock out:

-   Labor time recording stops for the operation.
-   A *Clocked Out* activity entry is added to your **Recent Activity** page.
-   The kiosk creates and releases the related labor transaction automatically.

For some workflows, you may need to clock out before reporting the remaining completed quantity. This behavior is commonly used on non-backflushed labor operations, especially for the last operation in the routing.

## Automatic Transaction Creation { .section}

When you clock out of an operation, the kiosk automatically creates a labor transaction batch in Acumatica ERP and attempts to release it immediately.

The kiosk applies the same validation rules that are used for labor transactions in Acumatica ERP. If required information is missing or invalid, the system displays an error or warning message before the transaction is processed.

The kiosk also records clock-in and clock-out actions in **Recent Activity** so that you can review your labor reporting history.

If labor time exceeds the planned duration for the operation, the labor progress indicator on the **Production Reporting** page changes to show a labor time overrun.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

