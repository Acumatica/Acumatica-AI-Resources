# To Create a Deposit {#_1a4104b2-9f23-4aba-9527-0767d79aa63a .task}

You use the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form to create a deposit into a bank account. For details on bank deposits, see [Preparation of Deposits](CA__CON_Preparation_of_Deposits.md).

## Before You Proceed {#section_qhd_kjv_vxb .section}

Before you start creating a cash transaction, make sure that all the necessary entry types have been created on the [Entry Types](CA_20_30_00.md) \(CA203000\) form and associated with cash accounts on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form. For details on entry types, see [Entry Types](CA__CON_EntryTypes.md).

## To Create a Deposit {#section_shd_kjv_vxb .section}

1.  Open the [Bank Deposits](../Shared/../UserGuide/CA_30_50_00.md) \(CA305000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record** to create a new deposit.
3.  In the **Tran. Type** box, select *CA Deposit*.
4.  In the **Cash Account** box, select the cash account to which the deposit will be posted.
5.  In the **Document Ref.** box, enter the external reference number of the deposit \(that is, the reference number the financial institution has assigned to the deposit\).
6.  If needed, in the **Cash Drop Account** box, select the cash account from which you also want to deposit some amount to the bank account.
7.  If you have selected a cash drop account, in the **Cash Drop Amount** box, specify the amount that you want to deposit from the cash drop account.
8.  In the **Deposit Date** box, change the date, if needed.

    The **Fin. Period** box is filled in automatically, based on the selected document date.

9.  If needed, in the **Description** box, enter a brief description of the deposit.
10. On the **Payments** tab, click **Add Payment**. The **Add Payment to Deposit** dialog box opens.
11. In the **Add Payment to Deposit** dialog box, do the following:
    1.  If needed, in the **Clearing Account** box, select the clearing account where payments were recorded.
    2.  If needed, in the **Payment Method**, select the payment method used for recording payments.
    3.  In the **Date Range** boxes, change the start date and the end date of the time period for which you want to view payments, if needed.
    4.  In the table, select the payments that are being deposited by selecting the appropriate unlabeled check boxes. Alternatively, you can click the **Toggle Selection** button on the table toolbar to select all payments.

        The **Selected Count** box shows the number of selected payments and the **Selected Total** box shows the sum of amounts of the selected payments.

    5.  Click **Add &amp; Close** to exit the dialog box and add the selected payments to the **Payments** tab.
12. If needed, on the **Charges** tab, click **Add Row**, and for each charge that has been applied to the bank deposit specify the following settings:

    -   **Charge**: The ID of the entry type of this bank charge.
    -   **Payment Method**: The payment method of the deposited payments to which this charge should be applied.

        **Attention:** If a payment method is not specified for this charge, the charge will be applied to all payments except for those for which another charge is specified.

    -   **Chargeable Amount**: The amount to be used as a base for the charge.
    -   **Charge Amount**: The amount of the charge.
    **Tip:** For the clearing account associated with the bank cash account to which the deposit will be posted, you can also configure a charge rate that will be applied automatically by the system when you create a bank deposit for this clearing account.

13. On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Preparation of Deposits](../UserGuide/CA__CON_Preparation_of_Deposits.md)

