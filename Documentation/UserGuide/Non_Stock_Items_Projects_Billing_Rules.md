# Labor Items: Rules of Billing {#_f439c47f-fe49-4c5b-bc62-d2473f752df4 .concept}

If the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can bill projects for employee time spent working on these projects. The system uses data from labor items for each invoice that the system generates when a time activity or case has been billed. The following sections explain in which order the system selects the labor items for activity billing and case billing.

## Time Activity Billing { .section}

When time activities, which are created on the [Employee Time Activities](EP_30_70_00.md) \(EP307000\) form, are being billed, the system determines the labor item to be used in the invoice and inserts it automatically in each applicable line of the invoice on the **Document Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The system uses the first labor item that it finds in a search of the following places in the system \(listed in the order in which the system searches the location for a labor item value\):

1.  The **Employees** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for the project associated with the activity being billed, in the **Labor Item** column of the **Overrides** table for the employee who is the owner of the activity being billed. This table contains a list of labor items for a particular employee associated with the project, with one specific labor item for each earning type of the particular activity.
2.  The **Labor Item Overrides** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form for the employee who is the owner of the activity being billed. In the table on this tab, a specific labor item can be specified for each earning type.
3.  The **General Info** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form for the employee who is the owner of the activity being billed: On this tab, a labor item can be specified that is to be used for the employee regardless of the earning type of the particular activity.

## Case Billing { .section}

During the billing of a case that has been created on the [Cases](CR_30_60_00.md) \(CR306000\) form, the system determines the labor item to be used in the invoice and inserts it automatically in the invoice line. For the cases whose case class has the *Per Case* billing mode specified, the system always uses the labor item and overtime labor item specified on the **Details** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form.

For cases whose case class uses the *Per Activity* billing mode, the system uses the first labor item that it finds in a search of the following places in the system \(listed in the order in which the system searches the location for a labor item values; the search ends when the system finds a value\):

1.  The **Labor Items** tab of the [Case Classes](CR_20_60_00.md) form for the case class of the case being billed. In the table on this tab, a labor item can be specified for each earning type; the listed labor items and earning types aren’t associated with any specific employee. If a row with the earning type of the activity is specified on this tab, the same default price and the same sales account \(those specified for the labor item\) are used for all case-related activities of the class with the same earning type, regardless of their owner.
2.  The **Employee Override** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form for the contract specified for the case being billed. In the table on the **Employee Override** tab, a specific labor item can be specified for a particular employee \(selected in the **Employee** column\) related to the contract. The table can also include a row with *All Employees* selected in the **Employee** column and a particular labor item that will be used for all other employees. Additionally, on this tab, a separate labor item can be specified for each earning type.
3.  The **Employees** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for the project associated with the activities related to the case being billed, in the **Labor Item** column of the **Overrides** table for the employee who is the owner of the activity being billed. This table contains a list of labor items can be specified for each particular employee associated with the project, with one specific labor item for each earning type.
4.  The **Labor Item Overrides** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form for the employee who is the owner of the activities related to the case being billed. In the table on this tab, a specific labor item can be specified for each earning type for the employee.
5.  The **General** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form for the employee who is the owner of the activities related to the case being billed. On this tab, a labor item can be specified that is to be used for the employee regardless of the earning type of the particular activity.

For further information about the billing of contract-related cases, see [Contract Usage: Contract Usage](Billing_Contracts_Contract_Billing_ContractUsage.md). For details on how you can use labor items to set up employee rates for contracts, see [Contract Setup and Activation: To Create and Activate an Empty Consulting Contract Draft](config_Contract_Management_Implem_Activity_To_Configure_Empty_Contract_Draft_Consulting_Contract.md)

**Parent topic:**[Creating Labor Items](../UserGuide/Non_Stock_Item_Projects_Mapref.md)

