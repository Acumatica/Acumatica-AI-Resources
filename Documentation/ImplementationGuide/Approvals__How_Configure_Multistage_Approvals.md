# To Create an Approval Map for Multistage Approvals {#_5f862ca4-d72c-462a-9d0a-0a583da70c6f .task}

In this activity, you will configure an approval map for the multistage approval by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that according to the internal requirements of SweetLife Fruits &amp; Jams, each cash purchase must be initially approved by an accountant, and each cash purchase that has an amount exceeding $5000 \(in US dollars\) must also be approved by the CFO. Once an accountant has approved the cash purchase in the first stage, that cash purchase \(if it matches the conditions specified for the second stage\) goes to the CFO for the final approval.

Acting as a system administrator, you need to set up the multistage approval workflow and configure an approval map for this type of purchase and set the workgroup that includes accountants and Maxwell Baker, CFO, as the approvers of these purchases.

## Process Overview { .section}

In this activity, you will first enable the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. On the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, you will create an approval map for the multistage approval, specifying the approvers, the conditions for cash purchase, and the actions to be performed on approval of the cash purchase that match those conditions. Finally, on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you will add the approval map on the **Approval** tab.

## System Preparation { .section}

Before you start configuring the multistage approval for cash purchases, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the system administrator with the *gibbs* username and the *123* password.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Approval Workflow* feature, do the following:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, click **Modify** on the form toolbar.
2.  Under the *Platform* group of features, select the **Approval Workflow** check box.
3.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Creating an Approval Map for Multistage Approvals { .section}

To create and configure an approval map, do the following:

1.  Navigate to the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md) \(EP205500\) form and select **Add Approval Map** on the form toolbar to open the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form.
2.  On the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, specify the following settings in the Summary area:
    -   **Name**: `Sequential Approval of Cash Purchases`
    -   **Entity Type**: *Cash Purchases*
3.  On the **Steps** pane \(to the left\), click **Add Step** on the pane toolbar to add the first step—note that the first rule is automatically added.
    -   In the **Description** box, type a description for the first approval stage \(for example, `Approved by Accountant`\).
    -   **If No Approver Found**: *Go To Next Step*
    -   **Execute Step**: *Always*
4.  Click the *Rule* node on the **Steps** pane \(to the left\) to access the rule summary pane \(to the right of the tree pane\).
    -   In the **Description** box of the rule summary pane, type a description for the approval rule \(for example, `Approve all Cash Purchases`\).
    -   **Active**: Selected
5.  On the **Conditions** tab, on the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Brackets**: *-*
    -   **Entity**: *Cash Purchase*
    -   **Field Name**: *Type*
    -   **Condition**: *Equals*
    -   **Value**: *Cash Purchase*
    -   **Brackets**: *-*
6.  On the **Rule Actions** tab, specify the following settings:
    -   **Approver**: *Employee*
    -   Leave the **Approval Settings** table empty.
    -   In the **Workgroup** box, select the workgroup that includes the accountants responsible for approving cash purchases at the first stage \(for example, *Finance*\).
    -   **On Approval**: *Complete Step*
7.  On the **Steps** pane \(to the left\), click **Add Step** on the pane toolbar to add the second step.
    -   In the **Description** box, type a description for the second approval stage \(for example, `Approved by CFO`\).
    -   **If No Approver Found**: *Go To Next Step*
    -   **Execute Step**: *Always*
8.  Click **Add Rule** on the pane toolbar and then click the *Rule* node on the **Steps** pane \(to the left\) to access the rule summary pane \(to the right of the tree pane\).
    -   In the **Description** box of the rule summary pane, type a description for the approval rule \(for example, `Approve Cash Purchases over $5000`\).
    -   **Active**: Selected
9.  On the **Conditions** tab, on the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Brackets**: *-*
    -   **Entity**: *Cash Purchase*
    -   **Field Name**: *Total Amount*
    -   **Condition**: *Is Greater Than*
    -   **Value**: `5000`
    -   **Brackets**: *-*
10. On the **Rule Actions** tab, specify the following settings:
    1.  **Approver**: *Employee*
    2.  In the **Approval Settings** table, add a row.
    3.  In the **Employee Name** column, select *Maxwell Baker*.
    4.  **On Approval**: *Approve Document*
11. Click **Save** on the form toolbar.

## Step 3: Specifying Approval Settings for Cash Purchases { .section}

To specify the settings for the multistage approval of cash purchases, do the following:

1.  Open the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.
2.  On the **Approval** tab, click **Add Row** on the table toolbar.
3.  In the added row, specify the following settings:
    -   **Type**: *Cash Purchase*
    -   **Approval Map**: *Sequential Approval of Cash Purchases*

        This is the approval map that you created in Step 2.

4.  On the form toolbar, click **Save** to save your settings.

**Parent topic:**[Approvals: Parallel and Multistage Approvals](../ImplementationGuide/Approvals_Parallel_and_Multistage.md)

