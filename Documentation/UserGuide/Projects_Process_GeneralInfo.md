# Project Creation and Processing: General Information {#_3177c4af-0f25-4435-b339-884ecc94362f .concept}

A project in Acumatica ERP is a one-time endeavor with its own budget, costs, and revenues; the funding and deliverables of a project are usually finite. In the system, a project contains various specifications that affect project completion, such as the date range, customer, and resources \(including employees and equipment\).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Plan a project structure
-   Create a project and specify its settings
-   Plan the structure of the project budget
-   Set up project security
-   Process a project during its lifecycle

## Applicable Scenarios { .section}

You create a project to plan work to be performed for a customer, define budgets for the planned work, track the progress of completion of the planned work, bill the customers for the provided services, and track the costs and revenues of the provided services.

## Type of Projects {#section_p1m_zq5_t5b .section}

You can use projects for tracking activities involving customer interaction \(external projects\) and in-house work \(internal projects\). The key objective of external projects is balancing costs and income to make sure the organization remains profitable, while meeting project goals and maximizing customer satisfaction. The scope of internal projects is typically limited to the physical and organizational boundaries of your organization; these projects serve the needs of the organization and never produce any revenue.

Depending on which activities you are going to track, you can configure projects of the following types:

-   A fixed-price project, which is an external project in which services and products are provided to customers at a fixed price; the price of the project is defined at the beginning of the project and is not changed during its completion \(unless any change orders are processed for the project\).
-   A cost-plus project, which is an external project in which the prices are calculated as a percentage of the costs. The final price of the cost-plus project depends on the overall cost of fulfilling the project, and the costs may be billed with or without a premium.
-   An internal project, which is used to track activities completed within your company. The scope of these projects is limited to the physical and organizational boundaries of an organization; these projects serve the needs of the organization and never produce any revenue. Internal projects have budgets, do not include billing settings, and are not associated with any customer.

## Project Settings { .section}

You create a new project and specify its settings on the [Projects](PM_30_10_00.md) \(PM301000\) form. When you are manually adding a new project to the system, you enter the following information:

-   General information: This information includes the description, the start and end dates, the project manager, the project address settings, the project currency, and the branch to which the project belongs. You can also specify the billing rule to be assigned to project tasks by default.
-   Billing schedule: You define whether you will use direct AR invoices when billing the project, or use the pro forma invoices. Then you determine when the project is billed: on the date of the customer statement, at the end of each month, at the end of each quarter, or at the end of each year.
-   Project tasks: You define the project tasks of the project. A project task in a project is a separate work unit with its own lifecycle, budget, cost, revenue, and billing rule. Budgeted, revised, and actual amounts in the project are tracked by account group balances, each of which is the total of all the corresponding amounts in the project tasks. That is, the project does not have any balances beyond those in the project tasks of the project. You can define one of the project tasks to be used by default in lines of records with this project specified. For more information, see [Project Tasks: General Information](Project_Tasks_GeneralInfo.md).
-   Budget: You define the level of detail for the cost budget and for the revenue budget. The structure of the revenue budget of the project is determined independently from the cost budget structure. Then you specify the budget, which holds the estimated expenses and revenues for a project.
-   Default GL accounts: You define the general ledger accounts to be used by default in project-related documents.

## Ability to Add User-Defined Fields to Project-Related Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. If your user account has the *Administrator* or *Customizer* role, you can add user-defined fields to project-related forms, such as [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) \(PM208000\), [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\), [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\), [Project Template Tasks](../Shared/../UserGuide/PM_20_80_10.md) \(PM208010\), or [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) \(PM302000\).

Suppose that you've added user-defined fields and specified their values in a project template on the [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) form. When you create a project on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form and select this template, the system copies the template’s values of shared user-defined fields to the project.

Similarly, you can add user-defined fields to the [Project Template Tasks](../Shared/../UserGuide/PM_20_80_10.md) and [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) forms and specify their values in a template task. If a project template includes this template task, the system copies the values of its user-defined fields to each project task created from the task template.

For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

**Parent topic:**[Creating and Processing Projects](../UserGuide/Projects_Process_Mapref.md)

