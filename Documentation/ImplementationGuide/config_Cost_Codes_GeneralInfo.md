# Cost Codes: General Information {#_07d3480c-4934-484e-8d33-d4efbdb44eb0 .concept}

A cost code represents an additional classification level for project revenues and costs in a construction project. You can associate cost codes with documents and document lines in which projects are referenced, such as general ledger transactions, accounts payable bills, purchase orders, accounts receivable invoices, expense entries, time cards, and lines of project budgets.

## Learning Objectives {#section_xvd_ssj_1qb .section}

In this chapter, you will learn how to do the following:

-   Plan the structure of cost codes to be used in construction projects
-   Configure the structure of the cost code identifier and define cost codes
-   Configure cost code tracking in the revenue budget lines of the project budget
-   Configure cost code tracking in the cost budget lines of the project budget
-   Deactivate a cost code that is no longer being used

## Applicable Scenarios {#section_yvd_ssj_1qb .section}

You create cost codes and configure a project to use these cost codes if you need to further classify revenues and expenses in a budget of a construction project.

## Cost Code Configuration {#section_ffb_gkv_gmb .section}

By tracking revenues and expenses by cost codes, you can analyze how much each project task costs, what the revenue is, and how the tracked values compare with the budgeted ones.

To define the cost codes to be used in your projects, you need to perform the following tasks:

1.  Plan the structure of cost code identifiers and the cost codes to be used based on the processes in your organization.
2.  Modify the *COSTCODE* segmented key based on your planned structure, if necessary.
3.  Add the planned cost codes to the table on the [Cost Codes](../UserGuide/PM_20_95_00.md) \(PM209500\) form.
4.  Configure the use of cost codes in the cost budget and revenue budget of a particular project.

You can prepare the list of cost codes in an `.xlsx` or `.csv` file and upload the file to the [Cost Codes](../UserGuide/PM_20_95_00.md) form. Alternatively, you can add cost codes one by one on the form.

## Project Budget Tracking by Cost Codes {#section_yfj_1rt_gmb .section}

When you create a document or a document line \(or both\) that you want to associate with a particular cost code, you first specify the applicable GL account, project, and project task for the line; you then assign the appropriate cost code to the line. In the lookup table that opens when you click the selector button on the applicable form, the system lists the cost codes that are used in budget lines of the project you have selected for the document or document line. The lookup table also lists the budget lines that have the same project task and the account group that corresponds to the GL account selected for the document or document line. You can select any of the available cost codes, or select a cost code that has not yet been used for the combination of project, project task, and account group.

For a project, on the **Summary** tab \(**Project Properties** section\) of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form, you can use the **Revenue Budget Level** and **Cost Budget Level** boxes to specify the way the system represents budget lines and classify revenues or expenses by cost codes as well as other factors. You do this by selecting the needed options in the **Revenue Budget Level** and **Cost Budget Level** boxes as follows:

-   If you select *Task and Cost Code* or *Task, Item, and Cost Code* in the **Revenue Budget Level** box, you can view revenue budget lines by cost codes on the **Revenue Budget** tab of the [Projects](../UserGuide/PM_30_10_00.md) form for the project, and you can bill the project with the selected revenue budget level for progress.
-   If you select *Task and Cost Code* or *Task, Item, and Cost Code* in the **Cost Budget Level** box, you can view cost budget lines by cost codes on the **Cost Budget** tab of the [Projects](../UserGuide/PM_30_10_00.md) form for the project. You can also bill the project with the selected cost budget level for time and material.

You can change the cost code for each cost budget or revenue budget line manually, if needed.

## Deactivation of Cost Codes { .section}

Sometimes a particular cost code is no longer needed—for example, if this is a single-use cost code added solely for one particular project, and all work related to it has been completed. If a user has the *Project Accountant* role assigned on the [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\) form, they can deactivate this cost code on the [Cost Codes](../UserGuide/PM_20_95_00.md) \(PM209500\) form.

Inactive cost codes become unavailable for selection on any data entry form but remain specified in existing documents. Users can work with these documents but cannot perform any operation that would lead to creation of a related document or transaction \(such as a project transaction or general ledger transaction\) with the inactive cost code.

The following cost codes cannot be deactivated:

-   The default cost code
-   A cost code that is specified in a project budget line along with a project task that has the *Active* status

**Parent topic:**[Project Budgets with Cost Codes](../ImplementationGuide/config_Cost_Codes_Mapref.md)

