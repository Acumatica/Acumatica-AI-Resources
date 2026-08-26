# Contract Management: Contract Renewal {#_05f905ee-2d18-45d1-9440-4557a7aab5f4 .concept}

When a contract has been expired or is about to expire, your company and your customer may want to continue the relationship under the same terms. In this case, you can renew the contract to avoid the provision of services being interrupted.

In this topic, you will read about the details of renewing a contract.

## Setup of Contract Renewal {#section_t11_dg3_35b .section}

You define a renewal fee by adding to a template \(or to a contract\) a contract item for which the renewal part is configured. For details about creating a contract item with renewal configured, see [Contract Item Creation: Contract Items](Contracts_Configuring_Contract_Items_ContractItems.md).

**Tip:** On the **Details** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, you can add new contract items and remove them from the list if in the selected contract template, the **Enable Template Item Override** check box on the [Contract Templates](CT_20_20_00.md) \(CT202000\) form is selected for a contract you are about to renew.

The contract renewal process and its outcome are determined by the contract type, which you specify on the [Contract Templates](CT_20_20_00.md) form for the contract template.

Contracts of the *Renewable* or *Expiring* type can be renewed. For details, see [Contract Functionality Implementation: General Information](Contracts_Contract_Functionality_GeneralInfo.md).

Also, by selecting the **Mass Renewal** check box on the [Contract Templates](CT_20_20_00.md) form, you can indicate to the system that contracts based on the selected template are available for mass renewal—that is, they will be displayed on the [Renew Contracts](CT_50_20_00.md) \(CT502000\) form. Additionally, in the **Renewal Point** box on the [Contract Templates](CT_20_20_00.md) form, you can specify the number of days before the contract expiration date when the system starts to display the contract on the [Renew Contracts](CT_50_20_00.md) form.

## Initiation of the Renewal Process {#section_u11_dg3_35b .section}

You can track contracts that are about to expire by using the [Expiring Customer Contracts](CT_40_10_00.md) \(CT401000\) form.

You initiate the renewal process for a particular contract by clicking **Renew Contract** \(under **Processing**\) on the More menu of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form.

If the **Mass Renewal** check box is selected in the **Contract Settings** section of the **Summary** tab of the [Customer Contracts](CT_30_10_00.md) form, and the date when you want to renew the contract is the same as or later than the contract expiration date minus the number of days specified in the **Renewal Point** box in the same section of the tab, the contract is displayed on the [Renew Contracts](CT_50_20_00.md) \(CT502000\) mass processing form.

## Renewal of Renewable Contracts {#section_v11_dg3_35b .section}

The renewal process can be run for each contract of the *Renewable* type that meets both of the following criteria:

-   The contract status is *Active* or *Expired*.
-   The contract is in the last billing period before expiration.

If a contract meets these criteria, the **Renew Contract** button and command are available for the contract on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form.

You should specify the renewal date for a contract in the **Renew Contract** dialog box before you run the renewal process. The system uses this date to define whether the contract grace period has ended and to generate the invoice for a renewal fee that is specified in the **Setup and Renewal** section of the **Price Options** tab of the [Contract Items](CT_20_10_00.md) \(CT201000\) form. Also, this date is used to record the renewal action on the **Contract History** tab of the [Customer Contracts](CT_30_10_00.md) form.

If the renewal date is earlier than or the same as the end date of the grace period, the system does the following:

-   Shifts the expiration date of the contract by the contract duration
-   Bills the renewal fee, if one is configured, and generates the renewal invoice on the renewal date

When you renew a contract of the *Renewable* type, the system compares the renewal date to the end date of the contract grace period.

After the renewal is completed, contract fulfillment can continue, and the recurring billing is performed according to the schedule defined on the **Summary** tab of the [Customer Contracts](CT_30_10_00.md) form.

If you renew a contract after the end of the grace period, the system does the following:

-   Creates a copy of the original contract with the *Draft* status
-   Leaves the current status of the original contract \(*Active* or *Expired*\) unchanged

You can modify the new details of the contract, if required, and activate it on the date of your choice. For details on contract activation, see [Contract Setup and Activation: General Information](Contracts_Setting_Up_Contract_Setup_GeneralInfo.md).

If the status of the original contract is *Active* and it is fully billed, the system changes the status to *Expired* when you activate the new contract. If the original contract is not fully billed yet, the system warns you that the new contract could not be activated until the original contract is fully billed.

## Renewal of Expiring Contracts {#section_w11_dg3_35b .section}

The renewal process can be run for each contract of the *Expiring* type that meets both of the following criteria:

-   The contract status is *Active* or *Expired*.
-   The contract is in the last billing period before expiration.

If a contract meets these criteria, the **Renew Contract** button and command are available for the contract on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form.

**Tip:** The **Renew Contract** button and command are always available for a contract of the *Expiring* type with the billing period set to *On Demand*.

You specify the renewal date before you run the renewal process. The system uses this date to record the renewal action on the **Contract History** tab.

When you renew a contract of the *Expiring* type, the system does the following:

-   Creates a copy of the original contract with the *Draft* status
-   Leaves the current status of the original contract \(*Active* or *Expired*\) unchanged

You can modify the new contract details, if required, and activate the contract on the date of your choice. Before you activate the new contract, make sure that the original contract is fully billed. That is, make sure that the invoice for an included fee is issued and there is no usage that requires billing.

**Tip:** You can delete unbilled usage if you are not going to bill it.

**Parent topic:**[Managing Contracts](../UserGuide/Contracts_Managing_Contracts_Mapref.md)

