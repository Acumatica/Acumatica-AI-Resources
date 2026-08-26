# Taxes in Projects: Inclusive Taxes in AR Documents {#_aaeb6302-1e20-4c7d-9a47-589811e616e4 .concept}

An inclusive sales tax calculated at the document level is a tax that is extracted from the document amount but is not the total of the taxes calculated for the document lines. The following sections explain how you track inclusive taxes in project-related documents.

## Configuration of Inclusive Taxes { .section}

You configure this type of sales tax by performing the following general steps:

1.  On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you define the Tax Expense account and map it to an account group of the *Expense* type.
2.  On the [Taxes](TX_20_50_00.md) \(TX205000\) form, you create a tax of the *Sales* type with the *Inclusive Document-Level* calculation rule, and you specify the Tax Expense account in the tax settings.
3.  On the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form, you specify the tax rounding gain and loss accounts to which any tax rounding differences will be posted.

For more information, see [Invoices with Inclusive Sales Taxes: General Information](Taxes_Invoices_with_InclusiveSalesTax_GeneralInfo.md).

## Inclusive Taxes in Pro Forma Invoices { .section}

If inclusive taxes are configured in the system, when you run project billing for a project for which the **Create Pro Forma Invoice on Billing** check box is selected on the [Projects](PM_30_10_00.md) \(PM301000\) form, the system prepares pro forma invoices that may be subject to these inclusive taxes.

In the prepared pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, the amounts in the **Progress Billing Total** and **Invoice Total** boxes in the Summary area include the calculated inclusive taxes.

## Inclusive Taxes in AR Invoices { .section}

If inclusive taxes are configured in the system, when you run project billing for a project for which the **Create Pro Forma Invoice on Billing** check box is cleared on the [Projects](PM_30_10_00.md) \(PM301000\) form, the system prepares accounts receivable invoices that may be subject to these inclusive taxes.

On release of an accounts receivable document that has been prepared during project billing or has been created based on a pro forma invoice, the system updates the revenue budget lines of the project that have the same project budget key that is specified in the lines of the accounts receivable document being released.

The actual amounts on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form include the inclusive tax amounts. To review the inclusive tax amounts that were accumulated for each revenue budget line, you need to add the **Inclusive Tax Amount** column to the table by using the **Column Configuration** dialog box. With this column added to the table, you can analyze how the calculated taxes affect the calculation of the **Performance \(%\)** and **Completed \(%\)** values in the revenue budget line.

**Note:** The **Inclusive Tax Amount** column contains the full amount of the calculated inclusive tax, regardless of the state of the **Retain Taxes** check box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

If the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system ignores the *Gross* and *Net* tax calculation modes that are specified for the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form. It always inserts the *Tax Settings* tax calculation mode in the pro forma invoices that are created during project billing.

## Inclusive Taxes in Project Quotes { .section}

For project quotes on the [Project Quotes](PM_30_45_00.md) \(PM304500\) form, the calculation of inclusive taxes and the *Gross* tax calculation mode are supported. However, these changes do not affect the conversion of project quotes to projects because inclusive taxes are not copied from a project quote to the resulting project.

## Inclusive Taxes in Project and Construction Reports { .section}

The following values in the project and construction reports include the inclusive tax amounts along with the actual amounts:

-   In the [AIA Report](PM_64_40_00.md) \(PM644000\) and [AIA Report with Quantity](PM_64_45_00.md) \(PM644500\) reports:
    -   **Total Completed &amp; Stored to Date** \(on the *Application and Certification for Payment* page of the reports\)
    -   **From Previous Application**, **This Period**, **Total Completed** and **Stored to Date** \(on the*Continuation Sheet* page of the reports\)
-   In the [Project WIP](PM_65_15_00.md) \(PM651500\) report: **Period Billings** and **Billings to Period**
-   In the [Project WIP Detail](PM_65_25_00.md) \(PM652500\) report: **Period Billings** and **Billings to Period**
-   In the [Construction Bonding Report](PM_65_05_00.md) \(PM650500\) report: **Billed to Date** and **Period Billings**
-   In the [Project Profit Analysis](PM_65_60_00.md) \(PM656000\) report: **Billed to Date**
-   In the [Project Performance](PM_65_40_00.md) \(PM654000\) report: **Work Billed**
-   In the [Projects Pending Billing](PM_70_63_00.md) \(PM706300\) report: **Billed \(%\)**

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

