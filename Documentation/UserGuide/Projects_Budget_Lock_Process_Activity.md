# Project Budget Control: To Lock a Project Budget {#_c1180e6e-0253-4271-9119-8cad0ac11a6a .task}

In this activity, you will learn how to prevent the original budget values of the project from being edited.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that a customer, HM's Bakery and Cafe, has ordered a juicer from the SweetLife Fruits &amp; Jams company, along with the services of installation and training for its employees on operating the juicer. SweetLife's project accountant created a project. Before the work on the project has begun, the customer has requested 12 hours of training to be provided.

Acting as the project accountant, you will change the original budgeted values of the project before proceeding to the execution stage and lock the budget to prevent the original budgeted values from being edited further. Further suppose that early in the project execution, the customer has realized that their employees will need 16 hours of training instead of 12, so you will adjust the revised budgeted values.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to provide the project accounting functionality.
-   On the [Projects](PM_30_10_00.md) \(PM301000\) form, the *HMBAKERY16* project has been created, and the *PHASE1* and *PHASE2* project tasks have been created for the project.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *INSTALL* and *TRAINING* non-stock items have been defined.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *JUICER15* stock item has been created.

## Process Overview { .section}

In this activity, you will change the project budget on the [Projects](PM_30_10_00.md) \(PM301000\) form and then lock the budget to prevent the original budget values of the project from being edited. You will then adjust the revised budgeted values.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

1.  Launch the Acumatica ERP website.
2.  Sign in to a company with the *U100* dataset preloaded. You should sign in as Pam Brawner by using the *brawner* username and the *123* password.

## Step: Locking the Project Budget { .section}

To update the project budget and protect the original budgeted values from being edited, do the following.

1.  On the [Projects](PM_30_10_00.md) \(PM301000\) form, open the *HMBAKERY16* project.
2.  On the **Revenue Budget** tab, in the revenue budget line with the *PHASE2* task and the *TRAINING* inventory item, change the **Original Budgeted Quantity** from *8* to `12`.
3.  Save your changes to the project.
4.  On the More menu, under **Budget Operations**, click **Lock Budget** to prevent the original budgeted values from being edited. Now a user can change only the revised values in the project budget.

    Notice that you cannot adjust the original budget values—that is, the values in the **Original Budgeted Quantity**, **Unit Rate**, and **Original Budgeted Amount** columns.

5.  In the revenue budget line with the *PHASE2* task and *TRAINING* inventory item, change the **Revised Budgeted Quantity** from *12* to `16`.
6.  Save your changes to the project.

You have locked the project budget.

**Parent topic:**[Controlling the Project Budget](../UserGuide/Projects_Budget_Control_Mapref.md)

