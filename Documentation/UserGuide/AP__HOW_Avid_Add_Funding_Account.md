# Optional: To Add a Funding Account

A funding account is a bank account that AvidXchange withdraws money from when it pays your vendors. Each funding account is mapped to a cash account in Acumatica ERP, and you can pay from that cash account only if the funding account has the *Active* status.

You add the first funding account before you enroll your organization, as described in [To Set Up and Enroll Your Organization in AvidXchange](AP__HOW_AvidXchange_Setup.md). This topic describes how to add another funding account after your organization has been enrolled; you onboard each account you add separately.

## Before You Proceed

Make sure that the **Onboarding Status** box of the *AVIDPAY* payment processor contains *Enrolled*. You can add a funding account only to an organization with the *Draft*, *Complete*, or *Enrolled* status.

## To Add a Funding Account

1.  Open the [External Payment Processor](AP_20_55_00.md) \(AP205500\) form.
2.  In the **Payment Processor ID** box, select *AVIDPAY*.
3.  On the **Funding Accounts** tab, click **Add Row** on the table toolbar. In the added row, specify the following settings:
    -   **Cash Account**: The cash account that you plan to pay from. The cash account must be in USD and must belong to a company located in the United States.
    -   **Bank Name**: The name of the bank where the account is held. The name can contain up to 22 characters.
    -   **Account Holder**: The name of the account holder. The name can contain up to 100 characters.
    -   **Routing Number**: The 9-digit routing number of the bank.
    -   **Account Number**: The account number, which can contain 4 to 17 characters. You can use digits, dashes, and spaces.
4.  On the form toolbar, click **Save**.

    The account is assigned the *Pending Onboarding* status, which appears in the **Status** column.

    **Tip:** While the status is *Pending Onboarding*, you can delete the funding account or edit its settings. After the account has been onboarded, you cannot delete it.

5.  In the row of the funding account, select the unlabeled check box. Then, on the table toolbar, click **Onboard Account**.
6.  On the form toolbar, click **Refresh**.

    The system retrieves the current status of the funding account from AvidXchange. AvidXchange does not update the status automatically, so you click **Refresh** whenever you want to check the progress. When AvidXchange has activated the account, the status in the **Status** column changes to *Active*.


**Parent topic:**[Integration with AvidXchange](../UserGuide/AP__CON_Integration_with_AvidXchange.md)

