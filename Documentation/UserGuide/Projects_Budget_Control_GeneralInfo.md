# Project Budget Control: General Information {#_000d4998-1a81-4009-b418-61cafed18cd4 .concept}

The project budget is used to provide both a financial plan and cost constraints for a project. If you define the amount of money and resources to be spent on the project, you can control whether the actual project costs exceed the budgeted values as users enter documents for the projects. This helps users control the created documents and can be useful for the person who approves these documents.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Control whether AP bills, purchase orders, subcontracts, and change orders created for a project exceed the project budget
-   Control the cost code usage in documents
-   Lock the budgeted values

## Applicable Scenarios { .section}

You configure project budget control if your company needs to ensure project budget consistency and adherence—specifically, if you need to be able to do the following:

-   Verify that the budgeted values wouldn’t be exceeded if a document is processed
-   Control the consistent usage of cost codes in project-related documents
-   Lock the project budget to prevent the agreed-on values from being changed

## Control of Document Consistency for the Project {#section_ufw_k4d_crb .section}

If the *Cost Codes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, to ensure that document lines are entered for the appropriate budget lines, the system controls the cost code entry in the lines of documents created for projects. When a user interacts with the **Cost Code** column of the document entry form, the system helps the user enter the appropriate cost code as follows:

-   When the user clicks the magnifier button in this column, in the lookup table that opens, the system displays only the cost codes that exist in the project budget for the specified combination of the project task and the account group.
-   If the user manually enters an existing cost code that isn’t included in the project budget for the specified combination of the project task and the account group, the system displays a warning.

## Control of the Budgeted Costs { .section}

To avoid the project budget being exceeded as users enter documents for a project, you can configure the system to check whether the entered purchase order, change order, accounts payable bill, or subcontract is within the cost budget of the specified project, taking into consideration the portion of the budget that has already been consumed.

To set up this validation, you select *Show a Warning* in the **Budget Control** box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. For more information, see [Project Budget Control: Overrun Notifications During Document Entry](Projects_Budget_Control.md).

## Locking of the Budgeted Values { .section}

Once a project budget has been agreed on, you can lock the original figures to prevent further editing of them. After the original budgeted values are locked, you can still update the revised budgeted values. By maintaining the original values, you can assess how accurately the budget was estimated. Because you can also make adjustments to the revised budget as additional information becomes known, budget revisions provide the most accurate and up-to-date estimation of the budget. For more information, see [Project Budget Control: Budget Locking](Projects_Budget_Lock.md).

**Parent topic:**[Controlling the Project Budget](../UserGuide/Projects_Budget_Control_Mapref.md)

