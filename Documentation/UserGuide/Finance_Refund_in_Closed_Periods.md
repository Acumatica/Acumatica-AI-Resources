# Finance: Creating a Refund for a Payment with a Closed Financial Period

In some situations, while working on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you may need to create a refund for a payment that was released in a closed financial period.

In this situation, the system automatically determines the correct financial period for the refund based on the current business date. This behavior applies when the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form and a valid open period is available for the current business date.

This topic describes how the system resolves the refund period and which actions may be required from a regular user or a user with the *Financial Supervisor* role, depending on the status of the financial period that includes the current business date.

## How the System Determines the Refund Period

When you initiate a refund on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system checks whether the original payment period is available for posting. If the period is inactive, locked, or closed, the system does not attempt to post the refund to the original payment period. Instead, it automatically assigns the current business date and the corresponding open financial period to the refund.

This behavior is consistent with how the system processes credit memos on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## Creating A Refund in the Open Financial Period

The actions required to create a refund depend on the status of the financial period that includes the current business date and on whether you are a regular user or user with the *Financial Supervisor* role.

If a valid open financial period is available for the current business date, you, acting as a regular user, can create and release the refund without any assistance from a financial supervisor. To create a refund, you do the following:

1.  On the [Payments and Applications](AR_30_20_00.md) form \(AR302000\) and select the payment for which you want to create a refund.
2.  On the form toolbar, in the More menu, click **Refund**.

    The system creates the refund with the current business date and assigns it to the corresponding open financial period.

3.  Review the refund and click **Release** to post the refund.

## Creating a Refund in the Closed, Locked, or Inactive Financial Period

If the financial period that includes the current business date is inactive, locked, or closed, the system displays a period restriction error when you click **Refund**. In this case, you need assistance from a user with the *Financial Supervisor* role to proceed.

Suppose you need to create a refund for the payment that was released in a closed financial period. To create the refund, you do the following:

1.  Open a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and click **Release**.

    **Important:** After you release the payment, a user with the *Financial Supervisor* role must close the financial period in which the payment was released. The **Refund** button becomes available on the form if no document has been applied to the payment.

2.  Open the released payment on the [Payments and Applications](AR_30_20_00.md) form, and click **Refund**.

    The system creates the refund and assigns it to the open financial period that includes the current business date.

3.  Click **Release** to post the refund.

**Parent topic:**[Processing Refunds](../UserGuide/Finance_ProcessingCustomerRefunds_Mapref.md)

