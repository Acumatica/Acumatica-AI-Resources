# To Set Up a Connection with an Exchange Server {#_167404cb-a35f-4cda-9889-000e00e1492c .task}

To set up a connection with an Exchange server, you add an account for the Exchange Server instance to your Acumatica ERP instance by using the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form.

## Prerequisites { .section}

You have to set up a delegate mailbox to be used for synchronization between the Exchange server and the Acumatica ERP instance. The delegate must have full access to the mailboxes of the users whose accounts should be synchronized.

## To Add an Account for an Exchange Server { .section}

1.  Open the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form.
2.  In the **Name** box of the Summary area, type the name of the Exchange server account.
3.  In the **Login** box, enter the email account to be used for synchronization.
4.  In the **Authentication Method** box, select the *Basic Authentication* option.
5.  In the **Password** box, enter the password of the email account to be used for synchronization.
6.  In the **Default Sync Policy** box, select the synchronization policy to be used if a synchronization policy is not selected for an employee account.
7.  Optional: In the **Mail Server \(optional\)** box, specify the URL of your Exchange server instance.
8.  In the **Logging Level** box, select *Default*.
9.  On the form toolbar, click **Save** to save the account.
10. On the form toolbar, click **Test Account** to test the account settings.

    The green check box on the form toolbar indicates that the connection is set up.

11. Select the **Is Active** check box to allow synchronization with the Exchange server.
12. On the form toolbar, click **Save** to save the account.

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

