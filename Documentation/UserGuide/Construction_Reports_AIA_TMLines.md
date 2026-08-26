# Construction Reports: Time and Material Amounts in AIA Reports {#_1def97f2-f6a6-4eea-a92e-99955b7968f9 .concept}

In the construction industry, billing is typically based on the percentage of work completed during the billing period. However, project managers may decide to prepare the American Institute of Architects \(AIA\) reports based on the cost project transactions. The following sections describe the process for including time and material lines in AIA reports and the recommended project settings.

## Project Configuration { .section}

Before creating AIA reports based on time and material lines, you need to ensure that the following project settings are specified on the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   On the **Tasks** tab, a combined billing rule is assigned to the needed project tasks. The billing rule should include a progress billing step along with the time and material billing steps for all needed account groups. For more information, see [Billing Rules: General Information](Billing_Rules_GeneralInfo.md).
-   On the **Revenue Budget** tab, each progress billing line to which you plan to include time and material amounts should have *Amount* specified in the **Progress Billing Basis** column.
-   On the **Cost Budget** tab, each cost budget line that you plan to include in an AIA report is associated with a revenue budget line. That is, the task of the *Cost and Revenue Task* type or *Revenue Task* type is specified in the **Revenue Task** column of the line.

## AIA Reports with Time and Material Amounts {#section_gqt_psj_f2c .section}

To prepare an AIA report with time and material amounts for a project, you perform the following general steps:

1.  On the [Projects](PM_30_10_00.md) \(PM301000\) form or [Run Project Billing](PM_50_30_00.md) \(PM503000\) form, you run project billing for the project to prepare a pro forma invoice.
2.  In the prepared pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, on the **Time and Material** tab, you make sure that each line that you need to add to the AIA report has a revenue task specified in the **Revenue Task** column. In the lines with no revenue task specified, you either specify them manually or click **Update Empty Revenue Tasks** on the More menu to initiate mass assignment of the applicable tasks in the column.
3.  On table toolbar of the **Progress Billing** tab, you add the needed progress billing lines, if the lines were not added automatically during the billing procedure.

    As an alternative to manually entering progress billing lines, you can load all applicable lines automatically by clicking **Load Lines** on the table toolbar of the **Progress Billing** tab. The system loads the lines from the project’s revenue budget for which the following conditions are met:

    -   An active or completed project task of the *Revenue Task* or *Cost and Revenue Task* type is specified.
    -   The billing rule assigned to the project task includes the progress billing step.
    If a line with the particular project budget key already exists in the pro forma invoice, the system will skip adding it.

4.  On the **Time and Material** tab, you transfer the time and material amounts to the respective progress billing lines by doing either of the following:

    -   Selecting the **Include in Progress Billing** check box for the particular lines to be included in progress billing and thus in the AIA report
    -   Clicking the **Include in Progress Billing** button on the table toolbar to include all lines in progress billing and in the AIA report
    The amount of each time and material line that you have included in progress billing is added to the **Time and Material Amount** column of the respective line on the **Progress Billing** tab. On the **Time and Material** tab, the **Amount to Invoice** in the line becomes *0*.

    **Tip:** To remove previously added time and material lines from the AIA report, you either clear the **Include in Progress Billing** check box for particular lines or click the **Remove from Progress Billing** button on the table toolbar of the **Time and Material** tab. The system will move the amounts to be billed back to the lines of the **Time and Material** tab.

5.  You click **AIA Report** on the form toolbar to prepare the AIA report for the pro forma invoice. The resulting report includes the amounts of the time and material lines that you have included in progress billing.

## Limitations {#section_orl_zsj_f2c .section}

The following limitations currently apply to the functionality:

-   Time and material lines cannot be included in the progress billing lines that are billed by quantity.
-   Time and material lines with the *Hold Remainder* or *Write Off* status cannot be included in the progress billing.
-   Time and material lines that are based on project transactions that are subject to reversal by any allocation rule cannot be included in the progress billing.

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

