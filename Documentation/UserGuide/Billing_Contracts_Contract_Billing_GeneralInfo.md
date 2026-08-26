# Contract Billing: General Information {#_6903de70-0d3b-4e9c-a88d-b2a24d65aa7f .concept}

In Acumatica ERP, you begin billing the customer after setup and activation of a contract. You can also bill a customer after contract usage has been recorded. You can also perform mass-processing billing for a contract with no usage.

## Learning Objectives {#section_plj_mz4_35b .section}

In this chapter, you will learn how to do the following:

-   Run contract billing
-   Perform scheduled billingand billing on demand
-   Perform billing by case, by case activity, and by the number of cases

## Applicable Scenarios {#section_qlj_mz4_35b .section}

You perform the contract billing process when your company needs to bill customers for the services provided to them.

## Billing of Contracts {#section_rlj_mz4_35b .section}

After contract activation, your company starts providing the services defined by the contract. Billing is performed for the usage accumulated during a billing period. You also can perform billing for prepaid included services that have not been performed yet. Each time you run contract billing, an invoice is generated.

You can run contract billing for a particular contract on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form as long as the contract has the *Active* or *Pending Upgrade* status. If needed, you can use the [Run Contract Billing](CT_50_10_00.md) \(CT501000\) form to run the billing process for multiple contracts at once \(mass-processing of billing\).

## Common Billing Scenarios { .section}

In Acumatica ERP, you can choose the frequency of billing depending on the terms of the contract and specify scheduled billing or on-demand billing.

Also, in Acumatica ERP, you can bill a customer for the services included in a contract on a per-case basis or a per-activity basis, or you can bill multiple contracts simultaneously.

## Billing Scenarios { .section}

Common billing scenarios include the following:

-   Billing on a schedule: You bill on a schedule for the usage accumulated during a billing period, which can be a week, month, quarter, or year. Scheduled billing is the most common way to bill customers recurrently. The billing schedule for a contract can be viewed on the **Summary** tab on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form. When you run contract billing, the system generates an invoice with the next billing date and shifts the schedule dates by the incrementation step. In the **Billing Schedule** section of the **Summary** tab, you can see the start date of the billing schedule, the billing period, the date of the last \(most recent\) invoice, and the date of the next invoice. On the **AR History** tab of the [Customer Contracts](CT_30_10_00.md) form, you can view the invoices that have been generated previously for the selected contract.
-   Billing on demand: In some cases, you might want to perform contract billing any time services of the contract have been provided. If the contract is billed on demand, billing is performed for the usage accumulated up to the date of the billing.

For more information, see [Contract Billing: Contract Examples](AR__CON_Contracts_Examples.md)

## Ways of Billing a Customer { .section}

In Acumatica ERP, you can bill a customer in the following ways:

-   *Billing on a per-case basis*: In Acumatica ERP, you can bill a customer recurrently and on a per-case basis for time and overtime. If you are billing the customer in this way, on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you should first create a non-stock item of the *Labor* type. Then on the [Case Classes](CR_20_60_00.md) \(CR206000\) form, you create a case class for cases that are billed on a per-case basis. On the [Contract Items](CT_20_10_00.md) \(CT201000\) form, you create a contract item, and in the **Recurring Item** box, you specify the recurring item.

    After you create, set up, and activate the contract that includes the contract item, you create a case on the [Cases](CR_30_60_00.md) \(CR306000\) form. On the **CRM Info** tab, you specify the billable time and billable overtime. Then you release the case.

    **Tip:** With per-case billing you can bill the customer only after the case is closed.

    For more information, see [Contract Billing: To Bill a Support Contract by Case Usage](config_Contract_Management_Implem_Activity_To_Bill_Contract_by_Case_Usage.md).

-   *Billing on a per-activity basis*: In Acumatica ERP, you can also bill a customer on a per-activity basis for time and overtime. To set up billing by case activities, on the [Non-Stock Items](IN_20_20_00.md) form, you should first create a non-stock item of the *Labor* type. Then on the [Case Classes](CR_20_60_00.md) form, you create a case class for cases which will be billed based on a per-activity. On the [Contract Items](CT_20_10_00.md) form, you create a contract item, and in the **Recurring Item** box, you specify the recurring item.

    After you create, set up, and activate the contract that includes this contract item, you create a case on the [Cases](CR_30_60_00.md) form. On the **CRM Info** tab, you link the contract to the case in the **Contract** box, and on the **Activities** tab, you add the activity and specify the billable time or overtime for each act of rendering services. Then you release the case and bill the contract. For more information, see [Contract Billing: To Bill a Consulting Contract by Employee Activity Usage](config_Contract_Management_Implem_Activity_To_Bill_Contract_by_Activities_Usage.md).


**Parent topic:**[Billing Contracts](../UserGuide/Contracts_Billing_Contracts_Mapref.md)

