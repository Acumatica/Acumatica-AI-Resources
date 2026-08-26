# Project Billing Preparation: Billing Limits {#_c17cd276-1245-4e6e-a687-fa3ccdaa1e16 .concept}

The following sections explain how you can set up billing limits for pro forma invoices.

## Configuring Billing Limits {#section_onv_qdl_g2c .section}

On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, you select the way the system controls the billing limits in the **Validate T&amp;M Revenue Budget Limits** box. The following options are available:

-   *Ignore*: If the billing limits are exceeded, the system shows a warning message for the pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, but the pro forma invoice can still be removed from hold and released.
-   *Validate* \(default\): If the billing limits are exceeded, the system shows an error message and blocks the processing until the pro forma invoice amount is within the limit. That is, you can save this pro forma invoice only with the *On Hold* status. To remove it from hold and release it, you have to adjust it to fit the limit.

To turn on the billing limit control for pro forma invoices of a particular project, you select the **Use T&amp;M Revenue Budget Limits** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. Then on the **Revenue Budget** tab, you define the billing limit amounts for the revenue budget lines of the project. For each revenue budget line for which you have decided to limit the billed amounts, you select the **Limit Amount** check box and specify the maximum billing amount in the **Maximum Amount** column. The system will validate these limit amounts in the pro forma invoices created for the project.

## Applying Limits to Pro Forma Invoices {#section_gcy_qdl_g2c .section}

If a time and material line is linked to a progress billing line, the system calculates the maximum amount that is currently available for billing the customer based on the billing limit amount of the corresponding revenue budget line that is related to the selected revenue task. If the time and material line has no revenue task specified, the system calculates the maximum billable amount based on the project task in this line.

On the **Time and Material** tab of the [Pro Forma Invoices](PM_30_70_00.md) form, the system applies the billing limit amounts to the pro forma invoice lines as a running total, starting from the first line in the table. The **Max Available Amount** is a running total that the system calculates for each line, starting from the topmost one, that has a nonzero **Max Limit Amount** by using the following formula.

`Max Available Amount = Max Limit Amount - (Actual Amount + (Draft Invoice Amount - SUM(Amount to Invoice)) + SUM(Amount to Invoice from Above))`

In this formula, the parameters have the following meanings:

-   `Actual Amount`: The **Actual Amount** of the corresponding revenue budget line on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form
-   `Draft Invoice Amount`: The **Draft Invoice Amount** of the corresponding revenue budget line on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   `Amount to Invoice`: The **Amount to Invoice** of each line of the pro forma invoice on the **Time and Material** tab that corresponds to the same revenue budget line
-   `Amount to Invoice from Above`: The **Amount to Invoice** of each line of the pro forma invoice on the **Time and Material** tab that corresponds to the same revenue budget line and is located above the current line on the **Time and Material** tab

For each line of the pro forma invoice, the system subtracts the **Amount to Invoice** from the **Max Available Amount** and uses the reduced amount as the available limit for the next line. Pro forma invoice lines for which the **Over-Limit Amount** is nonzero exceed the limit.

If no billing limit amount is defined for the revenue budget line of the project—that is, if the **Max Limit Amount** is *0*—the **Max Available Amount** of each corresponding pro forma invoice line is *0*.

On the **Time and Material** tab of the [Pro Forma Invoices](PM_30_70_00.md) form, you can rearrange lines in the table by dragging them to the appropriate positions, causing the system to apply the limit amounts to the needed lines of the invoice. You can also add to a pro forma invoice adjustment lines that do not originate from project transactions. Such lines are also included in the limit application and can decrease or increase the limit total.

**Parent topic:**[Preparing Projects to Billing](../UserGuide/Projects_Project_Billing_Preparation_Mapref.md)

