# Change Requests: Implementation Activity {#_fc52ceac-58c3-45fe-b221-dfe89ff18b2a .task}

The following implementation activity will walk you through the process of configuring two-tier change management for projects.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as the system administrator, need to configure two-tier change management so that the change requests to projects can be processed in the system. Also, you need to configure the following price markups to be applied to the new projects:

-   A default price markup of 25% to be applied to each individual change made with a change request
-   A markup of 8% of the total costs to be applied to an entire change request
-   A markup of 4% of overhead to be applied to an entire change request
-   A markup of 5% of all the previously charged markups to be applied to an entire change request
-   A flat fee of $100 per change request

You also need to configure an additional 10% markup to be automatically applied to the change request lines that relate to labor. Acting as the system administrator, you will perform these tasks.

## Configuration Overview {#section_k44_tw5_gnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Construction* and *Change Orders* features have been enabled.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *LABOR*, *SUBCON*, and *REVENUE* account group have been configured.

## Process Overview { .section}

You will configure the default price markups on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form and the [Account Groups](PM_20_10_00.md) \(PM201000\) form. You will also create change order classes that support two-tier change management on the [Change Order Classes](PM_20_30_00.md) \(PM203000\) form and specify the change order class to be used by default on the [Projects Preferences](PM_10_10_00.md) form.

## System Preparation {#section_tfn_kg5_gnb .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, and on the form toolbar, click **Modify**.
3.  In the *Projects* group of features, select the **Change Requests** check box.
4.  On the form toolbar, click **Enable**.

## Step 1: Specifying the Default Markups { .section}

To specify the default markups that the system will assign to change requests, on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, do the following:

1.  On the **General** tab \(**General Settings** section\), select the **Internal Cost Commitment Tracking** check box, and save your changes to the project accounting preferences. This exposes the committed values of the budget.
2.  On the **General** tab, in the **Change Request Markups** section, enter `25` in the **Default Price Markup \(%\)** box.
3.  In the **Change Request Document Markups** table, add rows with the following settings.

    |**Type**|**Description**|**Value**|
    |--------|---------------|---------|
    |*%*|`Profit markup on cost`|`8`|
    |*%*|`Overhead cost markup`|`4`|
    |*Cumulative \(%\)*|`Default cumulative (%)`|`5`|
    |*Flat Fee*|`Additional charges`|`100`|

    The system will apply these document-level markups to the total amount of change requests by default. Also, these markups will be specified by default in newly created projects.

4.  Save your changes.

## Step 2: Creating a Change Order Class for Cost Change Orders {#section_pwm_ch5_gnb .section}

To create a change order class for the change orders that affect only the project cost budget, do the following:

1.  On the [Change Order Classes](PM_20_30_00.md) \(PM203000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Class ID**: `INTERNAL`
    -   **Description**: `Cost change orders`
    -   **Two-Tier Change Management**: Selected

        Because you have selected the **Two-Tier Change Management** check box, the **Cost Budget** and **Commitments** check boxes are selected by default and cannot be cleared.

    -   **Revenue Budget**: Cleared
3.  Save the change order class.

## Step 3: Creating a Change Order Class for Revenue Change Orders {#section_qwm_ch5_gnb .section}

To create a change order class for the change orders that affect the project revenue budget, while you are still viewing the [Change Order Classes](PM_20_30_00.md) \(PM203000\) form, do the following:

1.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Class ID**: `EXTERNAL`
    -   **Description**: `Cost and revenue change orders`
    -   **Two-Tier Change Management**: Selected
    -   **Cost Budget**: Selected
    -   **Revenue Budget**: Selected
    -   **Commitments**: Selected
2.  Save the change order class.
3.  On the **General** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, in the **Default Change Order Class** box, select *EXTERNAL*, and then save your changes.
4.  On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, open the *LABOR* account group.
5.  In the Summary area, specify *REVENUE* in the **Default Revenue Account Group** box.
6.  On the **Change Request Settings** tab, enter `10` in the **Default Line Markup \(%\)** box.
7.  Save your changes.
8.  Open the *SUBCON* account group.
9.  In the Summary area, specify *REVENUE* in the **Default Revenue Account Group** box.
10. Save your changes.

You have configured two-tier change management for projects and specified default project markups.

**Parent topic:**[Processing Change Requests](../UserGuide/Projects_Two_Tier_Change_Management_Mapref.md)

