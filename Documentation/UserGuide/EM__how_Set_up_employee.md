# To Configure Synchronization for the Employee Accounts {#_290d3129-0197-4acd-aead-1565d702d6b7 .task}

You associate the employee account with the Exchange Server account to be used for synchronization by using the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form. The synchronization settings are defined by the synchronization policy you assign to the employee account.

**Note:** Each newly created Exchange Server account must be initiated on the Exchange side before it can be synchronized with an employee account in Acumatica ERP. Also, the **Send on behalf** permission must be assigned to each of the mail accounts on the Exchange side.

For more information on Exchange Server accounts within Acumatica ERP, see [Configuration of Synchronization with Exchange Server](EM__con_Exchange_Server_account.md). For more information on synchronization policies, see [Synchronization Policies](EM__con_Synch_Policies.md).

## To Configure Synchronization for Employee Accounts { .section}

1.  Open the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form.
2.  In the **Name** box, select the Exchange Server account to be used for synchronization.
3.  Make sure that the account is active \(the **Is Active** check box should be selected\).
4.  On the **Mailboxes** tab, do the following for every employee for whom you want to configure synchronization:
    1.  In the table, select the **Sync Account** check box in the row with the employee.
    2.  In the **Policy Name** column, select a synchronization policy.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Synchronizing Acumatica ERP with Microsoft Exchange Server](../UserGuide/EM__mng_Exchange_server.md)

