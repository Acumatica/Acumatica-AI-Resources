# Billing Rules: To Configure a Progress Billing Rule {#_fc55ceac-44cd-45fe-b774-dfe89ff18b4a .task}

The following implementation activity will walk you through the process of configuring a progress billing rule.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as the project accountant of the SweetLife Fruits &amp; Jams company, need to configure a billing rule to be used for billing a customer based on the progress of a project that your company completes for the customer.

## Configuration Overview { .section}

For the purposes of this activity, on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.

## Process Overview { .section}

You will configure a billing rule for progress billing on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as project accountant by using the *brawner* username and the *123* password.

## Step 1: Configuring a Billing Rule { .section}

To configure a billing rule to be used for progress billing, do the following:

1.  On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, add a new record.
2.  In the Summary area of the left pane, specify the following settings:
    -   **Billing Rule ID**: `PRGRULE`
    -   **Description**: `Billing projects by progress`
3.  In the left pane, add a row for the billing rule step, and specify the following settings in the row:
    -   **Active**: Selected
    -   **Step ID**: `10`
    -   **Description**: `Billing by progress`
4.  In the right pane \(**Calculation Rules** tab\), specify the following settings for the added step:
    -   **Billing Type**: *Progress Billing*
    -   **Invoice Description Formula**: `='Invoice for '+[PMProject.ContractCD]`

        The system uses this formula to define the description of the invoice created based on the billing rule. The `PMProject.ContractCD` data field stores the project identifier.

    -   **Line Description Formula**: `=[PMBudget.Description]`

        The system uses this formula to define the description of the invoice line created based on the billing step. The `PMBudget.Description` data field stores the description of a project budget line.

    -   **Use Sales Account From**: *Account Group*

        The system uses as the sales account the default account of the account group of a revenue budget line of a project.

5.  On the **Billing Settings** tab, clear the **Create Lines with Zero Amount and Quantity** check box.

    You clear this check box to add to the created invoice only the lines with nonzero amounts.

6.  Save the billing rule you have created.

You have configured the billing rule that can be used for billing a fixed-price project based on its progress. To bill a project by using this rule, you need to assign the rule to the project tasks. To review how a project is billed when you use a progress billing rule, complete the [Progress Billing: To Bill a Project by Progress](Projects_Billing_Project_by_Progress_Process_Activity.md) activity.

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

