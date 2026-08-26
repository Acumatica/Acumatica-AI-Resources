# Budget Tree: Example {#_d0dd07ae-8109-464f-86e6-b6c18b6fe4e2 .concept}

Suppose that one company—North Serpent Company, with stores in the mountainous areas of California and Nevada—sells skis and snowboards and offers rental services. The company's stores are too small to function as branches, so the *Branch Accounting* feature is disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Defining the Account Structure of the Company { .section}

The organizational structure of the company is reflected in the subaccounts. In Acumatica ERP, if the *Subaccounts* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, subaccounts are used with accounts to virtually split accounts into more specific accounts for detailed tracking and reporting. In our example, the subaccounts have the following structure \(see [Subaccounts: Example of Planning Subaccount Identifiers](config_Subaccounts_Example.md)\):

-   First segment: Company store \(point of sale\):
    -   *CA* \(California store\)
    -   *NV* \(Nevada store\)
    -   *00* \(non-specific to a store\)
-   Second segment: Profit center
    -   *RENT* \(rentals\)
    -   *SALE* \(sales\)
    -   *0000* \(non-specific to a profit center\)
-   Third segment: Product type
    -   *SK* \(skis\)
    -   *SB* \(snowboards\)
    -   *00* \(non-specific\)

## Configuring a Budget Structure { .section}

Suppose the North Serpent Company prepares the budgets with the following major budget articles:

-   Revenue from Sales
-   Revenue from Rentals
-   COGS
-   Other Expenses

These major budget articles will be represented as nodes on the [Budget Configuration](../UserGuide/GL_20_50_00.md) \(GL302010\) form, which you use to build a budget tree for the company. Also, each major node contains subnodes for which account and subaccount masks are specified. Leaves are defined by an account-subaccount pair for each subnode. You can see a schematic example of the configured budget tree in the table below.

|Node|Subarticles \(Nodes\)|Subarticles \(Leaves\)|Account Mask|Subaccount Mask|Account|Subaccount|
|----|---------------------|----------------------|------------|---------------|-------|----------|
|**Sales**| | | | | | |
| |**Sales–California**| |4100|CA-SALE-??| | |
| | |Sales–California–Skis| | |4100|CA-SALE-SK|
| | |Sales–California–Snowboards| | |4100|CA-SALE-SB|
| |**Sales–Nevada**| |4100|NV-SALE-??| | |
| | |Sales–Nevada–Skis| | |4100|NV-SALE-SK|
| | |Sales–Nevada–Snowboards| | |4100|NV-SALE-SB|
|**Rentals**| | | | | | |
| |**Rentals–California**| |4500|CA-RENT-??| | |
| | |Rentals–California–Skis| | |4500|CA-RENT-SK|
| | |Rentals–California–Snowboards| | |4500|CA-RENT-SB|
| |**Rentals–Nevada**| |4500|NV-RENT-??| | |
| | |Rentals–Nevada–Skis| | |4500|NV-RENT-SK|
| | |Rentals–Nevada–Snowboards| | |4500|NV-RENT-SB|
|**COGS**| | | | | | |
| |**COGS–Skis**| |5000|??-SALE-SK| | |
| | |COGS–Nevada–Skis| | |5000|NV-SALE-SK|
| | |COGS–California–Skis| | |5000|CA-SALE-SK|
| |**COGS–Snowboards**| |5000|??-SALE-SB| | |
| | |COGS–Nevada–Snowboards| | |5000|NV-SALE-SB|
| | |COGS–California–Snowboards| | |5000|CA-SALE-SB|
|**Other Expenses**| | | | | | |
| |**Repairs and Maintenance**| |55??|??-????-??| | |
| | |Repairs and Maintenance–Nevada|5570|NV-????-?? \(Aggregation\)|5570|NV-0000-00|
| | |Repairs and Maintenance–California|5580|CA-????-?? \(Aggregation\)|5580|CA-0000-00|

## Defining Account-Subaccount Pairs and Masks { .section}

For the major node, account and subaccount masks are not specified because these nodes are divided into multiple nodes. For each subnode, the account and subaccount masks are specified. These masks specify the group of budget articles that can be added under the node. The articles with the account and subaccount that match the masks are automatically placed under the node when you preload articles for a budget on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form.

The articles with values in all four columns are leaf articles with initial aggregation over the data defined by these masks. The expenses recorded to the *Repairs and Maintenance* account for each store last year, although summed to significant amounts, cannot help in predicting the expenses for the budget year, but the their sum can. The company can plan the amounts based on the previous year's data with a specific coefficient whose value is based on the percentage of old equipment and other related factors. The company plans these amounts as lump sums without details; to do this, the company uses budget articles with aggregation. The articles have the account-subaccount pairs specified and the subaccount masks for aggregating the amounts.

**Parent topic:**[Budget Tree](../ImplementationGuide/config_Budget_Tree_Mapref.md)

