# Daily Field Reports: To Configure Approval for Daily Field Reports {#_2746d8ee-066e-4ae8-9432-77d84a5a9ae9 .task}

This activity will walk you through the process of configuring the approval map for daily field reports.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the ToadGreen company needs to keep daily field reports in the system. These reports need to be approved by managers. Acting as a system administrator, you need to create the approval map for the daily field reports and specify the daily field report settings in the system.

## Configuration Overview { .section}

For the purposes of this activity, the *Construction* and *Construction Project Management* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Process Overview {#section_qjw_hdr_v4b .section}

You will configure an approval map to be used for daily field reports on the [Approval Maps](EP_20_50_15.md#) \(EP205015\) form and assign this map in the daily field report settings on the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.

## System Preparation { .section}

To prepare to perform the instructions of this activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step: Creating an Approval Map for Daily Field Reports { .section}

In this step, you will create the approval map to be used for daily field reports. Do the following:

1.  Open the [Assignment and Approval Maps](EP_20_55_00.md#) \(EP205500\) form.
2.  On the form toolbar, click **Add Approval Map**.

    The system opens the [Approval Maps](EP_20_50_15.md#) \(EP205015\) form.

3.  In the **Name** box of the Summary area, type `DFR Approval`.
4.  In the **Entity Type** box, select *Daily Field Report*.
5.  On the pane toolbar of the **Steps** pane, click **Add Step**.

    The system adds a step with a rule.

6.  In the **Steps** pane, click the added rule, and then in the right pane, do the following:
    1.  In the **Description** box, type `PMApproval`.
    2.  In the table on the **Conditions** tab, click **Add Row**, and in the row, specify the following settings:
        -   **Entity**: *Daily Field Report*
        -   **Field Name**: *Project Manager*
        -   **Condition**: *Is Not Empty*
7.  On the **Rule Actions** tab of the right pane, specify the following settings:
    1.  **Approver**: *Employee from Document*
    2.  **Employee**: *\(\(DailyFieldReport.ProjectManagerId\)\)* \(select **Daily Field Report** &gt; **Project Manager**\)
    3.  **On Approval**: *Approve Document*
8.  Click **Save** on the form toolbar.
9.  Open the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form.
10. On the **Daily Field Reports** tab, select *DFR Approval*, the approval map that you created, in the **DFR Approval Map** box.
11. On the form toolbar, click **Save** to save your changes.

You have configured the approval map for the daily field reports.

**Parent topic:**[Reporting On-Site Work Progress](../UserGuide/Construction_Daily_Field_Reports_Mapref.md)

