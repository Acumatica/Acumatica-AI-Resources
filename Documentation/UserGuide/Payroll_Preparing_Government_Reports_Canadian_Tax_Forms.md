# Preparing Government Reports: Canadian Tax Forms {#_39076d64-a2d6-4a5b-832c-3306194dd328 .concept}

In Canada, an employer has to prepare T4 tax forms—and in Quebec, RL1 tax forms—and send them to the government on an annual basis. With these tax forms, the employer reports about the following:

-   Salary, wages \(including the notice about pay in lieu of termination\), tips or gratuities, bonuses, vacation pay, employment commissions, gross and insurable earnings of self-employed fishers, and all other remuneration the employer paid to employees during the year
-   Taxable benefits or allowances
-   Retiring allowances
-   Deductions withheld during the year
-   Pension adjustment amounts for employees who accrued a benefit for the year under a registered pension plan \(RPP\) or deferred profit sharing plan \(DPSP\)

If the *Canadian Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can create necessary tax forms for Canadian employees by using the [Prepare Tax Forms](PR_50_20_00.md) \(PR502000\) form.

## Preparing Tax Forms { .section}

The tax forms are prepared for all employees who received remuneration from the employer during the year if the following conditions have been met:

-   The employer had to deduct QPP contributions, EI premiums, PPIP premiums, or income tax from the remuneration.
-   The remuneration exceeded the amount of $500 CAD.

By using the [Prepare Tax Forms](PR_50_20_00.md) form, you can do the following:

-   Generate T4 and RL1 tax forms for every year for each relevant employee associated with any relevant legal entity available in the system.
-   Preview generated documents.
-   Generate corrected documents for selected employees.

    Because tax forms are generated automatically based on the data stored in the system, a generated tax form cannot be corrected directly on the [Prepare Tax Forms](PR_50_20_00.md) form. To correct a generated tax form, you need to update the relevant information in the system and then generate a correction document.


On the [Prepare Tax Forms](PR_50_20_00.md) form, you can review the following information. If a tax form has already been generated, the identifier of the employee's last published batch for submission is displayed in the **Published From** column, and all the batches for submission in which the employee is included are listed in the **Batch ID** column. In the **Tax Form** pane, the system displays a preview of the generated tax form for the employee that is selected in the table.

## Submitting Tax Forms { .section}

By using the [Tax Form History](PR_30_40_PL.md) \(PR3040PL\) form, you can review existing batches for submission that have been generated through the [Prepare Tax Forms](PR_50_20_00.md) \(PR502000\) form.

You need to click a link in the **Batch ID** column to open the [Batch for Submission](PR_30_40_00.md) \(PR304000\) form populated with the data of the selected batch.

By using the [Batch for Submission](PR_30_40_00.md) form, you can do the following:

-   Prepare the slips in XML format to submit them to the government authorities.
-   Generate PDFs of the tax forms included in the batch.
-   Publish or unpublish tax forms for selected employees. Marking a tax form as published indicates that it has been submitted to the government authorities.

After a tax form has been published, the employee that owns this form can access it and download its printable version by using the [My Payroll Documents](PR_40_50_00.md) \(PR405000\) form.

**Parent topic:**[Preparing Government Reports](../UserGuide/process_Payroll_Government_Reports_mapref.md)

