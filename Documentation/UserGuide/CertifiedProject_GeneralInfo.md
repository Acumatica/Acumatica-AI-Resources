# Certified Projects: General Information {#_4c5647d0-4102-4790-aedd-40c8c6c91ae8 .concept}

Certified projects are projects performed by private contractors for the government, such as a hospital construction project. A contract for a certified project determines guaranteed pay rates for different types of labor, deductions and benefits associated with the project, fringe benefits, and reporting requirements.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare the system for the configuration of certified projects
-   Set up certified projects
-   Specify relevant deductions and benefits
-   Configure fringe benefits
-   Configure certified reporting

## Applicable Scenarios { .section}

You configure certified projects in the system if your organization is awarded a contract for a construction project by the government.

## Configuration Prerequisites { .section}

Before you start configuring certified projects in payroll, you need to make sure that the following configuration steps have been performed in the system:

1.  The *Construction* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. With this feature enabled, you can mark a project as a certified job.
2.  The project accounting functionality has been configured in the system, as described in [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).
3.  Necessary labor items have been created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, as described in [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md).
4.  Labor cost rates have been configured on the [Labor Rates](PM_20_99_00.md) \(PM209900\) form, as described in [Labor Items: Labor Cost Rates](Non_Stock_Item_Projects_Labor_Costs.md).
5.  An active Aatrix account has been configured so that necessary government reports can be generated and filed for the organization.

After all prerequisites have been met and the necessary entities have been created, you can start setting up certified projects in the system.

## Setting Up Certified Projects { .section}

You set up certified projects by using the [Certified Projects](PR_20_99_00.md) \(PR209900\) form. On this form, you can open only a project with the **Certified Job** check box selected in the **Project Properties** section on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form; this check box becomes available on the form only after the *Construction* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

On the [Certified Projects](PR_20_99_00.md) form, you can set up a certified project as follows:

-   On the **Earning Rates** tab, you specify the pay rates based on employee work classification. For each type of labor involved in the project, you specify a labor item and the rate guaranteed by the federal contract. The rate may be applied to a particular project task or to all project tasks of the project. If the organization normally pays at a higher rate for the particular type of labor, the system will use the highest applicable rate when calculating the paycheck.
-   On the **Deductions and Benefits** tab, you specify the deductions and benefits that will be calculated only for the earning lines associated with the certified project. On this tab, you can add only deduction and benefit codes with the *Certified Project* option selected in the **Associated With** box on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

    For more information, see [Certified Projects: Deductions and Benefits](CertifiedProject_DeductionBenefitPackages.md).

-   On the **Fringe Benefits** tab, you specify the fringe benefit rate to be added to the pay rate for the particular type of labor specified on the **Earning Rates** tab. Also, you can specify the benefits that your organization already pays its employees so that the system will use them to offset the fringe benefits. The remaining fringe amount may be added as an earning line to the paycheck or put to a specific benefit code.

    For more information, see [Certified Projects: Fringe Benefits](CertifiedProject_FringeBenefits.md).


## Certified Reporting { .section}

Employees who work on certified projects must be paid hourly on a weekly basis so that they may be included in certified reporting. These settings are defined through the employee type and pay group that are specified for each employee on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

The *DOL WH-347 Report*, which is a federal report that you use to submit weekly payroll information, is generated through the [Government Reporting](PR_50_40_00.md) \(PR504000\) form by using the Aatrix service.

Also, users can use the [Certified Project Fringe Benefits by Employee](PR_64_10_90.md) \(PR641090\) report, which is a standard report, to review the following information for the specified period:

-   Prevailing rates for selected certified projects
-   Fringe rates associated with the projects
-   Benefits used to reduce the rates
-   Excess pay rates
-   Details about how the reduced fringe benefit rate is calculated

If the **File Empty Report** check box is selected for a certified project on the [Certified Projects](PR_20_99_00.md) \(PR209900\) form, Aatrix will be able to generate an empty *DOL WH-347 Report*. This setting may be useful if no employees were working on the certified project on a certain week but the company still needs to file a report on that project.

In Acumatica ERP, you can mark an employee as exempt from certified reporting at the employee class level or at the employee level by selecting the **Exempt from Certified Reporting** check box on the [Employee Payroll Class](PR_20_20_00.md) \(PR202000\) or [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form. If this check box is selected, none of the following will be applied to a new paycheck created for the employee or to a payroll batch generated for that employee:

-   Earning rates associated with a certified project
-   Fringe benefit rates
-   Deductions and benefits from the deductions and benefits package specified for a certified project

Employees with the **Exempt from Certified Reporting** check box selected are not included in the certified reports generated through the [Government Reporting](PR_50_40_00.md) form.

**Parent topic:**[Configuring Certified Projects](../UserGuide/config_Payroll_Certified_Projects_Mapref.md)

