# Service Contracts: Status Update {#_35676927-49c6-4604-b057-b60adfc03ef4 .concept}

In Acumatica ERP, the system does not change the current status of a service contract when the effective date has arrived. You can update the status manually on or after the date or use an automation schedule to update the contract status on this date.

If you know the particular date in the future when a service contract is going to be canceled, or suspended, you can specify the cancellation or suspension date on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form, so the future status will be shown in the **Upcoming Status** box of the Summary area. Then, on or after the effective date, you can update the contract's status on the [Process Service Contracts](FS_50_12_00.md) \(FS501200\) form so that the system automatically changes the status of the contract. If the contract has an expiration date, when you are entering the service contract into the system, the system specifies *Expired* as the upcoming status on that date.

## Updating a Status Manually { .section}

To change the current status of a service contract \(or multiple service contracts\) to upcoming \(whose effective date came\) of one or multiple service contracts, you use the [Process Service Contracts](FS_50_12_00.md) \(FS501200\) form. On this form, you select the *Update Upcoming Status* option in the **Action** box of the form; you then specify the selection criteria to display the necessary service contract \(or multiple contracts\) in the table and process the contract or contracts. The system updates the statuses of the processed contracts.

Acumatica ERP provides an automation schedule to automatically invoke this action, as the section below explains.

## Updating the Status by Automation Schedule { .section}

To cause the system automatically invoke the *Update Upcoming Status* action on the [Process Service Contracts](FS_50_12_00.md) \(FS501200\) form for contracts in the system, the *Update Service Contract Status* automation schedule has been created on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form. To use this schedule, you should ensure that this schedule is active in the system \(that is, make sure the **Active** check box is selected for the schedule on the [Automation Schedules](SM_20_50_20.md) form\). This schedule runs daily, and you can modify this schedule if necessary.

**Parent topic:**[Creating Service Contracts](../UserGuide/EquipMgmt_Service_Contracts_Mapref.md)

