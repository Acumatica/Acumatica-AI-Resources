# Labor Items: General Information {#_0c33954b-bc4e-4bad-8d66-1f44fceedace .concept}

Among other items your company sells, it may sell the labor of its employees. In Acumatica ERP, you can define a certain type of labor available for sale \(that is, a type performed regularly by your company\) by creating a labor item.

A labor item is a non-stock item containing information that includes the default price and the sales account to be used for transactions. Labor items are used in projects for recording information on the hourly rates of the applicable employees, the GL accounts used for tracking labor in projects, and the taxes that apply to this labor.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare the system for the configuration of labor items
-   Create a new labor item
-   Assign a labor item to an employee
-   Configure labor cost rates for an employee

## Applicable Scenarios { .section}

You may need to create a labor item in any of the following cases:

-   When you are going to track the cost of employees' labor in a particular project
-   When you need to sell the same type of labor at different prices
-   When you are going to add a new type of expenses to projects

## Labor Item Settings { .section}

Non-stock items of the *Labor* type are used as a source of general ledger accounts for transactions that the system generates in the process of project billing.

You create labor items and maintain information about their settings by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. On this form, you can enter and maintain a variety of settings for a labor item, including the following:

-   The identifier: You assign every labor item a unique identifier \(in the **Inventory ID** box of the Summary area\) based on the *INVENTORY* segmented key. If you need to change the ID of an existing non-stock item \(that is, one that has already been saved\), you can click **Change ID** on the More menu of the [Non-Stock Items](IN_20_20_00.md) form.
-   The item type: The item type is selected in the **Type** box of the **General** tab \(**Item Defaults** section\). When creating a labor item, you select the *Labor* item type.
-   The valuation method: When you select the *Labor* type for the item, *Standard Cost* is inserted in the **Cost Based On** box of the **Price/Cost** tab \(**Cost Accrual** section\).
-   Units of measure \(UOMs\): For each labor item, in the **Unit of Measure** section of the **General** tab, you can select the unit of measure used as the base unit for the item.

    **Important:** The system must be able to convert the base unit of measure of the labor item into minutes. That is, the conversion rule from a minute to the base unit of measure selected for the labor item must be specified in the table. For more information about how the system selects the unit conversion rules, see [Project Transactions: Update of the Project Budget Structure](Projects_Transactions_Project_Budget_Update.md).

-   General ledger accounts: Each labor item must have the expense account specified on the **GL Accounts** tab; the expense account must be mapped to the appropriate account group. If needed, you can also specify sales and expense accrual accounts.
-   Price information: On the **Price/Cost** tab, you can specify settings related to the price and cost of the item, including the default price defined for a labor item \(in the **Default Price** box of the **Price Management** section\), which is used as the unit rate in the revenue budget lines.

    **Important:** Make sure that *Purchases* is selected in the **Post Cost to Expenses** box on the **Price/Cost** tab; otherwise, the expenses related to the non-stock item won’t be recorded to the cost budget of the applicable project.


To ensure that the system will be able to obtain the required settings from each labor item when an invoice is generated, you need to associate this labor item with the appropriate entity \(that is, an employee, a case, a project, or a contract\), which may depend on the type of the billing process that you use. If no labor items are specified for the entities associated with the invoice, the system won’t generate the invoice.

## Labor Items in Time Cards { .section}

You can use time tracking for your activities to facilitate the process of labor tracking and costing. For instance, with time activities, you can bill projects based on the billable time spent on related activities. In Acumatica ERP, to account for work hours and overtime hours spent on projects, employees use time cards. To calculate the cost of labor, the system uses the labor cost rates defined for each employee on the [Labor Rates](PM_20_99_00.md) \(PM209900\) form. The cost of overtime labor is calculated based on the employee work hour rates multiplied by the factor specified in the **Multiplier** column of the *Overtime* earning type on the [Earning Types](EP_10_20_00.md) \(EP102000\) form. For more information, see [Employee Time Billing: General Information](Projects_Tracking_Time_GeneralInfo.md).

**Parent topic:**[Creating Labor Items](../UserGuide/Non_Stock_Item_Projects_Mapref.md)

