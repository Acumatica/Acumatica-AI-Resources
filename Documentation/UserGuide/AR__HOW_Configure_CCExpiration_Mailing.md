# To Set Up a Mailing About Credit Card Expiration {#_42692205-3480-4d86-8e2f-737a36ae0fab .task}

You use the default mailing with the *CCEXPIRENOTE* identifier to notify customers about their credit card expiration. You can create or use an existing customer class that groups customers using credit cards as default payment method and configure the mailing by using the [Customer Classes](AR_20_10_00.md) form. In this case, the mailing configuration is copied to each customer account of this customer class, except accounts whose mailing settings have been modified specifically for a customer \(overridden\).

## Before You Proceed {#section_cxs_4jv_vxb .section}

Make sure that the text of the email template *CCARDEXPIRATION* \(used for the *CCEXPIRENOTE* mailing\) complies with your corporate policies. To do this, open the template by using the [Email Templates](SM_20_40_03.md) \(SM204003\) form and edit the template if required.

## To Configure Notifications About an Expiring Card for a Customer {#section_exs_4jv_vxb .section}

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select the customer you want to configure the mailing for.
3.  On the **Mailing &amp; Printing** tab, in the **Mailings** table, do the following:

    **Note:** The table may already have a row for the *CCEXPIRENOTE* mailing with default settings. In this case, check that it is configured the way it is described in the following substeps.

    1.  Add a row. In the **Mailing ID** column of the new row, select the *CCEXPIRENOTE* mailing.
    2.  Check the value in the **Branch** column of the row to confirm whether you intend to use the mailing for all branches \(if the column is empty\) or for the specific branch selected in the column.

        **Note:** The **Branch** column is read-only. If a branch was selected for the mailing on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, this branch is associated with the mailing for this customer.

    3.  In the **Email Account** column, select the email account the mailing is to be sent from.
    4.  In the **Notification Template** column, select the *CCARDEXPIRATION* notification template, which will be used for mailing body.
    5.  Select the **Active** check box for the mailing.
4.  In the **Recipients** table, add the types of contacts to receive notifications about card expiration. The system automatically loads an actual email address that corresponds to the added contact type. Make sure the contact for mailing is active, and specify whether the contact should receive a blind carbon copy of the emails that will be generated for this mailing.

    **Note:** You are configuring the list of recipients for the currently selected mailing. Check that the respective mailing row is highlighted when you are configuring the list of recipients.

5.  On the form toolbar, click **Save**.

After you complete these steps, you can send an email to the customer, to notify customer contacts about expiring credit cards, by using the [Notify About Expiring Cards](AR_51_20_00.md) form. For details, see the [To Notify Customers About Expiring Cards](AR__how_Notifying_Customers_About_Expiring_Cards.md).

**Parent topic:**[Configuring Predefined Mailings for Customers](../UserGuide/Finance_PredefinedMailings_for_Customers_Mapref.md)

