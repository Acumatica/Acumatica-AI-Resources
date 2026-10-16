# Route Service Contracts: Contract Suspension

In Acumatica ERP, you can suspend an active contract so that it is no longer active during the time it is suspended. When you suspend the contract, the system deletes any documents that were generated on the suspension date or the dates that are after it. You cannot generate appointments or billing documents from contracts with the *Suspended* status. The suspended contract can then be activated again or canceled.

In this topic, you will read about how to suspend the routу service contract in the system.

## Suspending a Route Service Contract

To suspend the contract, you open the necessary contract on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form, and click **Suspend** on the More menu \(under **Processing**\). The system opens the **Suspend Contract** dialog box, where you specify the date since which the contract has to be suspended.

If this date is later than the current date, when you click **OK** in the dialog box to close the dialog box and return to the form, the system inserts *Suspended* into the **Upcoming Status** box and the suspension date into the **Effective Until Date** box \(indicating that the current status is effective until the suspension date\). If the suspension date is the same as the current date, when you click **OK** in the dialog box, the system assigns the *Suspended* status to the service contract.

**Parent topic:**[Managing Route Service Contracts](../UserGuide/RouteMgmt_Service_Contracts_Mapref.md)

