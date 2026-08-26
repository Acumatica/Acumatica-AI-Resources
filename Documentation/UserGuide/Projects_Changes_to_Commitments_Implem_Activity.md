# Change Orders for Commitments: To Create a Change Order Class {#_fb50755a-1984-46fd-9fe8-dfabb321b137 .task}

This activity will walk you through the process of configuring a change order class.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_fkp_5vj_1qb .section}

Suppose that you, as the system administrator of the SweetLife Fruits &amp; Jams company, need to configure a change order class to be used by a purchase manager for creating change orders for project commitments. The change order class must prevent users from changing the revenue and cost budgets of a project.

## Configuration Overview { .section}

For the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Projects*, which provides support for the project management functionality
-   *Change Orders*, which gives you the ability to track changes to projects with change orders

## Process Overview { .section}

You will configure a change order class on the [Change Order Classes](PM_20_30_00.md) \(PM203000\) form.

## System Preparation {#section_hwr_kmj_xpb .section}

Launch the Acumatica ERP website, and sign in as the system administrator by using the *gibbs* username and the *123* password.

## Step: Creating a Change Order Class { .section}

To create a change order class that will be used for creating change orders for project commitments, do the following:

1.  On the [Change Order Classes](PM_20_30_00.md) \(PM203000\) form, add a new record.
2.  In the Summary area, enter the following settings:

    -   **Class ID**: `COMMITMENT`
    -   **Description**: `Change orders to commitments`
    Notice that the **Active** check box is selected by default.

3.  Clear the **Cost Budget** and **Revenue Budget** check boxes, and leave the **Commitments** check box selected. With these settings, for the change orders with this class selected, users can make changes to only commitments without the cost and revenue budgets being affected.
4.  Save the change order class.

You have defined a change order class that can be used for creating change orders that affect project commitments.

**Parent topic:**[Tracking Changes to Commitments](../UserGuide/Projects_Changes_to_Commitments_Mapref.md)

