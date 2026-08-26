# Contract Configuration: Deposit Contracts {#_6c2c130c-8693-4aee-ab72-6059d30dae88 .concept}

In some cases, a contract includes a deposit \(that is, a fee paid in advance to secure services\). The customer is then charged for the actual usage of services based on its billing schedule, and the cost of provided services is deducted from the deposit until entire amount of the deposit is not spent; after that, the provided services if any will be billed by a different price.

In this topic, you will read about the creation and management of a deposit contract.

## Creation of a Deposit Contract {#section_ixl_m23_35b .section}

A deposit is defined in Acumatica ERP as a *deposit contract item*. To create it, you create a contract item marked as a deposit by selecting the **Deposit** check box on the **Price Options** tab of the [Contract Items](CT_20_10_00.md) \(CT201000\) form \(**Setup and Renewal** section\). This contract item represents a deposit that the customer should pay at contract setup.

You then need to assign this deposit contract item to the contract items that represent services to be provided in a deposit contract. That is, you specify the deposit contract item in the **Deposit Item** box \(**Recurring Billing** section\) for each contract item whose cost of usage is to be deducted from the deposit. After the required contract items have been created, you add them \(except for the deposit contract item\) to the **Details** tab of the [Contract Templates](CT_20_20_00.md) \(CT202000\) form for a contract template designed for deposit contracts.

When you add a contract item to a contract template, the system checks whether the item has a deposit contract item assigned. If there is one, it checks whether the deposit has been added to the template already. If a contract item has a deposit item assigned that is not yet present in the contract template, this deposit contract item is added automatically to the **Details** tab.

You create a deposit contract based on the contract template that you have configured for deposit contracts and then you activate the contract. The detailed procedure is described in [Contract Setup and Activation: To Create and Activate a Deposit Contract](config_Contract_Management_Implem_Activity_To_Configure_Deposit_Contract_Draft.md).

## Deposit Contract Restrictions {#section_kxl_m23_35b .section}

When you create a deposit contract, make sure that the contract, its contract template, and the included contract items comply with the following restrictions:

1.  The contract template must have only one deposit contract item on the **Details** tab of the [Contract Templates](CT_20_20_00.md) \(CR202000\) form. The system does not allow a contract template to be saved if there are multiple deposit contract items.
2.  The included quantity of the recurring contract items should be zero. That is, for each contract item whose cost of usage is to be deducted from the deposit, you type `0` in the **Default Quantity** box on the [Contract Items](CT_20_10_00.md) \(CT201000\) form.
3.  The contract must be of either the *Expiring* type or the *Unlimited* type. The contract type is determined by the **Contract Type** setting on the [Contract Templates](CT_20_20_00.md) form for the contract template that the contract is based on.

## Deposit Contract Billing {#section_jxl_m23_35b .section}

By default, the billing process uses the included quantity of the recurring contract items to define which price \(the recurring price or for the extra usage\) should be used to bill the usage of the item. If you have recorded usage that exceeds the included quantity for the contract item in the contract, the billing process will use the price defined for the extra usage to bill the excess quantity.

The billing process for deposit contracts uses the deposit amount to define which price should be taken to bill the usage. If the entire amount of the deposit is not spent, to calculate the price of the recorded usage of each service, the system uses the pricing policy defined in the **Recurring Pricing** box on the [Contract Items](CT_20_10_00.md) \(CT201000\) form for the respective contract item. This amount will be deducted from the available amount of the deposit and zero-amount invoice will be issued to the client. When the deposit has been spent, the customer is billed for each service usage according to the pricing policy selected in the **Extra Usage Pricing** box on the [Contract Items](CT_20_10_00.md) form for the respective contract item.

When you provide services to a customer, you record the usage of the services in the contract. You bill the customer according to the billing schedule, and the system generates invoices as a result of the billing process. The billable usage of each provided service and of the deposit are displayed as separate lines in the invoice.

## Deposit Replenishment {#section_lxl_m23_35b .section}

If a customer wants to replenish a deposit, this can be done through the contract upgrade procedure. You can change the deposit contract item quantity if the contract template allows the overriding of contract items.

For details, see [Contract Management: Contract Upgrade](Contracts_Managing_Contracts_ContractChanges.md).

**Parent topic:**[Configuring Contracts](../UserGuide/Contracts_Configuring_Contracts_Mapref.md)

