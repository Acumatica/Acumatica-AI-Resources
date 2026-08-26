# Billing Rules: To Configure a Combined Billing Rule {#_87926a55-27fb-4552-bc9c-f87ca952cfca .task}

The following implementation activity will walk you through the process of configuring a combined billing rule so that you can bill a fixed-price project in two stages based on the time and material that was spent.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Thai Food Restaurant customer has ordered a juicer from the SweetLife Fruits &amp; Jams company, along with the installation and training of the company's employees on operating the juicer. Both companies have agreed that the customer will be billed in two stages. In the first stage, the customer will pay for the juicer, and for 40% of the services, which have a fixed price. In the second stage \(after the project is completed\), the customer will pay for the remainder of the services.

Acting as the project accountant, you need to configure the appropriate billing rule.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *MATERIAL*, *LABOR*, and *SUBCON* account groups of the expense type have been configured. These account groups will aggregate the expenses posted to particular GL accounts.

## Process Overview { .section}

You will create a combined billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form to be able to bill different stages of a project with different billing settings.

## System Preparation { .section}

Before you start configuring a billing rule, you need to launch the Acumatica ERP website and sign in to a company with the *U100* dataset preloaded. To sign in as a project accountant, use the *brawner* username and the *123* password.

## Step 1: Configuring a Billing Rule and a Step with Billing for Progress { .section}

To configure a billing rule and add a step to bill the customer for progress, do the following:

1.  On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Billing Rule ID**: `COMBRULE`
    -   **Description**: `Combined billing in two stages`
3.  In the **Billing Steps** table, add a row for the billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `10`
    -   **Description**: `Billing for progress`
4.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the step:
    -   **Billing Type**: *Progress Billing*
    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Description Formula**: `=[PMBudget.Description]`
    -   **Use Sales Account From**: *Account Group*
5.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
6.  Save your changes.

## Step 2: Configuring a Billing Rule Step to Bill for Materials { .section}

To add and configure a step to bill the customer for materials, do the following:

1.  While you are still reviewing the *COMBRULE* billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, in the **Billing Steps** table, add a row for the second billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `20`
    -   **Description**: `Material cost plus markup`
2.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the new step \(which is selected in the left pane\):
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *MATERIAL*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes expenses for materials.

    -   **Rate Type**: Empty

        This step of billing rule does not use billing rates, so the rate type is not needed.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.BillableQty]*1.25`

        The invoiced amount is calculated as the amount of a project transaction multiplied by the fixed 1.25 coefficient.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
3.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
4.  Save your changes.

## Step 3: Configuring a Billing Rule Step with Billing for Labor { .section}

To add and configure a step to bill the customer for employees’ labor, do the following:

1.  While you are still reviewing the *COMBRULE* billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, in the **Billing Steps** table, add a row for the third step of the billing rule, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `30`
    -   **Description**: `Employee labor`
2.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the new step, which is selected in the left pane:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *LABOR*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes employee labor expenses.

    -   **Rate Type**: Empty

        This step of billing rule does not use billing rates, so the rate type is not needed.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field holds the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.Amount]*1.25`

        The invoiced amount is calculated as the amount of a project transaction multiplied by the fixed 1.25 coefficient.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
3.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
4.  Save your changes.

## Step 4: Configuring a Billing Rule Step with Billing for Subcontractors’ Services { .section}

To add and configure a fourth step to the billing rule for billing customers on services provided by subcontractors, do the following:

1.  While you are still reviewing the *COMBRULE* billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, in the **Billing Steps** table, add a row for the fourth step of the billing rule, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `40`
    -   **Description**: `Re-invoice subcontractor services`
2.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the new step, which is selected in the left pane:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *SUBCON*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes services provided by subcontractors.

    -   **Rate Type**: Empty

        This step of billing rule does not use billing rates, so the rate type is not specified.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.Amount]*1.25`

        The invoiced amount is calculated as the amount of a project transaction multiplied by the fixed 1.25 coefficient.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
3.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
4.  Save the billing rule.

You have configured the combined billing rule that can be used for billing the first part of project for progress and the rest of the project for time and materials. To bill the project by using this rule, you need to assign the rule to the project tasks. To review how a project is billed when you use a combined billing rule, complete the [Project Inventory Tracking by Warehouse Location: To Bill a Project](Projects_Inventory_Locations_Process_Activity_Complex_Billing.md) activity.

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

