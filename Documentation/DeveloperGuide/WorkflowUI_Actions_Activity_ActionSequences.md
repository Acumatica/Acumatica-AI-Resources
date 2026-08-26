# Action Configuration: To Configure Sequential Action Execution {#_3b3ad8da-34ee-4443-b60e-2599ac673065 .task}

The following activity will walk you through the process of configuring a sequence of actions for the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form.

## Story { .section}

Suppose that you are a technical specialist working on simple customizations in your company. Further suppose that you have been asked to make the following modifications to the case processing workflow:

-   After a user takes a case, the status of this case should change from *New* to *Open*. As a reason for the change, the system should specify the *In Process* value.
-   If a user closes a billable case, the system should release this case. That is, the status of this case should change from *Closed* to *Released*. After that, the system should display the invoice for the case—that is, invoke the **View Invoice** command.

## Process Overview { .section}

By using the [Conditions](../UserGuide/AU_20_10_10.md) page, you will create a condition that checks if a case is billable. By using the [Actions](../UserGuide/AU_20_10_50.md) page, you will add subscribers for the `takeCase` action and the `Close` action. You will then publish the customization project and test the changes.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure you have learned how to perform workflow customization, as described in [Inherited Workflows: General Information](WorkflowUI_InheritedWorkflows_GeneralInfo.md).
3.  Unpublish your current customization project or projects by doing the following:
    1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
    2.  On the form toolbar, click **Unpublish All**.
4.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, create a customization project named *ActionSequences*.

## Step 1: Adding a Form to the List of Customized Screens { .section}

Add the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form to the list of customized screens as follows:

1.  In Acumatica ERP, open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  In the table with the customization projects, click the *ActionSequences* link.

    The Customization Project Editor opens with the *ActionSequences* customization project selected. You will use this project.

3.  In the navigation pane of the Customization Project Editor, click **Screens**.
4.  On the page toolbar of the Customized Screens page, which opens, click **Customize Existing Screen**.
5.  In the **Customize Existing Screen** dialog box, which opens, select *Cases \(CR306000\)*.
6.  Click **OK** to close the dialog box.

    The Screen Editor: \(CR306000\) Cases page of the Customization Project Editor opens.


## Step 2: Creating a Condition { .section}

To create a condition that checks if a case is billable, do the following:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **CR306000** &gt; **Conditions**.

    The Conditions: CR306000 \(Cases\) page opens.

2.  On the page toolbar, click **Add New Record**.
3.  In the **Conditions Properties** dialog box, which opens, type `IsBillable` as the condition name.
4.  Click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Field Name**: *Billable*
    -   **Condition**: *Equals*
    -   **From Schema**: Selected
    -   **Value**: Selected
5.  Make sure that the **Active** check box is selected for the added row.
6.  Click **OK** to save your changes and close the dialog box.

    The added condition appears in the list of conditions on the Conditions: CR306020 \(Task\) page. You will use this condition to check if a case is billable.


## Step 3: Adding a Subscriber for the takeCase Action { .section}

To add the `Open` action as a subscriber to the `takeCase` action, do the following:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **CR306000** &gt; **Actions**.

    The CR306000 \(Cases\) Actions page opens.

2.  In the table, click the *takeCase* link in the **Action Name** column.

    The **Action Properties** dialog box opens.

3.  On the **Actions Executed on Success** tab, click **Add Row** on the table toolbar and specify the following settings in the added row:
    1.  **Active**: Selected
    2.  **Action Name**: *Open \(Open\)*
    3.  **Execution Condition**: *True* \(specified automatically\)
    4.  **Dialog Box**: *FormOpen* \(specified automatically\)
    5.  **Stop on Error**: Cleared
4.  In the table, click the *FormOpen* link in the **Dialog Box** column.

    The **Dialog Box Values** dialog box opens.

5.  In the dialog box, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Field**: *\[FormOpen.Reason\]*
    -   **From Schema**: Selected
    -   **New Value**: *In Process*

        This setting will make the system display the *In Process* value in the **Reason** box of the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form instead of the default *Assigned* value.

6.  Click **Close** to close the dialog box.
7.  In the **Action Properties** dialog box, to which you return, click **Save** to close it and save your changes.

## Step 4: Adding Subscribers for the Close Action { .section}

To add the `Release` and `View Invoice` actions as subscribers to the `Close` action, do the following:

1.  In the navigation pane of the Customization Project Editor, click **Screens** &gt; **CR306000** &gt; **Actions**.

    The CR306000 \(Cases\) Actions page opens.

2.  In the table, click the *Close* link in the **Action Name** column.

    The **Action Properties** dialog box opens.

3.  On the **Actions Executed on Success** tab, click **Add Row** on the table toolbar, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action Name**: *Release \(release\)*
    -   **Execution Condition**: *IsBillable*
    -   **Stop on Error**: Selected

        This setting will prevent the system from generating an invoice \(that is, performing the `View Invoice` action\) if the `Release` action fails.

4.  Click **Add Row** again, and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Action Name**: *View Invoice \(viewInvoice\)*
    -   **Execution Condition**: *IsBillable*
    -   **Stop on Error**: Cleared
5.  Click **Save** to close the dialog box and save your changes.

## Step 5: Publishing the Customization Project { .section}

To publish the *ActionSequences* customization project, do the following:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the *TaskWorkflow* project name to open the customization project.
2.  On the menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.

    The system starts publishing the customization project and displays the progress in the **Compilation** pane, which appears at the bottom of the Customization Project Editor window.

3.  After the system finishes updating the required data, click **Close Compilation Pane** in the **Compilation** pane.

## Step 6: Testing the takeCase Action { .section}

In Acumatica ERP, test the modified `takeCase` action as follows:

1.  On the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form, create a case with the following settings:
    -   **Case Class**: *JREPAIR*
    -   **Business Account**: *CANDYY*
    -   **Contact**: *Kathy T. Hurwitz* \(specified automatically\)
    -   **Subject**: `Juicer repairs`
    -   **Model of a Juicer**: *JUICER10*
2.  On the form toolbar, click **Save**.

    In the **Billing** section of the **Additional Info** tab, notice that the **Billable** check box is selected.

3.  On the form toolbar, click **Take Case**.

    The status of the case changes to *Open*. Notice that the system displays the **Processing Results** dialog box, indicating that it has executed first the `takeCase` action and then the `Open` action.

4.  Click **OK** to close the dialog box.
5.  In the Summary area, notice that the value in the **Reason** box is *In Process*.

    The system did not display the **Details** dialog box when the status of the case changed from *New* to *Open*. Instead, the system used the value \(*In Process*\) that you have specified in the **Dialog Box Values** dialog box for the `Open` action.


## Step 7: Testing the Close Action { .section}

While you are still viewing the created case on the [Cases](../UserGuide/CR_30_60_00.md) \(CR306000\) form, test the modified `takeCase` action as follows:

1.  On the table toolbar of the **Activities** tab, click **Create Activity** &gt; **Create Work Item**.

    The [Activity](../UserGuide/CR_30_60_10.md) \(CR306010\) form opens in a pop-up window.

2.  In the **Summary** box, type `Request for juicer repairs`.
3.  In the **Started On** box, specify the current date.
4.  In the text area, type `The juicer has been repaired`.
5.  Make sure that the **Billable** check box is selected, and that in the **Earning Type** box, *RG—Regular Hours* is selected.
6.  In the **Time Spent** box, select *02:00*.
7.  In the **Project** box, select *X—Non-Project Code*.
8.  On the form toolbar, click **Complete**.

    On the [Cases](../UserGuide/CR_30_60_00.md) form, to which you return, notice that a row with the *Work Item* type has been added to the table on the **Activities** tab.

9.  On the form toolbar, click **Close**.
10. In the **Close** dialog box, which opens, select *Resolved* in the **Reason** box, and click **OK**.

    Because the case is billable, its status changes from *Closed* to *Released*, and the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form opens with the invoice for the case.

    On the [Cases](../UserGuide/CR_30_60_00.md) form, the system displays the **Processing Results** dialog box, indicating that it has executed the `Close` action, the `Release` action and then the `View Invoice` action.


**Parent topic:**[Configuring Actions](../DeveloperGuide/WorkflowUI_Actions_Mapref.md)

