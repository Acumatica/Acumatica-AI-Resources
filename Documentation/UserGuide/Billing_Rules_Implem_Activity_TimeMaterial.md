# Billing Rules: To Configure a Time and Material Rule {#_cec9de61-c897-4e4c-9cf3-229dd61f7e26 .task}

The following implementation activity will walk you through the process of configuring a time and material billing rule.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as the project accountant of the SweetLife Fruits &amp; Jams company, need to configure a billing rule to be used for billing customers for the materials that have been spent on providing services as part of the project, and for the time that has been spent by SweetLife's employees performing work for the project.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the following account groups have been configured:
    -   The *MATERIAL* account group of the expense type, which aggregates the amounts posted to the *50000 \(GOGS – Inventory\)* account
    -   The *LABOR* account group of the expense type, which aggregates the amounts posted to the *54100 \(Project Labor Expense\)* account.

## Process Overview { .section}

You will create a billing rule for time and material billing on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, and add to this rule two steps for billing different account groups.

## System Preparation { .section}

Before you start configuring a billing rule, you need to launch the Acumatica ERP website and sign in to a company with the *U100* dataset preloaded. To sign in as a project accountant, use the *brawner* username and the *123* password.

## Step 1: Configuring a Billing Rule and Adding a Step { .section}

To configure a billing rule to be used for time and material billing and then add a step for billing for materials, do the following:

1.  On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, add a new record.
2.  In the Summary area of the left pane, specify the following settings:
    -   **Billing Rule ID**: `MATTIME`
    -   **Description**: `Billing rule for materials with markup`
3.  In the left pane, add a row for the billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `10`
    -   **Description**: `Billing for materials (cost with markup)`
4.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the new step:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *MATERIAL*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes expenses for materials.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.Amount]*1.25`

        The invoiced amount is calculated as the amount of a project transaction multiplied by 1.25.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
5.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.

    You clear this check box to add to the created invoice only lines with a nonzero amount and quantity.

6.  Save your changes.

## Step 2: Adding One More Step to the Billing Rule { .section}

To add and configure a step for billing for labor, do the following:

1.  While you are still viewing the *MATTIME* billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, in the left pane, add a row for the second step of the billing rule, and specify the following in the row:
    -   **Active**: Selected
    -   **Step ID**: `20`
    -   **Description**: `Billing for employee time`
2.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the new step:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *LABOR*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes expenses for employee labor.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.Amount]*1.25`

        The invoiced amount is calculated as the amount of a project transaction multiplied by 1.25.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
3.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
4.  Save the created billing rule.

You have configured the billing rule that can be used for billing the cost-plus project for the time and material spent on the services related to the project. To bill a project by using this rule, you need to assign the rule to the project tasks. To review how a project is billed when you use a time and material billing rule, complete the [Time and Material Billing: To Bill a Project for Time and Material](Projects_Billing_for_Time_and_Material_Process_Activity.md) activity.

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

