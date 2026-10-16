# Single-Tier Change Management: Billing Amounts in Change Orders

When a customer approves a change to the contract, you may need to know how much of the related change order has already been billed and how much is still pending. Project and budget totals don't always answer this question because the same revenue budget line can include amounts from the original project budget and from multiple change orders.

You can track billed and pending billing amounts for change orders in projects billed by progress billing. These amounts are shown for a change order and for the project if both of the following are true:

-   The line of the related pro forma invoice is linked to a revenue budget line that wasn’t in the original project budget.
-   The revenue budget line is added to only one released change order.

## Reviewing Billing Amounts in a Change Order

On the [Change Orders](PM_30_80_00.md) \(PM308000\) form, you can review the progress billing amounts in the **Billed Amount** and **Pending Billing Amount** boxes of the Summary area:

-   **Billed Amount**: The amount billed through a released AR document.
-   **Pending Billing Amount**: The amount that hasn't been billed yet.

Each of the progress billing amounts is shown if both conditions for linking are met:

-   The revenue budget line added to the change order wasn't added to the original project budget:
    -   For an amount-based line, the original revenue amount is *0*.
    -   For a quantity-based line, the original revenue quantity is *0*.
-   The revenue budget line is added to only one released change order.

The billing values may be lower than the actual billed amount related to a change order because amounts that don't meet these conditions aren't included. If the values are empty, this doesn't mean that the change order has no billing activity. The billing values show only billed and pending amounts; they don't indicate whether the change order is fully billed. Time and material billing isn't included.

## Reviewing Billing Amounts in a Project and Pro Forma Invoice

You can review the billing amounts of the change orders related to the project on the **Change Orders** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. The **Billed Amount** and **Pending Billing Amount** columns show the billing values for each released change order. Only amounts related to revenue budget lines that meet both linking conditions are included in these values.

On the **Progress Billing** tab of the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, the **Change Order Nbr.** column shows the reference number of the released change order linked to the line if both of the following are true for this line

-   It wasn't added to the original project budget
-   It is used in only one released change order

## Correcting Change Order Billing Amounts

After you bill a change order, you may need to reduce or increase the billed amount. To do this, you click **Correct** on the More menu of the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, make the needed changes, and release the correction pro forma invoice.

The correction affects the change order billing values as follows:

-   Before the correction pro forma invoice is released: The released change order’s **Pending Billing Amount** and **Billed Amount** don’t change.
-   After the correction pro forma invoice is released: The corrected amount is included in the **Pending Billing Amount**.
-   After the correcting AR document is released: The corrected amount is included in the **Billed Amount** and the amount of the previous pro forma invoice is deducted from the **Billed Amount**.

To update change order links and amounts after pro forma invoice correction, you click **Recalculate Project Balances** on the More menu of the [Projects](PM_30_10_00.md) \(PM301000\) form.

Note that the billing amounts of the previously corrected pro forma invoices and their reversing AR documents aren’t included in the current change order billing amounts—only the amount from the latest correction. The amount is shown as pending until the correcting AR document is released, and as billed after the release.

**Important:** We don't recommend manually reversing an AR invoice created from a pro forma invoice. If you reverse the invoice directly on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the project budget values are updated, but the change order billing values aren't recalculated—they continue to reflect the original pro forma billing amount.

**Example**: Suppose that you billed a change order for $100 and then need to correct the amount to $75. You create a correction pro forma invoice and reduce the amount to $75. Until you release the correction pro forma invoice, the change order billing values don’t change: the **Billed Amount** on the [Change Orders](PM_30_80_00.md) \(PM308000\) form remains *100*, and the **Pending Billing Amount** remains empty. After you release the correction pro forma invoice, the values change as follows:

-   Before the correcting AR invoice is released, the **Billed Amount** is *0* and the **Pending Billing Amount** is *75*.
-   After the correcting AR invoice is released, the **Billed Amount** is *75*, and the **Pending Billing Amount** is *0*.

## Limitations

-   The billing values may be lower than the actual billed amount related to a change order because these amounts are excluded:

    -   Amounts related to revenue budget lines added to the original project budget
    -   Amounts related to revenue budget lines used in more than one released change order
    -   Amounts from pro forma lines that the system can’t link to one released change order
    If the values are empty, this doesn't necessarily mean the change order has no billing activity—it may mean that all its billing amounts belong to one of the categories above.

-   The billing values show only the billed and pending amounts—they don't indicate whether the change order is fully billed.
-   The billing values are empty for projects with direct AR billing—that is, projects with the **Create Pro Forma Invoice on Billing** check box cleared on the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   The billing values are related to progress billing amounts only; time and material billing isn't included.
-   You can’t manually link a change order to a pro forma invoice line or manually split one pro forma invoice line between multiple change orders and the original project budget.

**Parent topic:**[Tracking Changes to the Project Budget](../UserGuide/Projects_CO_Mapref.md)

