# Diagram View: To Test the Inherited Workflow {#_08ef3160-7bc7-4ddb-ac7b-acce0d8aa3e3 .task}

The following activity will walk you through the process of testing the customized workflow that you have created for the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form.

## Story { .section}

Acting as the technical specialist, you need to publish your customization project and then test your changes on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form to make sure that the customized workflow works as expected.

## Process Overview { .section}

By starting on the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of Acumatica ERP, you will go to the Customization Project Editor for your customization project and publish it. On the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, you will then test the customized workflow.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to customize workflows.

2.  Make sure that you have learned how to test a customization, as described in [Testing of the Customization Project: General Information](WorkflowUI_TestingCustomization_GeneralInfo.md).
3.  Make sure that you have completed the [Diagram View: To Adjust the System State](WorkflowUI_CustomizingInheritedWorkflow_Activity_UpdateSystemState.md) activity.

## Step 1: Publishing the Customization Project { .section}

Publish your customization project as follows:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the *Opportunities* project name to open the customization project.
2.  On the menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.
3.  After the system finishes updating the required data, click **Close Compilation Pane**.

For details on publishing a customization project, see [To Publish a Single Project](../CustomizationPlatform/CG_GL_Projects_Publishing_Single.md).

## Step 2: Testing the Assigned State and the Accept Action { .section}

In Acumatica ERP, test your changes as follows:

1.  Open the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form. If you already have the form open, refresh it.
2.  Create an opportunity with the following settings:
    -   **Business Account**: *MORNINGCAF*
    -   **Description**: `Training for Morning Cafe`
    -   **Owner**: Empty
3.  On the form toolbar, click **Save**.
4.  On the form toolbar, make sure that the **Assign** button is displayed, and click it.
5.  In the **Details** dialog box, which opens, select *Kimberly Gibbs* in the **Owner** box.
6.  Click **OK** to save your changes and close the dialog box.

    Notice that the status of the opportunity has changed to *Assigned*, and that the **Owner** box now contains the name of the salesperson you have specified.

7.  On the form toolbar, click **Accept**.
8.  In the **Details** dialog box, which opens, select the following settings:
    -   **Reason**: *In Process*
    -   **Stage**: *Qualification*
9.  Click **OK** to save your changes and close the dialog box.

    Notice that the status of the opportunity has changed to *Open.*


## Step 3: Testing the Reject Action { .section}

Test the `Reject` action as follows:

1.  On the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, create another opportunity with the following settings:
    -   **Business Account**: *BISCCITY*
    -   **Description**: `Inquiry for berries`
    -   **Owner**: *Andrew Barber*
2.  Save your changes.

    Notice that the status of the opportunity has changed from *New* to *Assigned*.

3.  On the More menu \(under **Actions**\), click **Reject**.
4.  In the **Details** dialog box, which opens, specify the reason for rejection in the **Reason** box \(*Delivery Date*\) and any text in the **Details** box, such as `Delivery has been delayed`.
5.  Click **OK** to save your changes and close the dialog box.

    Notice that the status of the opportunity has changed to *New*, and the **Owner** box has become empty again.


**Parent topic:**[Customizing Workflows with the Diagram View](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_Mapref.md)

