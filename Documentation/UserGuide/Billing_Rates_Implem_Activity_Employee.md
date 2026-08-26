# Billing Rates: To Configure Employee-Specific Rates {#_c42c0ab3-1421-4225-a42e-d9ce4224d4c0 .task}

In this activity, you will learn how you can define item-specific billing rates by using rate tables, and how to bill a project by using these billing rates.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the West BBQ Restaurant customer has ordered from the SweetLife Fruits &amp; Jams company a training session for its employees on how to use juicers that were previously purchased. Alberto Jimenez, a SweetLife junior consultant, has provided six hours of training, and Todd Bloom, a SweetLife senior consultant, has provided two hours of training. The standard rate of the training service, which applies to junior consultants, is $50 per hour, while the rate for the training provided by the senior consultants is $60 per hour.

Acting as the SweetLife project accountant, Pam Brawner, you need to configure the rate table that will provide billing rates based on the employee who performed the work and configure the appropriate billing rule that will establish the complex pricing model.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to provide the project management functionality.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *LABOR* account group has been defined.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *CONSULTJR* and *CONSULTSR* non-stock items have been created.

## Process Overview { .section}

In this activity, you will create a rate a rate table code on the [Rate Table Codes](PM_20_42_00.md) \(PM204200\) form. Then on the [Rate Table Sequences](PM_20_50_00.md) \(PM205000\) form, you will define a rate sequence and the combination of settings that will be used for searching for the appropriate billing rate. Then you will create the rate table code on the [Rate Tables](PM_20_60_00.md) \(PM206000\) form, and specify employee-specific rate values. Finally, on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, you will configure a billing rule that uses the rate table with the applicable billing rates.

## System Preparation { .section}

To prepare to perform the instructions of this activity, do the following:

1.  Launch the Acumatica ERP website and sign in to the system as the project accountant by using the *brawner* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *1/1/2026* on the calendar.

## Step 1: Creating Rate Table Codes and Rate Sequences { .section}

To create a rate table and specify rate sequences with employee-specific billing rates, do the following:

1.  To add a new rate table code, do the following on the [Rate Table Codes](PM_20_42_00.md) \(PM204200\) form:
    1.  Click **Add Row** on the form toolbar, and specify the following settings in the added row:
        -   **Rate Table**: `LABOR`
        -   **Description**: `Employee Labor`
    2.  Save the rate table code.
2.  To create a rate sequence, on the [Rate Table Sequences](PM_20_50_00.md) \(PM205000\) form, do the following:
    1.  In the Summary area, specify the following settings:
        -   **Rate Table Code**: *LABOR*
        -   **Rate Type**: *LABOR*
    2.  Click **Add Row** on the table toolbar, and specify the following settings in the row:
        -   **Rate Table Sequence**: `1`
        -   **Description**: `Labor rate sequence`
        -   **Inventory**: Selected
    3.  Save the rate sequence.

## Step 2: Specifying Billing Rates { .section}

To specify billing rates for different sets of settings, do the following:

1.  On the [Rate Tables](PM_20_60_00.md) \(PM206000\) form, to configure a rate table for the senior consultant, do the following:
    1.  In the Summary area, specify the following settings:
        -   **Rate Table Code**: *LABOR*
        -   **Rate Type**: *LABOR*

            When you select the rate type, the system automatically selects *1* as the **Rate Table Sequence**.

        -   **Rate Code**: `CONSULTSR`
        -   **Description**: `A labor cost rate for a senior consultant`
    2.  On the **Inventory** tab, click **Add Row** on the table toolbar, and in the row, select *CONSULTSR* as the **Inventory ID**.
    3.  On the **Rate** tab, click **Add Row** on the table toolbar, and specify the following settings in the row:
        -   **Start Date**: *1/1/2026*
        -   **Rate**: `60.00`
    4.  Save the rate table.
2.  To configure a rate table for the junior consultant, do the following:
    1.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
        -   **Rate Code**: `CONSULTJR`
        -   **Description**: `A labor cost rate for a junior consultant`
    2.  On the **Inventory** tab, on the table toolbar, click **Add Row**, and in the row, select *CONSULTJR* as the **Inventory ID**.
    3.  On the **Rate** tab, click **Add Row** on the table toolbar, and specify the following settings in the row:
        -   **Start Date**: *1/1/2026*
        -   **Rate**: `50.00`
    4.  Save the rate table.

## Step 3: Creating a Billing Rule {#section_i4k_scm_wmb .section}

To create a billing rule that uses employee-specific billing rates, do the following:

1.  On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, add a new record, and enter the following settings in the Summary area:
    -   **Billing Rule ID**: `TMLABOR`
    -   **Description**: `Time and material with @Rate`
2.  In the **Billing Steps** table, click **Add Row** on the table toolbar, and enter the following settings in the row:
    -   **Step ID**: `10`
    -   **Description**: `Consulting`
3.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the step selected in the left pane \(the step you just added\):
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *LABOR*
    -   **Rate Type**: *LABOR*
    -   **If @Rate Is Not Defined**: *Raise Error*

        If no rate has been found, the corresponding project transaction won’t be presented in the invoice. With the *Raise Error* option selected, an error message is shown during billing. This prevents project costs from being omitted.

    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`
    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`

        The invoice line quantity will be equal to the project transaction line quantity.

    -   **Line Amount Formula**: `=[PMTran.BillableQty]*@Rate`

        The amount of the invoice line is calculated as the billable quantity of the project transaction line multiplied by the corresponding rate value.

    -   **Line Description Formula**: `=[PMTran.Description]`
    -   **Use Sales Account From**: *Inventory Item*
4.  On the **Billing Settings** tab of the right pane, clear the **Create Lines with Zero Amount and Quantity** check box.
5.  Save the billing rule.

You have configured billing rates that are based on various settings and a billing rule that will use these rates for billing.

To bill a project with these rates, complete the [Billing Rates: To Bill a Project with Employee-Specific Rates](Billing_Rates_Process_Activity_Employee.md) activity.

**Parent topic:**[Managing Billing Rates](../UserGuide/Billing_Rates_Mapref.md)

