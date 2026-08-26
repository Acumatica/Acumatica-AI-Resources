# To Create an Approval Map for Parallel Approvals {#_9b53621f-4ae6-466c-a175-af498fadcba2 .task}

In this activity, you will configure an approval map for parallel approvals by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that according to the internal requirements of SweetLife Fruits &amp; Jams, each cash purchase that has an amount exceeding $5000 \(in US dollars\) requires approval from both the accountant and the CFO. If a cash purchase meets these conditions, both the accountant and the CFO can approve the purchase interdependently of one another, and the cash purchase is posted after it has been approved by both approvers.

Acting as a system administrator, you need to set up the parallel approval workflow and configure an approval map for this type of purchase and assign Layla Beauvoir, the accountant, and Maxwell Baker, CFO, as the approvers of these purchases.

## Process Overview { .section}

In this activity, you will first enable the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. On the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, you will create an approval map for the parallel approval, specifying the approvers, the conditions for cash purchase, and the actions to be performed on approval of the cash purchase that match those conditions. Finally, on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you will add the approval map on the **Approval** tab.

## System Preparation { .section}

Before you start configuring the parallel approval for cash purchases, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the system administrator with the *gibbs* username and the *123* password.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Approval Workflow* feature, do the following:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, click **Modify** on the form toolbar.
2.  Under the *Platform* group of features, select the **Approval Workflow** check box.
3.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Creating an Approval Map for Parallel Approvals { .section}

To create and configure an approval map, do the following:

1.  Navigate to the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) \(EP205500\) form and select **Add Approval Map** on the form toolbar to open the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
2.  On the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, specify the following settings in the Summary area:
    -   **Name**: `Parallel Approval of Cash Purchases`
    -   **Entity Type**: *Cash Purchases*
3.  On the **Steps** pane \(to the left\), click **Add Step** on the pane toolbar to add the first step—note that the first rule is automatically added.
    -   In the **Description** box, type a description for the approval step \(for example, `Approval for purchases over $5000`\).
    -   Keep the default values for the rest of the settings on this pane.
4.  Click the *Rule* node on the **Steps** pane \(to the left\) to access the rule summary pane \(to the right of the tree pane\).
    -   In the **Description** box of the rule summary pane, type a description for the approval rule \(for example, `Cash Purchases over $5000`\).
    -   **Active**: Selected
5.  On the **Conditions** tab, on the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Brackets**: *\(*
    -   **Entity**: *Cash Purchase*
    -   **Field Name**: *Total Amount*
    -   **Condition**: *Is Greater Than*
    -   **Value**: `5000`
    -   **Brackets**: *-*
6.  On the **Rule Actions** tab, specify the following settings:
    1.  **Approver**: *Employee*
    2.  In the **Approval Settings** table, add the first row
    3.  In the **Employee Name** column, select *Layla Beauvoir*
    4.  In the **Approval Settings** table, add the second row
    5.  In the **Employee Name** column, select *Maxwell Baker*
7.  In the **On Approval** box, select *Collect All Approvals from This Step*.
8.  On the form toolbar, click **Save** to save your changes.

## Step 3: Specifying Approval Settings for Cash Purchases { .section}

To specify the settings for the parallel approval of cash purchases, do the following:

1.  Open the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.
2.  On the **Approval** tab, click **Add Row** on the table toolbar.
3.  In the added row, specify the following settings:
    -   **Type**: *Cash Purchase*
    -   **Approval Map**: *Parallel Approval of Cash Purchases*

        This is the approval map that you created in Step 2.

4.  On the form toolbar, click **Save** to save your settings.

**Parent topic:**[Approvals: Parallel and Multistage Approvals](../ImplementationGuide/Approvals_Parallel_and_Multistage.md)

