# To Track Customer Prepayments {#_a28ac434-d56d-4b50-9714-fdb0c89043b6 .task}

To track customer prepayments, you use a special liability account, the *prepayment account*, to record prepayments from customers.

**Note:**

If you want to set a default prepayment account to be used for each new customer a user creates, on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, specify the prepayment account and subaccount for each of the customer classes that might be used when a user creates a new customer.

You can change the prepayment account and subaccount for a particular customer on the [Customers](AR_30_30_00.md) \(AR303000\) form. The system credits this account by default when a user enters a new prepayment from the customer.

To view information about prepayments, you use the following forms:

-   [Customer Summary](AR_40_10_00.md) \(AR401000\): Displays prepayment balances
-   [Customer Details](AR_40_20_00.md) \(AR402000\): Shows prepayments from individual customers
-   [AR Balance by GL Account](AR_63_20_00.md) \(AR632000\): Displays all prepayments collected on the prepayment account

## To View Prepayment Balances {#section_ppl_4jv_vxb .section}

1.  Open the [Customer Summary](../Shared/../UserGuide/AR_40_10_00.md) \(AR401000\) form.
2.  On the Selection area, in the **Company/Branch** box, select the company or branch for which you want to view prepayments.
3.  In the **Period** box, select the financial period or leave the box blank to view all open prepayments.
4.  In the **AR Account** box, select the prepayment account.

    In the table, you can view the list of customers with the prepayment balances calculated for the selected criteria. The **Total Prepayments** box of the Selection area shows the total amount of customer prepayments calculated based on the selected criteria.


## To View Prepayments by Customer {#section_qpl_4jv_vxb .section}

1.  Open the [Customer Details](../Shared/../UserGuide/AR_40_20_00.md) \(AR402000\) form.
2.  In the **Company/Branch** box of the Selection area, select the company or branch for which you want to view prepayments.
3.  In the **Customer** box, select the customer whose prepayments you want to view.
4.  In the **AR Account** box, select the prepayment account.

    In the table, you can view the list of prepayments that match the selected criteria. The **Prepayment Balance** box of the Selection area displays the total amount of customer prepayments calculated based on the selected criteria.


## To View All Prepayments {#section_rpl_4jv_vxb .section}

1.  Open the [AR Balance by GL Account](../Shared/../UserGuide/AR_63_20_00.md) \(AR632000\) report.
2.  On the **Report Parameters** tab, specify the report parameters that fit your information needs.

    **Note:** If you leave the **Company/Branch** box blank, you'll get information on all branches.

3.  On the form toolbar, click **Run Report**.
4.  Find the prepayment account in the report to view all prepayments that fit the specified criteria.

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

