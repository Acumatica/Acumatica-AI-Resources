# Certified Projects: Fringe Benefits {#_3c277d50-70c2-4f1f-95e9-0a55b53ad829 .concept}

Specific types of employees that work on certified projects may have guaranteed fringe benefits that the organization is required to pay its employees. You use the **Fringe Benefits** tab of the [Certified Projects](PR_20_99_00.md) \(PR209900\) form to set up these fringe benefits as follows:

-   In the **Rates** table, you specify fringe benefit rates that should be added to the pay rates specified for particular combinations of labor item and project task on the **Earning Rates** tab. You do not link a rate to a particular project task, this rate will be used for all project tasks of the project.
-   In the **Benefits Reducing the Rate** table, you specify the benefits that the organization pays its employees and that may be used to offset the fringe benefit rates. That is, if the organization already pays the benefits required by the government contract, it can use these benefits to reduce the rate of fringe benefits so that it doesn't have to pay same benefits twice. Only benefits with a certified reporting type specified on the **Employer Contribution** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form can be added to the table.

If the **Benefit Code to Use for Fringe Rate** box in the Summary area of the tab is empty, the calculated fringe benefits will be included in the earning details of the paycheck—a separate earning line will be created for each combination of labor item, project, and project task on the **Earning** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form. If you specify a benefit code in the **Benefit Code to Use for Fringe Rate** box, the fringe benefits will be added to that benefit code, and you will be able to see this information on the **Deductions** tab of the [Paychecks and Adjustments](PR_30_20_00.md) form when the paycheck has been calculated.

**Note:** Only a benefit code with the *Certified Project* option selected in the **Associated With** box on the [Deduction and Benefit Codes](PR_10_10_60.md) form can be selected in the **Benefit Code to Use for Fringe Rate** box.

After the paycheck has been calculated, you can review the calculation details for the deductions and benefits related to certified projects on the **Certified Project** tab of the [Paychecks and Adjustments](PR_30_20_00.md) form.

## Annualization Requirements { .section}

Normally, it is required that the benefit that reduces the fringe rate is annualized. This means that the benefit rate is calculated as the benefit amount divided by the number of working hours within the pay period. For a weekly payment, the number of working hours within the pay period is calculated as the yearly number of working hours divided by the number of pay periods within the year, which is normally 52 weeks.

A benefit rate is annualized if the **Annualization Exception** check box is cleared for the benefit in the **Benefits Reducing the Rate** table on the **Fringe Benefits** tab of the [Certified Projects](PR_20_99_00.md) \(PR209900\) form.

If annualization is not required, you select the **Annualization Exception** check box for the benefit. In this case, the benefit rate will be calculated as the benefit amount divided by the total number of hours the employee spent on various certified projects within the pay period, as displayed in the table on the **Certified Project** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form.

Also, you can annualize the excess pay rate by clearing the **Excess Pay Rate Annualization Exception** check box in the Summary area of the **Fringe Benefits** tab of the [Certified Projects](PR_20_99_00.md) form, which is selected by default because the excess pay rate is already calculated as an hourly rate and usually there is no need to annualize it.

**Parent topic:**[Configuring Certified Projects](../UserGuide/config_Payroll_Certified_Projects_Mapref.md)

