# System Preparation for Manufacturing Implementation: General Ledger Accounts {#_ee26affe-a14c-4325-afca-5f96e563e3a1 .concept}

These are the accounts, and if configured, subaccounts used on the manufacturing forms specified directly or indirectly.

## General Ledger Accounts Used in Manufacturing { .section}

The work in process \(WIP\) account and subaccount and the WIP Variance account and subaccount are required in order to create production orders. You specify where production orders should default these accounts from on the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form. The [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form requires the WIP account and WIP Variance account to be specified in the event an WIP account was not specified from the preferred document source.

Transactions for production orders debit the work in process account and credit the offset account for each cost element. A reversing transaction does the opposite. Upon closing a production order the WIP Variance account is posted and the WIP Balance is zeroed and the appropriate debit and credit generated.

**Attention:** At this time the **Control Account** validation feature is not supported when specifying the accounts on manufacturing forms.

If production scrap will be reported and expensed, then you need to specify the appropriate reason codes on the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form with their GL accounts for the scrap expense. For more details, see [Configuration of Scrap, Waste, and By-Products in Production: General Information](config_MFG_Scrap_GeneralInfo.md).

Labor codes must also be set up by using the [Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\) form. Labor codes are required when setting up work centers on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form. If indirect time will be reported, then an indirect labor account is also required or you may use the same account as for direct labor.

If overhead, tooling, or machine costs are to be charged to production orders then each requires an offset account to be defined on the following forms:

-   [Overhead](../UserGuide/AM_20_25_00.md) \(AM202500\)
-   [Tools](../UserGuide/AM_20_55_00.md) \(AM205500\)
-   [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\)

**Tip:** You need to consider the impact of posting to the non-inventory accounts \(labor, overhead, machines, and tooling\) in production management. Typically, the actual manufacturing expenses such as payroll and benefits, utilities, depreciation, purchased tooling, or repairs and maintenance are posted to the General Ledger into cost of goods sold. The labor, overhead, tools, or machine accounts could be set up as balance sheet accrual accounts or income statement contra expense accounts that would be debited to zero when posting the actual costs.

In the following table, you can view the list of GL accounts used in manufacturing.

|Category|Debit Account|Credit Account|
|--------|-------------|--------------|
|**Bill of Material**|
|Direct Labor|\(WIP Account\)|Labor Account|
|Indirect|Indirect Labor Expense|Labor Account|
|Overhead|\(WIP Account\)|Overhead Account|
|Tools|\(WIP Account\)|Tooling Account|
|Machine|\(WIP Account\)|Machine Account|
|**Production Management**|
|Work in Process|WIP Account|\(Inventory\) or expense|
|WIP Variance|WIP Variance|WIP Account|

**Attention:** The Inventory account and subaccount is copied from the stock item's Inventory account when material is issued or received; if the item issued is non-stock, then the Expense Accrual account is used. Labor expense is copied from the account and subaccount specified for the labor code; other costs that are automatically calculated such as overhead, tooling, or machine costs, use the expense account specified. If labor is backflushed, then the labor expense account is copied from the labor code associated with the first shift code of the work center specified on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form.

**Parent topic:**[Preparing the System for Manufacturing Implementation](../ImplementationGuide/config_MFG_General_Settings_Mapref.md)

