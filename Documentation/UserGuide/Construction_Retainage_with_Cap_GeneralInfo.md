# Retainage with a Cap: General Information {#_5cee2842-f3eb-4d5e-9a9a-d84a294b39e0 .concept}

In Acumatica ERP Construction Edition, you can configure a project with contract cap retainage to be able to define the maximum retainage amount that can be held for the project. For a project with contract cap retainage, you perform progress billing, and the particular invoice amount is retained until the specified retainage limit is reached.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Learn how to configure a project with a contract cap
-   Learn how the contract cap retainage is calculated
-   Create pro forma invoices with retainage for the project until the retainage cap is reached
-   Release the retainage for the project for multiple project budget lines
-   Mass-process retainage invoices

## Applicable Scenarios { .section}

You configure a project with contract cap retainage when it is necessary to specify the maximum retainage amount that can be held for the project. When you bill this project, the retainage is withheld for the invoice lines until the specified contract cap is reached.

## The Application of Retainage with a Contract Cap {#section_it2_vcv_qmb .section}

Construction projects with contractual agreements are typically billed based on the progress of the work; that is, the customer generally has to make partial payments to the general contractor as the work progresses. Requests for payments are prepared periodically—for example, monthly—and include the cost of the work accomplished since the previous payment to the general contractor was made.

In accordance with the terms of the project, the customer usually retains a prescribed percentage of each progress payment being made; a typical scenario is billing a project with contract cap retainage, which means that the retainage is being withheld until it reaches the agreed-on amount \(which is typically specified as a percentage of the total project amount\). After that, if the work is progressing and the customer is satisfied, the subsequent progress payments are made in full. The accumulated retainage is held by the customer until the work receives final certification by the architect. Once the customer accepts the project, the final payment, which includes the accumulated retainage, is made to the general contractor.

When you bill a project for which contract cap retainage is configured, the selected contract cap retainage is applied to the project when you bill it until the cap is reached. The system calculates retainage by using the following formula:

`Retainage Amount = Amount to Invoice * Retainage %`

After the cap has been reached and the total retained amount held for the project, which is specified on the **Summary** tab \(**Retainage** section\) of the [Projects](PM_30_10_00.md) \(PM301000\) form, is at its maximum, no new retainage amount is calculated for further invoices created during project billing. The **Total Retained Amount** held for the project is reallocated between the invoice lines, based on their weight and retainage capacity. That is, the invoices have the same total allocated retained amount but with different portions of it in the invoice lines \(which are allocated to the lines based on the calculated line weight\).

On the [Release AR Retainage](AR_51_00_00.md#) \(AR510000\) form, you can gradually release the retainage held to clear the unreleased retainage balance held on the AR invoice lines; this in turn causes decreases of the **Retained Amount** in the revenue budget lines on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form.

The total retainage amount held for the project stays the same across all the invoices prepared for the project, unless a change order that affects the project revenue budget has been released. If you configure the project to include change orders in the retainage calculation—that is, if the **Include CO** check box is selected on the **Summary** tab of the [Projects](PM_30_10_00.md) form—the contract total, the completed percentage, and the cap amount are recalculated in accordance with the changes in the revenue budget that have been introduced by the released change orders.

## Calculation of Retainage Amounts {#section_tsd_ydv_qmb .section}

In a pro forma invoice prepared on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form for a project with contract cap retainage, the system calculates the **Allocated Retained Amount** \(that is, the amount of retainage that is considered to be held for the related revenue budget line in this pro forma invoice\), by using the following formula:

`Allocated Retained Amount = (Total Retained Amount - Total Released Retainage) * Line Weight`

In this formula:

-   `Total Retained Amount` is the sum of the retained amounts for all revenue budget lines of the project.
-   `Total Released Retainage` is the sum of the amounts of the released AR retainage documents that are related to the project.

Once the contract cap is reached, in the subsequent invoices, the system reallocates the accumulated retainage amount of each billing line based on a line weight calculation. For each pro forma invoice line, `Line Weight` is calculated as follows:

`Line Weight = (Amount to Invoice + Previously Invoiced Amount) / Total Completed`

In this formula, `Total Completed` is the sum of the `Amount to Invoice` and `Previously Invoiced Amount` amounts for all pro forma invoice lines.

## Retainage in AIA Reports {#section_rn5_wdv_qmb .section}

The calculated **Allocated Retained Amount** of a pro forma invoice line is shown in the **Retainage Held** column in the continuation sheet of an American Institute of Architects \(AIA\) report: in Acumatica ERP Construction Edition, [AIA Report](PM_64_40_00.md) \(PM644000\) or [AIA Report with Quantity](PM_64_45_00.md) \(PM644500\) report. In the AIA report generated for a project with contract cap retainage, the retainage held amount is equal to the allocated retained amount from the pro forma invoice that was calculated by using the formula above.

**Attention:** In projects with retainage without contract cap, a pro forma invoice prepared for a project does not include the allocated retained amount. In the AIA report prepared for such a project, the retainage held amount is equal to the **Retainage Amount** of the pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form.

The total retainage amount on the cover sheet of the AIA report is calculated as the sum of the held retainage amounts on the AIA continuation sheet. Once the retainage is released, the released retainage amount is included in the current payment due amount.

**Parent topic:**[Billing a Project with a Retainage Cap](../UserGuide/Construction_Retainage_with_Cap_Mapref.md)

