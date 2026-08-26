# Route Service Contracts: Contract Cancellation {#_78bb7fe8-74c8-46b5-9e11-d409b02cf862 .concept}

In Acumatica ERP, if for some reason the services will no longer be provided for the customer, you can cancel the service contract if it has the *Active* or *Suspended* status. When you cancel the service contract, the system deletes any documents that were generated for the dates that are the same as or later than the cancellation date. A contract with the *Canceled* status is read-only.

In this topic, you will read about how to cancel the service contract in the system.

## Canceling a Route Service Contract {#_5df7b5b3-762d-403a-a2c0-daf4543065a1 .section}

To cancel a service contract, you open the necessary contract on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form, and click **Cancel** on the More menu \(under **Processing**\). The system opens the **Terminate Contract** dialog box where you specify the date since which the contract has to be canceled.

If this date is later than the current date, when you click **OK** in the dialog box to close it and return to the form, the system inserts *Canceled* in the **Upcoming Status** box \(to indicate that the contract will be canceled\) and inserts the cancellation date in the **Effective Until Date** box \(to indicate that the current status is effective until this date\). If the cancellation date is the same as the current date, when you click **OK** in the dialog box, the system assigns the *Canceled* status to the service contract.

**Parent topic:**[Managing Route Service Contracts](../UserGuide/RouteMgmt_Service_Contracts_Mapref.md)

