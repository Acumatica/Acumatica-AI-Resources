# To Create a Payment Method for External Payment Processing {#_45075a57-7f99-4307-a782-dc120613b12e .task}

You create a payment method for external payment processing on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

## To Create a Payment Method for BILL { .section}

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings in the Summary area:

    -   **Payment Method ID**: A unique identifier of the payment method
    -   **Active**: Selected
    -   **Means of Payment**: *External Payment Processor*
    -   **External Payment Processor**: *BILLCOM*
    -   **Description**: A description of the payment method
    **Attention:** Notice that the **Use in AP** check box is selected automatically. The other check boxes in the Summary area are cleared and unavailable.

    Only two tabs are displayed on the form—**Allowed Cash Accounts** and **Settings for Use in AP**.

3.  On the **Allowed Cash Accounts** tab, click **Add Row** to add an allowed cash account for this method.
4.  In the **Cash Account** column, select the account number.
5.  Repeat the previous two steps for each needed cash account.
6.  Optional: On the **Settings for Use in AP** tab, click **Add Row** on the table toolbar and add each payment method detail.

    For the list of payment method details, see [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md).

7.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Setup of Integration with BILL](../UserGuide/AP__CON_BillCom_Integration_Setup.md)

