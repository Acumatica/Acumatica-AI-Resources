# Data Source Editor {#_28570e16-55c2-43b8-824a-eef6dc409139 .reference}

You use this dialog box to specify the data filtering criteria for the report. The report structure determines how the data filtering criteria is specified:

-   To specify the data filtering criteria for a row, on the [Row Sets](CS_20_60_10.md) \(CS206010\) form, open the data source editor by clicking the lookup control in the **Data Source** box of the required row.
-   To specify the data filtering criteria for a column, on the [Column Sets](CS_20_60_20.md) \(CS206020\) form, open the data source editor by clicking the lookup control in the **Data Source** box \(attribute of the lower table\).
-   To specify the data filtering criteria for a unit, on the [Unit Sets](CS_20_60_30.md) \(CS206030\) form, open the data source editor by clicking the lookup control in the **Data Source** box of the table area.
-   To specify the data filtering criteria for a whole report, on the [Report Definitions](CS_20_60_00.md) \(CS206000\) form, set the relevant options in the **Default Data Source Settings** section.

The **Data Source Editor** dialog box, shown below, includes pertinent elements and the following buttons: **OK**, which saves the choices you have entered; and **Cancel**, which discards the changes.

By using the data source editor, you can limit the data displayed in the report by using any of the elements described below.

|Element|Description|
|-------|-----------|
|**Ledger**|The code of the ledger for which data will be displayed in the report.|
|**Account Class**|The account class for which data will be displayed in the report. Only accounts in the account class will be included.|
|**Start Account**|The starting account number in the account range to be reported on.|
|**End Account**|The ending account number in the account range to be reported on.|
|**Start Sub.**|The starting subaccount number in the subaccount range, if you specify one, to be reported on.|
|**End Sub.**|The ending subaccount number in the subaccount range, if you specify one, to be reported on.|
|**Start Branch**|The starting branch in the branch range to be reported on.|
|**End Branch**|The ending branch in the branch range to be reported on.|
|**Start Period**|The starting financial period in the period range, if you specify one.|
|**Offset \(Year, Period\)**|The shift from the starting period specified by the **Start Period** value. In both **Offset** elements, positive offset numbers set the number of financial periods to be added to the **Start Period** and **End Period** values, while negative offset numbers set the number of financial periods to be subtracted from the **Start Period** and **End Period** values. Consider the following examples: -   Setting the *-1* number, shifts the starting period one period back from the period specified in the **Start Period** box.
-   Setting the *2* number, shifts the starting period two periods ahead from the period specified in the **Start Period** box.

|
|**End Period**|The ending financial period in the period range, if you specify one.|
|**Offset \(Year, Period\)**|The shift from the ending period specified by the **End Period** value. Consider the following examples: -   Setting the *-1* number, shifts the ending period one period back from the period specified in the **End Period** box.
-   Setting the *2* number, shifts the ending period two periods ahead from the period specified in the **End Period** box.

**Note:** The **Start Period**, **End Period**, and **Offset \(Year, Period\)** data filtering criteria are usually specified on different levels: the period values are set on the report level, and the offset values are specified for columns or rows.


|
|**Expand**|An option, present only if the **Data Source Editor** dialog box is opened on the [Row Sets](CS_20_60_10.md) \(CS206010\) form, that determines how data will be displayed. Select one of the following options: -   *Nothing*: The data related to the selected range of accounts and subaccounts will be displayed in a single row.
-   *Account*: The data for each account in the selected range will be displayed in a separate row. This increases the number of rows in the report.
-   *Sub*: The data for each subaccount in the selected range will be displayed in a separate row, increasing the number of rows in the report.

When the *Account* or *Sub* option is selected in this box, the **Row Description** box becomes available in the Data Source Editor dialog box \(below the **Expand** box\).

|
|**Row Description**|This box is available only if the *Account* or *Sub* option is selected in the **Expand** box.

 An option that determines the description that will be displayed in the selected row. Select one of the following options: *Not Set*, *Code*, *Description*, and *Code-Description*.

|
|**Amount Type**|The amount type to be used to display or calculate the values in the report lines. If *GL* is selected in the **Type** box of the related form, select one of the following options: -   *Not Set*: No specific amount type is defined for the report.
-   *Turnover*: The turnover amounts should be included in the report.
-   *Credit*: The credit amounts should be included in the report.
-   *Debit*: The debit amounts should be included in the report.
-   *Beg. Balance*: The beginning balance amounts should be used in the report.
-   *Ending Balance*: The ending balance amounts should be used in the report.
-   *Curr. Turnover*: The turnover amounts should be included in a foreign currency \(retrieved from the denominated accounts\).
-   *Curr. Credit*: The credit amounts in a foreign currency should be included \(retrieved from the denominated accounts\).
-   *Curr. Debit*: The debit amounts in a foreign currency should be included \(retrieved from the denominated accounts\).
-   *Curr. Beg. Balance*: The beginning balance amounts in a foreign currency should be used \(retrieved from the denominated accounts\).
-   *Curr. Ending Balance*: The ending balance amounts in a foreign currency should be used \(retrieved from the denominated accounts\).

If *PM* is selected in the **Type** box of the related form, select one of the following options:

-   *Not Set*: Unspecified amount type; the amount type should be taken from a set \(row set or unit set\) with a higher priority.
-   *Actual Amount*: The ending balance of the actual amount of the project budget for the specified period.
-   *Actual Quantity*: The ending balance of the project budget's actual quantity for the specified period.
-   *Amount Turnover*: The turnover of the project budget's actual amount for the specified period.
-   *Quantity Turnover*: The turnover of the actual quantity of the project budget for the specified period.
-   *Original Budgeted Amount*: The original budgeted amount of the project budget.
-   *Original Budgeted Quantity*: The original budgeted quantity of the project budget.
-   *Revised Budgeted Amount*: The revised budgeted amount of the project budget.
-   *Revised Budgeted Quantity*: The revised budgeted quantity of the project budget.
-   *Original Committed Amount*: The original committed amount of the project budget.
-   *Original Committed Quantity*: The original committed quantity of the project budget.
-   *Revised Committed Amount*: The revised committed amount of the project budget.
-   *Revised Committed Quantity*: The revised committed quantity of the project budget.
-   *Committed Open Amount*: The open \(not received yet\) amount of the original committed project budget.
-   *Committed Open Quantity*: The open \(not received yet\) quantity of the original committed project budget.
-   *Committed Received Quantity*: The received quantity of the original committed project budget.
-   *Committed Invoiced Amount*: The amount of the released invoices of the original committed project budget.
-   *Committed Invoiced Quantity*: The quantity of the released invoices of the original committed project budget.

|

**Parent topic:**[General Ledger Forms](../UserGuide/GL__GL_Form_Reference.md)

