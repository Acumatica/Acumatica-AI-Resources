# To Set Up a Dunning Letter Mailing {#_fa034fe5-7633-4012-801f-974405be58d7 .task}

You use the default mailing with the *DUNNINGLETTER* identifier to send dunning letters via email. To configure a mailing for a group of customers, you can create a customer class or use an existing class. In this case, the mailing configuration is copied to each customer account of this customer class.

## Before You Proceed {#section_ezd_hjv_vxb .section}

You should set up dunning process on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. For details, see [Dunning Process Setup: Implementation Activity](CreditPolicy_Dunning_Process_Setup_Implem_Activity.md).

Make sure that the text of the email template *DunningLetterNotification* \(used for the *DUNNINGLETTER* mailing\) complies with your corporate policies. To do this, open the template by using the [Email Templates](SM_20_40_03.md) \(SM204003\) form, and edit the template, if required. The look and feel of the attachment is defined with the [Dunning Letter](AR_66_10_00.md) \(AR661000\) report.

## To Configure a Dunning Letter Mailing for Customers of an Existing Customer Class {#section_hzd_hjv_vxb .section}

1.  Open the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.
2.  In the **Class ID** box, select the customer class you want to configure the mailing for.
3.  On the **Mailing &amp; Printing** tab, in the **Mailings** table, do the following:

    **Note:** The table may already have a row for the *DUNNINGLETTER* mailing with default settings. In this case, check that it is configured as described in the following substeps.

    1.  Add a row. In the **Mailing ID** column of the new row, select the *DUNNINGLETTER* mailing.
    2.  In the **Branch** column of the row, select the branch on behalf of which the emails for the mailing will be sent. Leave the **Branch** column blank to use the same mailing settings for all branches.
    3.  In the **Email Account** column, select the email account the mailing is to be sent from.
    4.  In the **Report** column, select the report to be used for generating the dunning letter document, which will be sent as an attachment.
    5.  In the **Notification Template** column, select the *DunningLetterNotification* notification template, which will be used to compose the body of the email.
    6.  In the **Format** column, select the attachment format. If the format specified in this mailing does not match the format preferences of a contact, the attachment will be sent in the format preferred by the contact.
    7.  Select the **Active** check box for the mailing.
4.  In the **Recipients** table, add the types of contacts to receive dunning letters.

    **Note:** The system will automatically load the actual email address that corresponds to the added contact type when a new customer account of this customer class is created. Select the attachment format preferred by the contact. Make sure the contact is active, and specify whether the contact should receive a blind carbon copy of the emails that will be generated for this mailing.

5.  On the form toolbar, click **Save**.

**Note:** You can adjust these mailing settings to serve the preferences of a particular customer by using the **Mailing &amp; Printing** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

After you complete these steps, you can prepare dunning letters and email them to inform your customers of invoices that are past due by using the [Prepare Dunning Letters](AR_52_10_00.md) and [Print/Release Dunning Letters](AR_52_20_00.md) forms.

**Parent topic:**[Setting Up the Dunning Process](../UserGuide/CreditPolicy_Dunning_Process_Setup_Mapref.md)

