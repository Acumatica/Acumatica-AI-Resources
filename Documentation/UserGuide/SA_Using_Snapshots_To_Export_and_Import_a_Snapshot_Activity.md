# Snapshots: To Export and Import a Snapshot {#_f2c286eb-e3df-4e6b-a0c7-a8dcedbee1d5 .task}

The following activity will walk you through the process of exporting and importing a snapshot for tenants of an instance.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has a new hire, Peter Lai, who should complete training during his probation period. To complete the training, the new employee needs a limited copy of the production tenant that includes only system settings and business accounts.

Acting as a system administrator, you need to create a tenant in a sandbox \(an instance of Acumatica ERP that has no production tenants\) for the new employee. To move data between instances, you export a snapshot of the production tenant and import it to the test tenant. To save space, you take a snapshot with content limited to the settings and business accounts of the production tenant, and you prepare this snapshot for export.

## Process Overview { .section}

For the purposes of this activity, you will use tenants of the same instance. You will use the [Tenants](SM_20_35_20.md) \(SM203520\) form to create a snapshot with limited data and to prepare the snapshot for export. By using the same form, you will export the snapshot and then import it to the test tenant.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded \(that is, the tenant you created for the course\) as the system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating a New Tenant {#section_erm_y3k_qpb .section}

To create the test tenant, do the following:

1.  On the [Tenants](SM_20_35_20.md) \(SM203520\) form, add a new record.
2.  In the **Tenant Name** box, type `LaiF100`.
3.  In the **Login Name** box, type `LaiF100`.
4.  On the form toolbar, click **Save**. Wait for the system to complete the operation.

    **Tip:** When you create a system tenant, you may be signed out after its creation, depending on how many non-System tenants your Acumatica ERP instance already had:

    -   One non-System tenant \(to which you are signed in\): After you create a new one, the system signs you out to switch from single-tenant mode to multitenant mode.
    -   Multiple non-System tenants: When you create another tenant, it is already in multitenant mode. Instead of being signed out, you wait until the system completes the operation and then proceed.
5.  Do one of the following:
    -   If you have been signed out, sign in to the tenant with the *U100* dataset preloaded \(that is, the tenant you created to perform the activities of this course\) by using the *gibbs* username and the *123* password. You can see the new *LaiF100* tenant if you open the User menu \(on the right side of the top pane\).
    -   If you have not been signed out, reload the webpage.

## Step 2: Creating a Snapshot and Preparing It for Export {#section_hsx_1xq_qpb .section}

To create a snapshot to be used for moving data, do the following:

1.  On the [Tenants](SM_20_35_20.md) \(SM203520\) form, open the tenant with the *U100* dataset preloaded \(that is, the tenant that you created to perform this activity\).
2.  On the form toolbar, click **Create Snapshot**.
3.  In the **Warning** dialog box, which opens, click **OK**.
4.  In the **Create Snapshot** dialog box, which opens, specify the following settings:
    -   **Description**: `Snapshot for Lai`
    -   **Export Mode**: *Settings and Business Accounts*
    -   **Prepare for Export**: *Selected*
    -   **Export Format**: *Binary*
5.  Click **OK**. Wait for the system to complete the operation. The system adds the snapshot to the **Snapshots** tab. Notice that the **Ready for Export** check box is selected in the table for the prepared snapshot.

## Step 3: Exporting the Snapshot {#section_jvx_1xq_qpb .section}

To export the snapshot that you have created, do the following:

1.  While you are still on the [Tenants](SM_20_35_20.md) \(SM203520\) form, on the **Snapshots** tab, click the line with the *Snapshot for Lai* snapshot.
2.  On the table toolbar, click **Export Snapshot**.
3.  Perform the necessary steps \(which depend on your browser and settings\) to locally save the snapshot. Change the name of the ZIP file that has been downloaded to `Snapshot_for_Lai`.

## Step 4: Importing the Snapshot { .section}

To import the snapshot, do the following:

1.  While you are still on the [Tenants](SM_20_35_20.md) \(SM203520\) form, open the *LaiF100* tenant. Notice that no snapshots are listed on the **Snapshots** tab.
2.  On the table toolbar, click **Import Snapshot**.
3.  In the **Upload Snapshot Package** dialog box, which opens, do the following:
    1.  Click **Choose File** and select the *Snapshot\_for\_Lai.zip* snapshot that you have downloaded in the previous step.
    2.  Click **Upload**. Wait until the system completes the operation.

        The system adds the record with the snapshot's summary information to the **Snapshots** tab.


In this activity, you have created a snapshot whose content is limited to settings and business accounts and have prepared the snapshot for export. Then you have exported the snapshot and imported it to the test tenant.

**Parent topic:**[Using Snapshots](../UserGuide/SA_Using_Snapshots_Mapref.md)

