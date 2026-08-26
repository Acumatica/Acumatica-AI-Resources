# Customer Statements: Statements for Specific Branches {#_220de609-69c4-4eb1-be75-d96d92ed8124 .concept}

If you need to configure the printing of customer statements for specific branches, you do it on the **Mailing &amp; Printing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. To do so, you perform the following instruction for each branch:

1.  In the **Default Sources** table, you add a row.
2.  In the **Mailing ID** column, you select *STATEMENT*.
3.  In the **Branch** column, you select the needed branch.
4.  In the **Report** column, you select the report on which customer statements will be printed for the branch—*AR.64.15.00* or *AR.64.20.00*.

With this system setup, to print statements you should use the [Print Statements](AR_50_35_00.md) \(AR503500\) form instead of the [Customers](AR_30_30_00.md) \(AR303000\) form.

**Attention:** On the [Print Statements](AR_50_35_00.md) form, a branch can be specified for which a statement should be printed. On the [Customers](AR_30_30_00.md) form, it is not possible to specify a branch. That is why the system cannot determine which branch settings to use and will instead use the following default settings:

-   If the **Multi-Currency Statements** check box is cleared, the [Customer Statement](AR_64_15_00.md)\(AR641500\) report will be printed.
-   If the **Multi-Currency Statements** check box is selected, the [Customer Statement MC](AR_64_20_00.md) \(AR642000\) report will be printed.

Besides the branch-specific settings, on the [Accounts Receivable Preferences](AR_10_10_00.md) form, you can configure an additional setting without specifying a branch as follows:

1.  On the **Mailing &amp; Printing** tab, add a row in the **Default Sources** table.
2.  Leave the **Branch** column empty.
3.  In the **Report** column, select *AR.64.15.00* or *AR.64.20.00*.
4.  On the [Customers](AR_30_30_00.md) form, open the needed customer record.
5.  On the **Mailing &amp; Printing** tab, add a row in the **Mailings** table, and specify the following settings for the row:
    -   **Mailing ID**: *STATEMENT*
    -   **Branch**: Empty
    -   **Report**: *AR.64.15.00* or *AR.64.20.00*
    -   **Active**: Selected
    -   **Override**: Selected
6.  Click **Save**.

With these settings, the system will ignore the state of the **Multi-Currency Statements** check box when printing customer statements.

**Parent topic:**[Preparing Customer Statements](../UserGuide/Finance_Preparing_Customer_Statements_Mapref.md)

