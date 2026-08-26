# To Create a System Email Account {#_703c2d6e-5e43-4122-896b-160f2c9d4aaf .task}

By using the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, you can create an email account to send and receive emails through Acumatica ERP. You can create as many system email accounts as you need and can even use an individual account for each specific purpose, but only one account can be set up as the default system email account to be used for sending automatic emails.

## To Create a System Email Account { .section}

1.  Open the [Email Accounts](SM_20_40_02.md) \(SM204002\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area of the form, do the following:
    1.  In the **Account Name** box, type the name of the system email account.
    2.  In the **Email Address** box, type the email address of the account that will be used as a system email account.
    3.  Optional: In the **Reply Address** box, type the email address that will be used for automatic replies.
4.  Open the **Service** tab.
5.  In the **Outgoing Mail Server** section of the tab, do the following:
    -   In the **Outgoing Mail Server** box, type the name of the server that will be used to send emails.
    -   In the **Outgoing Connection Encryption** box, select the type of encryption to be used for the outgoing mail server.
    -   In the **Outgoing Mail Port** box, type the number of the port to be used for the outgoing mail server.
    -   If the server should validate the **From** values of outgoing emails, select the **Server Validates From Address** check box.
6.  In the **Incoming Mail Server** section, do the following:
    1.  In the **Protocol** box, select the protocol to be used to connect to the incoming mail server.
    2.  In the **Incoming Mail Server** box, type the name of the server that will be used to receive emails.
    3.  In the **Incoming Connection Encryption** box, select the type of encryption for the incoming mail server.
    4.  In the **Incoming Mail Port** box, type the number of the port to be used for incoming mail server.
    5.  If you select the *IMAP* protocol, in the **Root Folder** box, you need to type the path to the folder that will be used as the root folder for storing emails.
    6.  In the **After Receiving** box, if you select the *IMAP* protocol, you need to specify the action that the system should perform after an email is received. You can select one of the following options:
        -   *Mark Email on Server as Read*: The system marks the email as read on the email server, regardless its read status.
        -   *Leave Email on Server Untouched*: The system does not change the read status of the email on the email server.
        -   *Delete Email on Server*: The system deletes the email on the email server, regardless its read status.
7.  In the **Authentication** section, do the following:
    1.  In the **Authentication Method** box, select *Basic Authentication*.
    2.  In the **Incoming Mail Username** box, type the name of the email account that will be used as a system email account.
    3.  In the **Incoming Mail Password** box, type the password to the specified email account.
    4.  If the outgoing server requires additional authentication, select the **My Outgoing Server Requires Authentication** check box.
    5.  If the system needs to use certain credentials to access the outgoing mail server, do the following:

        -   Select the **Log on Using** check box
        -   In the **Outgoing Mail Username** box, type the name of the account through which the system will access the outgoing mail server
        -   In the **Outgoing Mail Password** box, type the password to the account
        If you leave the **Log on Using** check box cleared, the credentials that you have specified for the incoming mail server will be used for authentication on the outgoing mail server.

8.  On the form toolbar, click **Save**, and then click **Test** to test the email account settings.

    If the system email account is configured correctly and the test completes successfully, a pop-up notification with a green check mark will appear in the upper-right corner of the form.

    **Note:** If the testing fails, you may have to check the security settings of the account that you want to use as the system email account.


## To Set Up the Default System Email Account { .section}

1.  Open the [Email Preferences](SM_20_40_01.md) \(SM204001\) form.
2.  In the **Default Email Account** box, select the system email account that you want to be used for sending automatic emails.
3.  Click **Save** on the form toolbar to save the changes.

    Now all emails sent on behalf of Acumatica ERP will be sent from this address.


**Parent topic:**[Configuring Email Accounts](../UserGuide/EM__con_Configuring_Email_Accounts.md)

