# Route Service Contracts: Copying a Service Contract {#_26e9cf6f-3a5b-4f19-a3a5-ac4adfdaccb9 .concept}

A service contract can be copied. You may need to copy a service contract when a customer is due for renewal but some settings of the existing contract should be changed, or you just need another service contract with the similar settings.

In the following sections of this topic, the capability is described in detail for service contracts created on the [Service Contracts](../Shared/../UserGuide/FS_30_57_00.md) form. The capability work similarly for a route service contract created on the [Route Service Contracts](../Shared/../UserGuide/FS_30_08_00.md) form.

## Copying a Service Contract { .section}

You copy a service contract by clicking **Copy** on the More menu on the [Service Contracts](../Shared/../UserGuide/FS_30_57_00.md) \(FS305700\) form \(or on the [Route Service Contracts](../Shared/../UserGuide/FS_30_08_00.md) \(FS300800\) form\). Once you click **Copy**, the **Copy Contract** dialog box opens. In the dialog box, you specify the start date of the new service contract and of any schedules that have been generated for the service contract.

When you copy a service contract, the system creates a new contract with the *Draft* status with most of the same settings \(and similar generated schedules\) as those specified in the original service contract. In the copied service contract, you can modify the following settings \(even if the service contract has schedules associated with it\): **Customer**, **Location**, **Billing Customer**, **Billing Location**, **Project**, **Start Date**, **Expiration Type**, and **Expiration Date**.

On the **History** tab of the [Service Contracts](../Shared/../UserGuide/FS_30_57_00.md) form, you can review which actions have been performed for the contract and when, as well as view the reference numbers of the original service contract and schedule.

**Tip:** When you change the contract start date or end date \(or both\), the schedule start date or end date \(or both\) are updated accordingly if the contract start date is equal to the schedule start date, and the contract end date is equal to the schedule end date. If the contract start date differs from the start date of the schedule, or the contract end date differs from the contract end date, you should ensure that the new contract start date is not later than the schedule start date, and the contract end date is not earlier than the schedule end date.

**Parent topic:**[Managing Route Service Contracts](../UserGuide/RouteMgmt_Service_Contracts_Mapref.md)

