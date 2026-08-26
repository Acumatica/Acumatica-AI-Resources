# Project Creation and Processing: To Create a Cost-Plus Project {#_c206a662-8c2d-4fa2-8b1c-96981676dcbf .task}

This activity will walk you through the process of configuring a simple cost-plus project from its initial creation.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Lake Cafe customer has contacted the SweetLife Fruits &amp; Jams company and ordered training of its employees on operating the juicer it purchased from SweetLife. The training sessions will start on *1/1/2026* and must be completed by *1/30/2026*. The project accountant has analyzed the requirements and decided to create a small cost-plus project \(with only a single task for the training of employees\); the expected project profitability is 20%. Because the number of training sessions may be changed during the project completion by the customer's request, the project will be billed when all training sessions have been provided. The project accountant has decided to skip the creation of pro forma invoices, because the price of the provided services has already been agreed upon with the customer.

Acting as the project accountant, you will create the new project and specify the needed settings.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *TRAINING* non-stock item has been defined.
-   On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, the *TM* billing rule has been defined to calculate the line amount as the project transaction line amount multiplied by 1.25.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *LABOR* account group has been defined.

## Process Overview { .section}

On the [Projects](PM_30_10_00.md) \(PM301000\) form, you will create a new project and specify its general settings on the **Summary** tab. Then on the **Tasks** tab, you will add the project task that will be performed during the completion of the project. On the **Cost Budget** tab, you will define the budget for the project.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as Pam Brawner by using the *brawner* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/1/2026*. If a different date is displayed, click the Business Date menu button, and select 1/1/2026 on the calendar.

## Step 1: Creating a Project and Specifying Its General Settings { .section}

To create a new project and specify basic settings for it, do the following:

1.  On the [Projects](PM_30_10_00.md) \(PM301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Project ID**: `INSTLAKE02`
    -   **Start Date**: *1/1/2026*
    -   **End Date**: *1/30/2026*
    -   **Customer**: *LAKECAFE \(Lake Cafe\)*
    -   **Project Manager**: *EP00000001 \(Pam Brawner\)*
    -   **Description**: `Training project for Lake Cafe`
3.  On the **Summary** tab, specify the following settings:
    -   **Revenue Budget Level**: *Task and Item*

        You select this option to include more detail in the revenue budget structure. With this setting, you will be able to select an inventory item in a revenue budget line.

    -   **Cost Budget Level**: *Task and Item*

        You select this option to include more detail in the cost budget structure. With this setting, you will be able to select an inventory item in a cost budget line.

    -   **Change Order Workflow**: Cleared

        You clear this check box because for this simple cost-plus project, no changes will be required.

    -   **Billing Currency**: *USD* \(selected automatically\)
    -   **Billing Period**: *On Demand*

        You select the *On Demand* billing period to indicate that the billing can be performed at any time.

    -   **Billing Rule**: *TM*

        This predefined rule will be specified by default in all project tasks added to the project.

        **Tip:** For details on configuring a billing rule for billing by time and material, see [Billing Rules: Time and Material Billing](Billing_Rules_TimeMaterial_Billing.md) and [Billing Rules: To Configure a Time and Material Rule](Billing_Rules_Implem_Activity_TimeMaterial.md).

    -   **Create Pro Forma Invoice on Billing**: Cleared

        You are clearing this check box because you want to create accounts receivable invoices when you bill the project without preliminary creation of pro forma invoices.

4.  Save your changes to the project \(which currently has the *In Planning* status in the **Status** box of the Summary area\).

## Step 2: Adding Project Tasks { .section}

To add project tasks to the project, do the following:

1.  On the **Tasks** tab, click **Add Row** on the table toolbar, and add the project task with the following settings:

    -   **Task ID**: *TRAINING*
    -   **Type**: *Cost and Revenue Task*
    -   **Description**: `Training on juicer usage`
    -   **Status**: *Active*
    Notice that the *TM* billing rule has been automatically specified for the task.

2.  Save your changes to the project.

## Step 3: Specifying the Project’s Cost Budget { .section}

To configure the project’s cost budget, do the following:

1.  On the **Cost Budget** tab, click **Add Row**, and specify the following settings in the added row:

    -   **Project Task**: *TRAINING*
    -   **Inventory ID**: *TRAINING*
    -   **Account Group**: *LABOR* \(selected automatically\)
    -   **Original Budgeted Quantity**: `16`
    -   **UOM**: *HOUR*
    -   **Unit Rate**: `40`
    The system automatically calculates the **Original Budgeted Amount** for the cost budget line \($640\) as the **Original Budgeted Quantity** multiplied by the **Unit Rate**.

2.  Save your changes to the project.

    You have not configured the revenue budget for the project because you have not agreed with the customer on the number of training sessions and this number may be changed during the project completion at the customer's request. When you bill the project based on the incurred expenses, the system automatically populates the revenue budget with the actual values.


You have finished configuring the project. Now you can complete the [Project Creation and Processing: To Process a Cost-Plus Project](Projects_Process_Process_Activity_Cost_Plus.md) activity to practice completing the project lifecycle.

**Parent topic:**[Creating and Processing Projects](../UserGuide/Projects_Process_Mapref.md)

