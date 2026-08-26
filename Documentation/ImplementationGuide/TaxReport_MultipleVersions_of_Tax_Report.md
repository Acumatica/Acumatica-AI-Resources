# Tax Report Configuration: Multiple Versions of a Tax Report {#_f116cdc5-c391-4328-86c5-a2424f3bca1a .concept}

Acumatica ERP supports multiple versions of tax reports. If the format of a tax return is changed by tax authorities, you can create an amended version of a tax report for a specific tax agency based on the new requirements. You can prepare these modifications in advance and specify the date when they become valid. By using this functionality, you can prepare an amendment of a tax report for previous periods in which the old reporting settings were used.

For example, in February 2026, you can prepare a tax report for January 2026 to meet the 2026 tax regulations. At the same time, if needed, you can prepare an amendment for the tax report for December 2025 and use the old settings of the tax report for this amendment. You can run the tax reports for2025 and 2026 based on the reporting settings that are valid for the respective year.

## Creation of a New Version of a Tax Report { .section}

You create a new version of a tax report on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form as follows:

1.  In the Summary area, you select a tax agency.

    When the report settings are initially specified for a particular tax agency, the system inserts *1* specified in the**Report Version** box and the business date in the **Valid From** box. The version is 1 for the initial report configuration on the form and is incremented for each new version.

2.  On the More menu, you click one of the following commands:

    -   **Add New Version** if you want to create an empty version of the tax report for the selected tax agency. In the new version, the records on the **Reporting Groups** tab will be copied, but the records on the **Report Lines** tab will not be copied.
    -   **Copy Version** if you want to copy the selected report version and paste it as a new version for the selected tax agency. In the new version, the records on the **Report Lines** and **Reporting Groups** tabs will be copied too.
    The system inserts the new report version in the **Report Version** box. In the **Valid From** box, it inserts the current business date. The new version will become effective starting on this date.

3.  You update the settings on the **Report Lines** and **Reporting Groups** tabs and save the report version.

## Selection of a Report Version When Preparing and Releasing a Tax Report { .section}

On the [Prepare Tax Report](../UserGuide/TX_50_10_00.md) \(TX501000\) form, the process that you run uses the report version that corresponds to the tax period selected on that form.

On the [Release Tax Report](../UserGuide/TX_50_20_00.md) \(TX502000\) form, the process that you run uses the report version for which the tax report has been prepared on the [Prepare Tax Report](../UserGuide/TX_50_10_00.md) form.

For the selected tax agency, during both processes, the system applies the report version that has the following settings on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form:

-   The **Valid From** date is earlier than or the same as the end date of the selected tax period.
-   The **Report Version** is the highest of the tax agency's available versions.

If a tax report has multiple versions with a **Valid From** date that falls within the reporting period, the system will select the version with a **Valid From** date that is closest to the end date of the tax period.

## Support of Report Versions in Tax-Related Reports and Inquiries { .section}

When you run the [Tax Summary](../UserGuide/TX_62_10_00.md) \(TX621000\) or [Tax Details](../UserGuide/TX_62_05_00.md) \(TX620500\) report or use the [Tax Report Details](../UserGuide/TX_50_20_10.md) \(TX502010\) form, the system uses the report version specified in the **Report Version** box on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form for which a tax report has been prepared on the [Prepare Tax Report](../UserGuide/TX_50_10_00.md) \(TX501000\) form for the selected tax period.

**Parent topic:**[Tax Report](../ImplementationGuide/Taxes_TaxReport_Mapref.md)

