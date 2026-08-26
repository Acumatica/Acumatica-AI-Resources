# Service Contracts: Activation, Cancellation, and Suspension of a Contract {#_7487175b-d73d-4e73-a245-7348adeeeabf .concept}

In Acumatica ERP, you can activate, cancel, or suspend a service contract.

## Activating a Service Contract with the Draft Status { .section}

When you create a service contract in the system, the contract is automatically assigned the *Draft* status. When you finish entering the necessary information for the contract, you should activate the contract so that you can generate service orders, appointments, or invoices for it.

You activate the contract on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form by clicking **Activate** on the More menu \(under **Processing**\). The system changes the status of the service contract to *Active*.

## Activating a Service Contract with the Suspended Status {#_ff470669-3512-4570-add7-5229f8ea2b44 .section}

Contracts with the *Suspended* status can be activated again starting on a particular date \(whether or not it is the current date\). To activate a suspended service contract, you open the necessary contract on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form and click **Activate** on the More menu \(under **Processing**\). The system opens the **Activation Contract** dialog box, in which you specify the starting date when the contract has to be activated.

If schedules have been generated for the service contract, you can view them in the table of the **Activation Contract** dialog box. You can change the date of the service orders or appointments to be generated when the contract is active. To do so, for each schedule, you select the check box in the **Change Recurrence** column. You then specify the date since which the service orders or appointments will be generated according to the schedule for the active contract in the **Effective Recurrence Start Date** column. The system recalculates the **Next Execution** date.

If the activation date is later than the current date, when you click **OK** to close the dialog box and return to the form, the **Upcoming Status** box contains *Active* \(indicating that the service contract will be active\) and the **Effective Until Date** box contains the activation date \(indicating that the current status of *Suspended* is effective until the activation date.

## Canceling a Service Contract { .section}

In Acumatica ERP, if for some reason the services will no longer be provided for the customer, you can cancel the service contract if it has the *Active* or *Suspended* status. When you cancel the service contract, the system deletes any documents that were generated for the dates that are the same as or later than the cancellation date.

To cancel a service contract, you open the necessary contract on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form, and on the More menu, click **Cancel**. The system opens the **Terminate Contract** dialog box, where you specify the date since which the contract has to be canceled.

If this date is later than the current date, when you click **OK** in the dialog box to close it and return to the form, the system inserts *Canceled* in the **Upcoming Status** box \(to indicate that the contract will be canceled\) and inserts the cancellation date in the **Effective Until Date** box \(to indicate that the current status is effective until this date\). If the cancellation date is the same as the current date, when you click **OK** in the dialog box, the system assigns the *Canceled* status to the service contract.

**Tip:** A contract with the *Canceled* status is read-only and cannot be deleted.

## Suspending a Service Contract { .section}

In Acumatica ERP, you can suspend an active contract so that it is no longer active during the time it is suspended. When you suspend the contract, the system deletes any documents that were generated on the suspension date or the dates that are after it. You cannot generate service orders, appointments, or invoices from contracts with the *Suspended* status. The suspended contract can then be activated again or canceled.

To suspend the contract, you open the necessary contract on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form, and on the More menu, click **Suspend**. The system opens the **Suspend Contract** dialog box, where you specify the date since which the contract has to be suspended.

If this date is later than the current date, when you click **OK** in the dialog box to close the dialog box and return to the form, the system inserts *Suspended* into the **Upcoming Status** box and the suspension date into the **Effective Until Date** box \(indicating that the current status is effective until the suspension date\). If the suspension date is the same as the current date, when you click **OK** in the dialog box, the system assigns the *Suspended* status to the service contract.

**Parent topic:**[Creating Service Contracts](../UserGuide/EquipMgmt_Service_Contracts_Mapref.md)

