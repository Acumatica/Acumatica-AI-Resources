# Customer Statements: General Information {#_eab5652c-c80d-4639-b4f3-39c91de333a6 .concept}

In Acumatica ERP, you can configure statement cycles to be used for collection procedures. At the end of a statement cycle, you prepare statements and send them to your customers. Statements provide customers with records of their financial activity for a specific period, including the ending balance. Customers can reconcile the balances of their accounts with the information in the statements.

## Learning Objectives {#section_ngd_hjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Prepare customer statements
-   Print customer statements

## Applicable Scenarios {#section_qgd_hjv_vxb .section}

You prepare and print customer statements in the following cases:

-   You want to remind your customers about outstanding invoices.
-   You want to inform them about the ending balance so that they can reconcile the balances of their accounts.

## Statement Cycle Settings {#section_sgd_hjv_vxb .section}

You use the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form to create new statement cycles and modify existing ones. For each statement cycle, you define the following:

-   The schedule: You can select any of the following **Schedule Type** options for generating statements:

    -   *Weekly*: Statements will be generated each week, on the day specified in the **Day of Week** box.
    -   *Twice a Month*: Statements will be generated twice a month, on the days specified in the **Day of Month 1** and **Day of Month 2** boxes.
    -   *Fixed Day of Month*: Statements will be generated each month, on the day specified in the **Day of Month 1** box \(such as *15* if billing occurs on the 15th day of each month\).
    -   *End of Month*: Statements will be generated on the last day of each month.
    -   *End of Financial Period*: Statements will be generated on the last day of each financial period of the current year—that is, on the **End Date** specified for the financial period on the [Master Financial Calendar](GL_20_10_00.md)\(GL201000\) form.
    **Tip:** You can prepare an on-demand statement on any date except for the date when the regular statement is prepared in the system.

-   The aging periods: You can set up five aging periods for each cycle, to group the sums of the balances of open invoices, overdue charges, and debit memos by the number of days they are past due. You use the **Aging Period \(Days\)** settings of the **Aging Settings** section of this form to define the maximum number of days past the due date for each aging period and the description of the period. If you want to use financial periods as the aging periods of the statement cycle, select the **Use Financial Periods for Aging** check box in this section. By default, documents are aged based on their due dates. If you want to age documents based on their document dates, you can select *Document Date* in the **Age Based On** box. The system also uses the aging period settings in Accounts Receivable aging reports, which you can analyze to identify potential cash flow problems.

    If you want aging periods to include the balances of credit memos and open payments, select the **Age Credits** check box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

-   The statement processing options: You can use the following check boxes to implement your company's policies:
    -   **Require Overdue Charge Calculation Before Statement**: If you select this check box, when you try to prepare statements, the system checks whether overdue charges have been calculated and, if not, issues a warning that overdue charges should be calculated before the statements are created.
    -   **Require Payment Application Before Statement**: If you select this check box, when you try to prepare statements, the system checks whether all customer payments are applied and, if not, issues a warning that payments should be applied to invoices before statements are created.
-   The overdue charges: The **Apply Overdue Charges** and **Overdue Charge ID** settings define, respectively, whether the calculation of overdue charges is required for customers assigned to the statement cycle and which overdue charges should be used; these settings apply only if the **Set Default Overdue Charge by Statement Cycle** check box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form is selected. If the check box is cleared, the overdue charges defined for the customer class are applied instead.

You can assign a statement cycle to a customer class by using the [Customer Classes](AR_20_10_00.md) \(AR201000\) form or directly to a customer by using the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Statement Types {#section_ygd_hjv_vxb .section}

Acumatica ERP offers two types of statements:

-   *Open Item*: The statement lists open documents of all types of the customer through the date when the statement was prepared. If a document is closed on a date earlier than or the same as the statement date, this document is not included in the statement.
-   *Balance Brought Forward*: The statement lists all documents recorded during the last statement cycle period. Also, the amount outstanding from the previous statement is shown at the beginning of the statement.

You can assign either statement type to customer classes and to individual customers. You use the **Statement Type** box to set this option for a specific customer class on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form and for an individual customer on the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Statement Processing Workflow {#section_bhd_hjv_vxb .section}

The statement processing workflow consists of the following stages:

-   Preparing statements \(required\). For details, see [Customer Statements: Process Activity](Finance_Preparing_Customer_Statements_Activity.md).
-   Viewing statements \(optional\).
-   Preparing on-demand statements \(optional\).
-   Regenerating statements \(optional\). For details, see [Regeneration of Statements: General Information](Finance_Regenerating_Customer_Statements_GeneralInfo.md).
-   Deleting the most recent statements of customers of the selected statement cycle \(optional\).
-   Printing statements \(optional\). For details, see [Customer Statements: Process Activity](Finance_Preparing_Customer_Statements_Activity.md).
-   Emailing statements \(optional\).

## Preparing Statements \(Required\) {#section_dhd_hjv_vxb .section}

Before you prepare statements, make sure that you have applied open payments from customers to the corresponding invoices \(if any\) and calculated any overdue charges to avoid incorrect calculation of aged balances. You can also run the payment application process for the customer accounts associated with the appropriate statement cycles, as described in [Auto-Applying Payments: Process Activity](Finance_AutoApplication_to_Documents_Activity.md).

Credit memos that have been created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form are listed in customer statements with their full amount, even if they have cash discounts. In other words, a cash discount does not reduce the amount of a credit memo included in a customer statement.

You use the [Prepare Statements](AR_50_30_00.md) \(AR503000\) form to prepare statements for all statement cycles or for only selected ones. The system prepares statements in the appropriate format required for printing them or sending them by email to customers. When statements are prepared, you can view them, regenerate them \(if, for instance, you have discovered that a document was missing\), delete the most recent statements of customers of the selected statement cycle \(if, for instance, you have generated them on the wrong future date\), print them, or send them by email.

Because the process of generating statements may require significant time, you should schedule it to be performed at the most convenient time.

**Attention:** If the process of statements preparation was interrupted for some reason, the system will prepare statements for all customer accounts selected during the next run of the process. If some customers were excluded from the statement generation, a warning message is displayed to inform you of this.

## Printing Statements \(Optional\) {#section_ihd_hjv_vxb .section}

You can print statements on paper to send them to customers by postal mail, by using the [Print Statements](AR_50_35_00.md) \(AR503500\) form. The **Print Statement** action marks processed statements as printed—that is, the **Printed** check box of each statement is selected automatically.

When a customer statement is printed on the [Print Statements](AR_50_35_00.md) form, the due date is printed for credit memos with credit terms. For credit memos without credit terms, the due date is not printed.

## Emailing Statements \(Optional\) {#section_khd_hjv_vxb .section}

You can generate emails with statements by using the [Print Statements](AR_50_35_00.md) \(AR503500\) form. The **Email Statement** action marks processed statements as emailed—that is, the **Emailed** check box of each statement is selected automatically. The system generates the body of the email and the attachment according to the settings of the *STATEMENT* mailing. For details, see [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md).

## Deleting Statements \(Optional\) { .section}

You can delete the most recent customer statements of the selected statement cycle by clicking the **Delete Last Statement** button on the form toolbar of the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form. Once the last customer statements are deleted, you can delete the statements that now have the latest date \(which became the most recent statements after the later customer statements were deleted\).

**Attention:** This button appears on the form only for users with the *Financial Supervisor* role assigned on the [Users](SM_20_10_10.md) \(SM201000\) form.

**Parent topic:**[Preparing Customer Statements](../UserGuide/Finance_Preparing_Customer_Statements_Mapref.md)

