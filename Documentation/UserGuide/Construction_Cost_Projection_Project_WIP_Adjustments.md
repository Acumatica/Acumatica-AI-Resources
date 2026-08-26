# Project Cost Projections: Project WIP Adjustments {#_6b9394e3-9a1e-44bc-9d35-25ad1359ee08 .concept}

Construction projects often have timing gaps between revenue and costs. By using project cost projections, you can close these gaps, streamline GAAP compliance, and eliminate manual GL adjustments for construction projects.

With project WIP adjustments, which you create on the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form, you can:

-   Easily adjust revenue for the reporting period without manually modifying GL transactions
-   Automatically calculate overbilling and underbilling amounts
-   Post auto-reversing GL transactions to record the current revenue
-   Ensure GAAP compliance for construction project reporting

For details, see the following sections.

## Setting Up the WIP Adjustment Capabilities { .section}

As an administrator setting up the WIP adjustment capabilities, you perform the following actions:

1.  On the **WIP Adjustment Settings** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, you specify the default settings for each newly created project WIP adjustment. The system will copy them to the **Financial** tab of the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form. Do the following:
    -   Select the default overbilling, underbilling, and revenue accounts \(and subaccounts, if applicable\) for the project WIP adjustments.

        **Tip:** The system will post GL transactions on release of a project WIP adjustment to the default accounts in these cases:

        -   You select *Detailed Projects; Default Accounts*, *Non-Project; Default Accounts*, or *Non-Project, Total Adjustment* as **Overbilling/Underbilling Posting Level**
        -   You select *Detailed Projects; Default Account* or *Non-Project; Default Account* as **Revenue Posting Level**
    -   In the **Overbilling/Underbilling Posting Level** box, you select the default detail level that determines how the system will post GL transactions on release of each project WIP adjustment.
    -   In the **Revenue Posting Level** box, you select the default level of detail at which the system will post revenue for each WIP adjustment created for a financial period.
2.  Optional: You select default accounts at the project template and project level so that users can quickly create projects with a predefined set of accounts already in place.

    You specify a project template’s accounts in the **Overbilling Account** and **Underbilling Account** boxes on the **Defaults** tab of the [Project Templates](PM_20_80_00.md) \(PM208000\) form. When a user creates a project from this template, the system copies these accounts to the boxes with the same names on the **Defaults** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

    If these accounts are specified for a project, the system inserts them in the project line on the **Details** tab of the [Project WIP Adjustment](PM_30_56_00.md) form.

    **Tip:** The system will post GL transactions on release of a project WIP adjustment to these accounts if you fill in these boxes on the **Financial** tab of the [Project WIP Adjustment](PM_30_56_00.md) form as follows:

    -   **Overbilling/Underbilling Posting Level**: *Detailed Projects; Detailed Accounts* or *Non-Project; Detailed Accounts*
    -   **Revenue Posting Level**: *Detailed Projects; Detailed Accounts* or *Non-Project; Detailed Accounts*
3.  Optional: You configure approvals by creating an approval map for project WIP adjustments on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form and selecting it on the **Approvals** tab of the current form. This ensures that a responsible person reviews and approves the adjustment before it affects the general ledger and financial statements. You can also create an email notification about WIP adjustments pending approval. For details, see [Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md).

## Processing the Project WIP Adjustment: General Workflow { .section}

Here are the typical actions in the general workflow of reporting the current project costs by using a project WIP adjustment:

1.  Project manager: Creates a date-sensitive cost projection for each project on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form
2.  Project accountant: Creates a project WIP adjustment on the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form based on the latest released date-sensitive cost projections
3.  Project accountant: Releases the project WIP adjustment
4.  Project accountant: Reviews the generated GL batch; ensures that for each project whose overbilling and underbilling amounts weren’t manually changed, the Sales Revenue account shows:
    -   A credit amount equal to the overbilling amount in the cost projection
    -   A debit amount equal to the underbilling amount in the cost projection
5.  Project accountant \(optional\): Generates the needed WIP report for stakeholders

## Creating a Project WIP Adjustment { .section}

You create a project WIP adjustment on the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form. In the Summary area, you review the owner, projection date, financial period, branch, currency, and project status that the system has inserted; you also add the description.

Then you click **Load Lines** on the form toolbar. The system adds a line for each project on the **Details** tab. Each line shows the overbilling and underbilling amounts for the listed project based on the latest cost projection created on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form. \(If needed, you can select a different cost projection for the project.\). In the upper-most row, the total for each numeric column of the table is shown. If a cost projection has been created but not released, columns for the line’s amounts contain *0*. In the Summary area, the system shows the sum of these amounts and the total adjustment amount for all the projects in the current project WIP adjustment.

On the **Financial** tab, the system copies the default posting options and accounts from the **WIP Adjustment Settings** tab on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. The system will use the posting options and accounts when it generates a batch of GL transactions on release of the project WIP adjustment. You can override these settings, if needed.

## Processing the Project WIP Adjustment { .section}

In the project WIP adjustment, you review all the data to prepare the document for the release. Then you click **Release** on the form toolbar of the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form.

The system posts a batch of auto-reversing GL transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. The **Auto-Reversing** check box is selected for the batch, meaning that in the next financial period, the transactions will be automatically reversed.

## Modifying a Project WIP Adjustment Before Release { .section}

If you need to update project costs before releasing the WIP adjustment, here’s what you can do on the **Details** tab of the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form.

**Recalculate Amounts**

Once lines have been added to the tab, the **Load Lines** button disappears on the form toolbar and **Recalculate** appears. If you click this button, the system recalculates all the amounts and reloads all the lines. If a newer date-sensitive cost projection exists, the system inserts its amounts and its link in the needed columns.

On the **Details** tab, you can recalculate the amounts in the selected lines or delete the selected lines.

For each project line of a released date-sensitive cost projection, you can modify these columns:

-   **Project Task**: You must specify the task if the posting options include detailed projects because the task is required for project transactions.
-   **Last Cost Projection**: Select another released cost projection, if needed.
-   **Overbilling Adjustment** and **Underbilling Adjustment**: When you manually change one of these, the other becomes *0*.
-   **Overbilling Account**, **Underbilling Account**, and **Revenue Account**.

**Include the Amounts from Change Orders**

If your project uses change orders, the system will copy the state of the **Pending CO Included** check box from the **Include Pending CO in Calculations** check box on the [Cost Projection by Date](PM_30_55_00.md) \(PM305500\) form. If it’s selected, the project WIP adjustment includes the pending amounts from change orders whose amounts are specified in the cost projection.

**Send Emails to Project Managers**

You can select any number of project lines and click **Send Email** on the table toolbar to create and send emails to the project managers specified in these project lines.

## Voiding a Project WIP Adjustment { .section}

If a project WIP adjustment has incorrect data—such as an incorrect amount, account, or posting option—you can cancel it. To do this, you click **Void** on the form toolbar of the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form. The system:

-   Assigns the *On Hold* status to the project WIP adjustment so that you can correct the mistakes
-   Creates a reversal batch for the batch that has been canceled
-   Clears the **GL Batch** box on the **Financial** tab

## Generate the Needed WIP Report { .section}

From the [Project WIP Adjustment](PM_30_56_00.md) \(PM305600\) form, you can generate the following reports:

-   The [Project WIP](PM_65_15_00.md) \(PM651500\) report: Click **Print WIP Report** on the More menu.
-   The new [Project WIP Adjustment](PM_65_18_50.md) \(PM651850\) report: Click **Print WIP Adjustment** on the More menu.

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

