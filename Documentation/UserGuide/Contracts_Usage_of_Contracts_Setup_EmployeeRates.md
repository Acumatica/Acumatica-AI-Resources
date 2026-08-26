# Contract Usage: Labor Items for Billing Contracts {#_5e9bc747-8a26-4db9-868a-515a2abac90a .concept}

In Acumatica ERP, you can associate the work of your employees with a contract by associating employee activities with a case \(an employee activity associated with a case is called a *case activity*\) or by associating non-case-related employee activities directly with a contract.

An activity in Acumatica ERP includes information about the amount of billable time, the employee responsible for completing the activity, and the earning type, which represents the type of time spent. When you release an activity, the system starts searching for a non-stock item \(of the *Labor* type\) to use in order to create a usage transaction. The system uses the earning type and the employee ID from the activity as keys to determine the labor item.

You can configure general rates of labor for an employee as well as rates that are specific to the case class or the contract. You define the rate by using the price of a non-stock item of the *Labor* type. You can explicitly specify which non-stock item the system should use for creating a usage transaction, depending on the earning type and the employee you specify in the activity. A non-stock item also has an assigned sales account and subaccount, which makes your sales recording more specific and transparent.

You can specify the non-stock item to be used to create a usage transaction by using one of the following forms:

-   [Case Classes](CR_20_60_00.md) \(CR206000\)
-   [Customer Contracts](CT_30_10_00.md) \(CT301000\)
-   [Employees](EP_20_30_00.md) \(EP203000\)

## Finding the Labor Item to Bill a Case Activity {#section_vbq_pd3_35b .section}

If the activity is associated with a case, when you release the activity, the system determines the labor item to be used in the contract usage transaction as follows:

1.  The system checks the list of earning types that are defined on the **Labor Items** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form for the case class associated with the activity. The system uses the earning type as a key to find the labor item to be used in the usage transaction. If the system finds the particular earning type, the system uses the labor item listed for it to create the usage transaction and does not search any further.

    **Note:** The **Labor Items** tab is available only if the *Per Activity* billing mode has been selected on the **Details** tab of the [Case Classes](CR_20_60_00.md) form.

2.  The system checks the contract associated with the case class on the **Employee Overrides** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form in two stages:
    1.  The system checks the list on this tab by using the earning type and employee ID as the keys. If a listed combination includes the particular earning type and employee ID, the system uses the labor item from this row to create the usage transaction and does not search any further.
    2.  The system again checks the list on the tab by using as the keys the earning type and *All Employees* as the employee ID. If a listed combination includes the particular earning type and *All Employees*, the system uses the labor item from this row to create the usage transaction and does not search any further.
3.  The system uses the employee associated with the activity being released to find the rate specified for the employee. The system checks the list of earning types on the **Labor Item Overrides** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form. It uses the earning type as the key. If a combination includes the particular earning type, the system uses the labor item from this combination to create the usage transaction and does not search any further.
4.  The system uses the default labor item specified for the employee. This item is specified in the **Labor Item** box on the **General** tab of the [Employees](EP_20_30_00.md) form.

After the system determines the labor item, it adds a usage transaction for the time specified as billable in the activity with a price specified in the labor item.

For more details, see [Contract Billing: To Bill a Support Contract by Case Usage](config_Contract_Management_Implem_Activity_To_Bill_Contract_by_Case_Usage.md).

## Finding the Labor Item to Bill the Employee Activity {#section_xbq_pd3_35b .section}

If the activity is associated with a contract, when you release the activity, the system determines the labor item to be used in the contract usage transaction as follows:

1.  On the **Employee Overrides** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, the system checks the following:
    1.  The list on this tab by using the earning type and employee ID as the keys. If a listed combination includes the particular earning type and employee ID, the system uses the labor item from this row to create the usage transaction and does not search any further.
    2.  The list on this tab again by using as the keys the earning type and *All employees* as the employee ID. If a listed combination includes the particular earning type and *All employees*, the system uses the labor item from this combination to create the usage transaction and does not search any further.
2.  The system uses the employee associated with the released activity to find the rate specified for the employee. The system checks the list of earning types on the **Labor Item Overrides** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form and uses the earning type as the key. If a row includes the particular earning type, the system uses the labor item from this row to create the usage transaction and does not search any further.
3.  The system uses the default labor item specified for the employee in the **Labor Item** field on the **General** tab of the [Employees](EP_20_30_00.md) form.

For information about setting up a contract with billing by time activity where the rate is defined for a contract by using the [Customer Contracts](CT_30_10_00.md) form, see [Contract Usage: To Create Employee Activity Usage \(Consulting Contract\)](config_Contract_Management_Implem_Activity_To_Create_Activities_Usage_for_Consulting_Contract.md).

**Parent topic:**[Tracking Contract Usage](../UserGuide/Contracts_Contract_Usage_Mapref.md)

