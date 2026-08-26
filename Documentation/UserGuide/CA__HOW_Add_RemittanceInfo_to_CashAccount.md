# To Add Remittance Information to a Cash Account {#_5961739b-82ed-4c77-8095-3535bfe31f11 .task}

You use the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form to fill in your remittance information for each cash account that you plan to use as a source of payments to vendors through the ACH network.

## Before You Proceed { .section}

Make sure that you have on hand the correct list of cash accounts you plan to use as sources of payments to vendors through the ACH network.

## To Add Remittance Information for a Cash Account { .section}

1.  Open the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.
2.  In the **Cash Account** box, select the identifier of the cash account.
3.  On the **Remittance Settings** tab, do the following:
    1.  In the **Payment Method** table, select the payment method you have configured for ACH payments. The elements of the selected payment method appear in the **Remittance Details** table.
    2.  Fill in the values of the elements as follows:

        -   As the **Beneficiary Account No.** value, type your company's account number with the ACH system.
        -   As the **Beneficiary Name** value, type the name of your company as it is registered in the ACH system.
        -   As the **Bank Routing Number \(ABA\)** value, type the routing number of the bank where your company has the account.
        -   As the **Bank Name** value, type the name of the bank where your company has the account.
        -   As the **Company Type** value, type the company type your company has been assigned in accordance with the classifications used in the ACH system. The options are 1 \(IRS Employer Identification Number\), 3 \(Data Universal Numbering Systems\), and 9 \(User Assigned Number\).
        -   As the **Company ID** value, type the company identifier your company has been assigned by the ACH system.
        If the selected payment method is configured to export payments to ACH balanced file, the remittance information additionally contains the following parameters needed to generate the offset record:

        -   As the **Offset ABA/Routing \#** value, type the routing number of the bank where your company has the account.
        -   As the **Offset Account \#** value, type an offset account number.
        -   As the **Offset Description** value, type an offset account description.
        **Tip:** We recommend that you contact your bank to verify information needed to generated the offset record.

4.  On the form toolbar, click **Save**.
5.  Repeat Steps 2–4 for each cash account that you plan to use as a source of payments to vendors through the ACH network.

**Parent topic:**[Setting Up U.S. ACH Payment Processing](../UserGuide/CA__CON_Setup_US_ACH.md)

