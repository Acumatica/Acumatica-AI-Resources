# Renewal of Service Contracts: General Information {#_56c97725-0e0d-464b-a89a-8e34e168883f .concept}

In Acumatica ERP, you can create and process a renewable service contract.

In the following sections of this topic, the capability is described in detail for service contracts created on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form. The capability works similarly for a route service contract created on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form.

## Learning Objectives {#section_pxk_wbn_ydc .section}

In this chapter, you will learn how to do the following:

-   Create a renewable service contract
-   Renew the service contract
-   Update the status of the service contract

## Applicable Scenarios {#section_rmc_xbn_ydc .section}

You create or renew a renewable service contract in the following cases:

-   When you need to create a long-term service contract that automatically updates its expiration date based on a specified duration.
-   When you need to renew an active service contract before or after its expiration, maintaining the original contract settings and schedules.

## Creation of a Renewable Service Contract {#section_ynt_vbn_ydc .section}

You create a renewable service contract on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form. When creating a service contract, on the **Summary** tab of the form, you select the *Renewable* option in the **Expiration Type** box, which causes the **Duration** box to appear on the form. In this box, you specify the time period until the next expiration date. Once you save and activate the service contract, the system inserts the date in the **Expiration Date** box, which is calculated based on the specified duration.

## Renewal of a Service Contract {#section_znt_vbn_ydc .section}

You can renew a service contract with the *Active* status before or after its expiration date. On the More menu of the [Service Contracts](FS_30_57_00.md) \(FS305700\) form, you click the **Renew** command \(under **Processing**\). This command is available when a renewable service contract—one with *Renewable* selected in the **Expiration Type** box in the **Contract Settings** section—has been activated.

When you renew a service contract, its expiration date is moved forward by the specified duration. A renewed service contract keeps the settings of the original contract, including the schedules that have been generated. When you click **Renew**, the system determines the contract renewal date based on the contract expiration date. The new renewal date is the day after the previous expiration date. The system inserts this date in the **Renewal Date** box and updates the date in the **Expiration Date** box based on the period specified in the **Duration** box.

A service contract can be renewed multiple times. Each time you click **Renew**, the system moves the renewal and expiration dates forward by the amount of time specified in the **Duration** box.

You can renew multiple service contracts at once by using the [Process Service Contracts](FS_50_12_00.md) \(FS501200\) form. In the **Action** box of the Selection area, select *Renew*, then in the list of contracts, select service contracts to be renewed, and on the form toolbar, click **Process All**.

**Parent topic:**[Renewing Service Contracts](../UserGuide/EquipMgmt_Renewal_Service_Contracts_Mapref.md)

