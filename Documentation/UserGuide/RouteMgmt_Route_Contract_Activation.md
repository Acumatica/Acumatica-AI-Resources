# Route Service Contracts: Contract Activation {#_e76fea92-d35b-47f1-aae6-7224a990edc2 .concept}

In Acumatica ERP, you have to activate a route service contract in the system to be able to generate appointments and billing documents for the contract. You can activate a draft of a contract for the first time or activate previously suspended contract. For the activated contracts, you cannot change the billing type and date information of route service contracts.

In this topic, you will read about activation of the draft contracts and suspended contracts.

## Activating a Route Service Contract with the Draft Status { .section}

When you create a service contract in the system, the contract is automatically assigned the *Draft* status. When you finish entering the necessary information for the contract, you should activate the contract so that you can generate appointments and billing documents for it.

You activate the contract on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form by clicking **Activate** on the More menu \(under **Processing**\). The system changes the status of the service contract to *Active*. For the activated contracts, you cannot change the billing type and date information of service contracts.

## Activating a Service Contract with the Suspended Status {#_ff470669-3512-4570-add7-5229f8ea2b44 .section}

Contracts with the *Suspended* status can be activated again starting on a particular date \(whether or not it is the current date\). To activate a suspended service contract, you open the necessary contract on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form and click **Activate** on the More menu \(under **Processing**\). The system opens the **Activation Contract** dialog box, in which you specify the starting date when the contract has to be activated.

If schedules have been generated for the service contract, you can view them in the table of the **Activation Contract** dialog box. You can change the date of the appointments to be generated when the contract is active. To do so, for each schedule, you select the check box in the **Change Recurrence** column. You then specify the date since which the service orders or appointments will be generated according to the schedule for the active contract in the **Effective Recurrence Start Date** column. The system recalculates the **Next Execution** date.

If the activation date is later than the current date, when you click **OK** to close the dialog box and return to the form, the **Upcoming Status** box contains *Active* \(indicating that the service contract will be active\) and the **Effective Until Date** box contains the activation date \(indicating that the current status of *Suspended* is effective until the activation date.

**Parent topic:**[Managing Route Service Contracts](../UserGuide/RouteMgmt_Service_Contracts_Mapref.md)

