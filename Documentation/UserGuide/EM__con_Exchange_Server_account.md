# Configuration of Synchronization with Exchange Server {#_d6a60e2a-7e22-450a-815e-1e5c8625d470 .concept}

Acumatica ERP uses delegate access to connect to an Exchange server. For each delegate mailbox on your Exchange server, you create an account in your Acumatica ERP instance on the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form and specify the connection and synchronization settings.

**Tip:** The delegate must have full access to the managed mailboxes. For the server account, you also specify the synchronization and logging settings. For details on configuring delegate access in Exchange, refer to your Exchange Server documentation. For details on configuring delegate access in applications that synchronize with Microsoft Exchange, see the application documentation.

You can specify the quantity of records sent or received during each performed synchronization, limit the synchronized attachment size, and specify the synchronization policy to be used by default. Also, to speed up the connection, you can specify the URL of the mail server.

Additionally, you select which events will be recorded in the synchronization log. You can select one of the following logging levels:

-   *None*: Nothing is recorded.
-   *Default*: Errors and warnings are recorded.
-   *Informational*: Errors, warnings, and basic events are recorded.
-   *Verbose*: All events are recorded.

You can access the event log from the [Exchange Synchronization Process](SM_20_40_30.md) \(SM204030\) form. To view the event log, do the following:

-   In the table, select an employee, and then click **Synchronization Status** on the table toolbar.

For the detailed procedure that describes setting up an account for an Exchange server, see [To Set Up a Connection with an Exchange Server](EM__how_Add_Server.md).

**Important:** Two-factor authentication requires an application-specific password setup for the mailboxes to be used for Exchange integration. The following article describes how to setup application-specific password for Office 365: [Create an app password for Office 365](https://support.office.com/en-us/article/Create-an-app-password-for-Office-365-3e7c860f-bda4-4441-a618-b53953ee1183).

**Important:** Acumatica ERP does not support two-factor authentication for the primary account that is used for synchronization with Microsoft Exchange. We recommend that you use the primary account only to integrate Acumatica ERP with Microsoft Exchange.

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

