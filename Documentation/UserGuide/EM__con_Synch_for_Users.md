# Synchronization of User Records in Acumatica ERP with Exchange Mailboxes

Managing synchronization with Exchange Server includes the following basic tasks, described in this topic:

-   Selecting the employee accounts for which synchronization is to be performed
-   Scheduling synchronization

## Employee Account Configuration

You configure synchronization for an employee account by associating the employee account with the Exchange server account and assigning a synchronization policy for the employee account. For details, see [To Configure Synchronization for the Employee Accounts](EM__how_Set_up_employee.md). For more information about synchronization policies, see [Synchronization Policies](EM__con_Synch_Policies.md).

After you configure the employee account, you can perform synchronization manually to check the settings, as described in [To Set Up a Connection with an Exchange Server](EM__how_Add_Server.md).

## System Email Accounts for Synchronization with Exchange Server

A system email account of the *Exchange* type is automatically added when you enable synchronization of the employee account with an Exchange server. You can view and edit the automatically generated accounts on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form. If you disable Exchange synchronization for an employee account, the corresponding system email account is automatically deleted.

## Synchronization Schedule

After you have configured synchronization with an Exchange server, you can schedule synchronization to be performed automatically. For details, see [To Set Up Automatic Synchronization with Exchange Server](EM__how_Schedule_synch.md).

**Parent topic:**[EWS Integration: Overview](../UserGuide/EM__con_Exchange_Integration_Overview.md)

