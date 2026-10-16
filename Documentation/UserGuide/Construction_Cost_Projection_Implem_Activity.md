# Project Cost Projections: To Create a Cost Projection Class

This activity will walk you through the process of creating a cost projection class.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that you are the construction project manager of the ToadGreen Building Group company, and you need to create a cost projection class to be used for estimating the costs of a project. The cost projection class must provide the ability to estimate the costs at the task, item, and account group levels of detail.

## Configuration Overview

For the purposes of this activity, the *Construction* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview

You will create a cost projection class on the [Cost Projection Classes](PM_20_35_00.md) \(PM203500\) form.

## System Preparation

Before you start creating a cost projection class, you need to launch the Acumatica ERP website and sign in to a company with the *U100* dataset preloaded. You should sign in as a construction project manager by using the *ewatson* username and the *123* password.

## Step: Creating a Cost Projection Class

To define a cost projection class that will be used for creating cost projections, do the following:

1.  On the [Cost Projection Classes](PM_20_35_00.md) \(PM203500\) form, add a new row, and specify the following settings:
    -   **Class ID**: *TAGI*
    -   **Description**: `Cost projection by task, account group, and inventory item`
    -   **Active**: Selected
    -   **Cost Task**: Selected
    -   **Account Group**: Selected
    -   **Inventory ID**: Selected
2.  Save the cost projection class you have created.

You have defined a cost projection class that can be used for creating cost projections and estimating the costs of a project.

**Parent topic:**[Preparing Cost Projections](../UserGuide/Construction_Cost_Projection_Mapref.md)

