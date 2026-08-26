# Change Requests: To Configure Project Markups {#_a9155b00-65ee-42da-af7d-a43157a3a13f .task}

The following implementation activity will walk you through the process of configuring project markups in an existing project.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you, as the project manager need to configure the following price markups to be applied to change requests created for the *ITALIAN* project:

-   A markup of 9% of the total costs to be applied to an entire change request
-   A markup of 6% of overhead to be applied to an entire change request
-   A markup of 7% of all the previously charged markups to be applied to an entire change request
-   A flat fee of $1250 per change request

Also, you need to associate these markups with the particular project task, account group, and cost code to track them in the revenue budget of the project. Acting as the project manager, you will perform these tasks.

## Configuration Overview {#section_k44_tw5_gnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Construction* and *Change Orders* features have been enabled.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *REVENUE* account group has been created.
-   On the [Projects](PM_30_10_00.md) \(PM301000\) form, the *ITALIAN* project has been configured; the project tasks have been created, along with the related cost and revenue budget.

## Process Overview { .section}

You will create document markups of different types for the project on the **Defaults** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. To each of the created markups, you will assign the project task, account group, and cost code, with which the markup amounts should be associated.

## System Preparation {#section_tfn_kg5_gnb .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

1.  As a prerequisite to the current activity, perform the [Change Requests: Implementation Activity](Projects_Two_Tier_Change_Management_Implem_Activity.md) activity to configure the change requests functionality.
2.  Sign in to a company with the *U100* dataset preloaded. You should sign in as project manager by using the *ewatson* username and the *123* password.

## Step: Updating Project-Specific Markups {#section_slc_b15_gnb .section}

Specify the markups for the *ITALIAN* project by doing the following:

1.  On the [Projects](PM_30_10_00.md) \(PM301000\) form, open the *ITALIAN* project.
2.  In the **Document Markups** table on the **Defaults** tab, add lines with the following settings.

    |Type|Description|Value|Project Task|Account Group|Cost Code|
    |----|-----------|-----|------------|-------------|---------|
    |*%*|`Profit markup on cost`|`9.00`|*02*|*REVENUE*|*02-000*|
    |*%*|`Overhead cost markup`|`6.00`|*02*|*REVENUE*|*02-000*|
    |*Cumulative \(%\)*|`Default Cumulative %`|`7.00`|*02*|*REVENUE*|*02-000*|
    |*Flat Fee*|`Additional charges`|`1250`|*02*|*REVENUE*|*02-000*|

3.  Save your changes to the project.

**Parent topic:**[Tracking Changes in Construction Projects](../UserGuide/Construction_Change_Management_Mapref.md)

