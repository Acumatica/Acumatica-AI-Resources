# Project Budget Control: Overrun Notifications During Document Entry {#_c17cd234-2ac9-1488-a687-fa3ccdaa1e16 .concept}

You can configure the system to notify a user if the amount in a line of the document they are entering would exceed the budget of the corresponding project budget line.

To do this, you select *Show a Warning* in the **Budget Control** box on the **General** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. When a user enters a project-related document, the system will generate a warning if a line amount exceeds the cost budget of the corresponding project budget line. These warnings can be generated when a user is entering any of the following documents:

-   A purchase order of the *Normal* or *Project Drop-Ship* type and the *On Hold* or *Pending Approval* status on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.
-   An AP bill with the *On Hold*, *Pending Approval*, or *Balanced* status on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   A change order with the *On Hold* or *Pending Approval* status on the [Change Orders](PM_30_80_00.md) \(PM308000\) form.

    **Important:** Change orders are available in the system if the *Change Orders* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For more information about the processing of change orders, see [Tracking Changes to the Project Budget](Projects_CO_Mapref.md).

-   A subcontract with the *On Hold* or *Pending Approval* status on the [Subcontracts](SC_30_10_00.md) \(PO301000\) form.

    **Important:** Subcontracts are available in the system if the *Construction* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For more information about the processing of subcontracts, see [Subcontracts: General Information](Construction_Subcontracts_GeneralInfo.md).


The warning message in a document line shows you how much the line amount exceeds the budget. The system compares the document line with the corresponding cost budget line of the project and shows you the following amounts in the warning:

-   *Budgeted*: The revised budgeted amount of the budget line.

    **Important:** If the project budget has no corresponding budget line with the same project budget key, the revised budgeted value of the line used to calculate overruns is *0*.

-   *Consumed*: The amount that has been spent already—that is, the sum of the actual amount and the committed open amount of the budget line.
-   *Document*: The total amount \(the **Ext. Cost** minus the **Discount Amount**\) of all the document lines that affect the same budget line, including the current document.
-   *Available*: The amount of the budget that is available for the document. The available amount is calculated as the difference between the *Budgeted* amount and the *Consumed* amount.
-   *Remaining*: The amount that exceeds the budget. The remaining amount is calculated as the difference between the *Available* and *Document* amounts.

For example, suppose that you have budgeted a cost of $400 for the project \(the budgeted amount\). You have already spent $150 \(the consumed amount\). When you create an AP bill for the project in the amount of $300 \(the document amount\) and specify the project budget key in the document line, the system will display the following warning.

*Budgeted: 400.00, Consumed: 150.00, Available: 250.00, Document: 300.00, Remaining: –50.00*

The warning doesn’t prevent you from processing the document; it just informs you that by processing the document, you will exceed the budgeted values.

You can see the list of all document lines that potentially could exceed the budget of a selected project on the [Potential Project Budget Overruns](PM_40_40_00.md) \(PM404000\) form.

**Parent topic:**[Controlling the Project Budget](../UserGuide/Projects_Budget_Control_Mapref.md)

