# Billing Rates: To Create a Billing Rule with Rates {#_dc3e6523-f016-491c-8cdc-3f04c14a450c .task}

In the following implementation activity, you will learn how to create a billing rule that uses rate tables for the calculation of the invoice amounts for different account groups.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Pam Brawner, the project accountant of the SweetLife Fruits &amp; Jams company. You need to create a billing rule to be used for billing customers for the different services provided for the project with different billing rates based on the following requirements:

-   The billing amount of expenses for materials should be calculated based on the quantity of the materials and the price of the corresponding inventory item.
-   The billing amount of expenses for employee labor should be calculated based on the amount and the billing rate of the labor \(which also depends on the project task for which the labor has been performed\).
-   The billing amount of services provided by subcontractors should be calculated based on the amount of the project transaction with the fixed 1.25 margin coefficient.

## Configuration Overview {#section_oc2_jmb_vmb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *MATERIAL*, *LABOR*, and *SUBCON* account groups of the expense type have been configured. These account groups will aggregate the expenses posted to particular GL accounts.

## Process Overview { .section}

You will create a billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form for billing a project by rates.

## System Preparation { .section}

Before you start configuring a billing rule, you need to launch the Acumatica ERP website and sign in to a company with the *U100* dataset preloaded. You should sign in as a project accountant by using the *brawner* username and the *123* password.

## Step 1: Configuring a Billing Rule Step with Billing Based on the Item Price { .section}

To configure a billing rule and add the first step to it, do the following:

1.  On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Billing Rule ID**: `RATERULE`
    -   **Description**: `Billing for time and material with rates`
3.  In the **Billing Steps** table, add a row for the billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `10`
    -   **Description**: `Billing for materials (cost with markup)`
4.  On the **Calculation Rules** tab of the right pane, specify the following settings for the step selected in the left pane:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *MATERIAL*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes expenses for materials.

    -   **Rate Type**: Empty

        This step of billing rule does not use billing rates, so the rate type is not needed.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of any invoice that is created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.BillableQty]*@Price`

        The invoiced amount is calculated as the quantity of the project transaction multiplied by the price of the related inventory item.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
5.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
6.  Save your changes.

## Step 2: Configuring a Billing Rule Step with Billing Based on the Billing Rate { .section}

Add the second step to the billing rule as follows:

1.  While you are still reviewing the *RATERULE* billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, in the **Billing Steps** table, add a row for the second billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `20`
    -   **Description**: `Labor from non-stock price`
2.  On the **Calculation Rules** tab of the right pane, specify the following settings for the step selected in the left pane:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *LABOR*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes employee labor expenses.

    -   **Rate Type**: *LABOR*

        This step of billing rule will receive the value of the *@Rate* parameter based on the selected rate type.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of any invoice that is created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.Amount]*@Rate`

        The invoiced amount is calculated as the amount of the project transaction multiplied by the rate for the labor specified in the appropriate rate table assigned to the project task being billed.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
3.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
4.  Save your changes.

## Step 3: Configuring a Billing Rule Step with Fixed-Price Billing { .section}

Add the third step to the billing rule, which is for billing expenses on services provided by subcontractors at a fixed rate as follows:

1.  While you are still reviewing the *RATERULE* billing rule on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, in the **Billing Steps** table, add a row for the third billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `30`
    -   **Description**: `Re-bill subcontractors`
2.  On the **Calculation Rules** tab of the right pane, specify the following settings for the step selected in the left pane:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *SUBCON*

        This step of the billing rule will be used for processing project transactions related to the account group, which includes services provided by subcontractors.

    -   **Rate Type**: Empty

        This step of billing rule does not use billing rates, so the rate type is not specified.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of any invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: `=[PMTran.Amount]*1.25`

        The invoiced amount is calculated as the amount of the project transaction multiplied by the fixed 1.25 coefficient.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
3.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.
4.  Save your changes.

You have configured a billing rule that can be used for billing a project by using different billing rates that apply to different provided work and services. To bill a project by using this rule, you need to assign the rule to the project tasks of the project. To review how a project is being billed by using a billing rule that is based on billing rates, perform the [Billing Rates: To Bill a Project with Different Billing Rates](Billing_Rates_Process_Activity.md) activity.

**Parent topic:**[Managing Billing Rates](../UserGuide/Billing_Rates_Mapref.md)

