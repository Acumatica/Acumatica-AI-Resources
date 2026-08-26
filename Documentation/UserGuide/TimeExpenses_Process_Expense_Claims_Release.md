# Expense Claims: Expense Claim Release {#_22614bb9-8200-43ab-989a-478cdd9b5f67 .concept}

If the *Expense Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, a claim can be released if it has the *Approved* status.

## Releasing of Expense Claims { .section}

You can release expense claims in either of the following ways:

-   On the [Release Expense Claims](EP_50_10_00.md) \(EP501000\) form, you can release all listed claims at once by clicking **Release All** on the form toolbar. To release only particular claims, select the unlabeled check boxes for those claims and then click **Release**.

    **Tip:** You may not be able to edit or view the details of some claims on the [Release Expense Claims](EP_50_10_00.md) \(EP501000\) form due to user access restrictions.

-   On the [Expense Claims](EP_30_10_30.md) \(EP301030\) form, select the reference number of the approved expense claim that you want to release. Then click **Release** on the form toolbar to release it.

When you release an expense claim, the system generates an accounts payable bill to reimburse the employee. If the financial period specified for the claim in the **Post to Period** box on the **Financial** tab of the [Expense Claim](EP_30_10_00.md) \(EP301000\) form is closed in the accounts payable subledger and posting to closed periods is not allowed, you need to specify an open period to be able to release the expense claim. If you do not, an error occurs during the release. The system posts the resulting bill to the selected period, which is also copied to the **Post Period** box on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form for the bill.

## Billing Expense Claims for Projects { .section}

If the employee has incurred the expenses while working on a project for a customer, you can bill the customer by using the [Bill Expense Claims](EP_50_20_00.md) \(EP502000\) form. In this case, the system generates an invoice for the customer in the same amount as the bill for employee reimbursement. On the [Bill Expense Claims](EP_50_20_00.md) form, each record relates to a single customer; thus, all unbilled claim lines that are marked as billable and have the same customer will be included in one invoice.

If you run billing on the [Bill Expense Claims](EP_50_20_00.md) form, for an expense claim with mixed billable lines \(that is, lines with positive and negative amounts\), the type of the document prepared for the customer depends on the total claim amount:

-   If the total claim amount for the billable lines is positive or *0*, the system generates an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
-   If the total claim amount for the billable lines is negative, the system generates an AR credit memo on the [Invoices and Memos](AR_30_10_00.md) form. In the created credit memo, the system fills in the credit terms as follows, depending on the state of the **Use Credit Terms in Credit Memos** check box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   If the check box is selected, the system inserts the credit terms copied from the customer's settings.
    -   If the check box is cleared, the system leaves the **Terms** box of the [Invoices and Memos](AR_30_10_00.md) form empty.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

