# Contract Billing: Contract Examples {#_b1fb48b2-2169-434c-9370-ff609642245f .concept}

In Acumatica ERP you can perform contract billing to fit different scenarios.

## Contracts with Recurring Billing { .section}

Common examples of contracts with recurring billing that can be handled in Acumatica ERP can be found in the following topics:

-   [Contract Management: Fixed-Price Contracts](Contracts_Setting_Up_Contract_Setup_FixedPriceContract.md)
-   [Contract Configuration: Deposit Contracts](Contracts_Configuring_Contracts_Configuring_Deposit_Contract.md)
-   [Contract Usage: Contract Usage](Billing_Contracts_Contract_Billing_ContractUsage.md)

## Contracts with Billing on Demand { .section}

You may want to have the ability to provide a customer with a service or solution at any time and bill the customer as needed, which is also described as *billing on demand*. To implement such a scenario, you perform the following general steps:

1.  You create an active contract template with the billing period set to *On Demand*, and do not add any contract items. You then prepare a contract with the *Draft* status based on this template. For details, see [Contract Billing: To Bill a Consulting Contract by Employee Activity Usage](config_Contract_Management_Implem_Activity_To_Bill_Contract_by_Activities_Usage.md).

    **Note:** If you add recurring contract items to contracts that are billed on demand, we recommend that you specify an included quantity of zero for these contract items.

2.  You set up and activate the contract. The contract's status is changed to *Active*, and you can record contract usage. For more information, see [Contract Setup and Activation: General Information](Contracts_Setting_Up_Contract_Setup_GeneralInfo.md).
3.  You bill the contract any time you need to, as described in [Contract Billing: To Bill a Consulting Contract by Employee Activity Usage](config_Contract_Management_Implem_Activity_To_Bill_Contract_by_Activities_Usage.md) and [Contract Billing: To Bill a Deposit Contract by Usage Entered Manually](config_Contract_Management_Implem_Activity_To_Bill_Deposit_Contract_by_Manual_Entered_Usage.md).

**Parent topic:**[Billing Contracts](../UserGuide/Contracts_Billing_Contracts_Mapref.md)

