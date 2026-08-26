# Budget Based on Existing Budgets: General Information {#_4aa88eaa-0ba7-4bf2-b849-8dc941ed552d .concept}

In Acumatica ERP, you can create new budgets based on budgets that have already been created in the system and compare the budgets.

**Tip:** You can create a new budget based on a budget that was uploaded to the system, created manually, or prepared based on another budget.

## Learning Objectives {#section_rmk_mjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create a budget based on a budget that has been uploaded
-   Release the modified budget
-   Compare the original and modified budgets

## Applicable Scenarios {#section_tmk_mjv_vxb .section}

You prepare a budget based on an uploaded budget in the following cases:

-   You want to create a version of a budget \(an optimistic or pessimistic one\) in the system.
-   You want to create a budget for a new financial year and base the new budget on the budget for a previous financial year.

You compare two budgets when you need to analyze company performance by comparing the actual expenses and revenues with the expected ones, and when you need to analyze and improve budget data for different years, branches, or companies.

## Update of a Budget Based on an Uploaded Budget {#section_wmk_mjv_vxb .section}

You modify the settings of a simple budget on the [Budgets](GL_30_20_10.md) \(GL302010\) form by preloading a budget that has already been created in the system and specifying the needed branch, ledger, financial year, and multiplier for a new budget. You then release the updated budget articles on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

## Budget Comparison {#section_ymk_mjv_vxb .section}

To compare budgets, in the Summary area of the [Budgets](GL_30_20_10.md) \(GL302010\) form, you ensure that the ledger and the financial year of the budget being prepared are selected in the **Budget** and **Financial Year** boxes, respectively. In the **Compare to Ledger** and **Compare to Year** boxes, you select the ledger and the financial year of the budget needed for comparison. If the organization consists of multiple companies or branches, you can compare the budgets of different companies or branches by selecting the branches to compare in the **Branch** and **Compare to Branch** boxes.

After you have specified the required ledger, financial year, and branch \(if applicable\) in the table, the system adds a row to each budget article being prepared that shows the amounts of the budget of the compared ledger and financial year.

**Tip:** If a budget ledger is used for comparison, only the released amounts of the budget articles are shown in the table.

**Parent topic:**[Preparing a Budget Based on an Existing Budget](../UserGuide/Finance_Preparing_Budget_Based_on_Uploaded_Mapref.md)

