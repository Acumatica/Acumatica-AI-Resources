# Best Practices {#_fdb54c27-e494-4cf8-8fd8-7ce09ab7c79b .concept}

We recommend that you heed the following suggestions when you are developing an Analytical Report Manager \(ARM\) report.

## Proper Naming Conventions and Descriptions { .section}

You should develop naming conventions so that you can easily identify the report definitions, row sets, and column sets that are used together in the same reports. If you have multiple column sets that are used with the same row set in different report definitions, you can name the column sets with a prefix that helps you identify the row set with which each column set is used. For example, the names \(codes\) of the report definition, the row set, and the column set of each report can be similar. The codes of all the predefined reports—report definitions, column sets, row sets, and unit sets—start with *D*. For your reports, we recommend that you start the codes with any character except *D*.

Also, you should specify a report description that matches the report title. On the [Report Definitions](CS_20_60_00.md) \(CS206000\) form, specify a description that matches the title of the report in the **Site Map**section of this form. This will help you find the report when you select its report definition code.

## Creation of a Copy for Modification { .section}

If you want to modify a default report, you should create a copy of it, including the row set and the column set, and modify the copy. This way, the changes you make will not affect the existing reports.

## Frequent Saving and Reviewing { .section}

While you are modifying a report, we recommend that you regularly save each portion of your changes to the row set or the column set. For example, save the row set after you have added each new row.

You should review your report regularly to see the changes you have made. These reviews will ease troubleshooting, because you can detect issues sooner and trace them more easily to their causes.

## Codes Reserved for Future Use { .section}

When you are creating a report, you should reserve row codes—that is, omit a particular number or a range of numbers after each row code. For example, if the code of the first row of your row set is *0010*, omit the numbers *0011* through *0019*, and add the next row with the *0020* code. Similarly, you should then omit the numbers *0021* through *0029* and use the *0030* code for the next row, and continue using multiples of 10 as the codes.

The order of rows in a row set depends on their codes. If you don't specify any sorting conditions for the row set, the rows are printed in the report in the order in which they are listed in the row set. Reserving row codes gives you the ability to add new rows between existing ones. For example, if you decide to expand a row of an existing report, you will be able to add a subtotal after this row.

## Sorting Conditions { .section}

You should keep all rows with sorting conditions together in a particular row set. The location of rows with sorting conditions in the row set doesn't affect sorting conditions. We recommend that you add the rows with sorting conditions to the end of the row set and keep all conditions listed together for easier maintenance of the row set.

## Use of Templates for Quicker Review { .section}

We recommend that you save the parameters of a particular report, which are specified on the report form, as a template so that you can run the report quickly. For example, for test scenarios, you can save the report parameters to be used for testing as a default report template. Because you have created the default template, you can just open the report and then run it immediately without needing to remember and specify all the report parameters. You can use templates for other routine tasks as well.

You can also specify default values of the report parameters in the report definition. If you do, and the values were specified for testing purposes, remember to clear these default values when you finish developing the report.

## Account Classes { .section}

You may want to use account classes to aggregate the data of some accounts instead of using complicated masks. Selecting accounts by account classes is a flexible approach that is also easy to use and maintain. Moreover, the selection of data by account classes works faster than selection by account-subaccount ranges specified in the data source does.

When you define the chart of accounts or any time after, you can define the account classes for further use in analytical reports. To select a set of particular accounts in the data source of a report row or a report column, you can create an account class and assign this class to the needed accounts. You can define any number of custom account classes.

## Formulas and the Sign of the Trial Balance { .section}

You need to use appropriate formulas for the analytical reports if the sign of the trial balance is reversed. The **Sign of the Trial Balance** option, which is specified on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, defines how the trial balance is displayed on reports and inquiries:

-   If the sign of the trial balance is normal, the credit balances for liability and income accounts are displayed with the plus sign so that the following equation is adhered to: Assets + Expenses = Liabilities + Income.

    **Tip:** YTD Net Income is excluded from these equations.

-   If the sign of the trial balance is reversed, the credit balances for liability and income accounts are displayed with the minus sign so that the following equation is correct: Assets + Expenses + Liabilities + Income = 0. However, the reversed sign of the trial balance doesn't affect analytical reports, because analytical reports don't consider the type of accounts. That is, the second equation isn't correct for analytical reports, which always show the credit balance of liabilities and income with the positive sign.

You should use uppercase references to the codes of rows and units in formulas. The codes of rows in row sets and units in unit sets can be up to 10 alphanumeric characters. The letters of codes are always uppercase. Thus, it is very important to use the appropriate letter case of codes in formulas. For example, the expression `=@RowCode1+@RowCode2` in a formula would return an exception because lowercase letters are specified in the codes. In formulas, you have also to precede a row code and a unit code with the *@* character, such as `=@UNITCODE1+@UNITCODE2`.

However, you shouldn't use the *@* character with a row code or a unit code in functions. Thus, for example, you would use `=Sum('ROWCODE01', 'ROWCODE10')` in this function rather than *=Sum\(@ROWCODE01, @ROWCODE10\)*.

**Parent topic:**[Managing Analytical Reports](../UserGuide/GL__GL_ARM_Reports.md)

