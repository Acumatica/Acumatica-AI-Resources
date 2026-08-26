# Contract Usage: General Information {#_20eedfc7-1c52-4d13-8933-91c2e6e2721e .concept}

After contract activation, your company can start providing the services defined by the contract. You record all services executed by employees in accordance with the terms of the contract by tracking them in the system as contract usage. The type of contract usage you record depends on the business scenario and your needs.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   For a support contract:
    -   Create a support case \(case usage\) and specify a contract for the case
    -   Bill support contract by case usage \(per-case billing\) and release the invoice
-   For a consulting contract:
    -   Create labor items with different employee rates and create a per-activity case class
    -   Create employee activities usage for a consulting contract
    -   Bill the consulting contract by employee activities usage \(per-activity billing\)
-   For a deposit contract:
    -   Create usage manually for a deposit contract \(directly entering usage transaction\)
    -   Bill the deposit contract by usage entered manually

## Applicable Scenarios { .section}

You track contract usage for a contract if you need to bill the customer based on its usage of particular services included in the contract.

## Entry of Contract Usage { .section}

After contract activation, your company starts providing the services defined by the contract. Billing is performed for the usage that has accumulated during a particular billing period.

Contract usage is the sum of the used units of each non-stock item associated with the contract. You enter contract usage to reflect in the system the services that are actually provided to a customer and the time spent on their provision.

Before billing can be performed, the contract usage must be reflected in the system. For more information, see [Contract Usage: Contract Usage](Billing_Contracts_Contract_Billing_ContractUsage.md).

You can track contract usage for the following entities on the noted forms:

-   By using cases that you create on the [Cases](CR_30_60_00.md) \(CR306000\) form \(per-case basis\)
-   By using case activities that you create from the [Cases](CR_30_60_00.md) form by opening the [Activity](CR_30_60_10.md) \(CR306010\) form \(per-activity basis\)
-   By directly entering a usage transaction on the [Contract Usage](CT_30_30_00.md) \(CT303000\) form with a particular non-stock item specified \(usage entered manually\)

You use the [Contract Usage](CT_30_30_00.md) form to view all usage transactions associated with a contract. To view the usage of contract items provided recurrently, you use the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form.

## Setup of Employee Labor Rates { .section}

In some cases, a service is provided to a customer by multiple employees with different qualifications. To calculate the service fee that should be used during billing, you should first set up employee labor rates for the contract and then record contract usage in the system by using time activities.

To set up employee rates for different employees, on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you create non-stock items with the *Labor* type to represent hours of labor performed by an employee of a particular type, and you specify the respective hourly rates for an employee of the type.

On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, you create a per-activity case class that you will use to create an empty contract template for a consulting contract. You specify the *Per Activity* billing mode, which indicates that the cases of the class will be billed on a per-activity basis.

While you are creating a contract draft on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, on the **Employee Overrides** tab, you enter the appropriate combinations of earning type, labor item, and employee that will provide a service to a customer. These data determine which labor item will be used as the source of the service price and the sales accounts for recording the contract usage. For more information, see [Contract Setup and Activation: To Create and Activate an Empty Consulting Contract Draft](config_Contract_Management_Implem_Activity_To_Configure_Empty_Contract_Draft_Consulting_Contract.md).

Now you can proceed with the entering contract usage. For more information, see [Contract Usage: To Create Employee Activity Usage \(Consulting Contract\)](config_Contract_Management_Implem_Activity_To_Create_Activities_Usage_for_Consulting_Contract.md).

Before performing the billing process, you should record the billable time the employee spent for providing the services for a contract; you then associate the work of your employees with a contract by associating employee activities with a case or case activity or by associating employee activities directly with a contract.

When you release an activity, the system starts searching for a non-stock item \(of the *Labor* type\) to use in order to create a usage transaction. You can explicitly specify which non-stock item the system should use for creating a usage transaction, depending on the earning type and the employee you specify in the activity. To specify the non-stock item to be used to create a usage transaction, you use one of the following forms: [Case Classes](CR_20_60_00.md), [Customer Contracts](CT_30_10_00.md), or [Employees](EP_20_30_00.md) \(EP203000\).

**Parent topic:**[Tracking Contract Usage](../UserGuide/Contracts_Contract_Usage_Mapref.md)

