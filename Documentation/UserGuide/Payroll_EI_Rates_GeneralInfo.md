# Canada’s Employment Insurance: General Information {#_a12917c3-ab71-c8d1-ed73-e6c7a6ca44bc .concept}

Canada’s Employment Insurance \(EI\) program offers reduced premium rates for eligible employers. By providing short-term disability or wage-loss insurance that meets the Canada Revenue Agency \(CRA\) requirements, you can qualify for lower EI contributions.

**Attention:** This functionality is available if the *Canadian Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Assign CRA payroll accounts to your companies or branches
-   Configure EI premium rates and assign them to employees
-   Process paychecks and generate T4 forms using CRA payroll accounts

## Applicable Scenarios { .section}

You set up CRA payroll accounts and configure EI premium rates if your company operates in Canada and pays employees salaries, wages, bonuses, tips, or provides taxable benefits.

## Assigning CRA Payroll Account Numbers { .section}

To start configuring EI premium rates, you assign CRA payroll account numbers to your companies and branches. You can assign multiple CRA payroll accounts to each entity. You can also assign the same CRA payroll account to multiple entities.

You assign CRA payroll account numbers at the company level if the company doesn’t file taxes by branch—that is, if the **File Taxes by Branch** check box is cleared on the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form.

For these companies, add the applicable CRA payroll account numbers on the **Canadian Tax Reporting** tab of the [Companies](CS_10_15_00.md) form.

Select each of the following check boxes for one of the CRA payroll accounts:

-   **Set as Default** to make the system assign the EI premium rate associated with this CRA payroll account to all employees of the company who do not have an EI premium rate specified
-   **T4A** to use the account by default for T4A forms

**Attention:** These default CRA payroll accounts will be used for legacy paychecks created in Acumatica ERP 2025 R2 and earlier versions that do not have a CRA payroll account assigned, ensuring these paychecks are linked appropriately for reporting purposes.

You assign CRA payroll account numbers at the branch level if the company files taxes by branch and the company branches require balancing—that is, if both of these conditions are met on the [Companies](CS_10_15_00.md) form:

-   The company type is *With Branches Requiring Balancing*.
-   The **File Taxes by Branch** check box is selected on the **Company Details** tab.

For the branches of this company, add the applicable CRA payroll account numbers on the **Canadian Tax Reporting** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form. Select the **Set as Default** check box for one of the CRA payroll accounts. The system will assign the EI premium rate linked to that CRA payroll account to all employees of the branch who do not have an EI premium rate specified. Select the **T4A** check box for one of the CRA payroll accounts to use it as the default for T4A forms.

## Configuring EI Premium Rates { .section}

Now that you’ve associated CRA payroll account numbers with companies and branches, you specify each account’s EI premium rate on the **EI Premium Rates** tab of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form. Only one rate can be specified per CRA payroll account.

When you save EI premium rates on the [Tax Maintenance](PR_20_80_00.md) form, the system assigns them to employees who have no EI premium rate specified on the **Tax Settings** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form. The system uses the default CRA payroll account of the employee’s branch or corresponding company to determine the EI premium rate. You can override this rate by selecting the needed EI rate name in the row with the *Employer’s EI Premium Rate* setting.

Specifying the EI premium rate for each employee is required. Without this setting, the employee’s paychecks can’t be calculated.

## Processing Paychecks { .section}

After you’ve performed the configuration steps described above, newly created employee paychecks correspond to the CRA payroll account number linked to the employee’s EI premium rate specified on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

The branch selected for the paycheck on the **Financial** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form must use the same CRA payroll number as the EI premium rate specified for the employee on the [Employee Payroll Settings](PR_20_30_00.md) form. Changing the branch affects only GL transactions.

To pay an employee using a different CRA payroll account number within the same company, you need to update the employee’s payroll settings and specify the EI premium rate that corresponds to the required CRA payroll account.

To pay an employee from a different company, you must create a new employee record and assign it to the appropriate branch. This ensures that Canada Pension Plan \(CPP\) and EI maximums are tracked separately for each business entity.

## Generating T4 Forms { .section}

You generate T4 forms by specifying the needed selection criteria on the [Prepare Tax Forms](PR_50_20_00.md) \(PR502000\) form, including the following:

-   **CRA Payroll Account Number**: The CRA payroll account for which you want to prepare T4 forms \(shown below\).
-   **Legal Entity for Payroll Tax Reporting**: The company or branch whose name and address appear on the T4 forms as the employer’s name and address \(also shown below\). Entities are listed only if they’re associated with the selected CRA payroll account.

To view the generated forms, you must have access to all companies and branches associated with the selected CRA payroll account. If you don’t have access to some of these entities, the T4 forms generated \(or to be generated\) for them will be hidden from the table. You will also not be able to prepare the tax forms, the **Prepare** command will be unavailable.

**Important:**

During the generation of T4 forms, if the system processes paychecks created in Acumatica ERP 2025 R2 or earlier versions that do not have a CRA payroll account associated with them, it uses the default CRA payroll account of the company or branch. This is the account with the **Set as Default** check box selected on the **Canadian Tax Reporting** tab of the [Branches](CS_10_20_00.md) \(CS102000\) or [Companies](CS_10_15_00.md) \(CS101500\) form.

This ensures that legacy paychecks are processed correctly.

If no default CRA payroll account is specified, legacy paychecks will appear in a T4 batch for all CRA payroll accounts linked to the company or branch. This may result in the T4 form being generated for each CRA payroll account.

**Parent topic:**[Canada’s Employment Insurance](../UserGuide/Payroll_EI_Rates_mapref.md)

