# Database Maintenance: To Monitor the Database Size {#_8b555bd8-5722-44ee-bc46-b534d91327c0 .task}

The following activity will walk you through the process of monitoring the size of a database.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that as the number of employees of the SweetLife Fruits &amp; Jams company has grown and as more users perform operations in Acumatica ERP, the database has significantly grown too. System administrators perform a regular review of the database. Acting as a system administrator, you need to review the database usage, paying special attention to the space used by the database.

## Process Overview { .section}

You will use the [Space Usage](SM_20_35_25.md) \(SM203525\) form to perform the following operations:

-   Calculate the used space of a database
-   Review the list existing tenants and snapshots, and identify tenants that are not necessary
-   Review the list of tables that take up most of the space and decide what you can do to reduce the space usage

Also, you will use the [Tenants](SM_20_35_20.md) \(SM203520\) form to run a procedure that removes orphaned snapshots.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded as the system administrator by using the *gibbs* username and the *123* password.

## Step 1: Calculating the Used Space { .section}

To calculate the used space of the database, do the following:

1.  Open the [Space Usage](SM_20_35_25.md) \(SM203525\) form.
2.  On the form toolbar, click **Calculate Used Space**. Wait for the system to complete the operation.
3.  After the space usage calculation is finished, review the data on the following tabs:
    -   **Tenants**: In the table, which shows all tenants that are used in the system, review the size of each tenant.
    -   **Snapshots**: In the table, which lists the snapshots that are stored in the database, review the size of each snapshot.
    -   **Tables**: Review the list of tables, which shows data related to all tenants and snapshots in your instance. You can filter the list of the tables according to the record quantity or the size to detect the tables consuming the most space.

## Step 2: Cleaning Up the Database { .section}

To optimize the Acumatica ERP database, do the following:

1.  Open the [Tenants](SM_20_35_20.md) \(SM203520\) form.
2.  On the More menu, click **Optimize Database**. The system opens the [Delete Snapshots and Tenants](SM_50_30_00.md) \(SM503000\) form with the *Delete Orphaned Snapshot* option selected in the **Action** box.
3.  Select the unlabeled check boxes in the rows in the table for the snapshots that you want to delete, and then click **Process** on the form toolbar.
4.  Return to the [Tenants](SM_20_35_20.md) form.
5.  On the More menu, click **View Space Usage**.
6.  On the form toolbar of the [Space Usage](SM_20_35_25.md) \(SM203525\) form, which opens, click **Calculate Used Space** to recalculate the space usage and review the updated amount of the database space.

**Parent topic:**[Maintaining Database by Using the Web Interface](../UserGuide/SA_Maintaining_Database_by_Using_Web_Interface_Mapref.md)

