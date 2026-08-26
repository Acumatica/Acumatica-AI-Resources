# Project Invoice Correction: Credit Memos for Projects {#_60390b47-317e-4bf7-bf9b-9554c7c6b09b .concept}

To correct the actual amounts of a project that has been overcharged during the previous billing, you can create a credit memo for the project, either manually or during the project billing procedure.

## Project Billing with Credit Memo { .section}

If on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, the **Create Pro Forma Invoice on Billing** check box is selected for the project, the system creates a credit memo on release of the pro forma invoice if the total amount of the pro forma invoice is negative.

During the billing of each processed project, the system creates a credit memo on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form if both of the following conditions are met for the project on the [Projects](PM_30_10_00.md) form:

-   On the **Summary** tab, the **Create Pro Forma Invoice on Billing** check box is cleared.
-   The project has a negative **Pending Invoice Amount Total** on the **Revenue Budget** tab.

## Credit Terms in Credit Memos { .section}

The system fills in the credit terms for the credit memo as follows:

-   If the project has credit terms specified in the **Terms** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form and the **Use Credit Terms in Credit Memos** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the terms are copied from the project to the credit memo.
-   If the **Terms** box is empty for the project and the **Use Credit Terms in Credit Memos** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) form, the terms are copied from the customer's settings to the credit memo.
-   If the **Use Credit Terms in Credit Memos** check box is cleared on the [Accounts Receivable Preferences](AR_10_10_00.md) form, the **Terms** box of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form is empty for the credit memo.

For details on the calculation of cash discounts in the generated documents, see [Setup and Calculation of Cash Discounts](AR__con_Cash_Discounts.md).

**Parent topic:**[Correcting Project Invoices](../UserGuide/Projects_Correcting_Project_Invoices_Mapref.md)

