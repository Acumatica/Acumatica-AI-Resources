# Taxes: General Information {#_a62bb501-be3a-46ec-a8f1-2928d23349fd .concept}

Each payroll-related tax \(whether it is of the employee withholding type or the employer type\) is represented by a payroll tax code. The tax code describes the type of tax, the jurisdiction it is associated with, the tax agency that receives the tax payments, and the specific tax location information necessary for the calculation of the tax by the Symmetry Tax Engine software. Many taxes require additional detailed information, as mandated by the specific government entity, and these details are entered and maintained through attributes associated with the specific tax code.

## Learning Objectives { .section}

In this chapter, you will learn how to create payroll-related taxes and assign the appropriate taxes to employees based on their work location or address.

## Applicable Scenarios { .section}

You configure payroll-related taxes if you want to process payroll documents with state withholding taxes and employer taxes calculated because the system will prevent you from calculating a paycheck if the relevant taxes are not assigned to the employee.

## Setting Up Taxes { .section}

By clicking **Update Taxes** on the form toolbar of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form, you download the latest tax details from the Symmetry tax engine, and then the system creates tax codes related to all employee addresses and work locations stored in the system. As a result, the **Tax Codes** tab on that form becomes populated with data. You need to perform this operation during the initial configuration of taxes in the system and then each time new tax information becomes available in the Symmetry tax engine—you will see a warning on the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) and [Payroll Batches](PR_30_10_00.md) \(PR301000\) forms if tax information needs to be updated in the system.

On the **Tax Codes** tab of the [Tax Maintenance](PR_20_80_00.md) form, all available taxes are listed in the table. When you select a tax in the **Tax Codes** table, its settings appear in the **Tax Settings** table. In the row of each tax code whose settings need to be updated or reviewed, a warning or an error icon is displayed, depending on whether the setting is marked as required. By clicking **Tax Details** on the toolbar of the **Tax Codes** table, you can open the **Tax Details** dialog box, which displays the details of the selected tax, such as the government-issued identification code for the employer and information from the tax engine.

On the **Global Tax Settings** tab of the [Tax Maintenance](PR_20_80_00.md) form, you can review and edit details for various employee settings used for taxation. The list of tax settings is loaded from the Symmetry tax engine and updated when you click **Update Taxes** on the form toolbar.

In the **Tax Settings** table on the **Tax Codes** tab \(for a tax selected in the **Tax Codes** table\) and on the **Global Tax Settings** tab, you assign values for tax settings. For each setting, you specify a default value in the **Default Value** column. You can also choose the level at which to apply this value by selecting one of the following options in the **Setting Level** column:

-   *Global*: The system assigns the same default value to all employees. It cannot be overridden. This option is the default one for most tax settings.
-   *Company*: The system assigns the same default to employees of all companies, which can be overridden at the company level.
-   *Branch*: The system assigns the same default to employees of all branches, which can be overridden at the branch level.
-   *Employee*: The system assigns the same default to all employees, which can be overridden at the employee level.
-   *EIN*: The system assigns the same default to all employees, which can be overridden at the EIN level.

    **Important:** The *EIN* option is available for only the following settings and taxes:

    -   The *Rate* setting of the FUTA tax
    -   The *Rate*, *Withholding Tax Agency*, and *Unemployment Tax Agency* settings of the SUTA tax

        *EIN* is also the only option available for these SUTA settings.


To override the default value for a setting of the *Company*, *Branch*, *Employee*, or *EIN* level, you click the row with the tax setting and then click **Configure Tax Settings** on the table toolbar. In the **Configure Tax Settings** dialog box, you can set individual values for each company, branch, employee, or EIN defined in the system that you have access rights to.

**Tip:** For a tax setting of the *Employee* level, you can also directly override the setting value for an employee on the **Tax Settings** and **Taxes** tabs of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

The system assigns a value of a tax setting defined on the [Tax Maintenance](PR_20_80_00.md) form to employees on the [Employee Payroll Settings](PR_20_30_00.md) form based on how the value is specified on the [Tax Maintenance](PR_20_80_00.md) form:

-   If you change the default value or the setting level, the system replaces all previously specified individual values with the new default. This default value is assigned to all employees when you save the changes on the [Tax Maintenance](PR_20_80_00.md) form.
-   If you override the default value for a specific employee, company, branch, or EIN using the **Configure Tax Settings** dialog box, the system assigns the specified value when you click **Save &amp; Close** in the dialog box. For a company, branch, or EIN, the value is applied to all employees associated with the entity.

After the taxes have been created and reviewed, you can click **Assign Taxes to Employees** on the form toolbar. As a result, the system assigns the relevant taxes to all employees based on their work locations and resident addresses, which are specified on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) form. \(For more information about work locations, see [Work Locations: General Information](config_Payroll_Work_Locations_GeneralInfo.md).\)

To assign taxes to an individual employee, you need to click the **Import Taxes** button on the **Taxes** tab of the [Employee Payroll Settings](PR_20_30_00.md) form. As a result, the system fills in the table in the left pane of the tab with the relevant taxes based on the work locations and the address specified for the employee.

## Using Custom Notes { .section}

To record a piece of information about a tax code or tax attribute and share it with other users, you can use custom text notes.

Each of the following tables has the Note column, which you can use to attach a custom text note to a particular line:

-   The **Tax Codes** table on the **Tax Codes** tab of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form
-   The **Tax Settings** table on the **Tax Codes** tab of the [Tax Maintenance](PR_20_80_00.md) form. A note added through this table is displayed for the same tax attribute in the **Company Notes** column of the **Tax Settings** table on the **Taxes** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form
-   The table on the **Global Tax Settings** tab of the [Tax Maintenance](PR_20_80_00.md) form. A note added through this table is displayed for the same tax attribute in the **Company Notes** column of the table on the **Tax Settings** tab of the [Employee Payroll Settings](PR_20_30_00.md) form
-   The table on the **Tax Settings** tab of the [Employee Payroll Settings](PR_20_30_00.md) form
-   The **Tax Settings** table on the **Taxes** tab of the [Employee Payroll Settings](PR_20_30_00.md) form

**Parent topic:**[Setting Up Taxes](../UserGuide/config_Payroll_Taxes_Mapref.md)

