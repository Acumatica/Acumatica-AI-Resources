# Project Expense Reclassification: Limitations {#_798dfedc-c46a-4b80-bcd0-1481868800b7 .concept}

This topic describes criteria that may preclude the reclassification of an accounts payable bill and lists other possible limitations related to the bill reclassification process.

**Attention:** The ability to perform bill reclassification is granted to only users with the *Financial Supervisor* or *Project Accountant* role assigned to them on the [User Roles](SM_20_10_05.md) \(SM201005\) form.

## Accounts Payable Bills { .section}

A bill \(whether or not it is related to a project\) on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form cannot be reclassified if any of the following criteria are met:

-   The bill has applied retainage; the retainage has been released.
-   It is a retainage bill.
-   The bill has multiple-installment credit terms.
-   For the bill, a consolidated GL transaction has been generated and either the **Generate Consolidated Batches** check box was selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form or the **Post Summary on Updating GL** check box was selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   The GL transaction corresponding to the bill has been reclassified on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.
-   The bill has been created in migration mode.
-   The bill is linked to an expense claim \(that is, on the **Financial** tab, the **Original Document** box contains a link to the expense claim\).
-   The bill is linked to a service order or appointment.

A project-related bill cannot be reclassified if any of the following criteria are met:

-   The project transaction corresponding to the bill has been reallocated \(that is, the **Allocated** check box is selected in the project transaction line on the [Project Transactions](PM_30_40_00.md) \(PM301000\) form\).
-   The project transaction corresponding to the bill has been billed \(that is, the **Billed** check box is selected in the project transaction line on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form\).

## Individual Bill Lines { .section}

An individual bill line on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form cannot be reclassified if any of the following is true:

-   The **Deferral Code** column contains the deferral code.
-   The **PO Line** column contains the reference number of a purchase order line with a line type other than *Service*.
-   The **PO Number** column contains the reference number of a purchase order that is linked to a receipt.

## Bill Lines Linked to Commitments { .section}

If a bill line is linked to a commitment, the only columns available for editing in this line are **PO Line** and **Subcontract Line**. The following limitations apply to the reclassification of this line:

-   The bill line can be linked to another commitment line only if the inventory ID of the selected commitment line matches the value in the previously specified bill line \(or is empty, as is the case in the previously specified line\).
-   The inventory item selected in the bill line cannot be changed during the reclassification.
-   The empty **Inventory ID** column in the bill line cannot be filled in with a particular inventory ID during the reclassification.

## Update of Taxes in Taxable Bills { .section}

If the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the system does not automatically update the project-specific tax zone in a reclassified bill. If the tax zone and applicable taxes of a project-related bill require adjusting, you should reverse the bill instead of reclassifying it and create a new bill for another project instead.

If your system is integrated with the AvaTax service of Avalara or other specialized third-party software, the AP reclassification process does not send updated information about the general ledger accounts to the external tax provider. For an overview of integration with external tax providers, see [Setup of Online Integration with Avalara AvaTax](TX__con_Integrating_with_AvaTax.md).

**Parent topic:**[Reclassifying Project Expenses](../UserGuide/Projects_Reclassifying_APBill_Mapref.md)

