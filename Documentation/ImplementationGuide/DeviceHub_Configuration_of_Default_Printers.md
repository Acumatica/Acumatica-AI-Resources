# Printers: Specification of Default Printers {#_db0abec8-d37a-4673-a04e-6284590d16f1 .concept}

If the DeviceHub application is installed and configured, the system administrator can specify various default printers in Acumatica ERP. This ensures that when a user prints a document, which corresponds to a specific Acumatica ERP report, the system will select the appropriate printer for users, branches, companies, and documents of particular functional areas.

This topic provides information about how to specify the default printers the system will use in this selection process and how the system selects a printer.

## Default Settings for Printing with DeviceHub { .section}

The table below shows the records and documents for which you can specify a default printer, the places you specify each default printer in Acumatica ERP, and information about the configuration. In Acumatica ERP, printed documents correspond to specific reports in the system.

|Target of Default Printer|Form and Tab|Configuration Information|
|-------------------------|------------|-------------------------|
|Specific reports printed by the signed-in user|[User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\), **Printing Settings** tab|Before you proceed, you need to create a mailing assigned to a report on the preferences form that corresponds to the report functionality. For example, for reports used to print purchasing documents, you create mailings and specify them on the **Mailing &amp; Printing** tab of the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.

 For each report for which a default printer should be specified, you add a row for the report and specify the following settings in the row:

 -   **Mailing ID**: The predefined or custom mailing that is assigned to the report
-   **Default Printer**: The printer to be used by default when this user prints the selected report
-   **Active**: Selected

|
|Carriers' labels|[User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\), **Printing Settings** tab|For each carrier for which you will generate labels, you add a row and specify the following settings in the row:

 -   **Mailing ID**: The predefined or custom mailing that is assigned to the report
-   **Default Printer**: The printer to be used by default when this user prints the selected report
-   **Ship Via**: The identifier of the carrier's tariff
-   **Active**: Selected

|
|Reports of the signed-in user|[User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\), **Printing Settings** tab|You select the printer in the **Default Printer** box above the table. This printer will be used for any report the user prints that does not have a report-specific printer specified.|
|Specific reports to print accounts payable documents|[Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\), **Mailing &amp; Printing** tab|You add a new row for each report and specify the following settings in the row:

 -   **Active**: Selected.
-   **Mailing ID**: The predefined or custom mailing that is assigned to the report.
-   **Default Printer**: The printer to be used by default for printing the selected report.
-   **Report**: The report that will printed.
-   **Branch** \(optional\): The branch for which documents should be printed with the specified default printer. If a branch is not specified, the printer is used as the default one for accounts payable documents of all branches.

|
|Specific reports to print accounts receivable documents|[Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\), **Mailing &amp; Printing** tab|For each report, you add a row and specify the following settings in the row:

 -   **Active**: Selected.
-   **Mailing ID**: The predefined or custom mailing that is assigned to the report.
-   **Default Printer**: The printer to be used by default for printing the selected report.
-   **Report**: The report that will printed.
-   **Branch** \(optional\): The branch for which documents should be printed with the specified default printer. If a branch is not specified, the printer is used as the default one for accounts receivable documents of all branches.

|
|Specific reports to print sales documents|[Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\), **Mailing &amp; Printing** tab|For each report, you add a row and specify the following settings in the row:

 -   **Active**: Selected.
-   **Mailing ID**: The predefined or custom mailing that is assigned to the report.
-   **Default Printer**: The printer to be used by default for printing the selected .
-   **Report**: The report that will printed.
-   **Branch** \(optional\): The branch for which documents should be printed with the specified default printer. If a branch is not specified, the printer is used as the default one for sales documents of all branches.

|
|Specific purchase report|[Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\), **Mailing &amp; Printing** tab|For each report, you add a row and specify the following settings in the row:

 -   **Active**: Selected.
-   **Mailing ID**: The predefined or custom mailing that is assigned to the report.
-   **Default Printer**: The printer to be used by default for printing the selected report.
-   **Report**: The report that will printed.
-   **Branch** \(optional\): The branch for which documents should be printed with the specified default printer. If a branch is not specified, the printer is used as the default one for purchase documents of all branches.

|
|Specific reports to print purchase requisitions and requests|[Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\), **Mailing &amp; Printing** tab|For each report, you add a row and specify the following settings in the row:

 -   **Active**: Selected.
-   **Mailing ID**: The predefined or custom mailing that is assigned to the report.
-   **Default Printer**: The printer to be used by default for printing the selected report.
-   **Report**: The report that will printed.
-   **Branch** \(optional\): The branch for which documents should be printed with the specified default printer. If a branch is not specified, the printer is used as the default one for purchase requisition documents of all branches.

|
|Reports printed by users signed in to the branch|[Branches](../UserGuide/CS_10_20_00.md) \(CS102000\)|On the **Branch Details** tab, you select the printer you want to specify as the default printer for the branch in the **Default Printer** box of the **Configuration Settings** section.|
|Reports printed by users signed in to the company|[Companies](../UserGuide/CS_10_15_00.md) \(CS101500\)|On the **Company Details** tab, you select the printer you want to specify as the default printer for the company in the **Default Printer** box of the **Configuration Settings** section.|

## The Priority of Printer Selection { .section}

When a user prints a particular document, the system selects the printer by searching for a default printer in the following order until it finds one specified \(at which point the search ends\):

1.  The default printer specified for the particular report and the signed-in user. If a default printer is specified for this report in the user’s settings, it is listed in the table on the **Printing Settings** tab of the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form.
2.  The default printer specified in the settings of the currently signed-in user. \(This setting is not report-specific.\) If this printer is specified, it can be found in the **Default Printer** box above the table on the **Printing Settings** tab of the [User Profile](../UserGuide/SM_20_30_10.md) form
3.  The default printer specified for the report to be printed and the functional area to which the report belongs. If such a printer is specified for the report, the system can find it in the table on the **Mailing &amp; Printing** tab of the functional area’s preferences form or from which the document is sent for printing.
4.  The default printer specified for the branch to which the user is signed in, which may be specified on the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form.
5.  The default printer specified for the user’s company, which may be specified on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.

**Note:** On each mass-processing form that provides a printing action, you can select the **Define Printer Manually** check box and then specify the printer to be used instead of the default one.

**Parent topic:**[Configuring Printers](../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md)

