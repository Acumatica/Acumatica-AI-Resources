# Tenants: To Create a Test Environment {#_3404ca18-5bb2-4425-90fd-c0f7cce7cd97 .task}

The following activity will walk you through the process of creating a test environment with the data of an out-of-the-box company and the data of your production tenant.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has a new hire \(a system administrator\) who should complete training during their probation period. To complete the training, the new system administrator needs an empty tenant and a copy of the production tenant.

Acting as the system administrator, you will create two test tenants, one with an out-of-the-box company and another with all the data of the production tenant. When the new system administrator completes the training, you will delete the empty tenant.

## Process Overview { .section}

In this activity, you will do the following on the [Tenants](SM_20_35_20.md) \(SM203520\) form:

1.  Create a new tenant with an out-of-the-box company \(*TrainingEmptyCompany*\) and convert it to a test tenant.
2.  Create another tenant with an out-of-the-box company \(*TrainingU100*\) and copy the tenant to which you are currently signed in \(which has the *U100* dataset preloaded\) to the newly created test tenant. To avoid data corruption while copying a tenant, you should activate maintenance mode on the [Apply Updates](SM_20_35_10.md)\(SM203510\) form and deactivate it after you copy the tenant.
3.  Delete the *TrainingEmptyCompany* tenant.

## System Preparation { .section}

Before you start creating a test environment, you should do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.
2.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Creating an Empty Tenant { .section}

To create a tenant that you will later convert to a test tenant, do the following:

1.  On the [Tenants](SM_20_35_20.md) \(SM203520\) form, add a new record.
2.  In the **Tenant Name** box, type `TrainingEmptyCompany`.
3.  In the **Login Name** box, type `TrainingEmptyCompany`.
4.  On the form toolbar, click **Save**. Wait for the system to complete the operation.

    **Tip:** When you create a system tenant, you may be signed out after its creation, depending on how many non-System tenants your Acumatica ERP instance already had:

    -   One non-System tenant \(to which you are signed in\): After you create a new one, the system signs you out to switch from single-tenant mode to multitenant mode.
    -   Multiple non-System tenants: When you create another tenant, it is already in multitenant mode. Instead of being signed out, you wait until the system completes the operation and then proceed.
5.  Sign in to the tenant with the *U100* dataset preloaded \(that is, the tenant that has been created for performing this activity\) by using the *gibbs* username and the *123* password.
6.  On the User menu \(on the right side of the top pane\), switch to the *TrainingEmptyCompany* tenant. On the main menu, notice the list of the default workspaces \(only **Favorites** and **Data Views** workspaces are shown, indicating that the tenant is empty\).
7.  On the User menu, switch back to the tenant with the *U100* dataset preloaded.

## Step 2: Creating a Copy of the Production Tenant { .section}

To create a tenant and make it a copy of the production tenant, do the following:

1.  On the [Tenants](SM_20_35_20.md) \(SM203520\) form, add a new record.
2.  In the **Tenant Name** box, type `TrainingU100`.
3.  In the **Login Name** box, type `TrainingU100`.
4.  On the form toolbar, click **Save**. Wait for the system to complete the operation.
5.  Reload the webpage.
6.  On the User menu, switch to the *TrainingU100* tenant. On the main menu, notice the list of the default workspaces \(only the **Favorites** and **Data Views** workspaces are shown, indicating that the tenant is currently empty\).
7.  On the User menu, switch to the *U100* tenant.
8.  Open the [Apply Updates](SM_20_35_10.md) \(SM203510\) form and click **Schedule Maintenance** on the form toolbar.
9.  In the **Schedule Lockout** dialog box, leave the default settings and click **OK**.
10. On the [Tenants](SM_20_35_20.md) \(SM203520\) form, open the tenant with the *U100* dataset preloaded.
11. On the More menu, click **Copy Tenant**.
12. In the **Copy Company** dialog box, which opens, select *TrainingU100* in the **Destination Tenant ID** box, and click **OK**.
13. In the **Warning** dialog box, which opens, confirm the operation by clicking **OK**. Wait for the system to complete the operation.
14. Open the [Apply Updates](SM_20_35_10.md) \(SM203510\) form and click **Stop Maintenance** on the form toolbar.
15. On the User menu, switch to the *TrainingU100* tenant. Verify that the tenant has the same set of workspaces as the source tenant has to ensure that the data and settings from the source tenant have been copied to the *TrainingU100* tenant.

## Step 3: Deleting the Tenant { .section}

Suppose that the new hire no longer needs *TrainingEmptyCompany*, the tenant with an out-of-the-box company that you have created to train this employee. To delete the tenant, do the following:

1.  On the User menu, switch to the tenant with the *U100* dataset preloaded.
2.  Open the [Delete Snapshots and Tenants](SM_50_30_00.md) \(SM503000\) form.
3.  In the **Action** box in the Selection area, select *Delete Tenant*.
4.  In the Included column, select the check box in the row with the tenant you want to delete \(with the *TrainingEmptyCompany* name in the **Tenant Name** column\).
5.  On the form toolbar, click **Process**. Wait for the system to complete the operation.

    **Important:** If you are deleting all tenants except the one to which you are signed in, you will be signed out of the system at this stage.

6.  Close the **Processing** dialog box.
7.  Reload the webpage.
8.  Open the User menu. Notice that the *TrainingEmptyCompany* is no longer listed on the menu.

You have created a training environment for a new hire. You have then created a test tenant with an out-of-the-box company. You have also created another tenant and then copied production data to this test tenant. When the new employee completed the training, you have deleted the test tenant with the out-of-the-box company.

## Self-Test Exercise { .section}

Now that you have learned about the creation of tenants, try to apply this knowledge. Create at least two more tenants by using the [Tenants](SM_20_35_20.md) \(SM203520\) form. Then by using the [Tenant List](SM_20_35_30.md) \(SM203530\) form, change the order in which these tenants are listed on the Sign-In page.

**Parent topic:**[Managing Tenants by Using the Web Interface](../UserGuide/SA_Managing_Tenants_Using_Web_Mapref.md)

