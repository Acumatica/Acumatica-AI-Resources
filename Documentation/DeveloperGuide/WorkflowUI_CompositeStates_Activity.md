# Composite States: To Modify a Workflow with a Composite State {#_5756bdc9-c09d-4004-bd75-660e2b0ffdaf .task}

The following activity will walk you through the process of modifying a composite state in the invoice workflow.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you need to implement the following behavior on the [Invoices](../Shared/../UserGuide/SO_30_30_00.md) \(SO303000\) form:

-   If a user specifies a discount for an invoice, you want this invoice to be reviewed and the discount to be approved before the user can proceed with processing the invoice. The invoice with the discount on review should have the *Postponed* status. After the discount is approved, the system specifies the business date in the **Cash Discount Date** box.
-   If the user does not specify any discount, the invoice does not obtain the *Postponed* status.

On the [Invoices](../Shared/../UserGuide/SO_30_30_00.md) \(SO303000\) form, the default workflow includes a composite workflow state with multiple nested workflow states. To implement the described behavior, you need to add a new workflow state, `Postponed`, to the composite state after the workflow state that corresponds to the *Credit Hold* status of an invoice.

You also need to specify a skip condition for the new workflow state and add a transition from this workflow state to the next state in the workflow. The skip condition will check for no cash discount being applied to the invoice.

## Process Overview { .section}

By using the [Workflows](../UserGuide/AU_20_10_20.md) page, you will create an inherited workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. By using the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, you will add a nested state to the workflow. On the [Conditions](../UserGuide/AU_20_10_10.md) page, you will specify a condition that the system will use to skip this state. You will then add a transition from the state to the next nested state on the [Workflows](../UserGuide/AU_20_10_20.md) page.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure you have learned how to perform workflow customization, as described in [Inherited Workflows: General Information](WorkflowUI_InheritedWorkflows_GeneralInfo.md).
3.  Unpublish your current customization project or projects by doing the following:
    1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
    2.  On the form toolbar, click **Unpublish All**.
4.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, create a customization project named *Invoices*.

## Step 1: Adding a Form to the List of Customized Screens { .section}

Add the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form to the list of customized screens as follows:

1.  In Acumatica ERP, open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  In the table with the customization projects, click the *Invoices* link.

    The Customization Project Editor opens for the *Invoices* customization project. You will use this project for the customization.

3.  In the navigation pane of the Customization Project Editor, click **Screens**.
4.  On the page toolbar of the Customized Screens page, which is opened, click **Customize Existing Screen**.
5.  In the **Customize Existing Screen** dialog box, which is opened, select *Invoices*.
6.  Click **OK** to close the dialog box.

## Step 2: Creating an Inherited Workflow for the Form { .section}

Create a customized workflow for the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form as follows:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **SO303000** &gt; **Workflows**.

    The SO303000 \(Invoices\) Workflows page of the Customization Project Editor opens. Notice that the table on the page contains one workflow: *Default Workflow*.

2.  On the page toolbar, click **Add Workflow**.
3.  In the **Add Workflow** dialog box, which opens, specify the following settings:
    -   **Operation**: *Extend System Workflow*
    -   **Base Workflow**: *Default Workflow*
    -   **Workflow Type**: *DEFAULT*
    -   **Workflow Name**: `Invoices` \(the name of the workflow that will be displayed on the Workflow page\)
4.  Click **Add** to close the dialog box.

    A row for the workflow appears in the table on the Workflows page. Notice that the workflow’s status is *Inherited*, which means that this workflow is based on a predefined workflow.

5.  Select the **Active** check box for the created workflow.

    Notice that the **Active** check box has been cleared automatically for the predefined workflow \(*Default Workflow*\). This means that the system will not use this workflow for the form anymore.

6.  On the page toolbar, click **Save**.
7.  In the table, click the link in the **Workflow Name** column for the created workflow.

    The SO303000 \(Invoices\) State Diagram: Invoices page opens.


## Step 3: Adding a Condition { .section}

To add a skip condition that the system will use to skip the `Postponed` state, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **SO30300** &gt; **Conditions**.

    The Conditions: SO303000 \(Invoices\) page opens.

2.  On the page toolbar, click **Add New Record**.
3.  In the **Conditions Properties** dialog box, which opens, type `DiscountEmpty` as the condition name.
4.  On the table toolbar, add a row with the following settings:
    -   **Field Name**: *Discount Total \(OrderDiscTotal\)*
    -   **Condition**: *Equals*
    -   **From Schema**: Selected
    -   **Value**: `0`
5.  Make sure the **Active** check box is selected for the added row.
6.  Click **Save** to save your changes and close the dialog box.

    The added condition appears in the list of conditions on the Conditions: SO303000 \(Invoices\) page.


## Step 4: Adding a Nested State { .section}

To add a new nested state to the composite state, perform the following instructions:

1.  In the navigation pane, click **Screens** &gt; **SO303000** &gt; **Workflows** &gt; **Invoices**.

    The SO303000 \(Invoices\) State Diagram: Invoices page opens.

2.  On the page toolbar, click **Add State**.
3.  In the **Add State** dialog box, which opens, specify the following settings:
    -   **Identifier**: `Q`
    -   **Description**: `Postponed`
    -   **Parent State**: *H-&gt;B*
4.  Click **Add** to close the dialog box.

    In the **States and Transitions** pane, the system adds the `Postponed` state after the last nested state \(`Balanced` in this case\).

5.  With `Postponed` selected in the pane, use the arrows on the pane toolbar to move the added state after the `Credit Hold` state.
6.  With the `Postponed` state still selected, select *DiscountEmpty* in the **Skip Condition** box of the **State Properties** tab.

    If the condition is fulfilled \(that is, if the value in the **Cash Discount** box is *0*\) and a document is ready to enter the `Postponed` state, it then skips this state and automatically moves to the next state \(`Pending Print` in this case\).

7.  On the page toolbar, click **Save**.

## Step 5: Adding a Transition { .section}

To add a transition from the added state to the next nested state of the composite state, perform the following instructions:

1.  While you are still on the SO303000 \(Invoices\) State Diagram: Invoices page, click the `Postponed` state.
2.  On the page toolbar, click **Add Transition**.
3.  In the **Add Transition** dialog box, which is opened, click **Create** to the right of the **Trigger Name** box.
4.  In the **New Action** dialog box, which is opened, specify the following settings for the action:
    -   **Action Name**: `DiscountApproved`
    -   **Display Name**: `Discount Approved`
    -   **Category**: *Processing*
5.  Click **Save** to close the **New Action** dialog box.
6.  In the **Target State** box of the **Add Transition** dialog box, select *@Next*.

    This setting indicates that the transition will lead to the next state in the sequence \(`Pending Print` in this case\).

7.  Click **Add** to close the dialog box.

    The system adds the transition to the **Transitions** node of the `Postponed` state.

8.  In the **States and Transitions** pane, click the `Postponed` state.
9.  On the table toolbar of the **Fields to Update on Exit** tab \(in the lower part of the **State Properties** tab\) for this state, click **Add Row** and specify the following settings:

    -   **Active**: Selected
    -   **Field Name**: *Cash Discount Date*
    -   **From Schema**: Cleared
    -   **New Value**: `=Now()`
    Each time a document leaves the `Postponed` state, the value of the Cash Discount Date field changes to the business date. This happens when the document moves to another state because the transition has been triggered by the `Discount Approved` action.

10. On the page toolbar, click **Save**.

## Step 6: Publishing the Customization Project { .section}

Publish the customization project as follows:

1.  On the menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.
2.  After the system finishes updating the required data, click **Close Compilation Pane**.

## Step 7: Testing Your Changes { .section}

Test your changes as follows:

1.  In Acumatica ERP, go to the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. You need to refresh the form if you were already viewing it before the publication of the project.
2.  Test the workflow for an invoice that requires discount approval:
    1.  Create a new invoice for the customer with the *CITRUS* ID. Leave other settings in the Summary area as they are specified by default.
    2.  On the tab toolbar of the **Details** tab, click **Add Row**, and specify the following settings in the added row:
        -   **Branch**: *HEADOFFICE* \(specified automatically\)
        -   **Inventory ID**: *KIWIJAM96*
        -   **Transaction Descr.**: *Kiwi jam 96 oz* \(specified automatically\)
        -   **Warehouse**: *RETAIL* \(specified automatically\)
        -   **Location**: *JS1*
        -   **Quantity**: `20`
    3.  On the form toolbar, click **Save**.
    4.  In the **Document Discounts** box of the Summary area of the form, enter `5`.
    5.  On the form toolbar, click **Remove Hold**.

        The status of the invoice changes to *Postponed*.

    6.  On the More menu, click **Discount Approved**.

        The status of the invoice changes to *Balanced*, and the value in the **Cash Discount Date** box is the business date.

3.  Test the workflow for an invoice that does not require discount approval:
    1.  Create another invoice for the customer with the *GROCERIEX* ID.
    2.  On the tab toolbar of the **Details** tab, click **Add Row**, and specify the following settings in the added row:
        -   **Branch**: *HEADOFFICE* \(specified automatically\)
        -   **Inventory ID**: *APPLES*
        -   **Transaction Descr.**: *Fresh apples 1 lb* \(specified automatically\)
        -   **Location**: *Main*
        -   **Quantity**: `7`
    3.  On the form toolbar, click **Save**.
    4.  On the form toolbar, click **Remove Hold**.

        The status of the invoice changes to *Balanced*. Because you have not specified any value in the **Document Discounts** box, the system skipped the `Postponed` state and moved the invoice to the next state in the composite state \(`Balanced` in this case\).


**Parent topic:**[Using Composite States](../DeveloperGuide/WorkflowUI_CompositeStates_Mapref.md)

